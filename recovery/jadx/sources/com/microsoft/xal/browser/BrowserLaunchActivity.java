package com.microsoft.xal.browser;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import androidx.appcompat.app.AppCompatActivity;
import androidx.browser.customtabs.CustomTabsIntent;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0004\u0018\u0000 ,2\u00020\u0001:\u0001,B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\f\u001a\u00020\u0006H\u0002J\u001a\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0004H\u0002J\"\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0017J\u0012\u0010\u0018\u001a\u00020\u000e2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0014J\b\u0010\u001b\u001a\u00020\u000eH\u0014J\u0010\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u001d\u001a\u00020\u000eH\u0014J\u0010\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u001aH\u0014J\u0010\u0010\u001f\u001a\u00020\u000e2\u0006\u0010 \u001a\u00020\bH\u0002J(\u0010!\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u00042\u0006\u0010%\u001a\u00020&H\u0002JA\u0010'\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u00042\u0006\u0010%\u001a\u00020&2\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00040)2\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00040)H\u0002¢\u0006\u0002\u0010+R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006-"}, d2 = {"Lcom/microsoft/xal/browser/BrowserLaunchActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "()V", "mBrowserInfo", "", "mCustomTabsInProgress", "", "mLaunchParameters", "Lcom/microsoft/xal/browser/BrowserLaunchParameters;", "mOperationId", "", "mSharedBrowserUsed", "checkNativeCodeLoaded", "finishOperation", "", "webResult", "Lcom/microsoft/xal/browser/WebResult;", "finalUrl", "onActivityResult", "requestCode", "", "resultCode", "intent", "Landroid/content/Intent;", "onCreate", "bundle", "Landroid/os/Bundle;", "onDestroy", "onNewIntent", "onResume", "onSaveInstanceState", "startAuthSession", "browserLaunchParameters", "startCustomTabsInBrowser", "packageName", "startUrl", "endUrl", "showUrlType", "Lcom/microsoft/xal/browser/ShowUrlType;", "startWebView", "requestHeaderKeys", "", "requestHeaderValues", "(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/xal/browser/ShowUrlType;[Ljava/lang/String;[Ljava/lang/String;)V", "Companion", "xal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BrowserLaunchActivity extends AppCompatActivity {
    private static final String BROWSER_INFO_STATE_KEY = "BROWSER_INFO_STATE";
    private static final String CUSTOM_TABS_IN_PROGRESS_STATE_KEY = "CUSTOM_TABS_IN_PROGRESS_STATE";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final String END_URL = "END_URL";
    public static final String IN_PROC_BROWSER = "IN_PROC_BROWSER";
    public static final String OPERATION_ID = "OPERATION_ID";
    private static final String OPERATION_ID_STATE_KEY = "OPERATION_ID_STATE";
    public static final String REQUEST_HEADER_KEYS = "REQUEST_HEADER_KEYS";
    public static final String REQUEST_HEADER_VALUES = "REQUEST_HEADER_VALUES";
    public static final int RESULT_FAILED = 8052;
    public static final int RESULT_UNRECOGNIZED = 8054;
    private static final String SHARED_BROWSER_USED_STATE_KEY = "SHARED_BROWSER_USED_STATE";
    public static final String SHOW_TYPE = "SHOW_TYPE";
    public static final String START_URL = "START_URL";
    private static final String TAG = "BrowserLaunchActivity";
    public static final int WEB_KIT_WEB_VIEW_REQUEST = 8053;
    private String mBrowserInfo;
    private boolean mCustomTabsInProgress;
    private BrowserLaunchParameters mLaunchParameters;
    private long mOperationId;
    private boolean mSharedBrowserUsed;

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final native void checkIsLoaded();

    @JvmStatic
    public static final void showUrl(long j, Context context, String str, String str2, int i, boolean z, long j2) {
        INSTANCE.showUrl(j, context, str, str2, i, z, j2);
    }

    @JvmStatic
    public static final void showUrl(long j, Context context, String str, String str2, int i, String[] strArr, String[] strArr2, boolean z) {
        INSTANCE.showUrl(j, context, str, str2, i, strArr, strArr2, z);
    }

    @JvmStatic
    public static final void showUrl(long j, Context context, String str, String str2, int i, String[] strArr, String[] strArr2, boolean z, long j2) {
        INSTANCE.showUrl(j, context, str, str2, i, strArr, strArr2, z, j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final native void urlOperationCanceled(long j, boolean z, String str);

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final native void urlOperationFailed(long j, boolean z, String str);

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final native void urlOperationSucceeded(long j, String str, boolean z, String str2);

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle extras = getIntent().getExtras();
        if (!checkNativeCodeLoaded()) {
            Log.e(TAG, "onCreate() Called while XAL not loaded. Dropping flow and starting app's main activity.");
            startActivity(getApplicationContext().getPackageManager().getLaunchIntentForPackage(getApplicationContext().getPackageName()));
            finish();
            return;
        }
        if (bundle != null) {
            Log.e(TAG, "onCreate() Recreating with saved state.");
            this.mOperationId = bundle.getLong(OPERATION_ID_STATE_KEY);
            this.mCustomTabsInProgress = bundle.getBoolean(CUSTOM_TABS_IN_PROGRESS_STATE_KEY);
            this.mSharedBrowserUsed = bundle.getBoolean(SHARED_BROWSER_USED_STATE_KEY);
            this.mBrowserInfo = bundle.getString(BROWSER_INFO_STATE_KEY);
            return;
        }
        if (extras != null) {
            Log.e(TAG, "onCreate() Created with intent args. Starting auth session.");
            this.mOperationId = extras.getLong(OPERATION_ID, 0L);
            BrowserLaunchParameters browserLaunchParametersParameters = BrowserLaunchParameters.INSTANCE.parameters(extras);
            this.mLaunchParameters = browserLaunchParametersParameters;
            if (browserLaunchParametersParameters == null || this.mOperationId == 0) {
                Log.e(TAG, "onCreate() Found invalid args, failing operation.");
                finishOperation(WebResult.FAIL, null);
                return;
            }
            return;
        }
        if (getIntent().getData() != null) {
            Log.e(TAG, "onCreate() Unexpectedly created with intent data. Finishing with failure.");
            setResult(8052);
            finishOperation(WebResult.FAIL, null);
        } else {
            Log.e(TAG, "onCreate() Unexpectedly created, reason unknown. Finishing with failure.");
            setResult(8052);
            finishOperation(WebResult.FAIL, null);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        Log.e(TAG, "onResume()");
        boolean z = this.mCustomTabsInProgress;
        BrowserLaunchParameters browserLaunchParameters = this.mLaunchParameters;
        if (!z && browserLaunchParameters != null) {
            Log.e(TAG, "onResume() Resumed with launch parameters. Starting auth session.");
            this.mLaunchParameters = null;
            startAuthSession(browserLaunchParameters);
        } else {
            if (z) {
                this.mCustomTabsInProgress = false;
                Uri data = getIntent().getData();
                if (data != null) {
                    Log.e(TAG, "onResume() Resumed with intent data. Finishing operation successfully.");
                    finishOperation(WebResult.SUCCESS, data.toString());
                    return;
                } else {
                    Log.e(TAG, "onResume() Resumed with no intent data. Canceling operation.");
                    finishOperation(WebResult.CANCEL, null);
                    return;
                }
            }
            Log.e(TAG, "onResume() No action to take. This shouldn't happen.");
        }
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        super.onSaveInstanceState(bundle);
        Log.e(TAG, "onSaveInstanceState() Preserving state.");
        bundle.putLong(OPERATION_ID_STATE_KEY, this.mOperationId);
        bundle.putBoolean(CUSTOM_TABS_IN_PROGRESS_STATE_KEY, this.mCustomTabsInProgress);
        bundle.putBoolean(SHARED_BROWSER_USED_STATE_KEY, this.mSharedBrowserUsed);
        bundle.putString(BROWSER_INFO_STATE_KEY, this.mBrowserInfo);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        super.onNewIntent(intent);
        Log.e(TAG, "onNewIntent() Received intent.");
        setIntent(intent);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    @Deprecated(message = "Deprecated in Java")
    public void onActivityResult(int requestCode, int resultCode, Intent intent) {
        Bundle extras;
        super.onActivityResult(requestCode, resultCode, intent);
        Log.e(TAG, "onActivityResult() Result received.");
        if (requestCode == 8053) {
            String string = null;
            if (resultCode != -1) {
                if (resultCode == 0) {
                    finishOperation(WebResult.CANCEL, null);
                    return;
                } else if (resultCode == 8054) {
                    Log.w(TAG, "onActivityResult() Unrecognized result code received from web view: " + resultCode);
                    return;
                } else {
                    finishOperation(WebResult.FAIL, null);
                    return;
                }
            }
            if (intent != null && (extras = intent.getExtras()) != null) {
                string = extras.getString(WebKitWebViewController.RESPONSE_KEY, "");
            }
            String str = string;
            if (str == null || str.length() == 0) {
                Log.e(TAG, "onActivityResult() Invalid final URL received from web view.");
            } else {
                finishOperation(WebResult.SUCCESS, string);
            }
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        Log.w(TAG, "onDestroy()");
        if (!isFinishing() || this.mOperationId == 0) {
            return;
        }
        Log.w(TAG, "onDestroy() Activity is finishing with operation in progress, canceling.");
        finishOperation(WebResult.CANCEL, null);
    }

    private final void startAuthSession(BrowserLaunchParameters browserLaunchParameters) {
        Context applicationContext = getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        BrowserSelectionResult browserSelectionResultSelectBrowser = BrowserSelector.selectBrowser(applicationContext, browserLaunchParameters.getUseInProcBrowser());
        String string = browserSelectionResultSelectBrowser.toString();
        this.mBrowserInfo = string;
        Log.i(TAG, "startAuthSession() Set browser info: " + string);
        Log.i(TAG, "startAuthSession() Starting auth session for ShowUrlType: " + browserLaunchParameters.getShowType());
        String strPackageName = browserSelectionResultSelectBrowser.packageName();
        if (strPackageName == null) {
            Log.i(TAG, "startAuthSession() BrowserSelector returned null package name. Choosing WebKit strategy.");
            startWebView(browserLaunchParameters.getStartUrl(), browserLaunchParameters.getEndUrl(), browserLaunchParameters.getShowType(), browserLaunchParameters.getRequestHeaderKeys(), browserLaunchParameters.getRequestHeaderValues());
        } else {
            Log.i(TAG, "startAuthSession() BrowserSelector returned non-null package name. Choosing CustomTabs strategy.");
            startCustomTabsInBrowser(strPackageName, browserLaunchParameters.getStartUrl(), browserLaunchParameters.getEndUrl(), browserLaunchParameters.getShowType());
        }
    }

    private final void startCustomTabsInBrowser(String packageName, String startUrl, String endUrl, ShowUrlType showUrlType) {
        if (showUrlType == ShowUrlType.CookieRemovalSkipIfSharedCredentials) {
            finishOperation(WebResult.SUCCESS, endUrl);
            return;
        }
        this.mCustomTabsInProgress = true;
        this.mSharedBrowserUsed = true;
        CustomTabsIntent.Builder builder = new CustomTabsIntent.Builder();
        builder.setShowTitle(true);
        CustomTabsIntent customTabsIntentBuild = builder.build();
        Intrinsics.checkNotNullExpressionValue(customTabsIntentBuild, "build(...)");
        customTabsIntentBuild.intent.setData(Uri.parse(startUrl));
        customTabsIntentBuild.intent.setPackage(packageName);
        startActivity(customTabsIntentBuild.intent);
    }

    private final void startWebView(String startUrl, String endUrl, ShowUrlType showUrlType, String[] requestHeaderKeys, String[] requestHeaderValues) {
        this.mSharedBrowserUsed = false;
        Bundle bundle = new Bundle();
        bundle.putString("START_URL", startUrl);
        bundle.putString("END_URL", endUrl);
        bundle.putSerializable("SHOW_TYPE", showUrlType);
        bundle.putStringArray("REQUEST_HEADER_KEYS", requestHeaderKeys);
        bundle.putStringArray("REQUEST_HEADER_VALUES", requestHeaderValues);
        Intent intent = new Intent(getApplicationContext(), (Class<?>) WebKitWebViewController.class);
        intent.putExtras(bundle);
        startActivityForResult(intent, WEB_KIT_WEB_VIEW_REQUEST);
    }

    private final void finishOperation(WebResult webResult, String finalUrl) {
        long j = this.mOperationId;
        this.mOperationId = 0L;
        finish();
        if (j == 0) {
            return;
        }
        int i = XalWebResult.mWebResult[webResult.ordinal()];
        if (i == 1) {
            INSTANCE.urlOperationSucceeded(j, finalUrl, this.mSharedBrowserUsed, this.mBrowserInfo);
        } else if (i == 2) {
            INSTANCE.urlOperationCanceled(j, this.mSharedBrowserUsed, this.mBrowserInfo);
        } else if (i != 3) {
            INSTANCE.urlOperationFailed(j, this.mSharedBrowserUsed, this.mBrowserInfo);
        }
    }

    private final boolean checkNativeCodeLoaded() {
        try {
            INSTANCE.checkIsLoaded();
            return true;
        } catch (UnsatisfiedLinkError unused) {
            return false;
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\t\u0010\u0014\u001a\u00020\u0015H\u0083 J]\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\r2\u000e\u0010\u001e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u001f2\u000e\u0010 \u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u001f2\u0006\u0010!\u001a\u00020\"H\u0007¢\u0006\u0002\u0010#Je\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\r2\u000e\u0010\u001e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u001f2\u000e\u0010 \u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u001f2\u0006\u0010!\u001a\u00020\"2\u0006\u0010$\u001a\u00020\u0018H\u0007¢\u0006\u0002\u0010%J@\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\r2\u0006\u0010!\u001a\u00020\"2\u0006\u0010&\u001a\u00020\u0018H\u0007J#\u0010'\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010(\u001a\u00020\"2\b\u0010)\u001a\u0004\u0018\u00010\u0004H\u0083 J#\u0010*\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010(\u001a\u00020\"2\b\u0010)\u001a\u0004\u0018\u00010\u0004H\u0083 J-\u0010+\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00182\b\u0010,\u001a\u0004\u0018\u00010\u00042\u0006\u0010(\u001a\u00020\"2\b\u0010)\u001a\u0004\u0018\u00010\u0004H\u0083 R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\rX\u0086T¢\u0006\u0002\n\u0000¨\u0006-"}, d2 = {"Lcom/microsoft/xal/browser/BrowserLaunchActivity$Companion;", "", "()V", "BROWSER_INFO_STATE_KEY", "", "CUSTOM_TABS_IN_PROGRESS_STATE_KEY", "END_URL", BrowserLaunchActivity.IN_PROC_BROWSER, BrowserLaunchActivity.OPERATION_ID, "OPERATION_ID_STATE_KEY", "REQUEST_HEADER_KEYS", "REQUEST_HEADER_VALUES", "RESULT_FAILED", "", "RESULT_UNRECOGNIZED", "SHARED_BROWSER_USED_STATE_KEY", "SHOW_TYPE", "START_URL", "TAG", "WEB_KIT_WEB_VIEW_REQUEST", "checkIsLoaded", "", "showUrl", "operationId", "", "context", "Landroid/content/Context;", "startUrl", "endUrl", "showTypeInt", "requestHeaderKeys", "", "requestHeaderValues", "useInProcBrowser", "", "(JLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;Z)V", "j2", "(JLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;ZJ)V", "j", "urlOperationCanceled", "sharedBrowserUsed", "browserInfo", "urlOperationFailed", "urlOperationSucceeded", "finalUrl", "xal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        @JvmStatic
        public final void checkIsLoaded() {
            BrowserLaunchActivity.checkIsLoaded();
        }

        /* JADX INFO: Access modifiers changed from: private */
        @JvmStatic
        public final void urlOperationCanceled(long operationId, boolean sharedBrowserUsed, String browserInfo) {
            BrowserLaunchActivity.urlOperationCanceled(operationId, sharedBrowserUsed, browserInfo);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @JvmStatic
        public final void urlOperationFailed(long operationId, boolean sharedBrowserUsed, String browserInfo) {
            BrowserLaunchActivity.urlOperationFailed(operationId, sharedBrowserUsed, browserInfo);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @JvmStatic
        public final void urlOperationSucceeded(long operationId, String finalUrl, boolean sharedBrowserUsed, String browserInfo) {
            BrowserLaunchActivity.urlOperationSucceeded(operationId, finalUrl, sharedBrowserUsed, browserInfo);
        }

        private Companion() {
        }

        @JvmStatic
        public final void showUrl(long operationId, Context context, String startUrl, String endUrl, int showTypeInt, String[] requestHeaderKeys, String[] requestHeaderValues, boolean useInProcBrowser, long j2) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(startUrl, "startUrl");
            Intrinsics.checkNotNullParameter(endUrl, "endUrl");
            Intrinsics.checkNotNullParameter(requestHeaderKeys, "requestHeaderKeys");
            Intrinsics.checkNotNullParameter(requestHeaderValues, "requestHeaderValues");
            showUrl(operationId, context, startUrl, endUrl, showTypeInt, requestHeaderKeys, requestHeaderValues, true);
        }

        @JvmStatic
        public final void showUrl(long operationId, Context context, String startUrl, String endUrl, int showTypeInt, String[] requestHeaderKeys, String[] requestHeaderValues, boolean useInProcBrowser) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(startUrl, "startUrl");
            Intrinsics.checkNotNullParameter(endUrl, "endUrl");
            Intrinsics.checkNotNullParameter(requestHeaderKeys, "requestHeaderKeys");
            Intrinsics.checkNotNullParameter(requestHeaderValues, "requestHeaderValues");
            if (startUrl.length() > 0 && endUrl.length() > 0) {
                Log.i(BrowserLaunchActivity.TAG, "JNI call received.");
                ShowUrlType showUrlTypeFromInt = ShowUrlType.INSTANCE.fromInt(showTypeInt);
                if (showUrlTypeFromInt == null) {
                    Log.e(BrowserLaunchActivity.TAG, "Unrecognized show type received: " + showTypeInt);
                    urlOperationFailed(operationId, false, null);
                    return;
                }
                if (requestHeaderKeys.length != requestHeaderValues.length) {
                    Log.e(BrowserLaunchActivity.TAG, "requestHeaderKeys different length than requestHeaderValues.");
                    urlOperationFailed(operationId, false, null);
                    return;
                }
                Bundle bundle = new Bundle();
                bundle.putLong(BrowserLaunchActivity.OPERATION_ID, operationId);
                bundle.putString("START_URL", startUrl);
                bundle.putString("END_URL", endUrl);
                bundle.putSerializable("SHOW_TYPE", showUrlTypeFromInt);
                bundle.putStringArray("REQUEST_HEADER_KEYS", requestHeaderKeys);
                bundle.putStringArray("REQUEST_HEADER_VALUES", requestHeaderValues);
                bundle.putBoolean(BrowserLaunchActivity.IN_PROC_BROWSER, useInProcBrowser);
                Intent intent = new Intent(context, (Class<?>) BrowserLaunchActivity.class);
                intent.putExtras(bundle);
                intent.setFlags(268435456);
                context.startActivity(intent);
                return;
            }
            Log.e(BrowserLaunchActivity.TAG, "Received invalid start or end URL.");
            urlOperationFailed(operationId, false, null);
        }

        @JvmStatic
        public final void showUrl(long operationId, Context context, String startUrl, String endUrl, int showTypeInt, boolean useInProcBrowser, long j) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(startUrl, "startUrl");
            Intrinsics.checkNotNullParameter(endUrl, "endUrl");
            showUrl(operationId, context, startUrl, endUrl, showTypeInt, new String[0], new String[0], false);
        }
    }
}
