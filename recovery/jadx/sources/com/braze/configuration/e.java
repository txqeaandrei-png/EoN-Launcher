package com.braze.configuration;

import android.content.Context;
import android.content.SharedPreferences;
import com.braze.j;
import com.braze.support.BrazeLogger;
import com.braze.support.StringUtils;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class e {
    public final SharedPreferences a;

    public e(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.appboy.offline.storagemap", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        this.a = sharedPreferences;
    }

    public static final String a(String str) {
        return j.a("Stored user ID is longer than 997 bytes. Truncating. Original user ID: ", str);
    }

    public static final String c(String str) {
        return j.a("Offline user storage provider was given user ID longer than 997. Rejecting. User ID: ", str);
    }

    public final void b(final String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        if (userId.length() == 0) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.configuration.e$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return e.b();
                }
            }, 6, (Object) null);
        } else {
            if (StringUtils.getByteSize(userId) > 997) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.configuration.e$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return e.c(userId);
                    }
                }, 6, (Object) null);
                return;
            }
            SharedPreferences.Editor editorEdit = this.a.edit();
            editorEdit.putString("last_user", userId);
            editorEdit.apply();
        }
    }

    public static final String b() {
        return "userId is empty in updateLastUserId. Rejecting.";
    }

    public final String a() {
        String string = this.a.getString("last_user", "");
        final String str = string != null ? string : "";
        if (StringUtils.getByteSize(str) <= 997) {
            return str;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.configuration.e$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return e.a(str);
            }
        }, 6, (Object) null);
        String strTruncateToByteLength = StringUtils.truncateToByteLength(str, 997);
        b(strTruncateToByteLength);
        return strTruncateToByteLength;
    }
}
