package com.google.androidgamesdk;

import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.inputmethod.EditorInfo;
import android.widget.FrameLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.DisplayCutoutCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.androidgamesdk.gametextinput.GameTextInput;
import com.google.androidgamesdk.gametextinput.InputConnection;
import com.google.androidgamesdk.gametextinput.Listener;
import com.google.androidgamesdk.gametextinput.Settings;
import com.google.androidgamesdk.gametextinput.State;
import dalvik.system.BaseDexClassLoader;
import java.io.File;

/* JADX INFO: loaded from: classes4.dex */
public class GameActivity extends AppCompatActivity implements SurfaceHolder.Callback2, Listener, OnApplyWindowInsetsListener, ViewTreeObserver.OnGlobalLayoutListener {
    private static final String DEFAULT_NATIVE_LIB_NAME = "main";
    private static final String KEY_NATIVE_SAVED_STATE = "android:native_state";
    private static final String LOG_TAG = "GameActivity";
    public static final String META_DATA_LIB_NAME = "android.app.lib_name";
    protected int contentViewId;
    private EditorInfo imeEditorInfo;
    private SurfaceHolder mCurSurfaceHolder;
    protected boolean mDestroyed;
    protected int mLastContentHeight;
    protected int mLastContentWidth;
    protected int mLastContentX;
    protected int mLastContentY;
    protected final int[] mLocation = new int[2];
    private long mNativeHandle;
    protected InputEnabledSurfaceView mSurfaceView;

    protected native String getDlError();

    protected native long initializeNativeCode(String str, String str2, String str3, AssetManager assetManager, byte[] bArr, Configuration configuration);

    protected native void onConfigurationChangedNative(long j, Configuration configuration);

    protected native void onContentRectChangedNative(long j, int i, int i2, int i3, int i4);

    protected native void onEditorActionNative(long j, int i);

    protected native boolean onKeyDownNative(long j, KeyEvent keyEvent);

    protected native boolean onKeyUpNative(long j, KeyEvent keyEvent);

    protected native void onPauseNative(long j);

    protected native void onResumeNative(long j);

    protected native byte[] onSaveInstanceStateNative(long j);

    protected native void onSoftwareKeyboardVisibilityChangedNative(long j, boolean z);

    protected native void onStartNative(long j);

    protected native void onStopNative(long j);

    protected native void onSurfaceChangedNative(long j, Surface surface, int i, int i2, int i3);

    protected native void onSurfaceCreatedNative(long j, Surface surface);

    protected native void onSurfaceDestroyedNative(long j);

    protected native void onSurfaceRedrawNeededNative(long j, Surface surface);

    protected native void onTextInputEventNative(long j, State state);

    protected native boolean onTouchEventNative(long j, MotionEvent motionEvent, int i, int i2, int i3, int i4, int i5, long j2, long j3, int i6, int i7, int i8, int i9, int i10, int i11, float f, float f2);

    protected native void onTrimMemoryNative(long j, int i);

    protected native void onWindowFocusChangedNative(long j, boolean z);

    protected native void onWindowInsetsChangedNative(long j);

    protected native void setInputConnectionNative(long j, InputConnection inputConnection);

    protected native void terminateNativeCode(long j);

    protected boolean processMotionEvent(MotionEvent motionEvent) {
        return onTouchEventNative(this.mNativeHandle, motionEvent, motionEvent.getPointerCount(), motionEvent.getHistorySize(), motionEvent.getDeviceId(), motionEvent.getSource(), motionEvent.getAction(), motionEvent.getEventTime(), motionEvent.getDownTime(), motionEvent.getFlags(), motionEvent.getMetaState(), motionEvent.getActionButton(), motionEvent.getButtonState(), Build.VERSION.SDK_INT >= 29 ? motionEvent.getClassification() : 0, motionEvent.getEdgeFlags(), motionEvent.getXPrecision(), motionEvent.getYPrecision());
    }

