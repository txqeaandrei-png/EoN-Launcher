package com.braze.storage;

import android.content.Context;
import android.content.SharedPreferences;
import com.braze.coroutine.BrazeCoroutineScope;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes.dex */
public final class e implements SharedPreferences {
    public final Context a;
    public SharedPreferences b;
    public final Job c;

    public e(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter("persistent.com.appboy.storage.sdk_enabled_cache", "name");
        this.a = context;
        this.c = BuildersKt__Builders_commonKt.launch$default(BrazeCoroutineScope.INSTANCE, null, null, new c(this, null), 3, null);
    }

    public final void a() throws InterruptedException {
        if (!this.c.isCompleted()) {
            BuildersKt__BuildersKt.runBlocking$default(null, new d(this, null), 1, null);
        }
        this.b = this.a.getSharedPreferences("persistent.com.appboy.storage.sdk_enabled_cache", 0);
    }

    @Override // android.content.SharedPreferences
    public final boolean contains(String str) throws InterruptedException {
        a();
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prefs");
            sharedPreferences = null;
        }
        return sharedPreferences.contains(str);
    }

    @Override // android.content.SharedPreferences
    public final SharedPreferences.Editor edit() throws InterruptedException {
        a();
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prefs");
            sharedPreferences = null;
        }
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        Intrinsics.checkNotNullExpressionValue(editorEdit, "edit(...)");
        return editorEdit;
    }

    @Override // android.content.SharedPreferences
    public final Map getAll() throws InterruptedException {
        a();
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prefs");
            sharedPreferences = null;
        }
        Map<String, ?> all = sharedPreferences.getAll();
        Intrinsics.checkNotNullExpressionValue(all, "getAll(...)");
        return all;
    }

    @Override // android.content.SharedPreferences
    public final boolean getBoolean(String str, boolean z) {
        a();
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prefs");
            sharedPreferences = null;
        }
        return sharedPreferences.getBoolean(str, z);
    }

    @Override // android.content.SharedPreferences
    public final float getFloat(String str, float f) throws InterruptedException {
        a();
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prefs");
            sharedPreferences = null;
        }
        return sharedPreferences.getFloat(str, f);
    }

    @Override // android.content.SharedPreferences
    public final int getInt(String str, int i) throws InterruptedException {
        a();
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prefs");
            sharedPreferences = null;
        }
        return sharedPreferences.getInt(str, i);
    }

    @Override // android.content.SharedPreferences
    public final long getLong(String str, long j) throws InterruptedException {
        a();
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prefs");
            sharedPreferences = null;
        }
        return sharedPreferences.getLong(str, j);
    }

    @Override // android.content.SharedPreferences
    public final String getString(String str, String str2) throws InterruptedException {
        a();
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prefs");
            sharedPreferences = null;
        }
        return sharedPreferences.getString(str, str2);
    }

    @Override // android.content.SharedPreferences
    public final Set getStringSet(String str, Set set) throws InterruptedException {
        a();
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prefs");
            sharedPreferences = null;
        }
        return sharedPreferences.getStringSet(str, set);
    }

    @Override // android.content.SharedPreferences
    public final void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) throws InterruptedException {
        a();
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prefs");
            sharedPreferences = null;
        }
        sharedPreferences.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    @Override // android.content.SharedPreferences
    public final void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) throws InterruptedException {
        a();
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prefs");
            sharedPreferences = null;
        }
        sharedPreferences.unregisterOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }
}
