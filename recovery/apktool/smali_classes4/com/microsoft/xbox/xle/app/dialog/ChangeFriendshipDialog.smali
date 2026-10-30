.class public Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;
.super Lcom/microsoft/xbox/toolkit/XLEManagedDialog;


# instance fields
.field private addFavorite:Landroid/widget/RadioButton;

.field private addFriend:Landroid/widget/RadioButton;

.field private cancelButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

.field public changeFriendshipSwitchPanel:Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;

.field private confirmButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

.field private favoriteIconView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private gamertag:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private overlayLoadingIndicator:Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;

.field private final previousVM:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

.field private profileAccountTier:Landroid/widget/TextView;

.field private profileGamerScore:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private profilePic:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

.field private realName:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private removeFriendLayout:Lcom/microsoft/xbox/toolkit/ui/XLEClickableLayout;

.field private shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

.field public vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;


# direct methods
.method public static synthetic $r8$lambda$4fdFcPb3fD8lIrLWANY-cVdB4Z0(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->lambda$updateView$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DfDYQaMufEdVkC1VE8hsnyCJVlU(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->lambda$updateView$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DyjdCU8JFJu4xoy9XzA9KS8-8Xc(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->lambda$onCreate$1(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$GGODR945WODR96wW4bal0OLUmZU(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->lambda$updateView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JYordAh_WoT-U951MGT_dIvFKuw(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L6LnXGNVKzzp6gb-biRzfWEWQyM(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->lambda$updateView$6(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$URwVpvXLoUpUIxPSoiP947o8FiM(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->lambda$updateView$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rwZ1Y5BAU3AFLJMWte1kJN8BWyM(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->lambda$updateView$4(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;)V
    .locals 1

    .line 58
    sget v0, Lcom/microsoft/xboxtcui/R$style;->TcuiDialog:I

    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;-><init>(Landroid/content/Context;I)V

    .line 59
    iput-object p3, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->previousVM:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    .line 60
    iput-object p2, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->dismiss()V

    .line 104
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopAllScreens()V
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    .line 109
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->dismiss()V

    return p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$updateView$2(Landroid/view/View;)V
    .locals 1

    .line 153
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getIsFollowing()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 154
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setShouldAddUserToFriendList(Z)V

    .line 156
    :cond_0
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getIsFavorite()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 157
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setShouldRemoveUserFromFavoriteList(Z)V

    .line 159
    :cond_1
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setShouldAddUserToFavoriteList(Z)V

    return-void
.end method

.method private synthetic lambda$updateView$3(Landroid/view/View;)V
    .locals 1

    .line 167
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getIsFavorite()Z

    move-result p1

    if-nez p1, :cond_0

    .line 168
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setShouldAddUserToFavoriteList(Z)V

    .line 170
    :cond_0
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setShouldRemoveUserFromFavoriteList(Z)V

    return-void
.end method

.method private synthetic lambda$updateView$4(Landroid/view/View;)V
    .locals 1

    .line 176
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->changeFriendshipSwitchPanel:Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->setState(I)V

    .line 177
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->onChangeRelationshipCompleted()V

    return-void
.end method

.method private synthetic lambda$updateView$5(Landroid/view/View;)V
    .locals 0

    .line 183
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->dismissSelf()V

    .line 184
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->clearChangeFriendshipForm()V

    return-void
.end method

.method private synthetic lambda$updateView$6(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 191
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setIsSharingRealNameEnd(Z)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 193
    iget-object p2, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {p2}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getCallerMarkedTargetAsIdentityShared()Z

    move-result p2

    if-nez p2, :cond_0

    .line 194
    iget-object p2, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {p2, p1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setShouldAddUserToShareIdentityList(Z)V

    .line 196
    :cond_0
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setShouldRemoveUserFroShareIdentityList(Z)V

    return-void

    .line 199
    :cond_1
    iget-object p2, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {p2}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getCallerMarkedTargetAsIdentityShared()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 200
    iget-object p2, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {p2, p1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setShouldRemoveUserFroShareIdentityList(Z)V

    .line 202
    :cond_2
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setShouldAddUserToShareIdentityList(Z)V

    return-void
.end method

.method private synthetic lambda$updateView$7(Landroid/view/View;)V
    .locals 1

    .line 210
    invoke-static {}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->trackChangeRelationshipRemoveFriend()V

    .line 211
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->changeFriendshipSwitchPanel:Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->setState(I)V

    .line 212
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->removeFollowingUser()V

    return-void
.end method

.method private setDialogLoadingView()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->overlayLoadingIndicator:Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateVisibilityIfNotNull(Landroid/view/View;I)V

    .line 240
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->confirmButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setEnabled(Z)V

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->cancelButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private setDialogValidContentView()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->overlayLoadingIndicator:Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateVisibilityIfNotNull(Landroid/view/View;I)V

    .line 228
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->confirmButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setEnabled(Z)V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->cancelButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setEnabled(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public closeDialog()V
    .locals 2

    .line 251
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->dismissSelf()V

    .line 252
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->previousVM:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->load(Z)V

    return-void
.end method

.method public dismissSelf()V
    .locals 1

    .line 260
    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/DialogManager;->getManager()Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->dismissChangeFriendshipDialog()V

    return-void
.end method

.method public getActivityName()Ljava/lang/String;
    .locals 1

    .line 64
    const-string v0, "ChangeRelationship Info"

    return-object v0
.end method

.method public onBackPressed()V
    .locals 0

    .line 256
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->dismissSelf()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 71
    invoke-super {p0, p1}, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 72
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->requestWindowFeature(I)Z

    .line 73
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    .line 74
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x400

    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 75
    sget p1, Lcom/microsoft/xboxtcui/R$layout;->change_friendship_dialog:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->setContentView(I)V

    .line 76
    sget p1, Lcom/microsoft/xboxtcui/R$id;->change_friendship_profile_pic:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->profilePic:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

    .line 77
    sget p1, Lcom/microsoft/xboxtcui/R$id;->gamertag_text:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->gamertag:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 78
    sget p1, Lcom/microsoft/xboxtcui/R$id;->realname_text:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->realName:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 79
    sget p1, Lcom/microsoft/xboxtcui/R$id;->peoplehub_info_gamerscore_icon:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->profileAccountTier:Landroid/widget/TextView;

    .line 80
    sget p1, Lcom/microsoft/xboxtcui/R$id;->peoplehub_info_gamerscore:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->profileGamerScore:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 81
    sget p1, Lcom/microsoft/xboxtcui/R$id;->add_as_friend:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->addFriend:Landroid/widget/RadioButton;

    .line 82
    sget p1, Lcom/microsoft/xboxtcui/R$id;->add_as_favorite:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->addFavorite:Landroid/widget/RadioButton;

    .line 83
    sget p1, Lcom/microsoft/xboxtcui/R$id;->share_real_name_checkbox:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    .line 84
    sget p1, Lcom/microsoft/xboxtcui/R$id;->submit_button:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->confirmButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    .line 85
    sget p1, Lcom/microsoft/xboxtcui/R$id;->cancel_button:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->cancelButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    .line 86
    sget p1, Lcom/microsoft/xboxtcui/R$id;->change_friendship_switch_panel:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->changeFriendshipSwitchPanel:Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;

    .line 87
    sget p1, Lcom/microsoft/xboxtcui/R$id;->remove_friend_btn_layout:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/XLEClickableLayout;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->removeFriendLayout:Lcom/microsoft/xbox/toolkit/ui/XLEClickableLayout;

    .line 88
    sget p1, Lcom/microsoft/xboxtcui/R$id;->people_favorites_icon:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->favoriteIconView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 89
    sget p1, Lcom/microsoft/xboxtcui/R$id;->overlay_loading_indicator:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->overlayLoadingIndicator:Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;

    .line 90
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 91
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x5

    .line 92
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 93
    new-instance v2, Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x3c

    const/4 v4, 0x0

    .line 94
    invoke-virtual {v2, v3, v4, v4, v4}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setPadding(IIII)V

    .line 95
    sget v3, Lcom/microsoft/xboxtcui/R$drawable;->common_button_background:I

    invoke-virtual {v2, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setBackgroundResource(I)V

    .line 96
    sget v3, Lcom/microsoft/xboxtcui/R$string;->ic_Close:I

    invoke-virtual {v2, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setText(I)V

    .line 97
    invoke-virtual {v2, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setTextColor(I)V

    const/4 v0, 0x2

    const/high16 v3, 0x41600000    # 14.0f

    .line 98
    invoke-virtual {v2, v0, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setTextSize(IF)V

    .line 99
    const-string v0, "fonts/SegXboxSymbol.ttf"

    invoke-virtual {v2, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setTypeFace(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/microsoft/xboxtcui/R$string;->TextInput_Confirm:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 101
    new-instance v0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$$ExternalSyntheticLambda0;-><init>(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)V

    invoke-virtual {v2, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    new-instance v0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$$ExternalSyntheticLambda1;-><init>(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)V

    invoke-virtual {v2, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 115
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 116
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->load()V

    .line 121
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->updateView()V

    .line 122
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->changeFriendshipSwitchPanel:Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getPreferredColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->setBackgroundColor(I)V

    .line 123
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->getActivityName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getXuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->trackChangeRelationshipView(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public reportAsyncTaskCompleted()V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isBusy()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->changeFriendshipSwitchPanel:Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->closeDialog()V

    :cond_0
    return-void
.end method

.method public reportAsyncTaskFailed(Ljava/lang/String;)V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->changeFriendshipSwitchPanel:Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 320
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->changeFriendshipSwitchPanel:Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->setState(I)V

    .line 321
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->updateView()V

    return-void
.end method

.method public setVm(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    return-void
.end method

.method public updateShareIdentityCheckboxStatus()V
    .locals 7

    .line 269
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getCallerShareRealNameStatus()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 271
    const-string v1, "Blocked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 272
    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/16 v4, 0x8

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setVisibility(I)V

    if-nez v1, :cond_6

    .line 274
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getRealName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 275
    const-string v4, "Everyone"

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 276
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    invoke-virtual {v4, v2}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setChecked(Z)V

    .line 277
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v4, v2}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setInitialRealNameSharingState(Z)V

    .line 278
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    invoke-virtual {v4, v3}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setEnabled(Z)V

    .line 279
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/microsoft/xboxtcui/R$string;->ChangeRelationship_Checkbox_Subtext_ShareRealName_Everyone:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setSubText(Ljava/lang/CharSequence;)V

    .line 281
    :cond_1
    const-string v4, "PeopleOnMyList"

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 282
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    invoke-virtual {v4, v2}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setChecked(Z)V

    .line 283
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v4, v2}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setInitialRealNameSharingState(Z)V

    .line 284
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    invoke-virtual {v4, v3}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setEnabled(Z)V

    .line 285
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/microsoft/xboxtcui/R$string;->ChangeRelationship_Checkbox_Subtext_ShareRealName_Friends:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setSubText(Ljava/lang/CharSequence;)V

    .line 287
    :cond_2
    const-string v4, "FriendCategoryShareIdentity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 288
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getIsFollowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 289
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getCallerMarkedTargetAsIdentityShared()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 290
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setChecked(Z)V

    .line 291
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setInitialRealNameSharingState(Z)V

    goto :goto_1

    .line 293
    :cond_3
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    invoke-virtual {v0, v3}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setChecked(Z)V

    .line 294
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v0, v3}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setInitialRealNameSharingState(Z)V

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    .line 297
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setChecked(Z)V

    .line 298
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setInitialRealNameSharingState(Z)V

    .line 299
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setShouldAddUserToShareIdentityList(Z)V

    goto :goto_1

    .line 301
    :cond_5
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    invoke-virtual {v0, v3}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setChecked(Z)V

    .line 302
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v0, v3}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setInitialRealNameSharingState(Z)V

    .line 304
    :goto_1
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/microsoft/xboxtcui/R$string;->ChangeRelationship_Checkbox_Subtext_ShareRealName:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v3}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getGamerTag()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setSubText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setEnabled(Z)V

    :cond_6
    return-void
.end method

.method public updateView()V
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getViewModelState()Lcom/microsoft/xbox/toolkit/network/ListState;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/network/ListState;->ValidContentState:Lcom/microsoft/xbox/toolkit/network/ListState;

    if-ne v0, v1, :cond_d

    .line 129
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->setDialogValidContentView()V

    .line 130
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->gamertag:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getGamerTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateAndShowTextViewUnlessEmpty(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->profilePic:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

    if-eqz v0, :cond_0

    .line 133
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getGamerPicUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getMedium(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    sget v2, Lcom/microsoft/xboxtcui/R$drawable;->gamerpic_missing:I

    sget v3, Lcom/microsoft/xboxtcui/R$drawable;->gamerpic_missing:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->setImageURI2(Ljava/net/URI;II)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->realName:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getRealName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateAndShowTextViewUnlessEmpty(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->favoriteIconView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getIsFavorite()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateVisibilityIfNotNull(Landroid/view/View;I)V

    .line 137
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getIsFavorite()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->favoriteIconView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/microsoft/xboxtcui/R$color;->XboxGreen:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setTextColor(I)V

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getGamerScore()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 141
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 142
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->profileGamerScore:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getGamerScore()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateAndShowTextViewUnlessEmpty(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->profileAccountTier:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateVisibilityIfNotNull(Landroid/view/View;I)V

    .line 145
    :cond_3
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->addFriend:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 146
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getIsFollowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 147
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->addFriend:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 149
    :cond_4
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setShouldAddUserToFriendList(Z)V

    .line 150
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->addFriend:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 152
    :goto_1
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->addFriend:Landroid/widget/RadioButton;

    new-instance v3, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$$ExternalSyntheticLambda2;-><init>(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    :cond_5
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->addFavorite:Landroid/widget/RadioButton;

    if-eqz v0, :cond_7

    .line 163
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getIsFavorite()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 164
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->addFavorite:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 166
    :cond_6
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->addFavorite:Landroid/widget/RadioButton;

    new-instance v1, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$$ExternalSyntheticLambda3;-><init>(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    :cond_7
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->confirmButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    if-eqz v0, :cond_8

    .line 175
    new-instance v1, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$$ExternalSyntheticLambda4;-><init>(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    :cond_8
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->cancelButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    if-eqz v0, :cond_9

    .line 182
    new-instance v1, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$$ExternalSyntheticLambda5;-><init>(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    :cond_9
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    if-eqz v0, :cond_a

    .line 189
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getCallerMarkedTargetAsIdentityShared()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setChecked(Z)V

    .line 190
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    new-instance v1, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$$ExternalSyntheticLambda6;-><init>(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 204
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->updateShareIdentityCheckboxStatus()V

    .line 206
    :cond_a
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->removeFriendLayout:Lcom/microsoft/xbox/toolkit/ui/XLEClickableLayout;

    if-eqz v0, :cond_c

    .line 207
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getIsFollowing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 208
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->removeFriendLayout:Lcom/microsoft/xbox/toolkit/ui/XLEClickableLayout;

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/toolkit/ui/XLEClickableLayout;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->removeFriendLayout:Lcom/microsoft/xbox/toolkit/ui/XLEClickableLayout;

    new-instance v1, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$$ExternalSyntheticLambda7;-><init>(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEClickableLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 215
    :cond_b
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->removeFriendLayout:Lcom/microsoft/xbox/toolkit/ui/XLEClickableLayout;

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/toolkit/ui/XLEClickableLayout;->setEnabled(Z)V

    .line 216
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->removeFriendLayout:Lcom/microsoft/xbox/toolkit/ui/XLEClickableLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEClickableLayout;->setVisibility(I)V

    .line 218
    :goto_2
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->confirmButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getDialogButtonText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setText(Ljava/lang/CharSequence;)V

    .line 220
    :cond_c
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->updateShareIdentityCheckboxStatus()V

    goto :goto_3

    .line 221
    :cond_d
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getViewModelState()Lcom/microsoft/xbox/toolkit/network/ListState;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/network/ListState;->LoadingState:Lcom/microsoft/xbox/toolkit/network/ListState;

    if-ne v0, v1, :cond_e

    .line 222
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->setDialogLoadingView()V

    :cond_e
    :goto_3
    return-void
.end method
