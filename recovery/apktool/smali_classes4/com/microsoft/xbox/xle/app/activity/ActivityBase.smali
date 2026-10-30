.class public abstract Lcom/microsoft/xbox/xle/app/activity/ActivityBase;
.super Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;


# instance fields
.field private final showRightPane:Z

.field private final showUtilityBar:Z

.field protected viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 44
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->showUtilityBar:Z

    .line 46
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->showRightPane:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 51
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->showUtilityBar:Z

    .line 52
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->showRightPane:Z

    return-void
.end method

.method private getXLERootView()Lcom/microsoft/xbox/xle/ui/XLERootView;
    .locals 2

    const/4 v0, 0x0

    .line 290
    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/microsoft/xbox/xle/ui/XLERootView;

    if-eqz v1, :cond_0

    .line 291
    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/ui/XLERootView;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$onAnimateInCompleted$0(Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 135
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz p0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->forceUpdateViewImmediately()V

    :cond_0
    return-void
.end method


# virtual methods
.method public adjustBottomMargin(I)V
    .locals 1

    .line 297
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getXLERootView()Lcom/microsoft/xbox/xle/ui/XLERootView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getXLERootView()Lcom/microsoft/xbox/xle/ui/XLERootView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/ui/XLERootView;->setBottomMargin(I)V

    :cond_0
    return-void
.end method

.method public computeBottomMargin()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public delayAppbarAnimation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .line 204
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getXLERootView()Lcom/microsoft/xbox/xle/ui/XLERootView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getXLERootView()Lcom/microsoft/xbox/xle/ui/XLERootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/ui/XLERootView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 208
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getXLERootView()Lcom/microsoft/xbox/xle/ui/XLERootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/ui/XLERootView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    .line 205
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public forceRefresh()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->forceRefresh()V

    :cond_0
    return-void
.end method

.method public forceUpdateViewImmediately()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->forceUpdateViewImmediately()V

    :cond_0
    return-void
.end method

.method public abstract getActivityName()Ljava/lang/String;
.end method

.method public getAnimateIn(Z)Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;
    .locals 3

    const/4 v0, 0x0

    .line 169
    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 170
    invoke-static {}, Lcom/microsoft/xbox/toolkit/anim/MAAS;->getInstance()Lcom/microsoft/xbox/toolkit/anim/MAAS;

    move-result-object v1

    const-string v2, "Screen"

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/toolkit/anim/MAAS;->getAnimation(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimationPackageNavigationManager;

    sget-object v2, Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;->ANIMATE_IN:Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;

    invoke-virtual {v1, v2, p1, v0}, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimationPackageNavigationManager;->compile(Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;ZLandroid/view/View;)Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;-><init>()V

    .line 174
    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->add(Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAnimateOut(Z)Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;
    .locals 3

    const/4 v0, 0x0

    .line 157
    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 158
    invoke-static {}, Lcom/microsoft/xbox/toolkit/anim/MAAS;->getInstance()Lcom/microsoft/xbox/toolkit/anim/MAAS;

    move-result-object v1

    const-string v2, "Screen"

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/toolkit/anim/MAAS;->getAnimation(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimationPackageNavigationManager;

    sget-object v2, Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;->ANIMATE_OUT:Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;

    invoke-virtual {v1, v2, p1, v0}, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimationPackageNavigationManager;->compile(Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;ZLandroid/view/View;)Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;-><init>()V

    .line 162
    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->add(Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 315
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getActivityName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRelativeId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getShouldShowAppbar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 79
    invoke-super {p0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onActivityResult(IILandroid/content/Intent;)V

    .line 80
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onAnimateInCompleted()V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 134
    invoke-static {}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->getInstance()Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;

    move-result-object v1

    new-instance v2, Lcom/microsoft/xbox/xle/app/activity/ActivityBase$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase$$ExternalSyntheticLambda0;-><init>(Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->postRunnableAfterReady(Ljava/lang/Runnable;)V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onAnimateInCompleted()V

    :cond_1
    return-void
.end method

.method public onAnimateInStarted()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->forceUpdateViewImmediately()V

    :cond_0
    return-void
.end method

.method public onApplicationPause()V
    .locals 1

    .line 229
    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onApplicationPause()V

    .line 230
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onApplicationPause()V

    :cond_0
    return-void
.end method

.method public onApplicationResume()V
    .locals 1

    .line 237
    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onApplicationResume()V

    .line 238
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onApplicationResume()V

    :cond_0
    return-void
.end method

.method public onBackButtonPressed()Z
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onBackButtonPressed()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 282
    invoke-super {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 283
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public abstract onCreateContentView()V
.end method

.method public onDestroy()V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onDestroy()V

    :cond_0
    const/4 v0, 0x0

    .line 257
    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    .line 258
    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onDestroy()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 326
    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onDetachedFromWindow()V

    .line 327
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->clearDisappearingChildren()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 221
    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onPause()V

    .line 222
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onPause()V

    :cond_0
    return-void
.end method

.method public onRehydrate()V
    .locals 1

    .line 270
    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onRehydrate()V

    .line 271
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onRehydrate()V

    :cond_0
    return-void
.end method

.method public onRehydrateOverride()V
    .locals 0

    .line 278
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->onCreateContentView()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 179
    invoke-super {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 180
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 245
    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onResume()V

    .line 246
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onResume()V

    :cond_0
    return-void
.end method

.method public onSetActive()V
    .locals 1

    .line 195
    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onSetActive()V

    .line 196
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onSetActive()V

    :cond_0
    return-void
.end method

.method public onSetInactive()V
    .locals 1

    .line 213
    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onSetInactive()V

    .line 214
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onSetInactive()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getIsStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onStart()V

    .line 110
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onStart()V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->load()V

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->delayAppbarAnimation()Z

    move-result v0

    if-nez v0, :cond_2

    .line 120
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->computeBottomMargin()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->adjustBottomMargin(I)V

    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 87
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getIsStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onStop()V

    .line 89
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onSetInactive()V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onStop()V

    :cond_1
    return-void
.end method

.method public onTombstone()V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onTombstone()V

    .line 266
    :cond_0
    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onTombstone()V

    return-void
.end method

.method public removeBottomMargin()V
    .locals 2

    .line 303
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getXLERootView()Lcom/microsoft/xbox/xle/ui/XLERootView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getXLERootView()Lcom/microsoft/xbox/xle/ui/XLERootView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/ui/XLERootView;->setBottomMargin(I)V

    :cond_0
    return-void
.end method

.method public resetBottomMargin()V
    .locals 1

    .line 309
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getXLERootView()Lcom/microsoft/xbox/xle/ui/XLERootView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->computeBottomMargin()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->adjustBottomMargin(I)V

    :cond_0
    return-void
.end method

.method public setHeaderName(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setScreenState(I)V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->setScreenState(I)V

    :cond_0
    return-void
.end method
