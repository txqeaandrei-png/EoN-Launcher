package com.braze.storage;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.EnumSet;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class b0 {
    public final SharedPreferences a;

    public b0(Context context, String userId, String apiKey) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        SharedPreferences sharedPreferencesA = com.braze.managers.c.a(context, userId, apiKey, new StringBuilder("com.braze.storage.sdk_metadata_cache"), 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferencesA, "getSharedPreferences(...)");
        this.a = sharedPreferencesA;
    }

    public final void a(EnumSet sdkMetadata) {
        Intrinsics.checkNotNullParameter(sdkMetadata, "sdkMetadata");
        this.a.edit().putStringSet("tags", com.braze.support.f.a(sdkMetadata)).apply();
    }

    public final EnumSet b(EnumSet newSdkMetadata) {
        Intrinsics.checkNotNullParameter(newSdkMetadata, "newSdkMetadata");
        if (Intrinsics.areEqual(com.braze.support.f.a(newSdkMetadata), this.a.getStringSet("tags", SetsKt.emptySet()))) {
            return null;
        }
        return newSdkMetadata;
    }
}
