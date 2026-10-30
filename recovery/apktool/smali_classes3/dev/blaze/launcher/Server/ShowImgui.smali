.class public Ldev/blaze/launcher/Server/ShowImgui;
.super Landroid/opengl/GLSurfaceView;

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field public static fontData:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 15
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    move-object v0, p0

    .line 16
    invoke-virtual/range {v0 .. v6}, Ldev/blaze/launcher/Server/ShowImgui;->setEGLConfigChooser(IIIIII)V

    .line 17
    invoke-virtual {p0}, Ldev/blaze/launcher/Server/ShowImgui;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 v0, -0x3

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    const/4 p1, 0x3

    .line 18
    invoke-virtual {p0, p1}, Ldev/blaze/launcher/Server/ShowImgui;->setEGLContextClientVersion(I)V

    .line 19
    invoke-virtual {p0, p0}, Ldev/blaze/launcher/Server/ShowImgui;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    return-void
.end method

.method public static native MotionEventClick(ZFF)V
.end method

.method public static native ScreenSize(II)V
.end method

.method public static native Shutdown()V
.end method

.method public static native getWindowRect()Ljava/lang/String;
.end method

.method public static native init()V
.end method

.method public static native real(II)V
.end method

.method public static native resize(II)V
.end method

.method public static native step()V
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    .line 38
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 39
    invoke-static {}, Ldev/blaze/launcher/Server/ShowImgui;->Shutdown()V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    .line 34
    invoke-static {}, Ldev/blaze/launcher/Server/ShowImgui;->step()V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    .line 29
    invoke-static {p2, p3}, Ldev/blaze/launcher/Server/ShowImgui;->resize(II)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    .line 24
    invoke-static {}, Ldev/blaze/launcher/Server/ShowImgui;->init()V

    return-void
.end method
