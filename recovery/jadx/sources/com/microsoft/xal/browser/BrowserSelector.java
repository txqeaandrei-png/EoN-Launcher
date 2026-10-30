package com.microsoft.xal.browser;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.net.Uri;
import android.util.Base64;
import android.util.Log;
import androidx.browser.customtabs.CustomTabsService;
import androidx.core.os.EnvironmentCompat;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005H\u0003J\u0010\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u000eH\u0003J\u0018\u0010\u000f\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005H\u0003J\u0010\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\bH\u0007J\u0010\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\nH\u0002R*\u0010\u0003\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/microsoft/xal/browser/BrowserSelector;", "", "()V", "customTabsAllowedBrowsers", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "browserAllowedForCustomTabs", "", "context", "Landroid/content/Context;", "packageName", "browserInfoImpliesNoUserDefault", "browserInfo", "Lcom/microsoft/xal/browser/BrowserInfo;", "browserSupportsCustomTabs", "hashFromSignature", "signature", "Landroid/content/pm/Signature;", "selectBrowser", "Lcom/microsoft/xal/browser/BrowserSelectionResult;", "useInProcBrowser", "userDefaultBrowserInfo", "xal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BrowserSelector {
    public static final BrowserSelector INSTANCE = new BrowserSelector();
    private static final HashMap<String, String> customTabsAllowedBrowsers;

    private BrowserSelector() {
    }

    static {
        HashMap<String, String> map = new HashMap<>();
        customTabsAllowedBrowsers = map;
        map.put("com.android.chrome", "OJGKRT0HGZNU+LGa8F7GViztV4g=");
        map.put("org.mozilla.firefox", "kg9Idqale0pqL0zK9l99Kc4m/yw=");
        map.put("com.microsoft.emmx", "P2QOJ59jvOpxCCrn6MfvotoBTK0=");
        map.put("com.sec.android.app.sbrowser", "nKUXDzgZGd/gRG/NqxixmhQ7MWM=");
    }

    @JvmStatic
    public static final BrowserSelectionResult selectBrowser(Context context, boolean useInProcBrowser) {
        String str;
        Intrinsics.checkNotNullParameter(context, "context");
        BrowserSelector browserSelector = INSTANCE;
        BrowserInfo browserInfoUserDefaultBrowserInfo = browserSelector.userDefaultBrowserInfo(context);
        boolean z = false;
        if (useInProcBrowser) {
            str = "inProcRequested";
        } else if (browserSelector.browserInfoImpliesNoUserDefault(browserInfoUserDefaultBrowserInfo)) {
            str = "noDefault";
        } else {
            String str2 = browserInfoUserDefaultBrowserInfo.packageName;
            if (!browserSelector.browserSupportsCustomTabs(context, str2)) {
                Log.e("BlazeLauncher", "selectBrowser() Default browser does not support custom tabs.");
                str = "CTNotSupported";
            } else if (!browserSelector.browserAllowedForCustomTabs(context, str2)) {
                Log.e("BlazeLauncher", "selectBrowser() Default browser supports custom tabs, but is not allowed.");
                str = "CTSupportedButNotAllowed";
            } else {
                Log.e("BlazeLauncher", "selectBrowser() Default browser supports custom tabs and is allowed.");
                str = "CTSupportedAndAllowed";
                z = true;
            }
        }
        return new BrowserSelectionResult(browserInfoUserDefaultBrowserInfo, str, z);
    }

    private final BrowserInfo userDefaultBrowserInfo(Context context) {
        String versionName;
        ActivityInfo activityInfo;
        ResolveInfo resolveInfoResolveActivity = context.getPackageManager().resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://microsoft.com")), 65536);
        String str = (resolveInfoResolveActivity == null || (activityInfo = resolveInfoResolveActivity.activityInfo) == null) ? null : activityInfo.packageName;
        if (str == null) {
            Log.e("BlazeLauncher", "userDefaultBrowserInfo() No default browser resolved.");
            return new BrowserInfo("none", 0, "none");
        }
        if (Intrinsics.areEqual(str, "android")) {
            Log.e("BlazeLauncher", "userDefaultBrowserInfo() System resolved as default browser.");
            return new BrowserInfo("android", 0, "none");
        }
        int i = -1;
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 0);
            i = packageInfo.versionCode;
            versionName = packageInfo.versionName;
            Intrinsics.checkNotNullExpressionValue(versionName, "versionName");
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("BlazeLauncher", "userDefaultBrowserInfo() Error in getPackageInfo(): " + e);
            versionName = EnvironmentCompat.MEDIA_UNKNOWN;
        }
        Log.e("BlazeLauncher", "userDefaultBrowserInfo() Found " + str + " as user's default browser.");
        return new BrowserInfo(str, i, versionName);
    }

    private final boolean browserInfoImpliesNoUserDefault(BrowserInfo browserInfo) {
        return browserInfo.versionCode == 0 && Intrinsics.areEqual(browserInfo.versionName, "none");
    }

    private final boolean browserAllowedForCustomTabs(Context context, String packageName) {
        String str = customTabsAllowedBrowsers.get(packageName);
        if (str == null) {
            return false;
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 64);
            if (packageInfo == null) {
                Log.e("BlazeLauncher", "No package info found for package: " + packageName);
                return false;
            }
            Signature[] signatures = packageInfo.signatures;
            Intrinsics.checkNotNullExpressionValue(signatures, "signatures");
            for (Signature signature : signatures) {
                Intrinsics.checkNotNull(signature);
                if (Intrinsics.areEqual(hashFromSignature(signature), str)) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("BlazeLauncher", "browserAllowedForCustomTabs() Error in getPackageInfo(): " + e);
        } catch (NoSuchAlgorithmException e2) {
            Log.e("BlazeLauncher", "browserAllowedForCustomTabs() Error in hashFromSignature(): " + e2);
        }
    }

    private final boolean browserSupportsCustomTabs(Context context, String packageName) {
        Iterator<ResolveInfo> it = context.getPackageManager().queryIntentServices(new Intent(CustomTabsService.ACTION_CUSTOM_TABS_CONNECTION), 0).iterator();
        while (it.hasNext()) {
            if (Intrinsics.areEqual(it.next().serviceInfo.packageName, packageName)) {
                return true;
            }
        }
        return false;
    }

    private final String hashFromSignature(Signature signature) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA");
        messageDigest.update(signature.toByteArray());
        String strEncodeToString = Base64.encodeToString(messageDigest.digest(), 2);
        Intrinsics.checkNotNullExpressionValue(strEncodeToString, "encodeToString(...)");
        return strEncodeToString;
    }
}
