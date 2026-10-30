.class public Ldev/blaze/launcher/Start;
.super Ljava/lang/Object;


# static fields
.field public static activity:Landroid/app/Activity;

.field public static clickGuiButton:Ldev/blaze/launcher/ui/ClickGuiButton;

.field public static display:Ldev/blaze/launcher/GLES3JNIView;

.field public static manager:Landroid/view/WindowManager;

.field public static vParams:Landroid/view/WindowManager$LayoutParams;

.field public static vTouch:Landroid/view/View;

.field public static wParams:Landroid/view/WindowManager$LayoutParams;

.field public static windowManager:Landroid/view/WindowManager;

.field public static xfqManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Start(Landroid/content/Context;)V
    .locals 4

    .line 84
    const-string v0, "[BlazeLauncherStartup]"
    const-string v1, "STAGE overlay Start.Start ENTER"
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    sput-object v0, Ldev/blaze/launcher/Start;->manager:Landroid/view/WindowManager;

    const/4 v0, 0x0

    .line 85
    invoke-static {v0}, Ldev/blaze/launcher/Start;->getAttributes(Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    sput-object v1, Ldev/blaze/launcher/Start;->vParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    .line 86
    invoke-static {v1}, Ldev/blaze/launcher/Start;->getAttributes(Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    sput-object v1, Ldev/blaze/launcher/Start;->wParams:Landroid/view/WindowManager$LayoutParams;

    .line 87
    const-string v1, "before GLES3JNIView(context)"

    const-string v2, "BlazeLauncherNative"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v1, Ldev/blaze/launcher/GLES3JNIView;

    invoke-direct {v1, p0}, Ldev/blaze/launcher/GLES3JNIView;-><init>(Landroid/content/Context;)V

    sput-object v1, Ldev/blaze/launcher/Start;->display:Ldev/blaze/launcher/GLES3JNIView;

    .line 89
    const-string v1, "STAGE GLES3JNIView initialization COMPLETE"
    const-string v2, "[BlazeLauncherStartup]"
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    const-string v1, "after GLES3JNIView(context)"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sput-object v1, Ldev/blaze/launcher/Start;->vTouch:Landroid/view/View;

    .line 91
    sget-object p0, Ldev/blaze/launcher/Start;->manager:Landroid/view/WindowManager;

    sget-object v2, Ldev/blaze/launcher/Start;->vParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    sget-object p0, Ldev/blaze/launcher/Start;->manager:Landroid/view/WindowManager;

    sget-object v1, Ldev/blaze/launcher/Start;->display:Ldev/blaze/launcher/GLES3JNIView;

    sget-object v2, Ldev/blaze/launcher/Start;->wParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    sget-object p0, Ldev/blaze/launcher/Start;->vTouch:Landroid/view/View;

    new-instance v1, Ldev/blaze/launcher/Start$1;

    invoke-direct {v1}, Ldev/blaze/launcher/Start$1;-><init>()V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 110
    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 111
    new-instance v1, Ldev/blaze/launcher/Start$2;

    invoke-direct {v1, p0}, Ldev/blaze/launcher/Start$2;-><init>(Landroid/os/Handler;)V

    const-wide/16 v2, 0x14

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 127
    new-instance p0, Ldev/blaze/launcher/ui/ClickGuiButton;

    sget-object v1, Ldev/blaze/launcher/Start;->activity:Landroid/app/Activity;

    const-string v2, "logo.png"

    invoke-direct {p0, v1, v2, v0}, Ldev/blaze/launcher/ui/ClickGuiButton;-><init>(Landroid/app/Activity;Ljava/lang/String;Z)V

    sput-object p0, Ldev/blaze/launcher/Start;->clickGuiButton:Ldev/blaze/launcher/ui/ClickGuiButton;

    .line 128
    invoke-virtual {p0, v0, v0}, Ldev/blaze/launcher/ui/ClickGuiButton;->show(II)V

    return-void
.end method

.method public static _Start(Landroid/content/Context;)V
    .locals 4

    .line 54
    const-string v0, "[BlazeLauncherStartup]"
    const-string v1, "STAGE Start._Start ENTER delayed GLES overlay scheduling"
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Ldev/blaze/launcher/Start$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Ldev/blaze/launcher/Start$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static __Start(Landroid/app/Activity;)V
    .locals 3

    .line 67
    const-string v0, "[BlazeLauncherStartup]"
    const-string v1, "STAGE Start.__Start ENTER delayed native callback scheduling"
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Ldev/blaze/launcher/Start;->activity:Landroid/app/Activity;

    .line 69
    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ldev/blaze/launcher/Start$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ldev/blaze/launcher/Start$$ExternalSyntheticLambda1;-><init>()V

    const-wide/16 v1, 0x1194

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static getAttributes(Z)Landroid/view/WindowManager$LayoutParams;
    .locals 9

    .line 132
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 133
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const v7, 0xe800538

    const/4 v8, -0x2

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/4 v4, 0x0

    const/16 v5, 0x64

    const/4 v6, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    const v1, 0xc000408

    .line 147
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eqz p0, :cond_0

    .line 150
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_0
    const/4 v1, 0x1

    .line 152
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 153
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_1

    .line 154
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_1
    const/16 v1, 0x33

    .line 156
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x0

    .line 157
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eqz p0, :cond_2

    const/4 v1, -0x1

    .line 158
    :cond_2
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    return-object v0
.end method

.method static synthetic lambda$_Start$0(Landroid/content/Context;)V
    .locals 0

    .line 57
    invoke-static {p0}, Ldev/blaze/launcher/Start;->Start(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic lambda$_Start$1(Landroid/content/Context;)V
    .locals 2

    .line 56
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ldev/blaze/launcher/Start$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Ldev/blaze/launcher/Start$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v0, 0x64

    .line 59
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "err: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BlazeLauncherNative"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic lambda$__Start$2()V
    .locals 3

    .line 73
    :goto_0
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ldev/blaze/launcher/Start$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Ldev/blaze/launcher/Start$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v0, 0x64

    .line 74
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "err: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlazeLauncherNative"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic lambda$__Start$3()V
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ldev/blaze/launcher/Start$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ldev/blaze/launcher/Start$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 79
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static native ooOOOooooOOOo()V
.end method
