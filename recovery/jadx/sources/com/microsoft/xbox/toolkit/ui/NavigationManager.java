package com.microsoft.xbox.toolkit.ui;

import android.view.KeyEvent;
import android.view.View;
import com.microsoft.xbox.toolkit.ThreadManager;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xbox.toolkit.XLEException;
import com.microsoft.xbox.toolkit.anim.XLEAnimationPackage;
import com.microsoft.xboxtcui.XboxTcuiSdk;
import java.util.Iterator;
import java.util.Stack;

/* JADX INFO: loaded from: classes3.dex */
public class NavigationManager implements View.OnKeyListener {
    private static final String TAG = "NavigationManager";
    private NavigationManagerAnimationState animationState;
    final Runnable callAfterAnimation;
    public boolean cannotNavigateTripwire;
    private XLEAnimationPackage currentAnimation;
    private boolean goingBack;
    private NavigationCallbacks navigationCallbacks;
    public OnNavigatedListener navigationListener;
    public final Stack<ActivityParameters> navigationParameters;
    public final Stack<ScreenLayout> navigationStack;
    private boolean transitionAnimate;
    private Runnable transitionLambda;

    public interface NavigationCallbacks {
        void addContentViewXLE(ScreenLayout screenLayout);

        void onBeforeNavigatingIn();

        void removeContentViewXLE(ScreenLayout screenLayout);

        void setAnimationBlocking(boolean z);
    }

    private enum NavigationManagerAnimationState {
        NONE,
        ANIMATING_IN,
        ANIMATING_OUT,
        COUNT
    }

    public interface OnNavigatedListener {
        void onPageNavigated(ScreenLayout screenLayout, ScreenLayout screenLayout2);

        void onPageRestarted(ScreenLayout screenLayout);
    }

    public boolean TEST_isAnimatingIn() {
        return false;
    }

    public boolean TEST_isAnimatingOut() {
        return false;
    }

    private NavigationManager() {
        this.navigationParameters = new Stack<>();
        this.navigationStack = new Stack<>();
        this.currentAnimation = null;
        this.animationState = NavigationManagerAnimationState.NONE;
        this.transitionLambda = null;
        this.goingBack = false;
        this.transitionAnimate = true;
        this.cannotNavigateTripwire = false;
        this.callAfterAnimation = new Runnable() { // from class: com.microsoft.xbox.toolkit.ui.NavigationManager.1
            @Override // java.lang.Runnable
            public void run() {
                NavigationManager.this.OnAnimationEnd();
            }
        };
        XLEAssert.assertTrue("You must access navigation manager on UI thread.", Thread.currentThread() == ThreadManager.UIThread);
    }

    public static NavigationManager getInstance() {
        return NavigationManagerHolder.instance;
    }

    public ScreenLayout getCurrentActivity() {
        if (this.navigationStack.empty()) {
            return null;
        }
        return this.navigationStack.peek();
    }

    public String getCurrentActivityName() {
        ScreenLayout currentActivity = getCurrentActivity();
        if (currentActivity != null) {
            return currentActivity.getName();
        }
        return null;
    }

    public ScreenLayout getPreviousActivity() {
        if (this.navigationStack.empty() || this.navigationStack.size() <= 1) {
            return null;
        }
        Stack<ScreenLayout> stack = this.navigationStack;
        return stack.get(stack.size() - 2);
    }

    public void setOnNavigatedListener(OnNavigatedListener onNavigatedListener) {
        this.navigationListener = onNavigatedListener;
    }

    public void removeNaviationListener() {
        this.navigationListener = null;
    }

    public void setNavigationCallbacks(NavigationCallbacks navigationCallbacks) {
        this.navigationCallbacks = navigationCallbacks;
    }

    public void removeNavigationCallbacks() {
        this.navigationCallbacks = null;
    }

    public ActivityParameters getActivityParameters() {
        return getActivityParameters(0);
    }

    public ActivityParameters getActivityParameters(int i) {
        XLEAssert.assertTrue(i >= 0 && i < this.navigationParameters.size());
        Stack<ActivityParameters> stack = this.navigationParameters;
        return stack.get((stack.size() - i) - 1);
    }

