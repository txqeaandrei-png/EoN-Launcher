package com.microsoft.xbox.telemetry.helpers;

import com.microsoft.xbox.telemetry.utc.CommonData;
import com.microsoft.xbox.telemetry.utc.model.UTCNames;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class UTCDeepLink {
    public static final String CALLING_APP_KEY = "deepLinkCaller";
    public static final String DEEPLINK_KEY_NAME = "deepLinkId";
    public static final String INTENDED_ACTION_KEY = "intendedAction";
    public static final String TARGET_TITLE_KEY = "targetTitleId";
    public static final String TARGET_XUID_KEY = "targetXUID";

    private static String generateCorrelationId() {
        return CommonData.getApplicationSession();
    }

    public static HashMap<String, Object> getAdditionalInfo(String str) {
        HashMap<String, Object> map = new HashMap<>();
        map.put(DEEPLINK_KEY_NAME, generateCorrelationId());
        map.put(CALLING_APP_KEY, str);
        return map;
    }

    public static String trackUserProfileLink(final CharSequence charSequence, final String str, final String str2) {
        return UTCEventTracker.callStringTrackWrapper(new UTCEventTracker.UTCStringEventDelegate() { // from class: com.microsoft.xbox.telemetry.helpers.UTCDeepLink$$ExternalSyntheticLambda3
            @Override // com.microsoft.xbox.telemetry.helpers.UTCEventTracker.UTCStringEventDelegate
            public final String call() {
                return UTCDeepLink.lambda$trackUserProfileLink$0(str, str2, charSequence);
            }
        });
    }

    static /* synthetic */ String lambda$trackUserProfileLink$0(String str, String str2, CharSequence charSequence) {
        HashMap<String, Object> additionalInfo = getAdditionalInfo(str);
        additionalInfo.put(TARGET_XUID_KEY, "x:" + str2);
        UTCPageAction.track(UTCNames.PageAction.DeepLink.UserProfile, charSequence, additionalInfo);
        return additionalInfo.get(DEEPLINK_KEY_NAME).toString();
    }

    public static String trackGameHubLink(final CharSequence charSequence, final String str, final String str2) {
        return UTCEventTracker.callStringTrackWrapper(new UTCEventTracker.UTCStringEventDelegate() { // from class: com.microsoft.xbox.telemetry.helpers.UTCDeepLink$$ExternalSyntheticLambda0
            @Override // com.microsoft.xbox.telemetry.helpers.UTCEventTracker.UTCStringEventDelegate
            public final String call() {
                return UTCDeepLink.lambda$trackGameHubLink$1(str, str2, charSequence);
            }
        });
    }

    static /* synthetic */ String lambda$trackGameHubLink$1(String str, String str2, CharSequence charSequence) {
        HashMap<String, Object> additionalInfo = getAdditionalInfo(str);
        additionalInfo.put(TARGET_XUID_KEY, str2);
        UTCPageAction.track(UTCNames.PageAction.DeepLink.TitleHub, charSequence, additionalInfo);
        return additionalInfo.get(DEEPLINK_KEY_NAME).toString();
    }

    public static String trackGameHubAchievementsLink(final CharSequence charSequence, final String str, final String str2) {
        return UTCEventTracker.callStringTrackWrapper(new UTCEventTracker.UTCStringEventDelegate() { // from class: com.microsoft.xbox.telemetry.helpers.UTCDeepLink$$ExternalSyntheticLambda4
            @Override // com.microsoft.xbox.telemetry.helpers.UTCEventTracker.UTCStringEventDelegate
            public final String call() {
                return UTCDeepLink.lambda$trackGameHubAchievementsLink$2(str, str2, charSequence);
            }
        });
    }

    static /* synthetic */ String lambda$trackGameHubAchievementsLink$2(String str, String str2, CharSequence charSequence) {
        HashMap<String, Object> additionalInfo = getAdditionalInfo(str);
        additionalInfo.put(TARGET_TITLE_KEY, str2);
        UTCPageAction.track(UTCNames.PageAction.DeepLink.TitleHub, charSequence, additionalInfo);
        return additionalInfo.get(DEEPLINK_KEY_NAME).toString();
    }

    public static String trackUserSettingsLink(final CharSequence charSequence, final String str) {
        return UTCEventTracker.callStringTrackWrapper(new UTCEventTracker.UTCStringEventDelegate() { // from class: com.microsoft.xbox.telemetry.helpers.UTCDeepLink$$ExternalSyntheticLambda5
            @Override // com.microsoft.xbox.telemetry.helpers.UTCEventTracker.UTCStringEventDelegate
            public final String call() {
                return UTCDeepLink.lambda$trackUserSettingsLink$3(str, charSequence);
            }
        });
    }

    static /* synthetic */ String lambda$trackUserSettingsLink$3(String str, CharSequence charSequence) {
        HashMap<String, Object> additionalInfo = getAdditionalInfo(str);
        UTCPageAction.track(UTCNames.PageAction.DeepLink.UserSettings, charSequence, additionalInfo);
        return additionalInfo.get(DEEPLINK_KEY_NAME).toString();
    }

    public static void trackUserSendToStore(final CharSequence charSequence, final String str, final String str2) {
        UTCEventTracker.callTrackWrapper(new UTCEventTracker.UTCEventDelegate() { // from class: com.microsoft.xbox.telemetry.helpers.UTCDeepLink$$ExternalSyntheticLambda2
            @Override // com.microsoft.xbox.telemetry.helpers.UTCEventTracker.UTCEventDelegate
            public final void call() {
                UTCDeepLink.lambda$trackUserSendToStore$4(str, str2, charSequence);
            }
        });
    }

    static /* synthetic */ void lambda$trackUserSendToStore$4(String str, String str2, CharSequence charSequence) {
        HashMap<String, Object> additionalInfo = getAdditionalInfo(str);
        additionalInfo.put(INTENDED_ACTION_KEY, str2);
        UTCPageAction.track(UTCNames.PageAction.DeepLink.SendToStore, charSequence, additionalInfo);
    }

    public static String trackFriendSuggestionsLink(final CharSequence charSequence, final String str) {
        return UTCEventTracker.callStringTrackWrapper(new UTCEventTracker.UTCStringEventDelegate() { // from class: com.microsoft.xbox.telemetry.helpers.UTCDeepLink$$ExternalSyntheticLambda1
            @Override // com.microsoft.xbox.telemetry.helpers.UTCEventTracker.UTCStringEventDelegate
            public final String call() {
                return UTCDeepLink.lambda$trackFriendSuggestionsLink$5(str, charSequence);
            }
        });
    }

    static /* synthetic */ String lambda$trackFriendSuggestionsLink$5(String str, CharSequence charSequence) {
        HashMap<String, Object> additionalInfo = getAdditionalInfo(str);
        UTCPageAction.track(UTCNames.PageAction.DeepLink.FriendSuggestions, charSequence, additionalInfo);
        return additionalInfo.get(DEEPLINK_KEY_NAME).toString();
    }
}
