package com.microsoft.xbox.toolkit;

import android.content.Context;
import android.media.AudioManager;
import android.media.SoundPool;
import com.microsoft.xboxtcui.XboxTcuiSdk;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class SoundManager {
    private static final int MAX_STREAM_SIZE = 14;
    private static final int NO_LOOP = 0;
    private final AudioManager audioManager;
    private final Context context;
    private boolean isEnabled;
    private final ArrayList<Integer> recentlyPlayedResourceIds;
    private final HashMap<Integer, Integer> resourceSoundIdMap;
    private final SoundPool soundPool;

    public void clearMostRecentlyPlayedResourceIds() {
    }

    private SoundManager() {
        this.resourceSoundIdMap = new HashMap<>();
        this.recentlyPlayedResourceIds = new ArrayList<>();
        this.isEnabled = false;
        XLEAssert.assertTrue("You must access sound manager on UI thread.", Thread.currentThread() == ThreadManager.UIThread);
        Context applicationContext = XboxTcuiSdk.getApplicationContext();
        this.context = applicationContext;
        this.soundPool = new SoundPool(14, 3, 0);
        this.audioManager = (AudioManager) applicationContext.getSystemService("audio");
    }

    public static SoundManager getInstance() {
        return SoundManagerHolder.instance;
    }

    public Integer[] getMostRecentlyPlayedResourceIds() {
        return new Integer[0];
    }

    public void setEnabled(boolean z) {
        if (this.isEnabled != z) {
            this.isEnabled = z;
        }
    }

    public void loadSound(int i) {
        if (this.resourceSoundIdMap.containsKey(Integer.valueOf(i))) {
            return;
        }
        this.resourceSoundIdMap.put(Integer.valueOf(i), Integer.valueOf(this.soundPool.load(this.context, i, 1)));
    }

    public void playSound(int i) {
        int iIntValue;
        if (this.isEnabled) {
            if (!this.resourceSoundIdMap.containsKey(Integer.valueOf(i))) {
                iIntValue = this.soundPool.load(this.context, i, 1);
                this.resourceSoundIdMap.put(Integer.valueOf(i), Integer.valueOf(iIntValue));
            } else {
                iIntValue = this.resourceSoundIdMap.get(Integer.valueOf(i)).intValue();
            }
            float streamVolume = this.audioManager.getStreamVolume(3) / this.audioManager.getStreamMaxVolume(3);
            this.soundPool.play(iIntValue, streamVolume, streamVolume, 1, 0, 1.0f);
        }
    }

    private static class SoundManagerHolder {
        public static final SoundManager instance = new SoundManager();

        private SoundManagerHolder() {
        }
    }
}
