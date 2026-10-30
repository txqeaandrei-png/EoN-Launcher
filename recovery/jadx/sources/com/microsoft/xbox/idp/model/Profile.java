package com.microsoft.xbox.idp.model;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.TypeAdapter;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class Profile {

    public static final class GamerpicChoiceList {
        public List<GamerpicListEntry> gamerpics;
    }

    public static final class GamerpicListEntry {
        public String id;
    }

    public static final class GamerpicUpdateResponse {
    }

    public static final class Response {
        public User[] profileUsers;
    }

    public static final class Setting {
        public SettingId id;
        public String value;
    }

    public enum SettingId {
        AppDisplayName,
        GameDisplayName,
        Gamertag,
        RealName,
        FirstName,
        LastName,
        AppDisplayPicRaw,
        GameDisplayPicRaw,
        AccountTier,
        TenureLevel,
        Gamerscore,
        PreferredColor,
        Watermarks,
        XboxOneRep,
        Background,
        PublicGamerpicType,
        ShowUserAsAvatar,
        TileTransparency
    }

    public static final class User {
        public String id;
        public boolean isSponsoredUser;
        public Map<SettingId, String> settings;
    }

    public static GsonBuilder registerAdapters(GsonBuilder gsonBuilder) {
        return gsonBuilder.registerTypeAdapter(new TypeToken<Map<SettingId, String>>() { // from class: com.microsoft.xbox.idp.model.Profile.1
        }.getType(), new SettingsAdapter());
    }

    public static final class GamerpicChangeRequest {
        public UserSetting userSetting;

        public GamerpicChangeRequest(String str) {
            this.userSetting = new UserSetting("PublicGamerpic", str);
        }
    }

    public static final class UserSetting {
        public String id;
        public String value;

        public UserSetting(String str, String str2) {
            this.id = str;
            this.value = str2;
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    private static class SettingsAdapter extends TypeAdapter<Map<SettingId, String>> {
        private SettingsAdapter() {
        }

        @Override // com.google.gson.TypeAdapter
        public void write(JsonWriter jsonWriter, Map<SettingId, String> map) throws IOException {
            Setting[] settingArr = new Setting[map.size()];
            int i = -1;
            for (Map.Entry<SettingId, String> entry : map.entrySet()) {
                Setting setting = new Setting();
                setting.id = entry.getKey();
                setting.value = entry.getValue();
                i++;
                settingArr[i] = setting;
            }
            new Gson().toJson(settingArr, Setting[].class, jsonWriter);
        }

        @Override // com.google.gson.TypeAdapter
        /* JADX INFO: renamed from: read, reason: avoid collision after fix types in other method */
        public Map<SettingId, String> read2(JsonReader jsonReader) throws IOException {
            Setting[] settingArr = (Setting[]) new Gson().fromJson(jsonReader, Setting[].class);
            HashMap map = new HashMap();
            for (Setting setting : settingArr) {
                map.put(setting.id, setting.value);
            }
            return map;
        }
    }
}
