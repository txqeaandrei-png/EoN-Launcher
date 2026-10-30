package org.fmod;

import android.content.Context;
import android.content.res.AssetManager;
import android.media.AudioManager;

/* JADX INFO: loaded from: classes3.dex */
public class FMOD {
    private static Context gContext;

    public static void init(Context context) {
        gContext = context;
    }

    public static void close() {
        gContext = null;
    }

    public static boolean checkInit() {
        return gContext != null;
    }

    public static AssetManager getAssetManager() {
        Context context = gContext;
        if (context != null) {
            return context.getAssets();
        }
        return null;
    }

    public static boolean supportsLowLatency() {
        return gContext != null && gContext.getPackageManager().hasSystemFeature("android.hardware.audio.low_latency") && getOutputBlockSize() <= 1024;
    }

    public static int getOutputSampleRate() {
        String property;
        if (gContext == null || (property = ((AudioManager) gContext.getSystemService("audio")).getProperty("android.media.property.OUTPUT_SAMPLE_RATE")) == null) {
            return 0;
        }
        return Integer.parseInt(property);
    }

    public static int getOutputBlockSize() {
        String property;
        if (gContext == null || (property = ((AudioManager) gContext.getSystemService("audio")).getProperty("android.media.property.OUTPUT_FRAMES_PER_BUFFER")) == null) {
            return 0;
        }
        return Integer.parseInt(property);
    }
}
