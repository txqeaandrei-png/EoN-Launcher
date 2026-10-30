package com.microsoft.xboxlive;

import android.content.Context;

/* JADX INFO: loaded from: classes3.dex */
public class LocalStorage {
    public static String getPath(Context context) {
        return context.getFilesDir().getPath();
    }
}
