package com.braze.ui.support;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import com.braze.IBrazeDeeplinkHandler;
import com.braze.models.inappmessage.InAppMessageBase;
import com.braze.support.BrazeLogger;
import com.braze.ui.BrazeDeeplinkHandler;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a\u0016\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u0003*\u00020\u0004\u001a\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u001a\u0016\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u0001\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"TAG", "", "getQueryParameters", "", "Landroid/net/Uri;", "getMainActivityIntent", "Landroid/content/Intent;", "context", "Landroid/content/Context;", InAppMessageBase.EXTRAS, "Landroid/os/Bundle;", "isActivityRegisteredInManifest", "", "className", "android-sdk-ui_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class UriUtils {
    private static final String TAG = BrazeLogger.INSTANCE.getBrazeLogTag("UriUtils");

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v12, types: [T, android.net.Uri] */
    public static final Map<String, String> getQueryParameters(Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "<this>");
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = uri;
        String encodedQuery = ((Uri) objectRef.element).getEncodedQuery();
        if (encodedQuery == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, TAG, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.ui.support.UriUtils$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return UriUtils.getQueryParameters$lambda$0(objectRef);
                }
            }, 12, (Object) null);
            return MapsKt.emptyMap();
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        try {
            if (((Uri) objectRef.element).isOpaque()) {
                objectRef.element = Uri.parse("://").buildUpon().encodedQuery(encodedQuery).build();
            }
            Set<String> queryParameterNames = ((Uri) objectRef.element).getQueryParameterNames();
            Intrinsics.checkNotNullExpressionValue(queryParameterNames, "getQueryParameterNames(...)");
            ArrayList<String> arrayList = new ArrayList();
            for (Object obj : queryParameterNames) {
                String str = (String) obj;
                if (!(str == null || str.length() == 0)) {
                    arrayList.add(obj);
                }
            }
            for (String str2 : arrayList) {
                String queryParameter = ((Uri) objectRef.element).getQueryParameter(str2);
                String str3 = queryParameter;
                if (str3 != null && str3.length() != 0) {
                    linkedHashMap.put(str2, queryParameter);
                }
            }
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, TAG, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.ui.support.UriUtils$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return UriUtils.getQueryParameters$lambda$2(objectRef);
                }
            }, 8, (Object) null);
        }
        return linkedHashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getQueryParameters$lambda$0(Ref.ObjectRef objectRef) {
        return "Encoded query is null for Uri: " + objectRef.element + " Returning empty map for query parameters";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getQueryParameters$lambda$2(Ref.ObjectRef objectRef) {
        return "Failed to map the query parameters of Uri: " + objectRef.element;
    }

    public static /* synthetic */ Intent getMainActivityIntent$default(Context context, Bundle bundle, int i, Object obj) {
        if ((i & 2) != 0) {
            bundle = null;
        }
        return getMainActivityIntent(context, bundle);
    }

    public static final Intent getMainActivityIntent(Context context, Bundle bundle) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
        if (launchIntentForPackage != null) {
            launchIntentForPackage.setFlags(BrazeDeeplinkHandler.INSTANCE.getInstance().getIntentFlags(IBrazeDeeplinkHandler.IntentFlagPurpose.URI_UTILS_GET_MAIN_ACTIVITY_INTENT));
        }
        if (bundle != null && launchIntentForPackage != null) {
            launchIntentForPackage.putExtras(bundle);
        }
        return launchIntentForPackage;
    }

    public static final boolean isActivityRegisteredInManifest(Context context, final String className) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(className, "className");
        try {
            if (Build.VERSION.SDK_INT >= 33) {
                context.getPackageManager().getActivityInfo(new ComponentName(context, className), PackageManager.ComponentInfoFlags.of(0L));
            } else {
                context.getPackageManager().getActivityInfo(new ComponentName(context, className), 0);
            }
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, TAG, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.ui.support.UriUtils$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return UriUtils.isActivityRegisteredInManifest$lambda$3(className);
                }
            }, 8, (Object) null);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String isActivityRegisteredInManifest$lambda$3(String str) {
        return "Could not find activity info for class with name: " + str;
    }
}
