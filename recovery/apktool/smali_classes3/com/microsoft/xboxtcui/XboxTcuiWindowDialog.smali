.class public Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$DetachedCallback;
    }
.end annotation


# instance fields
.field private detachedCallback:Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$DetachedCallback;

.field private final xboxTcuiWindow:Lcom/microsoft/xboxtcui/XboxTcuiWindow;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;",
            "Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;",
            ")V"
        }
    .end annotation

    .line 25
    sget v0, Lcom/microsoft/xboxtcui/R$style;->TcuiDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 26
    new-instance v0, Lcom/microsoft/xboxtcui/XboxTcuiWindow;

    invoke-direct {v0, p1, p2, p3}, Lcom/microsoft/xboxtcui/XboxTcuiWindow;-><init>(Landroid/app/Activity;Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    iput-object v0, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->xboxTcuiWindow:Lcom/microsoft/xboxtcui/XboxTcuiWindow;

    return-void
.end method

.method private addCloseButton()V
    .locals 5

    .line 54
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x5

    .line 56
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 57
    new-instance v2, Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    invoke-virtual {p0}, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x3c

    const/4 v4, 0x0

    .line 58
    invoke-virtual {v2, v3, v4, v4, v4}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setPadding(IIII)V

    .line 59
    sget v3, Lcom/microsoft/xboxtcui/R$drawable;->common_button_background:I

    invoke-virtual {v2, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setBackgroundResource(I)V

    .line 60
    sget v3, Lcom/microsoft/xboxtcui/R$string;->ic_Close:I

    invoke-virtual {v2, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setText(I)V

    const/4 v3, -0x1

    .line 61
    invoke-virtual {v2, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setTextColor(I)V

    const/4 v3, 0x2

    const/high16 v4, 0x41600000    # 14.0f

    .line 62
    invoke-virtual {v2, v3, v4}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setTextSize(IF)V

    .line 63
    const-string v3, "fonts/SegXboxSymbol.ttf"

    invoke-virtual {v2, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setTypeFace(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/microsoft/xboxtcui/R$string;->TextInput_Confirm:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 65
    new-instance v3, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v2, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 73
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 74
    invoke-virtual {p0, v0, v1}, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic lambda$addCloseButton$0(Landroid/view/View;)V
    .locals 0

    .line 67
    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopAllScreens()V
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 69
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/XLEException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 34
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 35
    invoke-virtual {p0, v0}, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->requestWindowFeature(I)Z

    .line 36
    invoke-virtual {p0}, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 37
    invoke-virtual {p0}, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 38
    iget-object v0, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->xboxTcuiWindow:Lcom/microsoft/xboxtcui/XboxTcuiWindow;

    invoke-virtual {v0, p1}, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->onCreate(Landroid/os/Bundle;)V

    .line 39
    iget-object p1, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->xboxTcuiWindow:Lcom/microsoft/xboxtcui/XboxTcuiWindow;

    invoke-virtual {p0, p1}, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->setContentView(Landroid/view/View;)V

    .line 40
    invoke-direct {p0}, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->addCloseButton()V

    .line 41
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object p1

    new-instance v0, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$1;

    invoke-direct {v0, p0}, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$1;-><init>(Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;)V

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->setOnNavigatedListener(Lcom/microsoft/xbox/toolkit/ui/NavigationManager$OnNavigatedListener;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->detachedCallback:Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$DetachedCallback;

    if-eqz v0, :cond_0

    .line 87
    invoke-interface {v0}, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$DetachedCallback;->onDetachedFromWindow()V

    .line 89
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->xboxTcuiWindow:Lcom/microsoft/xboxtcui/XboxTcuiWindow;

    invoke-virtual {v0}, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->xboxTcuiWindow:Lcom/microsoft/xboxtcui/XboxTcuiWindow;

    invoke-virtual {v0}, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->onStop()V

    return-void
.end method

.method public setDetachedCallback(Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$DetachedCallback;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->detachedCallback:Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$DetachedCallback;

    return-void
.end method
