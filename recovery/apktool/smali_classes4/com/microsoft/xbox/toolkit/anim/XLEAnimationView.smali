.class public Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;
.super Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;


# instance fields
.field private final anim:Landroid/view/animation/Animation;

.field public animtarget:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$PITFkbY6v8QYayEAJJ2lv2U5JKE(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;)V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;->lambda$onViewAnimationEnd$0()V

    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;->anim:Landroid/view/animation/Animation;

    const/4 v0, 0x1

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 27
    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView$1;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView$1;-><init>(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private synthetic lambda$onViewAnimationEnd$0()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;->animtarget:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;->anim:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 50
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;->animtarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method

.method public onViewAnimationEnd()V
    .locals 1

    .line 80
    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView$$ExternalSyntheticLambda0;-><init>(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;)V

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThreadPost(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onViewAnimationStart()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;->animtarget:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public setFillAfter(Z)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setTargetView(Landroid/view/View;)V
    .locals 3

    .line 54
    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 55
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;->animtarget:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;->anim:Landroid/view/animation/Animation;

    .line 57
    instance-of v1, v0, Landroid/view/animation/AnimationSet;

    if-eqz v1, :cond_1

    .line 58
    check-cast v0, Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Animation;

    .line 59
    instance-of v2, v1, Lcom/microsoft/xbox/toolkit/anim/HeightAnimation;

    if-eqz v2, :cond_0

    .line 60
    check-cast v1, Lcom/microsoft/xbox/toolkit/anim/HeightAnimation;

    invoke-virtual {v1, p1}, Lcom/microsoft/xbox/toolkit/anim/HeightAnimation;->setTargetView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public start()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;->animtarget:Landroid/view/View;

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
