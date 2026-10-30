.class public Lcom/microsoft/xbox/toolkit/ui/NavigationManager;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;,
        Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerHolder;,
        Lcom/microsoft/xbox/toolkit/ui/NavigationManager$OnNavigatedListener;,
        Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;,
        Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NavigationManager"


# instance fields
.field private animationState:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

.field final callAfterAnimation:Ljava/lang/Runnable;

.field public cannotNavigateTripwire:Z

.field private currentAnimation:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;

.field private goingBack:Z

.field private navigationCallbacks:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;

.field public navigationListener:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$OnNavigatedListener;

.field public final navigationParameters:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;",
            ">;"
        }
    .end annotation
.end field

.field public final navigationStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;"
        }
    .end annotation
.end field

.field private transitionAnimate:Z

.field private transitionLambda:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$KciOe2VmUS436qM8GxFH39dS29c(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->lambda$PopScreensAndReplace$0(Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationParameters:Ljava/util/Stack;

    .line 37
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->currentAnimation:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;

    .line 39
    sget-object v1, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->NONE:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->animationState:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    .line 40
    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->transitionLambda:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->goingBack:Z

    const/4 v1, 0x1

    .line 43
    iput-boolean v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->transitionAnimate:Z

    .line 44
    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->cannotNavigateTripwire:Z

    .line 45
    new-instance v2, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;

    invoke-direct {v2, p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;-><init>(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;)V

    iput-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->callAfterAnimation:Ljava/lang/Runnable;

    .line 50
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    sget-object v3, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v1, "You must access navigation manager on UI thread."

    invoke-static {v1, v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Ljava/lang/String;Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/microsoft/xbox/toolkit/ui/NavigationManager-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;-><init>()V

    return-void
.end method

.method private ReplaceOnAnimationEnd(ZLjava/lang/Runnable;Z)V
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->animationState:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    sget-object v1, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->ANIMATING_OUT:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->animationState:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    sget-object v1, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->ANIMATING_IN:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 432
    sget-object v0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->ANIMATING_OUT:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->animationState:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    .line 433
    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->transitionLambda:Ljava/lang/Runnable;

    .line 434
    iput-boolean p3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->transitionAnimate:Z

    .line 435
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->goingBack:Z

    return-void
.end method

.method private Size()I
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    return v0
.end method

.method private Transition(ZLjava/lang/Runnable;Z)V
    .locals 0

    .line 422
    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->transitionLambda:Ljava/lang/Runnable;

    .line 423
    iput-boolean p3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->transitionAnimate:Z

    .line 424
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->goingBack:Z

    .line 425
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->getAnimateOut(Z)Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;

    move-result-object p1

    .line 426
    :goto_0
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->currentAnimation:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;

    .line 427
    sget-object p2, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->ANIMATING_OUT:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->startAnimation(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;)V

    return-void
.end method

.method public static getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;
    .locals 1

    .line 54
    sget-object v0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerHolder;->instance:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    return-object v0
.end method

.method private synthetic lambda$PopScreensAndReplace$0(Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V
    .locals 2

    const/4 v0, 0x1

    .line 345
    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->cannotNavigateTripwire:Z

    .line 346
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    .line 347
    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->putFromScreen(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V

    .line 348
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->putSourcePage(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onSetInactive()V

    .line 351
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onPause()V

    .line 352
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onStop()V

    .line 359
    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->Instance()Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->purgeResourceBitmapCache()V

    if-eqz p3, :cond_2

    .line 362
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isKeepPreviousScreen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 363
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onTombstone()V

    .line 365
    :cond_1
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v1, p3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    invoke-interface {p2, p3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;->addContentViewXLE(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V

    .line 366
    iget-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationParameters:Ljava/util/Stack;

    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onCreate()V

    goto :goto_0

    .line 368
    :cond_2
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 369
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;->addContentViewXLE(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V

    .line 370
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->getIsTombstoned()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 371
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onRehydrate()V

    .line 374
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 375
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onStart()V

    .line 376
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onResume()V

    .line 377
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onSetActive()V

    .line 378
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onAnimateInStarted()V

    .line 379
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 380
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object p1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 382
    :goto_1
    iget-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationListener:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$OnNavigatedListener;

    if-eqz p2, :cond_5

    .line 383
    invoke-interface {p2, v0, p1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$OnNavigatedListener;->onPageNavigated(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V

    :cond_5
    const/4 p1, 0x0

    .line 385
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->cannotNavigateTripwire:Z

    return-void
.end method

.method private startAnimation(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;)V
    .locals 1

    .line 467
    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->animationState:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    .line 468
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->currentAnimation:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;

    .line 469
    iget-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationCallbacks:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 471
    invoke-interface {p2, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;->setAnimationBlocking(Z)V

    .line 473
    :cond_0
    iget-boolean p2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->transitionAnimate:Z

    if-eqz p2, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 477
    :cond_1
    iget-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->callAfterAnimation:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->setOnAnimationEndRunnable(Ljava/lang/Runnable;)V

    .line 478
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->startAnimation()V

    return-void

    .line 474
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->callAfterAnimation:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public CountPopsToScreen(Ljava/lang/Class;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;)I"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 173
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sub-int/2addr v0, v1

    return v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public varargs GotoScreenWithPop(Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .line 241
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-gez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_2

    .line 249
    :cond_0
    iget-object v4, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v4, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 250
    array-length v5, p3

    move v6, v3

    :goto_1
    if-ge v6, v5, :cond_5

    .line 252
    aget-object v7, p3, v6

    if-ne v7, v4, :cond_4

    move-object v0, v7

    :goto_2
    if-nez v0, :cond_1

    .line 260
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->Size()I

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    goto :goto_3

    :cond_1
    if-eq v0, p2, :cond_2

    sub-int/2addr v1, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v6, p1

    .line 262
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    goto :goto_3

    :cond_2
    if-ne v2, v1, :cond_3

    .line 264
    invoke-virtual {p0, p1, v3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->RestartCurrentScreen(Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;Z)V

    goto :goto_3

    :cond_3
    sub-int/2addr v1, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v6, p1

    .line 266
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    :goto_3
    return-void

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public GotoScreenWithPop(Ljava/lang/Class;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .line 229
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->CountPopsToScreen(Ljava/lang/Class;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    .line 231
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZ)V

    goto :goto_0

    :cond_0
    if-gez v1, :cond_1

    .line 233
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->Size()I

    move-result v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x1

    move-object v6, p0

    move-object v8, p1

    invoke-virtual/range {v6 .. v11}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZ)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 235
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->RestartCurrentScreen(Z)V

    :goto_0
    return-void
.end method

.method public GotoScreenWithPush(Ljava/lang/Class;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .line 271
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->CountPopsToScreen(Ljava/lang/Class;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    .line 273
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZ)V

    goto :goto_0

    :cond_0
    if-gez v1, :cond_1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object v6, p0

    move-object v8, p1

    .line 275
    invoke-virtual/range {v6 .. v11}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZ)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 277
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->RestartCurrentScreen(Z)V

    :goto_0
    return-void
.end method

.method public GotoScreenWithPush(Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;",
            "Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .line 282
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->CountPopsToScreen(Ljava/lang/Class;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v6, p2

    .line 284
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    goto :goto_0

    :cond_0
    if-gez v1, :cond_1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object v6, p0

    move-object v8, p1

    move-object v12, p2

    .line 286
    invoke-virtual/range {v6 .. v12}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 288
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->RestartCurrentScreen(Z)V

    :goto_0
    return-void
.end method

.method public IsScreenOnStack(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;)Z"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 162
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public NavigateTo(Ljava/lang/Class;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, p1, p2, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->NavigateTo(Ljava/lang/Class;ZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    return-void
.end method

.method public NavigateTo(Ljava/lang/Class;ZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;Z",
            "Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 117
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PushScreen(Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 122
    :try_start_1
    invoke-virtual {p0, p2, p1, p3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    :try_end_1
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 124
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/XLEException;->printStackTrace()V

    :catch_1
    :goto_0
    return-void
.end method

.method public OnAnimationEnd()V
    .locals 2

    .line 439
    sget-object v0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$2;->$SwitchMap$com$microsoft$xbox$toolkit$ui$NavigationManager$NavigationManagerAnimationState:[I

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->animationState:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->transitionLambda:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 453
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 454
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    iget-boolean v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->goingBack:Z

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->getAnimateIn(Z)Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 456
    :goto_0
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationCallbacks:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;

    if-eqz v1, :cond_2

    .line 457
    invoke-interface {v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;->onBeforeNavigatingIn()V

    .line 459
    :cond_2
    sget-object v1, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->ANIMATING_IN:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    invoke-direct {p0, v0, v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->startAnimation(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;)V

    return-void

    .line 441
    :cond_3
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationCallbacks:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 442
    invoke-interface {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;->setAnimationBlocking(Z)V

    .line 444
    :cond_4
    sget-object v0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->NONE:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->animationState:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    .line 445
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 446
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onAnimateInCompleted()V

    :cond_5
    return-void
.end method

.method public OnBackButtonPressed()Z
    .locals 8

    .line 134
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->ShouldBackCloseApp()Z

    move-result v0

    .line 135
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onBackButtonPressed()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    .line 138
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZ)V
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 143
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreen()V
    :try_end_1
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 145
    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/XLEException;->printStackTrace()V

    :catch_1
    :cond_1
    :goto_0
    return v0
.end method

.method public PopAllScreens()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .line 208
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->Size()I

    move-result v0

    if-lez v0, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->Size()I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZ)V

    :cond_0
    return-void
.end method

.method public PopScreen()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 200
    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreens(I)V

    return-void
.end method

.method public PopScreens(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 204
    invoke-virtual {p0, p1, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;)V

    return-void
.end method

.method public PopScreensAndReplace(ILjava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 305
    invoke-virtual {p0, p1, p2, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    return-void
.end method

.method public PopScreensAndReplace(ILjava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;",
            "Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v6, p3

    .line 301
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    return-void
.end method

.method public PopScreensAndReplace(ILjava/lang/Class;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;ZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    .line 309
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZ)V

    return-void
.end method

.method public PopScreensAndReplace(ILjava/lang/Class;ZZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;ZZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 399
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    return-void
.end method

.method public PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;ZZZ",
            "Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .line 316
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    sget-object v0, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    const-string v0, "You must access navigation manager on UI thread."

    invoke-static {v0, p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Ljava/lang/String;Z)V

    .line 317
    iget-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->cannotNavigateTripwire:Z

    if-nez p1, :cond_9

    if-eqz p2, :cond_3

    if-eqz p5, :cond_1

    goto :goto_1

    .line 324
    :cond_1
    :try_start_0
    new-array p1, v2, [Ljava/lang/Class;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    if-eqz p3, :cond_2

    .line 325
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isAnimateOnPush()Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_2

    move p3, v1

    goto :goto_2

    :cond_2
    move p3, v2

    goto :goto_2

    :catch_0
    move-exception p1

    .line 327
    new-instance p3, Lcom/microsoft/xbox/toolkit/XLEException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "FIXME: Failed to create a screen of type "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-wide/16 p4, 0x13

    invoke-direct {p3, p4, p5, p2, p1}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 330
    :goto_2
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object p2

    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    .line 331
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object p2

    invoke-virtual {p2}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isAnimateOnPop()Z

    move-result p2

    if-eqz p2, :cond_4

    move v2, v1

    :cond_4
    move p3, v2

    :cond_5
    if-nez p6, :cond_6

    .line 334
    new-instance p6, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    invoke-direct {p6}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;-><init>()V

    .line 338
    :cond_6
    iget-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationCallbacks:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;

    .line 339
    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    if-eqz p5, :cond_7

    .line 341
    new-instance p1, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;

    invoke-direct {p1, p0, p6}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;-><init>(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    goto :goto_3

    .line 344
    :cond_7
    new-instance p5, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$$ExternalSyntheticLambda0;

    invoke-direct {p5, p0, p6, p2, p1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$$ExternalSyntheticLambda0;-><init>(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V

    move-object p1, p5

    .line 388
    :goto_3
    sget-object p2, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$2;->$SwitchMap$com$microsoft$xbox$toolkit$ui$NavigationManager$NavigationManagerAnimationState:[I

    iget-object p5, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->animationState:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    invoke-virtual {p5}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->ordinal()I

    move-result p5

    aget p2, p2, p5

    if-eq p2, v1, :cond_8

    .line 393
    invoke-direct {p0, p4, p1, p3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->ReplaceOnAnimationEnd(ZLjava/lang/Runnable;Z)V

    return-void

    .line 390
    :cond_8
    invoke-direct {p0, p4, p1, p3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->Transition(ZLjava/lang/Runnable;Z)V

    return-void

    .line 318
    :cond_9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "NavigationManager: attempted to execute a recursive navigation in the OnStop/OnStart method.  This is forbidden."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public PopTillScreenThenPush(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 225
    invoke-virtual {p0, p1, p2, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopTillScreenThenPush(Ljava/lang/Class;Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    return-void
.end method

.method public PopTillScreenThenPush(Ljava/lang/Class;Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;",
            "Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .line 214
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->CountPopsToScreen(Ljava/lang/Class;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object/from16 v6, p3

    .line 216
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    goto :goto_0

    :cond_0
    if-gez v1, :cond_1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object v6, p0

    move-object v8, p2

    move-object/from16 v12, p3

    .line 218
    invoke-virtual/range {v6 .. v12}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object/from16 v6, p3

    .line 220
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    :goto_0
    return-void
.end method

.method public PushScreen(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 297
    invoke-virtual {p0, p1, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PushScreen(Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    return-void
.end method

.method public PushScreen(Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;",
            "Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v6, p2

    .line 293
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    return-void
.end method

.method public RestartCurrentScreen(Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->animationState:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    sget-object v1, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->ANIMATING_OUT:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    if-ne v0, v1, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->OnAnimationEnd()V

    goto :goto_0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->animationState:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    sget-object v1, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->ANIMATING_IN:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    if-ne v0, v1, :cond_1

    .line 192
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->OnAnimationEnd()V

    .line 193
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v2, 0x1

    move-object v1, p0

    move v4, p2

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v2, 0x1

    move-object v1, p0

    move v4, p2

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    :goto_0
    return-void
.end method

.method public RestartCurrentScreen(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 185
    invoke-virtual {p0, v0, p1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->RestartCurrentScreen(Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;Z)V

    return-void
.end method

.method public ShouldBackCloseApp()Z
    .locals 3

    .line 157
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->Size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->animationState:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    sget-object v2, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->NONE:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public TEST_isAnimatingIn()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public TEST_isAnimatingOut()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActivityParameters()Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getActivityParameters(I)Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    move-result-object v0

    return-object v0
.end method

.method public getActivityParameters(I)Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
    .locals 3

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationParameters:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 110
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationParameters:Ljava/util/Stack;

    .line 111
    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v2

    sub-int/2addr v2, p1

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    return-object p1
.end method

.method public getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    return-object v0
.end method

.method public getCurrentActivityName()Ljava/lang/String;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviousActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    .line 85
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAnimating()Z
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->animationState:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    sget-object v1, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->NONE:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onApplicationPause()V
    .locals 2

    const/4 v0, 0x0

    .line 403
    :goto_0
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 404
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onApplicationPause()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onApplicationResume()V
    .locals 2

    const/4 v0, 0x0

    .line 409
    :goto_0
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 410
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onApplicationResume()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p1, 0x4

    const/4 v0, 0x0

    if-ne p2, p1, :cond_2

    .line 482
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 485
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->OnBackButtonPressed()Z

    move-result p1

    if-nez p1, :cond_1

    return p2

    .line 488
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->removeNavigationCallbacks()V

    .line 489
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->removeNaviationListener()V

    :cond_2
    :goto_0
    return v0
.end method

.method public removeNaviationListener()V
    .locals 1

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationListener:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$OnNavigatedListener;

    return-void
.end method

.method public removeNavigationCallbacks()V
    .locals 1

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationCallbacks:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;

    return-void
.end method

.method public setAnimationBlocking(Z)V
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationCallbacks:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;

    if-eqz v0, :cond_0

    .line 417
    invoke-interface {v0, p1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;->setAnimationBlocking(Z)V

    :cond_0
    return-void
.end method

.method public setNavigationCallbacks(Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationCallbacks:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;

    return-void
.end method

.method public setOnNavigatedListener(Lcom/microsoft/xbox/toolkit/ui/NavigationManager$OnNavigatedListener;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationListener:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$OnNavigatedListener;

    return-void
.end method
