package com.microsoft.xbox.service.network.managers;

import com.microsoft.xbox.service.model.serialization.UTCDateConverterGson;
import com.microsoft.xbox.toolkit.GsonUtil;
import com.microsoft.xbox.toolkit.XLEConstants;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;

/* JADX INFO: loaded from: classes3.dex */
public interface IFollowerPresenceResult {

    public static class ActivityRecord {
        public BroadcastRecord broadcast;
        public String richPresence;
    }

    public static class BroadcastRecord {
        public String id;
        public String provider;
        public String session;
        public int viewers;
    }

    public static class LastSeenRecord {
        public String deviceType;
        public String titleName;
    }

    public static class UserPresence {
        private BroadcastRecord broadcastRecord;
        private boolean broadcastRecordSet;
        public ArrayList<DeviceRecord> devices;
        public LastSeenRecord lastSeen;
        public String state;
        public String xuid;

        public BroadcastRecord getBroadcastRecord(long j) {
            if (!this.broadcastRecordSet) {
                if ("Online".equalsIgnoreCase(this.state)) {
                    loop0: for (DeviceRecord deviceRecord : this.devices) {
                        if (deviceRecord.isXboxOne()) {
                            for (TitleRecord titleRecord : deviceRecord.titles) {
                                if (titleRecord.id == j && titleRecord.isRunningInFullOrFill() && titleRecord.activity != null && titleRecord.activity.broadcast != null) {
                                    this.broadcastRecord = titleRecord.activity.broadcast;
                                    break loop0;
                                }
                            }
                        }
                    }
                }
                this.broadcastRecordSet = true;
            }
            return this.broadcastRecord;
        }

        public int getBroadcastingViewerCount(long j) {
            BroadcastRecord broadcastRecord = getBroadcastRecord(j);
            if (broadcastRecord == null) {
                return 0;
            }
            return broadcastRecord.viewers;
        }

        public long getXboxOneNowPlayingTitleId() {
            long j = -1;
            if ("Online".equalsIgnoreCase(this.state)) {
                for (DeviceRecord deviceRecord : this.devices) {
                    if (deviceRecord.isXboxOne()) {
                        for (TitleRecord titleRecord : deviceRecord.titles) {
                            if (titleRecord.isRunningInFullOrFill()) {
                                j = titleRecord.id;
                                break;
                            }
                        }
                    }
                }
            }
            return j;
        }

        public Date getXboxOneNowPlayingDate() {
            Date date = null;
            if ("Online".equalsIgnoreCase(this.state)) {
                for (DeviceRecord deviceRecord : this.devices) {
                    if (deviceRecord.isXboxOne()) {
                        for (TitleRecord titleRecord : deviceRecord.titles) {
                            if (titleRecord.isRunningInFullOrFill()) {
                                date = titleRecord.lastModified;
                                break;
                            }
                        }
                    }
                }
            }
            return date;
        }
    }

    public static class DeviceRecord {
        public ArrayList<TitleRecord> titles;
        public String type;

        public boolean isXboxOne() {
            return "XboxOne".equalsIgnoreCase(this.type);
        }

        public boolean isXbox360() {
            return "Xbox360".equalsIgnoreCase(this.type);
        }
    }

    public static class TitleRecord {
        public ActivityRecord activity;
        public long id;
        public Date lastModified;
        public String name;
        public String placement;

        public boolean isRunningInFullOrFill() {
            return "Full".equalsIgnoreCase(this.placement) || "Fill".equalsIgnoreCase(this.placement);
        }

        public boolean isDash() {
            return this.id == XLEConstants.DASH_TITLE_ID;
        }
    }

    public static class FollowersPresenceResult {
        public ArrayList<UserPresence> userPresence;

        public static FollowersPresenceResult deserialize(InputStream inputStream) {
            UserPresence[] userPresenceArr = (UserPresence[]) GsonUtil.deserializeJson(inputStream, UserPresence[].class, Date.class, new UTCDateConverterGson.UTCDateConverterJSONDeserializer());
            if (userPresenceArr == null) {
                return null;
            }
            FollowersPresenceResult followersPresenceResult = new FollowersPresenceResult();
            followersPresenceResult.userPresence = new ArrayList<>(Arrays.asList(userPresenceArr));
            return followersPresenceResult;
        }
    }
}