    @Override // android.app.Activity
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (processMotionEvent(motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.app.Activity
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if (processMotionEvent(motionEvent)) {
            return true;
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (onKeyUpNative(this.mNativeHandle, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (onKeyDownNative(this.mNativeHandle, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // com.google.androidgamesdk.gametextinput.Listener
    public void stateChanged(State state, boolean z) {
        onTextInputEventNative(this.mNativeHandle, state);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        this.mSurfaceView.getLocationInWindow(this.mLocation);
        int width = this.mSurfaceView.getWidth();
        int height = this.mSurfaceView.getHeight();
        int[] iArr = this.mLocation;
        int i = iArr[0];
        if (i == this.mLastContentX && iArr[1] == this.mLastContentY && width == this.mLastContentWidth && height == this.mLastContentHeight) {
            return;
        }
        this.mLastContentX = i;
        int i2 = iArr[1];
        this.mLastContentY = i2;
        this.mLastContentWidth = width;
        this.mLastContentHeight = height;
        if (this.mDestroyed) {
            return;
        }
        onContentRectChangedNative(this.mNativeHandle, i, i2, width, height);
    }

    public void setTextInputState(State state) {
        InputEnabledSurfaceView inputEnabledSurfaceView = this.mSurfaceView;
        if (inputEnabledSurfaceView == null) {
            return;
        }
        if (inputEnabledSurfaceView.mInputConnection == null) {
            Log.w(LOG_TAG, "No input connection has been set yet");
        } else {
            this.mSurfaceView.mInputConnection.setState(state);
        }
    }

    public long getGameActivityNativeHandle() {
        return this.mNativeHandle;
    }

    protected InputEnabledSurfaceView createSurfaceView() {
        return new InputEnabledSurfaceView(this);
    }

    protected void onCreateSurfaceView() {
        InputEnabledSurfaceView inputEnabledSurfaceViewCreateSurfaceView = createSurfaceView();
        this.mSurfaceView = inputEnabledSurfaceViewCreateSurfaceView;
        if (inputEnabledSurfaceViewCreateSurfaceView == null) {
            return;
        }
        FrameLayout frameLayout = new FrameLayout(this);
        int iGenerateViewId = ViewCompat.generateViewId();
        this.contentViewId = iGenerateViewId;
        frameLayout.setId(iGenerateViewId);
        frameLayout.addView(this.mSurfaceView);
        setContentView(frameLayout);
        frameLayout.requestFocus();
        this.mSurfaceView.getHolder().addCallback(this);
        ViewCompat.setOnApplyWindowInsetsListener(this.mSurfaceView, this);
    }

    protected void onSetUpWindow() {
        getWindow().setFormat(4);
        getWindow().setSoftInputMode(16);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        String string;
        onCreateSurfaceView();
        InputEnabledSurfaceView inputEnabledSurfaceView = this.mSurfaceView;
        if (inputEnabledSurfaceView != null) {
            inputEnabledSurfaceView.getViewTreeObserver().addOnGlobalLayoutListener(this);
        }
        onSetUpWindow();
        String str = new String(DEFAULT_NATIVE_LIB_NAME);
        try {
            ActivityInfo activityInfo = getPackageManager().getActivityInfo(getIntent().getComponent(), 128);
            if (activityInfo.metaData != null && (string = activityInfo.metaData.getString(META_DATA_LIB_NAME)) != null) {
                str = string;
            }
            String str2 = "lib" + str + ".so";
            Log.i(LOG_TAG, "Looking for library " + str2);
            BaseDexClassLoader baseDexClassLoader = (BaseDexClassLoader) getClassLoader();
            String strFindLibrary = baseDexClassLoader.findLibrary(str);
            if (strFindLibrary != null) {
                Log.i(LOG_TAG, "Found library " + str2 + ". Loading...");
                System.loadLibrary(str);
            } else {
                if (!str.equals(DEFAULT_NATIVE_LIB_NAME)) {
                    throw new IllegalArgumentException("unable to find native library " + str2 + " using classloader: " + baseDexClassLoader.toString());
                }
                Log.i(LOG_TAG, "Application should have loaded the native library " + str2 + " explicitly by now. ");
            }
            File file = null;
            byte[] byteArray = bundle != null ? bundle.getByteArray(KEY_NATIVE_SAVED_STATE) : null;
            File[] externalFilesDirs = getExternalFilesDirs(null);
            if (externalFilesDirs != null && externalFilesDirs.length > 0) {
                file = externalFilesDirs[0];
            }
            long jInitializeNativeCode = initializeNativeCode(getAbsolutePath(getFilesDir()), getAbsolutePath(getObbDir()), getAbsolutePath(file), getAssets(), byteArray, getResources().getConfiguration());
            this.mNativeHandle = jInitializeNativeCode;
            if (jInitializeNativeCode == 0) {
                throw new UnsatisfiedLinkError("Unable to initialize native code \"" + strFindLibrary + "\": " + getDlError());
            }
            InputEnabledSurfaceView inputEnabledSurfaceView2 = this.mSurfaceView;
            if (inputEnabledSurfaceView2 != null) {
                setInputConnectionNative(jInitializeNativeCode, inputEnabledSurfaceView2.mInputConnection);
            }
            super.onCreate(bundle);
        } catch (PackageManager.NameNotFoundException e) {
            throw new RuntimeException("Error getting activity info", e);
        }
    }

    private static String getAbsolutePath(File file) {
        if (file != null) {
            return file.getAbsolutePath();
        }
        return null;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        this.mDestroyed = true;
        if (this.mCurSurfaceHolder != null) {
            onSurfaceDestroyedNative(this.mNativeHandle);
            this.mCurSurfaceHolder = null;
        }
        terminateNativeCode(this.mNativeHandle);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        onPauseNative(this.mNativeHandle);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        onResumeNative(this.mNativeHandle);
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        byte[] bArrOnSaveInstanceStateNative = onSaveInstanceStateNative(this.mNativeHandle);
        if (bArrOnSaveInstanceStateNative != null) {
            bundle.putByteArray(KEY_NATIVE_SAVED_STATE, bArrOnSaveInstanceStateNative);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        onStartNative(this.mNativeHandle);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        onStopNative(this.mNativeHandle);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.mDestroyed) {
            return;
        }
        onConfigurationChangedNative(this.mNativeHandle, configuration);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        super.onTrimMemory(i);
        if (this.mDestroyed) {
            return;
        }
        onTrimMemoryNative(this.mNativeHandle, i);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (this.mDestroyed) {
            return;
        }
        onWindowFocusChangedNative(this.mNativeHandle, z);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        if (this.mDestroyed) {
            return;
        }
        this.mCurSurfaceHolder = surfaceHolder;
        onSurfaceCreatedNative(this.mNativeHandle, surfaceHolder.getSurface());
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        if (this.mDestroyed) {
            return;
        }
        this.mCurSurfaceHolder = surfaceHolder;
        onSurfaceChangedNative(this.mNativeHandle, surfaceHolder.getSurface(), i, i2, i3);
    }

    @Override // android.view.SurfaceHolder.Callback2
    public void surfaceRedrawNeeded(SurfaceHolder surfaceHolder) {
        if (this.mDestroyed) {
            return;
        }
        this.mCurSurfaceHolder = surfaceHolder;
        onSurfaceRedrawNeededNative(this.mNativeHandle, surfaceHolder.getSurface());
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.mCurSurfaceHolder = null;
        if (this.mDestroyed) {
            return;
        }
        onSurfaceDestroyedNative(this.mNativeHandle);
    }

    void setWindowFlags(int i, int i2) {
        getWindow().setFlags(i, i2);
    }

    void setWindowFormat(int i) {
        getWindow().setFormat(i);
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        this.mSurfaceView.mInputConnection.m2452x126cfc85(view, windowInsetsCompat);
        onWindowInsetsChangedNative(this.mNativeHandle);
        view.onApplyWindowInsets(windowInsetsCompat.toWindowInsets());
        return windowInsetsCompat;
    }

    public Insets getWindowInsets(int i) {
        Insets insets;
        WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(this.mSurfaceView);
        if (rootWindowInsets == null || (insets = rootWindowInsets.getInsets(i)) == Insets.NONE) {
            return null;
        }
        return insets;
    }

    public Insets getWaterfallInsets() {
        DisplayCutoutCompat displayCutout;
        WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(this.mSurfaceView);
        if (rootWindowInsets == null || (displayCutout = rootWindowInsets.getDisplayCutout()) == null) {
            return null;
        }
        return displayCutout.getWaterfallInsets();
    }

    @Override // com.google.androidgamesdk.gametextinput.Listener
    public void onImeInsetsChanged(Insets insets) {
        Log.v(LOG_TAG, "onImeInsetsChanged from Text Listener");
    }

    @Override // com.google.androidgamesdk.gametextinput.Listener
    public void onSoftwareKeyboardVisibilityChanged(boolean z) {
        onSoftwareKeyboardVisibilityChangedNative(this.mNativeHandle, z);
    }

    @Override // com.google.androidgamesdk.gametextinput.Listener
    public void onEditorAction(int i) {
        onEditorActionNative(this.mNativeHandle, i);
    }

    public EditorInfo getImeEditorInfo() {
        if (this.imeEditorInfo == null) {
            EditorInfo editorInfo = new EditorInfo();
            this.imeEditorInfo = editorInfo;
            editorInfo.inputType = 1;
            this.imeEditorInfo.actionId = 6;
            this.imeEditorInfo.imeOptions = 33554438;
        }
        return this.imeEditorInfo;
    }

    public void setImeEditorInfo(EditorInfo editorInfo) {
        this.imeEditorInfo = editorInfo;
        this.mSurfaceView.mInputConnection.setEditorInfo(editorInfo);
    }

    public void setImeEditorInfoFields(int i, int i2, int i3) {
        EditorInfo imeEditorInfo = getImeEditorInfo();
        imeEditorInfo.inputType = i;
        imeEditorInfo.actionId = i2;
        imeEditorInfo.imeOptions = i3;
        this.mSurfaceView.mInputConnection.setEditorInfo(imeEditorInfo);
    }

    /* JADX INFO: loaded from: classes3.dex */
    protected class InputEnabledSurfaceView extends SurfaceView {
        InputConnection mInputConnection;

        public InputEnabledSurfaceView(GameActivity gameActivity) {
            super(gameActivity);
            EditorInfo imeEditorInfo = gameActivity.getImeEditorInfo();
            this.mInputConnection = new InputConnection(gameActivity, this, new Settings(imeEditorInfo, imeEditorInfo.inputType == 0)).setListener(gameActivity);
        }

        @Override // android.view.View
        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            if (!this.mInputConnection.getSoftKeyboardActive()) {
                return null;
            }
            if (editorInfo != null) {
                GameTextInput.copyEditorInfo(this.mInputConnection.getEditorInfo(), editorInfo);
            }
            return this.mInputConnection;
        }

        public EditorInfo getEditorInfo() {
            return this.mInputConnection.getEditorInfo();
        }

        public void setEditorInfo(EditorInfo editorInfo) {
            this.mInputConnection.setEditorInfo(editorInfo);
        }
    }
}
