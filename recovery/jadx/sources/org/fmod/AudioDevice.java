package org.fmod;

import android.media.AudioTrack;
import android.util.Log;

/* JADX INFO: loaded from: classes3.dex */
public class AudioDevice {
    private AudioTrack mTrack = null;

    private int fetchChannelConfigFromCount(int i) {
        if (i == 1) {
            return 2;
        }
        if (i == 2) {
            return 3;
        }
        return i == 6 ? 252 : 0;
    }

    public boolean init(int i, int i2, int i3, int i4) {
        int iFetchChannelConfigFromCount = fetchChannelConfigFromCount(i);
        int minBufferSize = AudioTrack.getMinBufferSize(i2, iFetchChannelConfigFromCount, 2);
        if (minBufferSize >= 0) {
            Log.i("fmod", "AudioDevice::init : Min buffer size: " + minBufferSize + " bytes");
        } else {
            Log.w("fmod", "AudioDevice::init : Couldn't query minimum buffer size, possibly unsupported sample rate or channel count");
        }
        int i5 = i3 * i4 * i * 2;
        int i6 = i5 > minBufferSize ? i5 : minBufferSize;
        Log.i("fmod", "AudioDevice::init : Actual buffer size: " + i6 + " bytes");
        try {
            AudioTrack audioTrack = new AudioTrack(3, i2, iFetchChannelConfigFromCount, 2, i6, 1);
            this.mTrack = audioTrack;
            try {
                audioTrack.play();
                return true;
            } catch (IllegalStateException unused) {
                Log.e("fmod", "AudioDevice::init : AudioTrack play caused IllegalStateException");
                this.mTrack.release();
                this.mTrack = null;
                return false;
            }
        } catch (IllegalArgumentException unused2) {
            Log.e("fmod", "AudioDevice::init : AudioTrack creation caused IllegalArgumentException");
            return false;
        }
    }

    public void close() {
        try {
            this.mTrack.stop();
        } catch (IllegalStateException unused) {
            Log.e("fmod", "AudioDevice::init : AudioTrack stop caused IllegalStateException");
        }
        this.mTrack.release();
        this.mTrack = null;
    }

    public void write(short[] sArr, int i) {
        this.mTrack.write(sArr, 0, i);
    }
}
