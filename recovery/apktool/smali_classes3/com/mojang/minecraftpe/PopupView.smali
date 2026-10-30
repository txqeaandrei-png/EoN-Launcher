.class public Lcom/mojang/minecraftpe/PopupView;
.super Ljava/lang/Object;


# instance fields
.field private mContentView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mHeight:I

.field private mOriginX:I

.field private mOriginY:I

.field private mParentView:Landroid/view/View;

.field private mPopupView:Landroid/view/View;

.field private mWidth:I

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/mojang/minecraftpe/PopupView;->mContext:Landroid/content/Context;

    .line 27
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/mojang/minecraftpe/PopupView;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method private addPopupView()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/mojang/minecraftpe/PopupView;->mContentView:Landroid/view/View;

    iput-object v0, p0, Lcom/mojang/minecraftpe/PopupView;->mPopupView:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/mojang/minecraftpe/PopupView;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mojang/minecraftpe/PopupView;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 102
    invoke-direct {p0, v0}, Lcom/mojang/minecraftpe/PopupView;->setLayoutRect(Landroid/view/WindowManager$LayoutParams;)V

    .line 103
    invoke-direct {p0, v0}, Lcom/mojang/minecraftpe/PopupView;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private computeFlags(I)I
    .locals 0

    or-int/lit8 p1, p1, 0x20

    return p1
.end method

.method private createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .line 117
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v1, -0x3

    .line 118
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 119
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Lcom/mojang/minecraftpe/PopupView;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x3e8

    .line 120
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 121
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 p1, 0x1

    .line 122
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "PopupWindow:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    .line 124
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return-object v0
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/mojang/minecraftpe/PopupView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/mojang/minecraftpe/PopupView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/mojang/minecraftpe/PopupView;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object p1, p0, Lcom/mojang/minecraftpe/PopupView;->mParentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    return-void
.end method

.method private removePopupView()V
    .locals 2

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/PopupView;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 109
    iget-object v0, p0, Lcom/mojang/minecraftpe/PopupView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/mojang/minecraftpe/PopupView;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setLayoutRect(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 136
    iget v0, p0, Lcom/mojang/minecraftpe/PopupView;->mWidth:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 137
    iget v0, p0, Lcom/mojang/minecraftpe/PopupView;->mHeight:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 138
    iget v0, p0, Lcom/mojang/minecraftpe/PopupView;->mOriginX:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 139
    iget v0, p0, Lcom/mojang/minecraftpe/PopupView;->mOriginY:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v0, 0x33

    .line 140
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/mojang/minecraftpe/PopupView;->mPopupView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 77
    invoke-direct {p0}, Lcom/mojang/minecraftpe/PopupView;->removePopupView()V

    .line 78
    iget-object v0, p0, Lcom/mojang/minecraftpe/PopupView;->mPopupView:Landroid/view/View;

    .line 79
    iget-object v1, p0, Lcom/mojang/minecraftpe/PopupView;->mContentView:Landroid/view/View;

    if-eq v0, v1, :cond_0

    .line 80
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 81
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/mojang/minecraftpe/PopupView;->mPopupView:Landroid/view/View;

    :cond_1
    return-void
.end method

.method public getVisible()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/mojang/minecraftpe/PopupView;->mPopupView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/mojang/minecraftpe/PopupView;->mContentView:Landroid/view/View;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/mojang/minecraftpe/PopupView;->mHeight:I

    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/mojang/minecraftpe/PopupView;->mParentView:Landroid/view/View;

    return-void
.end method

.method public setRect(IIII)V
    .locals 0

    sub-int/2addr p2, p1

    .line 54
    iput p2, p0, Lcom/mojang/minecraftpe/PopupView;->mWidth:I

    sub-int/2addr p4, p3

    .line 55
    iput p4, p0, Lcom/mojang/minecraftpe/PopupView;->mHeight:I

    .line 56
    iput p1, p0, Lcom/mojang/minecraftpe/PopupView;->mOriginX:I

    .line 57
    iput p3, p0, Lcom/mojang/minecraftpe/PopupView;->mOriginY:I

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/PopupView;->getVisible()Z

    move-result v0

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/mojang/minecraftpe/PopupView;->addPopupView()V

    goto :goto_0

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/mojang/minecraftpe/PopupView;->removePopupView()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/mojang/minecraftpe/PopupView;->mWidth:I

    return-void
.end method

.method public update()V
    .locals 3

    .line 88
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/PopupView;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/mojang/minecraftpe/PopupView;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 90
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Lcom/mojang/minecraftpe/PopupView;->computeFlags(I)I

    move-result v1

    .line 91
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v2, :cond_0

    .line 92
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 94
    :cond_0
    invoke-direct {p0, v0}, Lcom/mojang/minecraftpe/PopupView;->setLayoutRect(Landroid/view/WindowManager$LayoutParams;)V

    .line 95
    iget-object v1, p0, Lcom/mojang/minecraftpe/PopupView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/mojang/minecraftpe/PopupView;->mPopupView:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method
