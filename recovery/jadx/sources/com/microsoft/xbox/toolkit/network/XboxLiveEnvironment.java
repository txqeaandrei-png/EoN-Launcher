package com.microsoft.xbox.toolkit.network;

import com.microsoft.xbox.toolkit.XLEAssert;

/* JADX INFO: loaded from: classes3.dex */
public class XboxLiveEnvironment {
    public static final String NEVER_LIST_CONTRACT_VERSION = "1";
    public static final String SHARE_IDENTITY_CONTRACT_VERSION = "4";
    public static final String SOCIAL_SERVICE_GENERAL_CONTRACT_VERSION = "1";
    public static final String USER_PROFILE_CONTRACT_VERSION = "3";
    public static final String USER_PROFILE_PRIVACY_SETTINGS_CONTRACT_VERSION = "4";
    private static final XboxLiveEnvironment instance = new XboxLiveEnvironment();
    private final boolean useProxy = false;
    private final Environment environment = Environment.PROD;

    public enum Environment {
        STUB,
        VINT,
        CERTNET,
        PARTNERNET,
        PROD,
        DNET
    }

    public boolean getProxyEnabled() {
        return false;
    }

    public static XboxLiveEnvironment Instance() {
        return instance;
    }

    public String getFriendFinderSettingsUrl() {
        return "https://settings.xboxlive.com/settings/feature/friendfinder/settings";
    }

    public String getMutedServiceUrlFormat() {
        return "https://privacy.xboxlive.com/users/xuid(%s)/people/mute";
    }

    public String getPeopleHubFriendFinderStateUrlFormat() {
        return "https://peoplehub.xboxlive.com/users/me/friendfinder";
    }

    public String getPeopleHubRecommendationsUrlFormat() {
        return "https://peoplehub.xboxlive.com/users/me/people/recommendations";
    }

    public String getProfileSettingUrlFormat() {
        return "https://privacy.xboxlive.com/users/me/privacy/settings/%s";
    }

    public String getSetFriendFinderOptInStatusUrlFormat() {
        return "https://friendfinder.xboxlive.com/users/me/networks/%s/optin";
    }

    public String getShortCircuitProfileUrlFormat() {
        return "https://pf.directory.live.com/profile/mine/System.ShortCircuitProfile.json";
    }

    public String getSubmitFeedbackUrlFormat() {
        return "https://reputation.xboxlive.com/users/xuid(%s)/feedback";
    }

    public String getTenureWatermarkUrlFormat() {
        return "http://dlassets.xboxlive.com/public/content/ppl/watermarks/tenure/%s.png";
    }

    public String getUpdateThirdPartyTokenUrlFormat() {
        return "https://thirdpartytokens.xboxlive.com/users/me/networks/%s/token";
    }

    public String getUploadingPhoneContactsUrlFormat() {
        return "https://people.directory.live.com/people/ExternalSCDLookup";
    }

    public String getUserProfileSettingUrlFormat() {
        return "https://privacy.xboxlive.com/users/me/privacy/settings";
    }

