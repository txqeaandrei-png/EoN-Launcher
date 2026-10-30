package com.microsoft.xbox.telemetry.helpers;

import com.microsoft.xbox.telemetry.utc.model.UTCNames;
import com.microsoft.xbox.toolkit.XLEAssert;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class UTCReportUser {
    public static CharSequence currentActivityTitle = "";
    public static String currentXUID = "";

    private static void verifyTrackedDefaults() {
        XLEAssert.assertFalse("Called trackPeopleHubView without set currentXUID", currentXUID.equals(""));
        XLEAssert.assertFalse("Called trackPeopleHubView without set activityTitle", currentActivityTitle.toString().equals(""));
    }

    public static HashMap<String, Object> getAdditionalInfo(String str) {
        HashMap<String, Object> map = new HashMap<>();
        map.put(UTCDeepLink.TARGET_XUID_KEY, "x:" + str);
        return map;
    }

    public static void trackReportView(CharSequence charSequence, final String str) {
        UTCEventTracker.callTrackWrapper(new UTCEventTracker.UTCEventDelegate() { // from class: com.microsoft.xbox.telemetry.helpers.UTCReportUser$$ExternalSyntheticLambda0
            @Override // com.microsoft.xbox.telemetry.helpers.UTCEventTracker.UTCEventDelegate
            public final void call() {
                UTCPageView.track(UTCNames.PageView.PeopleHub.ReportView, UTCReportUser.currentActivityTitle, UTCReportUser.getAdditionalInfo(str));
            }
        });
    }

    public static void trackReportDialogOK(String str) {
        verifyTrackedDefaults();
        trackReportDialogOK(currentActivityTitle, currentXUID, str);
    }

    public static void trackReportDialogOK(final CharSequence charSequence, final String str, final String str2) {
        UTCEventTracker.callTrackWrapper(new UTCEventTracker.UTCEventDelegate() { // from class: com.microsoft.xbox.telemetry.helpers.UTCReportUser$$ExternalSyntheticLambda1
            @Override // com.microsoft.xbox.telemetry.helpers.UTCEventTracker.UTCEventDelegate
            public final void call() {
                UTCReportUser.lambda$trackReportDialogOK$1(str, str2, charSequence);
            }
        });
    }

    static /* synthetic */ void lambda$trackReportDialogOK$1(String str, String str2, CharSequence charSequence) {
        HashMap<String, Object> additionalInfo = getAdditionalInfo(str);
        additionalInfo.put("reason", str2);
        UTCPageAction.track(UTCNames.PageAction.PeopleHub.ReportOK, charSequence, additionalInfo);
    }
}
