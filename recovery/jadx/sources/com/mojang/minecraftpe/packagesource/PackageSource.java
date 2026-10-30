package com.mojang.minecraftpe.packagesource;

import android.util.Log;
import java.util.EnumMap;

/* JADX INFO: loaded from: classes3.dex */
public abstract class PackageSource {
    static final EnumMap<StringResourceId, String> stringMap = new EnumMap<>(StringResourceId.class);

    public abstract void abortDownload();

    public abstract void destructor();

    public abstract void downloadFiles(String str, long j, boolean z, boolean z2);

    public abstract String getDownloadDirectoryPath();

    public abstract String getMountPath(String str);

    public abstract void mountFiles(String str);

    public abstract void pauseDownload();

    public abstract void resumeDownload();

    public abstract void resumeDownloadOnCell();

    public abstract void unmountFiles(String str);

    public static void setStringResource(int i, String str) {
        setStringResource(StringResourceId.fromInt(i), str);
    }

    public static void setStringResource(StringResourceId stringResourceId, String str) {
        EnumMap<StringResourceId, String> enumMap = stringMap;
        if (enumMap.containsKey(stringResourceId)) {
            Log.w("PackageSource", String.format("setStringResource - id: %s already set.", stringResourceId.name()));
        }
        enumMap.put(stringResourceId, str);
    }

    public static String getStringResource(StringResourceId stringResourceId) {
        EnumMap<StringResourceId, String> enumMap = stringMap;
        if (enumMap.containsKey(stringResourceId)) {
            return enumMap.get(stringResourceId);
        }
        Log.e("PackageSource", String.format("getStringResource - id: %s is not set.", stringResourceId.name()));
        return stringResourceId.name();
    }

    public enum StringResourceId {
        STATE_UNKNOWN(0),
        STATE_IDLE(1),
        STATE_FETCHING_URL(2),
        STATE_CONNECTING(3),
        STATE_DOWNLOADING(4),
        STATE_COMPLETED(5),
        STATE_PAUSED_NETWORK_UNAVAILABLE(6),
        STATE_PAUSED_NETWORK_SETUP_FAILURE(7),
        STATE_PAUSED_BY_REQUEST(8),
        STATE_PAUSED_WIFI_UNAVAILABLE(9),
        STATE_PAUSED_WIFI_DISABLED(10),
        STATE_PAUSED_ROAMING(11),
        STATE_PAUSED_SDCARD_UNAVAILABLE(12),
        STATE_FAILED_UNLICENSED(13),
        STATE_FAILED_FETCHING_URL(14),
        STATE_FAILED_SDCARD_FULL(15),
        STATE_FAILED_CANCELLED(16),
        STATE_FAILED(17),
        KILOBYTES_PER_SECOND(18),
        TIME_REMAINING_NOTIFICATION(19),
        NOTIFICATIONCHANNEL_NAME(20),
        NOTIFICATIONCHANNEL_DESCRIPTION(21);

        private final int value;

        StringResourceId(int i) {
            this.value = i;
        }

        public static StringResourceId fromInt(int i) {
            for (StringResourceId stringResourceId : values()) {
                if (stringResourceId.getValue() == i) {
                    return stringResourceId;
                }
            }
            throw new IllegalArgumentException("Invalid value");
        }

        public int getValue() {
            return this.value;
        }
    }
}
