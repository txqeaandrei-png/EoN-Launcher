package dev.blaze.launcher.ui;

import android.content.Context;

/* JADX INFO: loaded from: classes3.dex */
public class WheelConfigManager {
    public static WheelInstance[] wheels;

    public static void registerWheel(Context context, String str, OnWheelClickListener onWheelClickListener) {
        new CircleWheelView(context);
    }
}
