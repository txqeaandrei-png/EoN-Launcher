package com.microsoft.xbox.service.model.sls;

import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xboxtcui.R;
import com.microsoft.xboxtcui.XboxTcuiSdk;

/* JADX INFO: loaded from: classes3.dex */
public enum FeedbackType {
    Unknown,
    FairPlayKillsTeammates,
    FairPlayCheater,
    FairPlayTampering,
    FairPlayQuitter,
    FairPlayKicked,
    FairPlayBlock,
    FairPlayUnblock,
    FairPlayUserBanRequest,
    FairPlayConsoleBanRequest,
    FairplayUnsporting,
    FairplayIdler,
    CommsTextMessage,
    CommsVoiceMessage,
    CommsPictureMessage,
    CommsInappropriateVideo,
    CommsAbusiveVoice,
    CommsSpam,
    CommsPhishing,
    CommsMuted,
    CommsUnmuted,
    Comms911,
    UserContentActivityFeed,
    UserContentGameDVR,
    UserContentGamertag,
    UserContentRealName,
    UserContentGamerpic,
    UserContentPersonalInfo,
    UserContentInappropriateUGC,
    UserContentReviewRequest,
    UserContentScreenshot,
    PositiveSkilledPlayer,
    PositiveHelpfulPlayer,
    PositiveHighQualityUGC,
    InternalReputationUpdated,
    InternalAmbassadorScoreUpdated,
    InternalReputationReset,
    InternalEnforcementDataUpdated;

    /* JADX INFO: renamed from: com.microsoft.xbox.service.model.sls.FeedbackType$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$microsoft$xbox$service$model$sls$FeedbackType;

        static {
            int[] iArr = new int[FeedbackType.values().length];
            $SwitchMap$com$microsoft$xbox$service$model$sls$FeedbackType = iArr;
            try {
                iArr[FeedbackType.UserContentPersonalInfo.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$service$model$sls$FeedbackType[FeedbackType.FairPlayCheater.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$service$model$sls$FeedbackType[FeedbackType.UserContentRealName.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$service$model$sls$FeedbackType[FeedbackType.UserContentGamertag.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$service$model$sls$FeedbackType[FeedbackType.UserContentGamerpic.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$service$model$sls$FeedbackType[FeedbackType.FairPlayQuitter.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$service$model$sls$FeedbackType[FeedbackType.FairplayUnsporting.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$service$model$sls$FeedbackType[FeedbackType.CommsAbusiveVoice.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public String getTitle() {
        switch (AnonymousClass1.$SwitchMap$com$microsoft$xbox$service$model$sls$FeedbackType[ordinal()]) {
            case 1:
                return XboxTcuiSdk.getResources().getString(R.string.ProfileCard_Report_BioLoc);
            case 2:
                return XboxTcuiSdk.getResources().getString(R.string.ProfileCard_Report_Cheating);
            case 3:
                return XboxTcuiSdk.getResources().getString(R.string.ProfileCard_Report_PlayerName);
            case 4:
                return XboxTcuiSdk.getResources().getString(R.string.ProfileCard_Report_PlayerName);
            case 5:
                return XboxTcuiSdk.getResources().getString(R.string.ProfileCard_Report_PlayerPic);
            case 6:
                return XboxTcuiSdk.getResources().getString(R.string.ProfileCard_Report_QuitEarly);
            case 7:
                return XboxTcuiSdk.getResources().getString(R.string.ProfileCard_Report_Unsporting);
            case 8:
                return XboxTcuiSdk.getResources().getString(R.string.ProfileCard_Report_VoiceComm);
            default:
                XLEAssert.fail("No title implementation.");
                return "";
        }
    }
}