    public void NavigateTo(Class<? extends ScreenLayout> cls, boolean z, ActivityParameters activityParameters) {
        if (z) {
            try {
                PushScreen(cls, activityParameters);
            } catch (XLEException unused) {
            }
        } else {
            try {
                PopScreensAndReplace(1, cls, activityParameters);
            } catch (XLEException e) {
                e.printStackTrace();
            }
        }
    }

    public void NavigateTo(Class<? extends ScreenLayout> cls, boolean z) {
        NavigateTo(cls, z, null);
    }

    public boolean OnBackButtonPressed() {
        boolean zShouldBackCloseApp = ShouldBackCloseApp();
        if (getCurrentActivity() != null && !getCurrentActivity().onBackButtonPressed()) {
            if (zShouldBackCloseApp) {
                try {
                    PopScreensAndReplace(1, null, false, false, false);
                } catch (XLEException unused) {
                }
            } else {
                try {
                    PopScreen();
                } catch (XLEException e) {
                    e.printStackTrace();
                }
            }
        }
        return zShouldBackCloseApp;
    }

    public boolean isAnimating() {
        return this.animationState != NavigationManagerAnimationState.NONE;
    }

    public boolean ShouldBackCloseApp() {
        return Size() <= 1 && this.animationState == NavigationManagerAnimationState.NONE;
    }

    public boolean IsScreenOnStack(Class<? extends ScreenLayout> cls) {
        Iterator<ScreenLayout> it = this.navigationStack.iterator();
        while (it.hasNext()) {
            if (it.next().getClass().equals(cls)) {
                return true;
            }
        }
        return false;
    }

    public int CountPopsToScreen(Class<? extends ScreenLayout> cls) {
        int size = this.navigationStack.size() - 1;
        for (int i = size; i >= 0; i--) {
            if (this.navigationStack.get(i).getClass().equals(cls)) {
                return size - i;
            }
        }
        return -1;
    }

    private int Size() {
        return this.navigationStack.size();
    }

    public void RestartCurrentScreen(boolean z) throws XLEException {
        RestartCurrentScreen(null, z);
    }

    public void RestartCurrentScreen(ActivityParameters activityParameters, boolean z) throws XLEException {
        if (this.animationState == NavigationManagerAnimationState.ANIMATING_OUT) {
            OnAnimationEnd();
        } else if (this.animationState == NavigationManagerAnimationState.ANIMATING_IN) {
            OnAnimationEnd();
            PopScreensAndReplace(1, getCurrentActivity().getClass(), z, true, true, activityParameters);
        } else {
            PopScreensAndReplace(1, getCurrentActivity().getClass(), z, true, true, activityParameters);
        }
    }

    public void PopScreen() throws XLEException {
        PopScreens(1);
    }

    public void PopScreens(int i) throws XLEException {
        PopScreensAndReplace(i, null);
    }

    public void PopAllScreens() throws XLEException {
        if (Size() > 0) {
            PopScreensAndReplace(Size(), null, false, false, false);
        }
    }

    public void PopTillScreenThenPush(Class<? extends ScreenLayout> cls, Class<? extends ScreenLayout> cls2, ActivityParameters activityParameters) throws XLEException {
        int iCountPopsToScreen = CountPopsToScreen(cls);
        if (iCountPopsToScreen > 0) {
            PopScreensAndReplace(iCountPopsToScreen, cls2, true, true, false, activityParameters);
        } else if (iCountPopsToScreen < 0) {
            PopScreensAndReplace(0, cls2, true, false, false, activityParameters);
        } else {
            PopScreensAndReplace(0, cls2, true, false, false, activityParameters);
        }
    }

    public void PopTillScreenThenPush(Class<? extends ScreenLayout> cls, Class<? extends ScreenLayout> cls2) throws XLEException {
        PopTillScreenThenPush(cls, cls2, null);
    }

    public void GotoScreenWithPop(Class<? extends ScreenLayout> cls) throws XLEException {
        int iCountPopsToScreen = CountPopsToScreen(cls);
        if (iCountPopsToScreen > 0) {
            PopScreensAndReplace(iCountPopsToScreen, null, true, false, false);
        } else if (iCountPopsToScreen < 0) {
            PopScreensAndReplace(Size(), cls, true, false, false);
        } else {
            RestartCurrentScreen(true);
        }
    }

