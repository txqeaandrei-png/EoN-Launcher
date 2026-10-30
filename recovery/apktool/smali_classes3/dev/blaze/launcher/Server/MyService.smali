.class public Ldev/blaze/launcher/Server/MyService;
.super Landroid/app/Service;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static xxx:I

.field public static yyy:I


# instance fields
.field private DrawWindow:Landroid/view/WindowManager;

.field private drawView:Ldev/blaze/launcher/Server/ShowImgui;

.field han:Landroid/os/Handler;

.field private manager:Landroid/view/WindowManager;

.field private point:Landroid/graphics/Point;

.field private vParams:Landroid/view/WindowManager$LayoutParams;

.field private vTouch:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetmanager(Ldev/blaze/launcher/Server/MyService;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Ldev/blaze/launcher/Server/MyService;->manager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvParams(Ldev/blaze/launcher/Server/MyService;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Ldev/blaze/launcher/Server/MyService;->vParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvTouch(Ldev/blaze/launcher/Server/MyService;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Ldev/blaze/launcher/Server/MyService;->vTouch:Landroid/view/View;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ldev/blaze/launcher/Server/MyService;->han:Landroid/os/Handler;

    return-void
.end method

.method private getAttributes(Z)Landroid/view/WindowManager$LayoutParams;
    .locals 4

    .line 112
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 113
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    const/16 v1, 0x7f6

    .line 114
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x7d2

    .line 116
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    :goto_0
    const v1, 0xc000408

    .line 118
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eqz p1, :cond_1

    .line 123
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_1
    const/4 v1, 0x1

    .line 125
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 126
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_2

    .line 127
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_2
    const/16 v1, 0x33

    .line 129
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x0

    .line 130
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eqz p1, :cond_3

    const/4 v1, -0x1

    .line 131
    :cond_3
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    return-object v0
.end method

.method static synthetic lambda$onCreate$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    if-eq p0, v1, :cond_0

    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    goto :goto_1

    :cond_0
    if-eq p0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 78
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-static {v1, p0, p1}, Ldev/blaze/launcher/Server/ShowImgui;->MotionEventClick(ZFF)V

    :goto_1
    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 105
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 106
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Ldev/blaze/launcher/Server/MyService;->point:Landroid/graphics/Point;

    .line 107
    iget-object p1, p0, Ldev/blaze/launcher/Server/MyService;->DrawWindow:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object v0, p0, Ldev/blaze/launcher/Server/MyService;->point:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 108
    iget-object p1, p0, Ldev/blaze/launcher/Server/MyService;->point:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Ldev/blaze/launcher/Server/MyService;->point:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {p1, v0}, Ldev/blaze/launcher/Server/ShowImgui;->real(II)V

    return-void
.end method

.method public onCreate()V
    .locals 5

    .line 42
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 43
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Ldev/blaze/launcher/Server/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 45
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 46
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 48
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 50
    iget v1, v2, Landroid/graphics/Point;->x:I

    iget v3, v2, Landroid/graphics/Point;->y:I

    if-le v1, v3, :cond_0

    .line 51
    iget v1, v2, Landroid/graphics/Point;->x:I

    sput v1, Ldev/blaze/launcher/Server/MyService;->xxx:I

    .line 52
    iget v1, v2, Landroid/graphics/Point;->y:I

    sput v1, Ldev/blaze/launcher/Server/MyService;->yyy:I

    goto :goto_0

    .line 54
    :cond_0
    iget v1, v2, Landroid/graphics/Point;->y:I

    sput v1, Ldev/blaze/launcher/Server/MyService;->xxx:I

    .line 55
    iget v1, v2, Landroid/graphics/Point;->x:I

    sput v1, Ldev/blaze/launcher/Server/MyService;->yyy:I

    .line 57
    :goto_0
    sget v1, Ldev/blaze/launcher/Server/MyService;->xxx:I

    sget v2, Ldev/blaze/launcher/Server/MyService;->yyy:I

    invoke-static {v1, v2}, Ldev/blaze/launcher/Server/ShowImgui;->ScreenSize(II)V

    .line 59
    :try_start_0
    invoke-virtual {p0}, Ldev/blaze/launcher/Server/MyService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "TextStyle.ttf"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    sput-object v2, Ldev/blaze/launcher/Server/ShowImgui;->fontData:[B

    .line 61
    sget-object v2, Ldev/blaze/launcher/Server/ShowImgui;->fontData:[B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :catch_0
    invoke-virtual {p0, v0}, Ldev/blaze/launcher/Server/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Ldev/blaze/launcher/Server/MyService;->DrawWindow:Landroid/view/WindowManager;

    .line 64
    invoke-virtual {p0}, Ldev/blaze/launcher/Server/MyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Ldev/blaze/launcher/Server/MyService;->manager:Landroid/view/WindowManager;

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, v0}, Ldev/blaze/launcher/Server/MyService;->getAttributes(Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Ldev/blaze/launcher/Server/MyService;->vParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x1

    .line 66
    invoke-direct {p0, v0}, Ldev/blaze/launcher/Server/MyService;->getAttributes(Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 68
    new-instance v1, Ldev/blaze/launcher/Server/ShowImgui;

    invoke-direct {v1, p0}, Ldev/blaze/launcher/Server/ShowImgui;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Ldev/blaze/launcher/Server/MyService;->vTouch:Landroid/view/View;

    .line 70
    iget-object v3, p0, Ldev/blaze/launcher/Server/MyService;->manager:Landroid/view/WindowManager;

    iget-object v4, p0, Ldev/blaze/launcher/Server/MyService;->vParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v2, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    iget-object v2, p0, Ldev/blaze/launcher/Server/MyService;->manager:Landroid/view/WindowManager;

    invoke-interface {v2, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object v0, p0, Ldev/blaze/launcher/Server/MyService;->vTouch:Landroid/view/View;

    new-instance v1, Ldev/blaze/launcher/Server/MyService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ldev/blaze/launcher/Server/MyService$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 86
    new-instance v1, Ldev/blaze/launcher/Server/MyService$1;

    invoke-direct {v1, p0, v0}, Ldev/blaze/launcher/Server/MyService$1;-><init>(Ldev/blaze/launcher/Server/MyService;Landroid/os/Handler;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 137
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 138
    iget-object v0, p0, Ldev/blaze/launcher/Server/MyService;->drawView:Ldev/blaze/launcher/Server/ShowImgui;

    if-eqz v0, :cond_0

    .line 139
    iget-object v1, p0, Ldev/blaze/launcher/Server/MyService;->manager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
