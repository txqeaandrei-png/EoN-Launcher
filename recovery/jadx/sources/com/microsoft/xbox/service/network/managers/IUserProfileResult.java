package com.microsoft.xbox.service.network.managers;

import com.microsoft.xbox.service.model.sls.UserProfileSetting;
import com.microsoft.xbox.toolkit.GsonUtil;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public interface IUserProfileResult {

    public static class Settings {
        public String id;
        public String value;
    }

    public static class ProfileUser {
        private static final long FORCE_MATURITY_LEVEL_UPDATE_TIME = 10800000;
        public boolean canViewTVAdultContent;
        public ProfilePreferredColor colors;
        public String id;
        private int maturityLevel;
        private int[] privileges;
        public ArrayList<Settings> settings;
        private long updateMaturityLevelTimer = -1;

        private void fetchMaturityLevel() {
            try {
                FamilySettings familySettings = ServiceManagerFactory.getInstance().getSLSServiceManager().getFamilySettings(this.id);
                if (familySettings != null && familySettings.familyUsers != null) {
                    for (int i = 0; i < familySettings.familyUsers.size(); i++) {
                        if (familySettings.familyUsers.get(i).xuid.equalsIgnoreCase(this.id)) {
                            this.canViewTVAdultContent = familySettings.familyUsers.get(i).canViewTVAdultContent;
                            this.maturityLevel = familySettings.familyUsers.get(i).maturityLevel;
                            break;
                        }
                    }
                }
            } catch (Throwable unused) {
            }
            this.updateMaturityLevelTimer = System.currentTimeMillis();
        }

        public int getMaturityLevel() {
            if (this.updateMaturityLevelTimer < 0 || System.currentTimeMillis() - this.updateMaturityLevelTimer > FORCE_MATURITY_LEVEL_UPDATE_TIME) {
                fetchMaturityLevel();
            }
            return this.maturityLevel;
        }

        public void setmaturityLevel(int i) {
            this.maturityLevel = i;
            this.updateMaturityLevelTimer = System.currentTimeMillis();
        }

        public int[] getPrivileges() {
            return this.privileges;
        }

        public void setPrivilieges(int[] iArr) {
            this.privileges = iArr;
        }

        public String getSettingValue(UserProfileSetting userProfileSetting) {
            ArrayList<Settings> arrayList = this.settings;
            if (arrayList == null) {
                return null;
            }
            for (Settings settings : arrayList) {
                if (settings.id != null && settings.id.equals(userProfileSetting.toString())) {
                    return settings.value;
                }
            }
            return null;
        }
    }

    public static class UserProfileResult {
        public ArrayList<ProfileUser> profileUsers;

        public static UserProfileResult deserialize(String str) {
            return (UserProfileResult) GsonUtil.deserializeJson(str, UserProfileResult.class);
        }
    }
}
