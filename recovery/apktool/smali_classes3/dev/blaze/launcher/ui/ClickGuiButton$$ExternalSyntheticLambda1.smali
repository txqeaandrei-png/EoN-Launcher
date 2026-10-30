.class public final synthetic Ldev/blaze/launcher/ui/ClickGuiButton$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 52

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 51

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ۦۣۢۢ(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {}, Lorg/xmlpull/v1/wrapper/۟ۥۣۦۡ;->ۥۦۡۥ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Ldev/blaze/launcher/ui/ClickGuiButton;->lambda$new$1(Landroid/view/View;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 51

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    invoke-static {v1}, Ldev/blaze/launcher/ui/ClickGuiButton$$ExternalSyntheticLambda1;->ۦۣۢۢ(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
