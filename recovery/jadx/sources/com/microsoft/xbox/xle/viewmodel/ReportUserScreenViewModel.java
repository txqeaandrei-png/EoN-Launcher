package com.microsoft.xbox.xle.viewmodel;

import com.microsoft.xbox.service.model.ProfileModel;
import com.microsoft.xbox.service.model.sls.FeedbackType;
import com.microsoft.xbox.telemetry.helpers.UTCPageView;
import com.microsoft.xbox.toolkit.AsyncActionStatus;
import com.microsoft.xbox.toolkit.DialogManager;
import com.microsoft.xbox.toolkit.JavaUtil;
import com.microsoft.xbox.toolkit.NetworkAsyncTask;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xbox.toolkit.XLEException;
import com.microsoft.xbox.toolkit.ui.NavigationManager;
import com.microsoft.xbox.toolkit.ui.ScreenLayout;
import com.microsoft.xbox.xle.app.adapter.ReportUserScreenAdapter;
import com.microsoft.xboxtcui.R;
import com.microsoft.xboxtcui.XboxTcuiSdk;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class ReportUserScreenViewModel extends ViewModelBase {
    private final FeedbackType[] feedbackReasons;
    public boolean isSubmittingReport;
    private final ProfileModel model;
    private FeedbackType selectedReason;
    private SubmitReportAsyncTask submitReportAsyncTask;

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    public void load(boolean z) {
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    public void onRehydrate() {
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    public void onStartOverride() {
    }

    public ReportUserScreenViewModel(ScreenLayout screenLayout) {
        super(screenLayout);
        String selectedProfile = NavigationManager.getInstance().getActivityParameters().getSelectedProfile();
        XLEAssert.assertTrue(!JavaUtil.isNullOrEmpty(selectedProfile));
        if (JavaUtil.isNullOrEmpty(selectedProfile)) {
            popScreenWithXuidError();
        }
        ProfileModel profileModel = ProfileModel.getProfileModel(selectedProfile);
        this.model = profileModel;
        XLEAssert.assertTrue(!JavaUtil.isNullOrEmpty(profileModel.getGamerTag()));
        this.adapter = new ReportUserScreenAdapter(this);
        FeedbackType[] feedbackTypeArr = new FeedbackType[7];
        feedbackTypeArr[0] = FeedbackType.UserContentPersonalInfo;
        feedbackTypeArr[1] = FeedbackType.FairPlayCheater;
        feedbackTypeArr[2] = JavaUtil.isNullOrEmpty(profileModel.getRealName()) ? FeedbackType.UserContentGamertag : FeedbackType.UserContentRealName;
        feedbackTypeArr[3] = FeedbackType.UserContentGamerpic;
        feedbackTypeArr[4] = FeedbackType.FairPlayQuitter;
        feedbackTypeArr[5] = FeedbackType.FairplayUnsporting;
        feedbackTypeArr[6] = FeedbackType.CommsAbusiveVoice;
        this.feedbackReasons = feedbackTypeArr;
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    public boolean onBackButtonPressed() {
        UTCPageView.removePage();
        try {
            NavigationManager.getInstance().PopScreensAndReplace(1, null, false, false, false, NavigationManager.getInstance().getActivityParameters());
            return true;
        } catch (XLEException unused) {
            return false;
        }
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    public void onStopOverride() {
        SubmitReportAsyncTask submitReportAsyncTask = this.submitReportAsyncTask;
        if (submitReportAsyncTask != null) {
            submitReportAsyncTask.cancel();
        }
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    public boolean isBusy() {
        return this.isSubmittingReport;
    }

    private void popScreenWithXuidError() {
        try {
            showError(R.string.Service_ErrorText);
            NavigationManager.getInstance().PopScreen();
        } catch (XLEException unused) {
        }
    }

    public int getPreferredColor() {
        return this.model.getPreferedColor();
    }

    public String getTitle() {
        return String.format(XboxTcuiSdk.getResources().getString(R.string.ProfileCard_Report_InfoString_Android), this.model.getGamerTag());
    }

    public ArrayList<String> getReasonTitles() {
        ArrayList<String> arrayList = new ArrayList<>(this.feedbackReasons.length);
        arrayList.add(XboxTcuiSdk.getResources().getString(R.string.ProfileCard_Report_SelectReason));
        for (FeedbackType feedbackType : this.feedbackReasons) {
            arrayList.add(feedbackType.getTitle());
        }
        return arrayList;
    }

    public boolean validReasonSelected() {
        return this.selectedReason != null;
    }

    public FeedbackType getReason() {
        return this.selectedReason;
    }

    /* JADX WARN: Code duplicated, block: B:6:0x000e  */
    public void setReason(int i) {
        FeedbackType feedbackType;
        if (i != 0) {
            int i2 = i - 1;
            FeedbackType[] feedbackTypeArr = this.feedbackReasons;
            if (i2 < feedbackTypeArr.length) {
                feedbackType = feedbackTypeArr[i - 1];
            } else {
                feedbackType = null;
            }
        } else {
            feedbackType = null;
        }
        this.selectedReason = feedbackType;
        updateAdapter();
    }

    public void submitReport(String str) {
        SubmitReportAsyncTask submitReportAsyncTask = this.submitReportAsyncTask;
        if (submitReportAsyncTask != null) {
            submitReportAsyncTask.cancel();
        }
        if (this.selectedReason != null) {
            SubmitReportAsyncTask submitReportAsyncTask2 = new SubmitReportAsyncTask(this.model, this.selectedReason, str);
            this.submitReportAsyncTask = submitReportAsyncTask2;
            submitReportAsyncTask2.load(true);
        }
    }

    /* JADX INFO: renamed from: com.microsoft.xbox.xle.viewmodel.ReportUserScreenViewModel$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes3.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus;

        static {
            int[] iArr = new int[AsyncActionStatus.values().length];
            $SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus = iArr;
            try {
                iArr[AsyncActionStatus.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus[AsyncActionStatus.NO_CHANGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus[AsyncActionStatus.NO_OP_SUCCESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus[AsyncActionStatus.FAIL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus[AsyncActionStatus.NO_OP_FAIL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public void onSubmitReportCompleted(AsyncActionStatus asyncActionStatus) {
        int i = AnonymousClass1.$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus[asyncActionStatus.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            DialogManager.getInstance().showToast(R.string.ProfileCard_Report_SuccessSubtext);
            onBackButtonPressed();
        } else if (i == 4 || i == 5) {
            showError(R.string.ProfileCard_Report_Error);
        }
    }

    public String getXUID() {
        return this.model.getXuid();
    }

    private class SubmitReportAsyncTask extends NetworkAsyncTask<AsyncActionStatus> {
        private final FeedbackType feedbackType;
        private final ProfileModel model;
        private final String textReason;

        private SubmitReportAsyncTask(ProfileModel profileModel, FeedbackType feedbackType, String str) {
            this.model = profileModel;
            this.feedbackType = feedbackType;
            this.textReason = str;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public boolean checkShouldExecute() {
            XLEAssert.assertIsUIThread();
            return true;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public void onNoAction() {
            XLEAssert.assertIsUIThread();
            ReportUserScreenViewModel.this.onSubmitReportCompleted(AsyncActionStatus.NO_CHANGE);
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPreExecute() {
            XLEAssert.assertIsUIThread();
            ReportUserScreenViewModel.this.isSubmittingReport = true;
            ReportUserScreenViewModel.this.updateAdapter();
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPostExecute(AsyncActionStatus asyncActionStatus) {
            ReportUserScreenViewModel.this.onSubmitReportCompleted(asyncActionStatus);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus onError() {
            return AsyncActionStatus.FAIL;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus loadDataInBackground() {
            XLEAssert.assertNotNull(this.model);
            return this.model.submitFeedbackForUser(this.forceLoad, this.feedbackType, this.textReason).getStatus();
        }
    }
}
