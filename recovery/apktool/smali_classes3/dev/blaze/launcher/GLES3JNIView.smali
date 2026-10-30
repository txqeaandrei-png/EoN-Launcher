.class public Ldev/blaze/launcher/GLES3JNIView;
.super Landroid/opengl/GLSurfaceView;

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static circleWheelView:Ldev/blaze/launcher/ui/CircleWheelView;

.field private static circleWheelWindow:Landroid/widget/PopupWindow;

.field public static clickGuiButton:Ldev/blaze/launcher/ui/ClickGuiButton;

.field public static clickGuiButtonSize:I

.field public static globalFontData:[B

.field private static mCircleWheelView:Z

.field public static mainActivity:Landroid/app/Activity;

.field public static shortcutButtonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldev/blaze/launcher/ui/ShortcutButton;",
            ">;"
        }
    .end annotation
.end field

.field public static textureLoader:Ldev/blaze/launcher/utils/TextureLoader;

.field public static textureLoaderLauncher:Ldev/blaze/launcher/utils/TextureLoader;

.field public static titleFontData:[B

.field public static translation:Ljava/lang/String;

.field public static windowSizeX:F

.field public static windowSizeY:F


# instance fields
.field private workerThread:Ldev/blaze/launcher/WorkerThread;


# direct methods
.method static bridge synthetic -$$Nest$sfgetcircleWheelView()Ldev/blaze/launcher/ui/CircleWheelView;
    .locals 1

    sget-object v0, Ldev/blaze/launcher/GLES3JNIView;->circleWheelView:Ldev/blaze/launcher/ui/CircleWheelView;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ldev/blaze/launcher/GLES3JNIView;->shortcutButtonList:Ljava/util/List;

    const/16 v0, 0x96

    .line 49
    sput v0, Ldev/blaze/launcher/GLES3JNIView;->clickGuiButtonSize:I

    const/4 v0, 0x0

    .line 54
    sput-boolean v0, Ldev/blaze/launcher/GLES3JNIView;->mCircleWheelView:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 88
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    move-object v0, p0

    .line 89
    invoke-virtual/range {v0 .. v6}, Ldev/blaze/launcher/GLES3JNIView;->setEGLConfigChooser(IIIIII)V

    .line 90
    invoke-virtual {p0}, Ldev/blaze/launcher/GLES3JNIView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 v0, -0x3

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    const/4 p1, 0x3

    .line 91
    invoke-virtual {p0, p1}, Ldev/blaze/launcher/GLES3JNIView;->setEGLContextClientVersion(I)V

    .line 92
    invoke-virtual {p0, p0}, Ldev/blaze/launcher/GLES3JNIView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 95
    new-instance p1, Ldev/blaze/launcher/WorkerThread;

    invoke-direct {p1, p0}, Ldev/blaze/launcher/WorkerThread;-><init>(Ldev/blaze/launcher/GLES3JNIView;)V

    iput-object p1, p0, Ldev/blaze/launcher/GLES3JNIView;->workerThread:Ldev/blaze/launcher/WorkerThread;

    return-void
.end method

.method public static native MotionEventClick(ZFF)V
.end method

.method public static addToCircleWheel(Ljava/lang/String;)V
    .locals 1

    .line 193
    sget-boolean v0, Ldev/blaze/launcher/GLES3JNIView;->mCircleWheelView:Z

    if-eqz v0, :cond_0

    .line 194
    sget-object v0, Ldev/blaze/launcher/GLES3JNIView;->circleWheelView:Ldev/blaze/launcher/ui/CircleWheelView;

    invoke-virtual {v0}, Ldev/blaze/launcher/ui/CircleWheelView;->getMTextList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    sget-object v0, Ldev/blaze/launcher/GLES3JNIView;->circleWheelView:Ldev/blaze/launcher/ui/CircleWheelView;

    invoke-virtual {v0}, Ldev/blaze/launcher/ui/CircleWheelView;->getMTextList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static native getShortcutXByName(Ljava/lang/String;)I
.end method

.method public static native getShortcutYByName(Ljava/lang/String;)I
.end method

.method public static native getWindowRect()Ljava/lang/String;
.end method

.method public static native imgui_Shutdown()V
.end method

.method public static native init()V
.end method

.method public static loadGlobalFont(Ljava/io/InputStream;)V
    .locals 1

    .line 69
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    sput-object v0, Ldev/blaze/launcher/GLES3JNIView;->globalFontData:[B

    .line 70
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 72
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static native loadImage(Ljava/lang/String;I)V
.end method

.method public static loadTitleFont(Ljava/io/InputStream;)V
    .locals 1

    .line 60
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    sput-object v0, Ldev/blaze/launcher/GLES3JNIView;->titleFontData:[B

    .line 61
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 63
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static openLinkInBrowser(Ljava/lang/String;)V
    .locals 2

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 135
    sget-object p0, Ldev/blaze/launcher/Start;->activity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static removeFromCircleWheel(Ljava/lang/String;)V
    .locals 1

    .line 201
    sget-boolean v0, Ldev/blaze/launcher/GLES3JNIView;->mCircleWheelView:Z

    if-eqz v0, :cond_0

    .line 202
    sget-object v0, Ldev/blaze/launcher/GLES3JNIView;->circleWheelView:Ldev/blaze/launcher/ui/CircleWheelView;

    invoke-virtual {v0}, Ldev/blaze/launcher/ui/CircleWheelView;->getMTextList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static native resize(II)V
.end method

.method public static native setShortcutXByName(Ljava/lang/String;I)V
.end method

.method public static native setShortcutYByName(Ljava/lang/String;I)V
.end method

.method public static native setTranslation(Ljava/lang/String;)V
.end method

.method public static native setValue(Ljava/lang/String;)V
.end method

.method public static showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 150
    new-instance v0, Landroid/widget/LinearLayout;

    sget-object v1, Ldev/blaze/launcher/Start;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 151
    new-instance v1, Landroid/widget/EditText;

    sget-object v2, Ldev/blaze/launcher/Start;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 152
    const-string v2, "..."

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    .line 154
    invoke-virtual {v0, v1, p1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 156
    new-instance p1, Landroid/app/AlertDialog$Builder;

    sget-object v2, Ldev/blaze/launcher/Start;->activity:Landroid/app/Activity;

    const v3, 0x103023a

    invoke-direct {p1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 157
    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 158
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 159
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Ldev/blaze/launcher/GLES3JNIView$1;

    invoke-direct {p1, v1}, Ldev/blaze/launcher/GLES3JNIView$1;-><init>(Landroid/widget/EditText;)V

    .line 160
    const-string v0, "Yes"

    invoke-virtual {p0, v0, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 170
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 171
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static showToast(Ljava/lang/String;)V
    .locals 2

    .line 175
    sget-object v0, Ldev/blaze/launcher/Start;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static native step()V
.end method

.method public static toggleShortcut(Ljava/lang/String;ZII)V
    .locals 4

    .line 208
    sget-boolean p2, Ldev/blaze/launcher/GLES3JNIView;->mCircleWheelView:Z

    const/4 p3, 0x1

    const/16 v0, -0x258

    const/16 v1, 0x15e

    const/16 v2, 0x11

    if-nez p2, :cond_0

    .line 209
    new-instance p2, Ldev/blaze/launcher/ui/CircleWheelView;

    sget-object v3, Ldev/blaze/launcher/Start;->activity:Landroid/app/Activity;

    invoke-direct {p2, v3}, Ldev/blaze/launcher/ui/CircleWheelView;-><init>(Landroid/content/Context;)V

    sput-object p2, Ldev/blaze/launcher/GLES3JNIView;->circleWheelView:Ldev/blaze/launcher/ui/CircleWheelView;

    .line 210
    new-instance v3, Ldev/blaze/launcher/GLES3JNIView$2;

    invoke-direct {v3}, Ldev/blaze/launcher/GLES3JNIView$2;-><init>()V

    invoke-virtual {p2, v3}, Ldev/blaze/launcher/ui/CircleWheelView;->setMOnWheelClickListener(Ldev/blaze/launcher/ui/OnWheelClickListener;)V

    .line 218
    sget-object p2, Ldev/blaze/launcher/Start;->activity:Landroid/app/Activity;

    sget-object v3, Ldev/blaze/launcher/GLES3JNIView;->circleWheelView:Ldev/blaze/launcher/ui/CircleWheelView;

    invoke-static {p2, v3, v2, v1, v0}, Ldev/blaze/launcher/ui/PopupWindowManager;->createPopupWindow(Landroid/app/Activity;Landroid/view/View;III)Landroid/widget/PopupWindow;

    move-result-object p2

    sput-object p2, Ldev/blaze/launcher/GLES3JNIView;->circleWheelWindow:Landroid/widget/PopupWindow;

    .line 219
    sput-boolean p3, Ldev/blaze/launcher/GLES3JNIView;->mCircleWheelView:Z

    .line 222
    :cond_0
    sget-object p2, Ldev/blaze/launcher/GLES3JNIView;->circleWheelView:Ldev/blaze/launcher/ui/CircleWheelView;

    invoke-virtual {p2}, Ldev/blaze/launcher/ui/CircleWheelView;->getMTextList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v3, 0x2

    if-lt p2, v3, :cond_1

    .line 223
    sget-object p2, Ldev/blaze/launcher/GLES3JNIView;->circleWheelWindow:Landroid/widget/PopupWindow;

    sget-object v3, Ldev/blaze/launcher/Start;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p2, v3, v2, v1, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 225
    :cond_1
    sget-object p2, Ldev/blaze/launcher/GLES3JNIView;->circleWheelWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 228
    :goto_0
    sget-object p2, Ldev/blaze/launcher/GLES3JNIView;->shortcutButtonList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 229
    new-instance p2, Ldev/blaze/launcher/ui/ShortcutButton;

    sget-object p3, Ldev/blaze/launcher/Start;->activity:Landroid/app/Activity;

    invoke-direct {p2, p3, p0, v0}, Ldev/blaze/launcher/ui/ShortcutButton;-><init>(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 230
    sget-object p3, Ldev/blaze/launcher/GLES3JNIView;->shortcutButtonList:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_2

    .line 232
    invoke-static {p0}, Ldev/blaze/launcher/GLES3JNIView;->getShortcutXByName(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0}, Ldev/blaze/launcher/GLES3JNIView;->getShortcutYByName(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p2, p1, p0}, Ldev/blaze/launcher/ui/ShortcutButton;->show(II)V

    goto :goto_3

    .line 234
    :cond_2
    invoke-virtual {p2}, Ldev/blaze/launcher/ui/ShortcutButton;->dismiss()V

    goto :goto_3

    .line 238
    :cond_3
    sget-object p2, Ldev/blaze/launcher/GLES3JNIView;->shortcutButtonList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v1, v0

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldev/blaze/launcher/ui/ShortcutButton;

    .line 239
    iget-object v3, v2, Ldev/blaze/launcher/ui/ShortcutButton;->text:Ljava/lang/String;

    invoke-static {v3, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz p1, :cond_5

    .line 241
    invoke-static {p0}, Ldev/blaze/launcher/GLES3JNIView;->getShortcutXByName(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0}, Ldev/blaze/launcher/GLES3JNIView;->getShortcutYByName(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Ldev/blaze/launcher/ui/ShortcutButton;->show(II)V

    goto :goto_2

    .line 243
    :cond_5
    invoke-virtual {v2}, Ldev/blaze/launcher/ui/ShortcutButton;->dismiss()V

    :goto_2
    move v1, p3

    goto :goto_1

    :cond_6
    if-nez v1, :cond_8

    .line 250
    new-instance p2, Ldev/blaze/launcher/ui/ShortcutButton;

    sget-object p3, Ldev/blaze/launcher/Start;->activity:Landroid/app/Activity;

    invoke-direct {p2, p3, p0, v0}, Ldev/blaze/launcher/ui/ShortcutButton;-><init>(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 251
    sget-object p3, Ldev/blaze/launcher/GLES3JNIView;->shortcutButtonList:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_7

    .line 253
    invoke-static {p0}, Ldev/blaze/launcher/GLES3JNIView;->getShortcutXByName(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0}, Ldev/blaze/launcher/GLES3JNIView;->getShortcutYByName(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p2, p1, p0}, Ldev/blaze/launcher/ui/ShortcutButton;->show(II)V

    goto :goto_3

    .line 255
    :cond_7
    invoke-virtual {p2}, Ldev/blaze/launcher/ui/ShortcutButton;->dismiss()V

    :cond_8
    :goto_3
    return-void
.end method

.method public static updateShortcut(Ljava/lang/String;Z)V
    .locals 3

    .line 77
    sget-object v0, Ldev/blaze/launcher/GLES3JNIView;->shortcutButtonList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldev/blaze/launcher/ui/ShortcutButton;

    .line 78
    iget-object v2, v1, Ldev/blaze/launcher/ui/ShortcutButton;->text:Ljava/lang/String;

    invoke-static {v2, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {v1, p1}, Ldev/blaze/launcher/ui/ShortcutButton;->setEnable(Z)V

    goto :goto_0

    .line 82
    :cond_1
    const-string v0, "ClickGui"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 83
    sget-object p0, Ldev/blaze/launcher/Start;->clickGuiButton:Ldev/blaze/launcher/ui/ClickGuiButton;

    invoke-virtual {p0, p1}, Ldev/blaze/launcher/ui/ClickGuiButton;->setEnable(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .line 141
    iget-object v0, p0, Ldev/blaze/launcher/GLES3JNIView;->workerThread:Ldev/blaze/launcher/WorkerThread;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Ldev/blaze/launcher/WorkerThread;->stopRendering()V

    .line 145
    :cond_0
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 146
    invoke-static {}, Ldev/blaze/launcher/GLES3JNIView;->imgui_Shutdown()V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    .line 101
    invoke-static {}, Ldev/blaze/launcher/GLES3JNIView;->step()V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    .line 108
    invoke-static {p2, p3}, Ldev/blaze/launcher/GLES3JNIView;->resize(II)V

    int-to-float p1, p2

    .line 109
    sput p1, Ldev/blaze/launcher/GLES3JNIView;->windowSizeX:F

    int-to-float p1, p3

    .line 110
    sput p1, Ldev/blaze/launcher/GLES3JNIView;->windowSizeY:F

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1

    .line 117
    :try_start_0
    sget-object p1, Ldev/blaze/launcher/Start;->activity:Landroid/app/Activity;

    const-string p2, "com.mojang.minecraftpe"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 119
    new-instance p2, Ldev/blaze/launcher/utils/TextureLoader;

    invoke-direct {p2, p1, v0}, Ldev/blaze/launcher/utils/TextureLoader;-><init>(Landroid/content/Context;Z)V

    sput-object p2, Ldev/blaze/launcher/GLES3JNIView;->textureLoader:Ldev/blaze/launcher/utils/TextureLoader;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    invoke-static {}, Ldev/blaze/launcher/GLES3JNIView;->init()V

    .line 129
    iget-object p1, p0, Ldev/blaze/launcher/GLES3JNIView;->workerThread:Ldev/blaze/launcher/WorkerThread;

    invoke-virtual {p1}, Ldev/blaze/launcher/WorkerThread;->startRendering()V

    .line 130
    iget-object p1, p0, Ldev/blaze/launcher/GLES3JNIView;->workerThread:Ldev/blaze/launcher/WorkerThread;

    invoke-virtual {p1}, Ldev/blaze/launcher/WorkerThread;->requestRender()V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 121
    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
