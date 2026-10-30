package com.microsoft.xal.browser;

import java.util.Arrays;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\t\u001a\u0004\u0018\u00010\u0005J\b\u0010\n\u001a\u00020\u0005H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/microsoft/xal/browser/BrowserSelectionResult;", "", "mDefaultBrowserInfo", "Lcom/microsoft/xal/browser/BrowserInfo;", "mNotes", "", "mUseCustomTabs", "", "(Lcom/microsoft/xal/browser/BrowserInfo;Ljava/lang/String;Z)V", "packageName", "toString", "xal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BrowserSelectionResult {
    private final BrowserInfo mDefaultBrowserInfo;
    private final String mNotes;
    private final boolean mUseCustomTabs;

    public BrowserSelectionResult(BrowserInfo mDefaultBrowserInfo, String mNotes, boolean z) {
        Intrinsics.checkNotNullParameter(mDefaultBrowserInfo, "mDefaultBrowserInfo");
        Intrinsics.checkNotNullParameter(mNotes, "mNotes");
        this.mDefaultBrowserInfo = mDefaultBrowserInfo;
        this.mNotes = mNotes;
        this.mUseCustomTabs = z;
    }

    public String toString() {
        Locale locale = Locale.US;
        String[] strArr = new String[4];
        strArr[0] = this.mUseCustomTabs ? "CT" : "WK";
        strArr[1] = this.mDefaultBrowserInfo.packageName;
        strArr[2] = this.mNotes;
        strArr[3] = this.mDefaultBrowserInfo.versionName;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        Object[] objArrCopyOf = Arrays.copyOf(strArr, 4);
        String str = String.format(locale, "%s-%s-%s::%s", Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return str;
    }

    public final String packageName() {
        if (this.mUseCustomTabs) {
            return this.mDefaultBrowserInfo.packageName;
        }
        return null;
    }
}
