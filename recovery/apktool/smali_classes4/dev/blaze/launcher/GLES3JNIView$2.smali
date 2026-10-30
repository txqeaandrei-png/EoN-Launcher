.class Ldev/blaze/launcher/GLES3JNIView$2;
.super Ljava/lang/Object;

# interfaces
.implements Ldev/blaze/launcher/ui/OnWheelClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/blaze/launcher/GLES3JNIView;->toggleShortcut(Ljava/lang/String;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWheelClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 214
    invoke-static {}, Ldev/blaze/launcher/GLES3JNIView;->-$$Nest$sfgetcircleWheelView()Ldev/blaze/launcher/ui/CircleWheelView;

    move-result-object v0

    invoke-virtual {v0}, Ldev/blaze/launcher/ui/CircleWheelView;->getMTextList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ldev/blaze/launcher/ui/ShortcutButton;->toggleModuleByName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
