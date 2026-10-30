.class public Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;
.super Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;
    }
.end annotation


# instance fields
.field private final feedbackReasons:[Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public isSubmittingReport:Z

.field private final model:Lcom/microsoft/xbox/service/model/ProfileModel;

.field private selectedReason:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field private submitReportAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V
    .locals 4

    .line 36
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;-><init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V

    .line 37
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getActivityParameters()Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->getSelectedProfile()Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 39
    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->popScreenWithXuidError()V

    .line 42
    :cond_0
    invoke-static {p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileModel(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    .line 44
    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getGamerTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 45
    new-instance v0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;-><init>(Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    const/4 v0, 0x7

    .line 46
    new-array v0, v0, [Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const/4 v2, 0x0

    .line 47
    sget-object v3, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->UserContentPersonalInfo:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    aput-object v3, v0, v2

    .line 48
    sget-object v2, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->FairPlayCheater:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    aput-object v2, v0, v1

    .line 49
    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getRealName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->UserContentGamertag:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->UserContentRealName:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    :goto_0
    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 p1, 0x3

    .line 50
    sget-object v1, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->UserContentGamerpic:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    aput-object v1, v0, p1

    const/4 p1, 0x4

    .line 51
    sget-object v1, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->FairPlayQuitter:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    aput-object v1, v0, p1

    const/4 p1, 0x5

    .line 52
    sget-object v1, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->FairplayUnsporting:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    aput-object v1, v0, p1

    const/4 p1, 0x6

    .line 53
    sget-object v1, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->CommsAbusiveVoice:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    aput-object v1, v0, p1

    .line 54
    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->feedbackReasons:[Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    return-void
.end method

.method private popScreenWithXuidError()V
    .locals 1

    .line 89
    :try_start_0
    sget v0, Lcom/microsoft/xboxtcui/R$string;->Service_ErrorText:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->showError(I)V

    .line 90
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreen()V
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public getPreferredColor()I
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getPreferedColor()I

    move-result v0

    return v0
.end method

.method public getReason()Lcom/microsoft/xbox/service/model/sls/FeedbackType;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->selectedReason:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    return-object v0
.end method

.method public getReasonTitles()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->feedbackReasons:[Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/microsoft/xboxtcui/R$string;->ProfileCard_Report_SelectReason:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->feedbackReasons:[Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 107
    invoke-virtual {v4}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 100
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/microsoft/xboxtcui/R$string;->ProfileCard_Report_InfoString_Android:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getGamerTag()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXUID()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getXuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBusy()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->isSubmittingReport:Z

    return v0
.end method

.method public load(Z)V
    .locals 0

    return-void
.end method

.method public onBackButtonPressed()Z
    .locals 7

    .line 67
    invoke-static {}, Lcom/microsoft/xbox/telemetry/helpers/UTCPageView;->removePage()V

    .line 69
    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v0

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getActivityParameters()Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    move-result-object v6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public onRehydrate()V
    .locals 0

    return-void
.end method

.method public onStartOverride()V
    .locals 0

    return-void
.end method

.method public onStopOverride()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->submitReportAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;->cancel()V

    :cond_0
    return-void
.end method

.method public onSubmitReportCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 1

    .line 136
    sget-object v0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$1;->$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    return-void

    .line 145
    :cond_0
    sget p1, Lcom/microsoft/xboxtcui/R$string;->ProfileCard_Report_Error:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->showError(I)V

    return-void

    .line 140
    :cond_1
    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object p1

    sget v0, Lcom/microsoft/xboxtcui/R$string;->ProfileCard_Report_SuccessSubtext:I

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/toolkit/DialogManager;->showToast(I)V

    .line 141
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->onBackButtonPressed()Z

    return-void
.end method

.method public setReason(I)V
    .locals 3

    if-eqz p1, :cond_0

    add-int/lit8 v0, p1, -0x1

    .line 121
    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->feedbackReasons:[Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->selectedReason:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 122
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->updateAdapter()V

    return-void
.end method

.method public submitReport(Ljava/lang/String;)V
    .locals 7

    .line 126
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->submitReportAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;->cancel()V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->selectedReason:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    if-eqz v0, :cond_1

    .line 130
    new-instance v0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;

    iget-object v3, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    iget-object v4, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->selectedReason:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;-><init>(Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/sls/FeedbackType;Ljava/lang/String;Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask-IA;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->submitReportAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;

    const/4 p1, 0x1

    .line 131
    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;->load(Z)V

    :cond_1
    return-void
.end method

.method public validReasonSelected()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->selectedReason:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