    public void GotoScreenWithPop(ActivityParameters activityParameters, Class<? extends ScreenLayout> cls, Class<? extends ScreenLayout>... clsArr) throws XLEException {
        Class<? extends ScreenLayout> cls2;
        int size = this.navigationStack.size() - 1;
        int i = size;
        loop0: while (true) {
            if (i < 0) {
                cls2 = null;
                break;
            }
            Class<?> cls3 = this.navigationStack.get(i).getClass();
            for (Class<? extends ScreenLayout> cls4 : clsArr) {
                if (cls4 == cls3) {
                    cls2 = cls4;
                    break loop0;
                }
            }
            i--;
        }
        if (cls2 == null) {
            PopScreensAndReplace(Size(), cls, true, true, false, activityParameters);
            return;
        }
        if (cls2 != cls) {
            PopScreensAndReplace(size - i, cls, true, true, false, activityParameters);
        } else if (i == size) {
            RestartCurrentScreen(activityParameters, false);
        } else {
            PopScreensAndReplace(size - i, null, true, true, false, activityParameters);
        }
    }

    public void GotoScreenWithPush(Class<? extends ScreenLayout> cls) throws XLEException {
        int iCountPopsToScreen = CountPopsToScreen(cls);
        if (iCountPopsToScreen > 0) {
            PopScreensAndReplace(iCountPopsToScreen, null, true, false, false);
        } else if (iCountPopsToScreen < 0) {
            PopScreensAndReplace(0, cls, true, false, false);
        } else {
            RestartCurrentScreen(true);
        }
    }

    public void GotoScreenWithPush(Class<? extends ScreenLayout> cls, ActivityParameters activityParameters) throws XLEException {
        int iCountPopsToScreen = CountPopsToScreen(cls);
        if (iCountPopsToScreen > 0) {
            PopScreensAndReplace(iCountPopsToScreen, null, true, false, false, activityParameters);
        } else if (iCountPopsToScreen < 0) {
            PopScreensAndReplace(0, cls, true, false, false, activityParameters);
        } else {
            RestartCurrentScreen(true);
        }
    }

    public void PushScreen(Class<? extends ScreenLayout> cls, ActivityParameters activityParameters) throws XLEException {
        PopScreensAndReplace(0, cls, true, false, false, activityParameters);
    }

    public void PushScreen(Class<? extends ScreenLayout> cls) throws XLEException {
        PushScreen(cls, null);
    }

    public void PopScreensAndReplace(int i, Class<? extends ScreenLayout> cls, ActivityParameters activityParameters) throws XLEException {
        PopScreensAndReplace(i, cls, true, true, false, activityParameters);
    }

    public void PopScreensAndReplace(int i, Class<? extends ScreenLayout> cls) throws XLEException {
        PopScreensAndReplace(i, cls, null);
    }

    public void PopScreensAndReplace(int i, Class<? extends ScreenLayout> cls, boolean z, boolean z2) throws XLEException {
        PopScreensAndReplace(i, cls, z, true, z2);
    }

