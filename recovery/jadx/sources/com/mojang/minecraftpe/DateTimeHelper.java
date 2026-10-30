package com.mojang.minecraftpe;

import android.text.format.DateFormat;
import android.util.Log;

/* JADX INFO: loaded from: classes3.dex */
public class DateTimeHelper {
    public static boolean Is24HourTimeFormat() {
        try {
            return DateFormat.is24HourFormat(MainActivity.mInstance.getApplicationContext());
        } catch (Exception e) {
            Log.d("DateTimeHelper", e.getMessage());
            return true;
        }
    }
}