    /* JADX INFO: renamed from: com.microsoft.xbox.toolkit.network.XboxLiveEnvironment$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$microsoft$xbox$toolkit$network$XboxLiveEnvironment$Environment;

        static {
            int[] iArr = new int[Environment.values().length];
            $SwitchMap$com$microsoft$xbox$toolkit$network$XboxLiveEnvironment$Environment = iArr;
            try {
                iArr[Environment.VINT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$toolkit$network$XboxLiveEnvironment$Environment[Environment.DNET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$toolkit$network$XboxLiveEnvironment$Environment[Environment.PARTNERNET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$toolkit$network$XboxLiveEnvironment$Environment[Environment.PROD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public String getUserProfileInfoUrl() {
        int i = AnonymousClass1.$SwitchMap$com$microsoft$xbox$toolkit$network$XboxLiveEnvironment$Environment[this.environment.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            return "https://profile.dnet.xboxlive.com/users/batch/profile/settings";
        }
        if (i == 4) {
            return "https://profile.xboxlive.com/users/batch/profile/settings";
        }
        throw new UnsupportedOperationException();
    }

    public String getAddFriendsToShareIdentityUrlFormat() {
        int i = AnonymousClass1.$SwitchMap$com$microsoft$xbox$toolkit$network$XboxLiveEnvironment$Environment[this.environment.ordinal()];
        if (i == 1 || i == 2) {
            return "https://social.dnet.xboxlive.com/users/xuid(%s)/people/identityshared/xuids?method=add";
        }
        if (i == 4) {
            return "https://social.xboxlive.com/users/xuid(%s)/people/identityshared/xuids?method=add";
        }
        throw new UnsupportedOperationException();
    }

    public String getRemoveUsersFromShareIdentityUrlFormat() {
        int i = AnonymousClass1.$SwitchMap$com$microsoft$xbox$toolkit$network$XboxLiveEnvironment$Environment[this.environment.ordinal()];
        if (i == 1 || i == 2) {
            return "https://social.dnet.xboxlive.com/users/xuid(%s)/people/identityshared/xuids?method=remove";
        }
        if (i == 4) {
            return "https://social.xboxlive.com/users/xuid(%s)/people/identityshared/xuids?method=remove";
        }
        throw new UnsupportedOperationException();
    }

    public String getProfileNeverListUrlFormat() {
        int i = AnonymousClass1.$SwitchMap$com$microsoft$xbox$toolkit$network$XboxLiveEnvironment$Environment[this.environment.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            return "https://privacy.dnet.xboxlive.com/users/xuid(%s)/people/never";
        }
        if (i == 4) {
            return "https://privacy.xboxlive.com/users/xuid(%s)/people/never";
        }
        throw new UnsupportedOperationException();
    }

    public String getProfileFavoriteListUrl() {
        int i = AnonymousClass1.$SwitchMap$com$microsoft$xbox$toolkit$network$XboxLiveEnvironment$Environment[this.environment.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            return "https://social.dnet.xboxlive.com/users/me/people/favorites/xuids?method=%s";
        }
        if (i == 4) {
            return "https://social.xboxlive.com/users/me/people/favorites/xuids?method=%s";
        }
        throw new UnsupportedOperationException();
    }

    public String updateProfileFollowingListUrl() {
        int i = AnonymousClass1.$SwitchMap$com$microsoft$xbox$toolkit$network$XboxLiveEnvironment$Environment[this.environment.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            return "https://social.dnet.xboxlive.com/users/me/people/xuids?method=%s";
        }
        if (i == 4) {
            return "https://social.xboxlive.com/users/me/people/xuids?method=%s";
        }
        throw new UnsupportedOperationException();
    }

    public String getProfileSummaryUrlFormat() {
        int i = AnonymousClass1.$SwitchMap$com$microsoft$xbox$toolkit$network$XboxLiveEnvironment$Environment[this.environment.ordinal()];
        if (i == 1 || i == 2) {
            return "https://social.dnet.xboxlive.com/users/xuid(%s)/summary";
        }
        if (i == 4) {
            return "https://social.xboxlive.com/users/xuid(%s)/summary";
        }
        throw new UnsupportedOperationException();
    }

    public Environment getEnvironment() {
        return this.environment;
    }

    public String getWatermarkUrl(String str) {
        String lowerCase = str.toLowerCase();
        lowerCase.hashCode();
        switch (lowerCase) {
            case "nxeteam":
                return "http://dlassets.xboxlive.com/public/content/ppl/watermarks/launch/nxeteam.png";
            case "xboxoneteam":
                return "http://dlassets.xboxlive.com/public/content/ppl/watermarks/launch/xboxoneteam.png";
            case "kinectteam":
                return "http://dlassets.xboxlive.com/public/content/ppl/watermarks/launch/kinectteam.png";
            case "launchteam":
                return "http://dlassets.xboxlive.com/public/content/ppl/watermarks/launch/launchteam.png";
            case "cheater":
                return "http://dlassets.xboxlive.com/public/content/ppl/watermarks/cheater.png";
            case "xboxnxoeteam":
                return "http://dlassets.xboxlive.com/public/content/ppl/watermarks/launch/xboxnxoeteam.png";
            case "xboxoriginalteam":
                return "http://dlassets.xboxlive.com/public/content/ppl/watermarks/launch/xboxoriginalteam.png";
            case "xboxlivelaunchteam":
                return "http://dlassets.xboxlive.com/public/content/ppl/watermarks/launch/xboxlivelaunchteam.png";
            default:
                XLEAssert.fail("Unsupported watermark value: " + str);
                return "";
        }
    }

    public String getGamertagSearchUrlFormat() {
        int i = AnonymousClass1.$SwitchMap$com$microsoft$xbox$toolkit$network$XboxLiveEnvironment$Environment[this.environment.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            return "https://profile.dnet.xboxlive.com/users/gt(%s)/profile/settings?settings=AppDisplayName,DisplayPic,Gamerscore,Gamertag,PublicGamerpic,XboxOneRep";
        }
        if (i == 4) {
            return "https://profile.xboxlive.com/users/gt(%s)/profile/settings?settings=AppDisplayName,DisplayPic,Gamerscore,Gamertag,PublicGamerpic,XboxOneRep";
        }
        throw new UnsupportedOperationException();
    }
}
