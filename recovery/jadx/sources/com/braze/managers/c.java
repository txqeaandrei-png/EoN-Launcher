package com.braze.managers;

import android.content.Context;
import android.content.SharedPreferences;
import com.braze.support.StringUtils;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class c {
    public static SharedPreferences a(Context context, String str, String str2, StringBuilder sb, int i) {
        return context.getSharedPreferences(sb.append(StringUtils.getCacheFileSuffix(context, str, str2)).toString(), i);
    }
}
