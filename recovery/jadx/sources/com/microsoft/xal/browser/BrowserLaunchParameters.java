package com.microsoft.xal.browser;

import android.os.Bundle;
import android.util.Log;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0018\u0018\u0000 \"2\u00020\u0001:\u0001\"BC\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0015\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\"\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0015\u001a\u0004\b\u0016\u0010\u0012\"\u0004\b\u0017\u0010\u0014R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u000e\"\u0004\b\u001d\u0010\u0010R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!¨\u0006#"}, d2 = {"Lcom/microsoft/xal/browser/BrowserLaunchParameters;", "", "startUrl", "", "endUrl", "requestHeaderKeys", "", "requestHeaderValues", "showType", "Lcom/microsoft/xal/browser/ShowUrlType;", "useInProcBrowser", "", "(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/microsoft/xal/browser/ShowUrlType;Z)V", "getEndUrl", "()Ljava/lang/String;", "setEndUrl", "(Ljava/lang/String;)V", "getRequestHeaderKeys", "()[Ljava/lang/String;", "setRequestHeaderKeys", "([Ljava/lang/String;)V", "[Ljava/lang/String;", "getRequestHeaderValues", "setRequestHeaderValues", "getShowType", "()Lcom/microsoft/xal/browser/ShowUrlType;", "setShowType", "(Lcom/microsoft/xal/browser/ShowUrlType;)V", "getStartUrl", "setStartUrl", "getUseInProcBrowser", "()Z", "setUseInProcBrowser", "(Z)V", "Companion", "xal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BrowserLaunchParameters {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = "BrowserLaunchActivity";
    private String endUrl;
    private String[] requestHeaderKeys;
    private String[] requestHeaderValues;
    private ShowUrlType showType;
    private String startUrl;
    private boolean useInProcBrowser;

    public /* synthetic */ BrowserLaunchParameters(String str, String str2, String[] strArr, String[] strArr2, ShowUrlType showUrlType, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, strArr, strArr2, showUrlType, z);
    }

    private BrowserLaunchParameters(String str, String str2, String[] strArr, String[] strArr2, ShowUrlType showUrlType, boolean z) {
        this.startUrl = str;
        this.endUrl = str2;
        this.requestHeaderKeys = strArr;
        this.requestHeaderValues = strArr2;
        this.showType = showUrlType;
        this.useInProcBrowser = z;
        if (showUrlType == ShowUrlType.NonAuthFlow) {
            Log.i(TAG, "BrowserLaunchParameters() Forcing inProc browser because flow is marked non-auth.");
        } else {
            if (!(this.requestHeaderKeys.length == 0)) {
                Log.i(TAG, "BrowserLaunchParameters() Forcing inProc browser because request headers were found.");
            }
        }
        this.useInProcBrowser = true;
    }

    public final String getStartUrl() {
        return this.startUrl;
    }

    public final void setStartUrl(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.startUrl = str;
    }

    public final String getEndUrl() {
        return this.endUrl;
    }

    public final void setEndUrl(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.endUrl = str;
    }

    public final String[] getRequestHeaderKeys() {
        return this.requestHeaderKeys;
    }

    public final void setRequestHeaderKeys(String[] strArr) {
        Intrinsics.checkNotNullParameter(strArr, "<set-?>");
        this.requestHeaderKeys = strArr;
    }

    public final String[] getRequestHeaderValues() {
        return this.requestHeaderValues;
    }

    public final void setRequestHeaderValues(String[] strArr) {
        Intrinsics.checkNotNullParameter(strArr, "<set-?>");
        this.requestHeaderValues = strArr;
    }

    public final ShowUrlType getShowType() {
        return this.showType;
    }

    public final void setShowType(ShowUrlType showUrlType) {
        Intrinsics.checkNotNullParameter(showUrlType, "<set-?>");
        this.showType = showUrlType;
    }

    public final boolean getUseInProcBrowser() {
        return this.useInProcBrowser;
    }

    public final void setUseInProcBrowser(boolean z) {
        this.useInProcBrowser = z;
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/microsoft/xal/browser/BrowserLaunchParameters$Companion;", "", "()V", "TAG", "", "parameters", "Lcom/microsoft/xal/browser/BrowserLaunchParameters;", "bundle", "Landroid/os/Bundle;", "xal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final BrowserLaunchParameters parameters(Bundle bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            String string = bundle.getString("START_URL");
            String string2 = bundle.getString("END_URL");
            String[] stringArray = bundle.getStringArray("REQUEST_HEADER_KEYS");
            String[] stringArray2 = bundle.getStringArray("REQUEST_HEADER_VALUES");
            Object obj = bundle.get("SHOW_TYPE");
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.microsoft.xal.browser.ShowUrlType");
            ShowUrlType showUrlType = (ShowUrlType) obj;
            boolean z = bundle.getBoolean(BrowserLaunchActivity.IN_PROC_BROWSER);
            if (string == null || string2 == null || stringArray == null || stringArray2 == null || stringArray.length != stringArray2.length) {
                return null;
            }
            return new BrowserLaunchParameters(string, string2, stringArray, stringArray2, showUrlType, z, null);
        }
    }
}
