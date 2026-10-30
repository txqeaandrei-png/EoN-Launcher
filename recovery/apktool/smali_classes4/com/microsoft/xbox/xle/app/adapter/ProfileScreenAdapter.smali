.class public Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;
.super Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;


# instance fields
.field public blockButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

.field private final contentScrollView:Landroid/widget/ScrollView;

.field private final followButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

.field private final gamerPicImageView:Lcom/microsoft/xbox/toolkit/ui/XLERoundedUniversalImageView;

.field private final gamerscoreIconTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private final gamerscoreTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private final gamertagTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private final loadingProgressBar:Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;

.field public muteButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

.field private final realNameTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private final reportButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

.field private final rootView:Lcom/microsoft/xbox/xle/ui/XLERootView;

.field private final viewInXboxAppButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

.field private final viewInXboxAppSubTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field public viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;


# direct methods
.method public static synthetic $r8$lambda$XdPffar04Y5dTf2oohsQSECzv9E(Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->lambda$onStart$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Yl7o3QUrvmHYltNoMTa4jd8pccM(Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->lambda$onStart$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_xAI1tu9Q1HHpSYlDqW_WYwGKL0(Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->lambda$onStart$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dD-1UEJadxxEu8pFM-xS-Vm1--g(Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->lambda$onStart$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xPrW8Rd6XFq6G34qUgBGBgPGfJQ(Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->lambda$onStart$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;)V
    .locals 5

    .line 45
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;-><init>(Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;)V

    .line 27
    sget v0, Lcom/microsoft/xboxtcui/R$id;->profile_screen_content_list:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->contentScrollView:Landroid/widget/ScrollView;

    .line 28
    sget v0, Lcom/microsoft/xboxtcui/R$id;->profile_follow:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->followButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    .line 29
    sget v1, Lcom/microsoft/xboxtcui/R$id;->profile_gamerpic:I

    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/toolkit/ui/XLERoundedUniversalImageView;

    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->gamerPicImageView:Lcom/microsoft/xbox/toolkit/ui/XLERoundedUniversalImageView;

    .line 30
    sget v1, Lcom/microsoft/xboxtcui/R$id;->profile_gamerscore_icon:I

    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->gamerscoreIconTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 31
    sget v1, Lcom/microsoft/xboxtcui/R$id;->profile_gamerscore:I

    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->gamerscoreTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 32
    sget v1, Lcom/microsoft/xboxtcui/R$id;->profile_gamertag:I

    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->gamertagTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 33
    sget v1, Lcom/microsoft/xboxtcui/R$id;->profile_screen_loading:I

    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;

    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->loadingProgressBar:Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;

    .line 34
    sget v1, Lcom/microsoft/xboxtcui/R$id;->profile_realname:I

    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->realNameTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 35
    sget v1, Lcom/microsoft/xboxtcui/R$id;->profile_report:I

    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->reportButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    .line 36
    sget v2, Lcom/microsoft/xboxtcui/R$id;->profile_root:I

    invoke-virtual {p0, v2}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/xle/ui/XLERootView;

    iput-object v2, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->rootView:Lcom/microsoft/xbox/xle/ui/XLERootView;

    .line 37
    sget v2, Lcom/microsoft/xboxtcui/R$id;->profile_view_in_xbox_app:I

    invoke-virtual {p0, v2}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    iput-object v2, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewInXboxAppButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    .line 38
    sget v3, Lcom/microsoft/xboxtcui/R$id;->profile_view_in_xbox_app_subtext:I

    invoke-virtual {p0, v3}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object v3, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewInXboxAppSubTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 39
    sget v4, Lcom/microsoft/xboxtcui/R$id;->profile_block:I

    invoke-virtual {p0, v4}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    iput-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->blockButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    .line 40
    sget v4, Lcom/microsoft/xboxtcui/R$id;->profile_mute:I

    invoke-virtual {p0, v4}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    iput-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->muteButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    .line 46
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    const/4 p1, 0x0

    .line 47
    invoke-virtual {v2, p1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setVisibility(I)V

    const/4 v4, 0x1

    .line 48
    invoke-virtual {v2, v4}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setEnabled(Z)V

    .line 49
    invoke-virtual {v2, v4}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setChecked(Z)V

    .line 50
    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v2}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isMeProfile()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 p1, 0x8

    .line 51
    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->muteButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->blockButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setVisibility(I)V

    .line 54
    invoke-virtual {v1, p1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setVisibility(I)V

    .line 55
    sget p1, Lcom/microsoft/xboxtcui/R$string;->Profile_ViewInXboxApp_Details_MeProfile:I

    invoke-virtual {v3, p1}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setText(I)V

    return-void

    .line 58
    :cond_0
    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setVisibility(I)V

    .line 59
    invoke-virtual {v0, v4}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setEnabled(Z)V

    .line 60
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->muteButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->muteButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {v0, v4}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setEnabled(Z)V

    .line 62
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->muteButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setChecked(Z)V

    .line 63
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->blockButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->blockButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setEnabled(Z)V

    .line 65
    invoke-virtual {v1, p1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setVisibility(I)V

    .line 66
    invoke-virtual {v1, v4}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setEnabled(Z)V

    .line 67
    invoke-virtual {v1, p1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setChecked(Z)V

    .line 68
    sget p1, Lcom/microsoft/xboxtcui/R$string;->Profile_ViewInXboxApp_Details_YouProfile:I

    invoke-virtual {v3, p1}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setText(I)V

    return-void
.end method

.method private synthetic lambda$onStart$0(Landroid/view/View;)V
    .locals 0

    .line 76
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->navigateToChangeRelationship()V

    return-void
.end method

.method private synthetic lambda$onStart$1(Landroid/view/View;)V
    .locals 1

    .line 81
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->muteButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->toggle()V

    .line 82
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->muteButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setEnabled(Z)V

    .line 83
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->muteButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 84
    invoke-static {p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->trackMute(Z)V

    .line 85
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->muteUser()V

    return-void

    .line 88
    :cond_0
    invoke-static {v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->trackMute(Z)V

    .line 89
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->unmuteUser()V

    return-void
.end method

.method private synthetic lambda$onStart$2(Landroid/view/View;)V
    .locals 1

    .line 95
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->blockButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->toggle()V

    .line 96
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->blockButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setEnabled(Z)V

    .line 97
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->blockButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    invoke-static {}, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->trackBlock()V

    .line 99
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->blockUser()V

    return-void

    .line 102
    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->trackUnblock()V

    .line 103
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->unblockUser()V

    return-void
.end method

.method private synthetic lambda$onStart$3(Landroid/view/View;)V
    .locals 0

    .line 109
    invoke-static {}, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->trackReport()V

    .line 110
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->showReportDialog()V

    return-void
.end method

.method private synthetic lambda$onStart$4(Landroid/view/View;)V
    .locals 0

    .line 118
    invoke-static {}, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->trackViewInXboxApp()V

    .line 119
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->launchXboxApp()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 73
    invoke-super {p0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onStart()V

    .line 74
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->followButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    if-eqz v0, :cond_0

    .line 76
    new-instance v1, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->muteButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    if-eqz v0, :cond_1

    .line 80
    new-instance v1, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->blockButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    if-eqz v0, :cond_2

    .line 94
    new-instance v1, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->reportButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    if-eqz v0, :cond_3

    .line 108
    new-instance v1, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    :cond_3
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewInXboxAppButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    if-nez v0, :cond_4

    return-void

    .line 116
    :cond_4
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->appDeeplinkingSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 117
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewInXboxAppButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    new-instance v1, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 123
    :cond_5
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewInXboxAppButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewInXboxAppSubTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setVisibility(I)V

    return-void
.end method

.method public updateViewOverride()V
    .locals 6

    .line 129
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->rootView:Lcom/microsoft/xbox/xle/ui/XLERootView;

    if-eqz v0, :cond_0

    .line 131
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->getPreferredColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/ui/XLERootView;->setBackgroundColor(I)V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->loadingProgressBar:Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isBusy()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->contentScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isBusy()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->gamerPicImageView:Lcom/microsoft/xbox/toolkit/ui/XLERoundedUniversalImageView;

    if-eqz v0, :cond_3

    .line 138
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->getGamerPicUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getMedium(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    sget v4, Lcom/microsoft/xboxtcui/R$drawable;->gamerpic_missing:I

    sget v5, Lcom/microsoft/xboxtcui/R$drawable;->gamerpic_missing:I

    invoke-virtual {v0, v1, v4, v5}, Lcom/microsoft/xbox/toolkit/ui/XLERoundedUniversalImageView;->setImageURI2(Ljava/net/URI;II)V

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->realNameTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    if-eqz v0, :cond_5

    .line 141
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->getRealName()Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 143
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->realNameTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-virtual {v1, v0}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->realNameTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-virtual {v0, v3}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setVisibility(I)V

    goto :goto_2

    .line 146
    :cond_4
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->realNameTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setVisibility(I)V

    .line 149
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->gamerscoreTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->gamerscoreIconTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    if-eqz v0, :cond_6

    .line 150
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->getGamerScore()Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 152
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->gamerscoreTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {v1, v0, v3}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateTextAndVisibilityIfNotNull(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 153
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->gamerscoreIconTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {v0, v3}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateVisibilityIfNotNull(Landroid/view/View;I)V

    .line 156
    :cond_6
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->gamertagTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    if-eqz v0, :cond_7

    .line 157
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->getGamerTag()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 159
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->gamertagTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {v1, v0, v3}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateTextAndVisibilityIfNotNull(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 162
    :cond_7
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isMeProfile()Z

    move-result v0

    if-nez v0, :cond_c

    .line 163
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->getIsAddingUserToBlockList()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->getIsRemovingUserFromBlockList()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    move v0, v3

    goto :goto_4

    :cond_9
    :goto_3
    move v0, v1

    .line 164
    :goto_4
    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->followButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v4}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isCallerFollowingTarget()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setChecked(Z)V

    .line 165
    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->followButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    if-nez v0, :cond_a

    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v4}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->getIsBlocked()Z

    move-result v4

    if-nez v4, :cond_a

    move v4, v1

    goto :goto_5

    :cond_a
    move v4, v3

    :goto_5
    invoke-virtual {v2, v4}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setEnabled(Z)V

    .line 166
    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->muteButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v4}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->getIsMuted()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setChecked(Z)V

    .line 167
    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->muteButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    .line 168
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v4}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->getIsAddingUserToMutedList()Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v4}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->getIsRemovingUserFromMutedList()Z

    move-result v4

    if-nez v4, :cond_b

    move v3, v1

    .line 171
    :cond_b
    invoke-virtual {v2, v3}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setEnabled(Z)V

    .line 172
    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->blockButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    iget-object v3, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v3}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->getIsBlocked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setChecked(Z)V

    .line 173
    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->blockButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    xor-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setEnabled(Z)V

    :cond_c
    return-void
.end method