    public void PopScreensAndReplace(int i, Class<? extends ScreenLayout> cls, boolean z, boolean z2, boolean z3, final ActivityParameters activityParameters) throws XLEException {
        final ScreenLayout screenLayoutNewInstance;
        Runnable restartRunner;
        boolean z4 = false;
        XLEAssert.assertTrue("You must access navigation manager on UI thread.", Thread.currentThread() == ThreadManager.UIThread);
        if (this.cannotNavigateTripwire) {
            throw new UnsupportedOperationException("NavigationManager: attempted to execute a recursive navigation in the OnStop/OnStart method.  This is forbidden.");
        }
        if (cls == null || z3) {
            screenLayoutNewInstance = null;
        } else {
            try {
                screenLayoutNewInstance = cls.getConstructor(new Class[0]).newInstance(new Object[0]);
                z = z && screenLayoutNewInstance.isAnimateOnPush();
            } catch (Exception e) {
                throw new XLEException(19L, "FIXME: Failed to create a screen of type " + cls.getName(), e);
            }
        }
        if (getCurrentActivity() != null) {
            if (z && getCurrentActivity().isAnimateOnPop()) {
                z4 = true;
            }
            z = z4;
        }
        if (activityParameters == null) {
            activityParameters = new ActivityParameters();
        }
        final NavigationCallbacks navigationCallbacks = this.navigationCallbacks;
        XLEAssert.assertNotNull(navigationCallbacks);
        if (z3) {
            restartRunner = new RestartRunner(activityParameters);
        } else {
            restartRunner = new Runnable() { // from class: com.microsoft.xbox.toolkit.ui.NavigationManager$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$PopScreensAndReplace$0(activityParameters, navigationCallbacks, screenLayoutNewInstance);
                }
            };
        }
        if (AnonymousClass2.$SwitchMap$com$microsoft$xbox$toolkit$ui$NavigationManager$NavigationManagerAnimationState[this.animationState.ordinal()] == 1) {
            Transition(z2, restartRunner, z);
        } else {
            ReplaceOnAnimationEnd(z2, restartRunner, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$PopScreensAndReplace$0(ActivityParameters activityParameters, NavigationCallbacks navigationCallbacks, ScreenLayout screenLayout) {
        ScreenLayout currentActivity;
        this.cannotNavigateTripwire = true;
        ScreenLayout currentActivity2 = getCurrentActivity();
        activityParameters.putFromScreen(currentActivity2);
        activityParameters.putSourcePage(getCurrentActivityName());
        if (getCurrentActivity() != null) {
            getCurrentActivity().onSetInactive();
            getCurrentActivity().onPause();
            getCurrentActivity().onStop();
        }
        TextureManager.Instance().purgeResourceBitmapCache();
        if (screenLayout != null) {
            if (getCurrentActivity() != null && !screenLayout.isKeepPreviousScreen()) {
                getCurrentActivity().onTombstone();
            }
            navigationCallbacks.addContentViewXLE(this.navigationStack.push(screenLayout));
            this.navigationParameters.push(activityParameters);
            getCurrentActivity().onCreate();
        } else if (getCurrentActivity() != null) {
            navigationCallbacks.addContentViewXLE(getCurrentActivity());
            if (getCurrentActivity().getIsTombstoned()) {
                getCurrentActivity().onRehydrate();
            }
        }
        if (getCurrentActivity() != null) {
            getCurrentActivity().onStart();
            getCurrentActivity().onResume();
            getCurrentActivity().onSetActive();
            getCurrentActivity().onAnimateInStarted();
            XboxTcuiSdk.getActivity().invalidateOptionsMenu();
            currentActivity = getCurrentActivity();
        } else {
            currentActivity = null;
        }
        OnNavigatedListener onNavigatedListener = this.navigationListener;
        if (onNavigatedListener != null) {
            onNavigatedListener.onPageNavigated(currentActivity2, currentActivity);
        }
        this.cannotNavigateTripwire = false;
    }

    /* JADX INFO: renamed from: com.microsoft.xbox.toolkit.ui.NavigationManager$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$microsoft$xbox$toolkit$ui$NavigationManager$NavigationManagerAnimationState;

        static {
            int[] iArr = new int[NavigationManagerAnimationState.values().length];
            $SwitchMap$com$microsoft$xbox$toolkit$ui$NavigationManager$NavigationManagerAnimationState = iArr;
            try {
                iArr[NavigationManagerAnimationState.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$toolkit$ui$NavigationManager$NavigationManagerAnimationState[NavigationManagerAnimationState.ANIMATING_IN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$toolkit$ui$NavigationManager$NavigationManagerAnimationState[NavigationManagerAnimationState.ANIMATING_OUT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public void PopScreensAndReplace(int i, Class<? extends ScreenLayout> cls, boolean z, boolean z2, boolean z3) throws XLEException {
        PopScreensAndReplace(i, cls, z, z2, z3, null);
    }

    public void onApplicationPause() {
        for (int i = 0; i < this.navigationStack.size(); i++) {
            this.navigationStack.get(i).onApplicationPause();
        }
    }

    public void onApplicationResume() {
        for (int i = 0; i < this.navigationStack.size(); i++) {
            this.navigationStack.get(i).onApplicationResume();
        }
    }

    public void setAnimationBlocking(boolean z) {
        NavigationCallbacks navigationCallbacks = this.navigationCallbacks;
        if (navigationCallbacks != null) {
            navigationCallbacks.setAnimationBlocking(z);
        }
    }

    private void Transition(boolean z, Runnable runnable, boolean z2) {
        this.transitionLambda = runnable;
        this.transitionAnimate = z2;
        this.goingBack = z;
        XLEAnimationPackage animateOut = getCurrentActivity() == null ? null : getCurrentActivity().getAnimateOut(z);
        this.currentAnimation = animateOut;
        startAnimation(animateOut, NavigationManagerAnimationState.ANIMATING_OUT);
    }

    private void ReplaceOnAnimationEnd(boolean z, Runnable runnable, boolean z2) {
        XLEAssert.assertTrue(this.animationState == NavigationManagerAnimationState.ANIMATING_OUT || this.animationState == NavigationManagerAnimationState.ANIMATING_IN);
        this.animationState = NavigationManagerAnimationState.ANIMATING_OUT;
        this.transitionLambda = runnable;
        this.transitionAnimate = z2;
        this.goingBack = z;
    }

    public void OnAnimationEnd() {
        int i = AnonymousClass2.$SwitchMap$com$microsoft$xbox$toolkit$ui$NavigationManager$NavigationManagerAnimationState[this.animationState.ordinal()];
        if (i == 2) {
            NavigationCallbacks navigationCallbacks = this.navigationCallbacks;
            if (navigationCallbacks != null) {
                navigationCallbacks.setAnimationBlocking(false);
            }
            this.animationState = NavigationManagerAnimationState.NONE;
            if (getCurrentActivity() != null) {
                getCurrentActivity().onAnimateInCompleted();
                return;
            }
            return;
        }
        if (i != 3) {
            return;
        }
        this.transitionLambda.run();
        XLEAnimationPackage animateIn = getCurrentActivity() != null ? getCurrentActivity().getAnimateIn(this.goingBack) : null;
        NavigationCallbacks navigationCallbacks2 = this.navigationCallbacks;
        if (navigationCallbacks2 != null) {
            navigationCallbacks2.onBeforeNavigatingIn();
        }
        startAnimation(animateIn, NavigationManagerAnimationState.ANIMATING_IN);
    }

    private void startAnimation(XLEAnimationPackage xLEAnimationPackage, NavigationManagerAnimationState navigationManagerAnimationState) {
        this.animationState = navigationManagerAnimationState;
        this.currentAnimation = xLEAnimationPackage;
        NavigationCallbacks navigationCallbacks = this.navigationCallbacks;
        if (navigationCallbacks != null) {
            navigationCallbacks.setAnimationBlocking(true);
        }
        if (!this.transitionAnimate || xLEAnimationPackage == null) {
            this.callAfterAnimation.run();
        } else {
            xLEAnimationPackage.setOnAnimationEndRunnable(this.callAfterAnimation);
            xLEAnimationPackage.startAnimation();
        }
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (i == 4 && keyEvent.getAction() == 1) {
            if (!OnBackButtonPressed()) {
                return true;
            }
            removeNavigationCallbacks();
            removeNaviationListener();
        }
        return false;
    }

    private static class NavigationManagerHolder {
        public static final NavigationManager instance = new NavigationManager();

        private NavigationManagerHolder() {
        }
    }

    private class RestartRunner implements Runnable {
        private final ActivityParameters params;

        public RestartRunner(ActivityParameters activityParameters) {
            this.params = activityParameters;
        }

        @Override // java.lang.Runnable
        public void run() {
            ScreenLayout currentActivity = NavigationManager.this.getCurrentActivity();
            XLEAssert.assertNotNull(currentActivity);
            NavigationManager.this.getCurrentActivity().onSetInactive();
            NavigationManager.this.getCurrentActivity().onPause();
            NavigationManager.this.getCurrentActivity().onStop();
            XLEAssert.assertTrue("navigationParameters cannot be empty!", !NavigationManager.this.navigationParameters.isEmpty());
            NavigationManager.this.navigationParameters.pop();
            NavigationManager.this.navigationParameters.push(this.params);
            NavigationManager.this.getCurrentActivity().onStart();
            NavigationManager.this.getCurrentActivity().onResume();
            NavigationManager.this.getCurrentActivity().onSetActive();
            NavigationManager.this.getCurrentActivity().onAnimateInStarted();
            XboxTcuiSdk.getActivity().invalidateOptionsMenu();
            if (NavigationManager.this.navigationListener != null) {
                NavigationManager.this.navigationListener.onPageRestarted(currentActivity);
            }
        }
    }
}
