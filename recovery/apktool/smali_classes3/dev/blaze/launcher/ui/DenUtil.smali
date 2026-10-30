.class public Ldev/blaze/launcher/ui/DenUtil;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static final short:[S


# direct methods
.method static constructor <clinit>()V
    .locals 53

    const v0, 0x7

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Ldev/blaze/launcher/ui/DenUtil;->short:[S

    invoke-static/range {}, Ldev/blaze/launcher/ui/DenUtil;->ۣۡۢۦ()[S

    move-result-object v21

    const v24, 0x66e

    const v22, 0x0

    const v23, 0x7

    invoke-static/range {v21 .. v24}, Lcom/google/android/datatransport/runtime/firebase/transport/ۨۤۡۧ;->۟ۧۡۥ۟([SIII)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    sput-object v0, Ldev/blaze/launcher/ui/DenUtil;->TAG:Ljava/lang/String;

    return-void

    :array_0
    .array-data 2
        0x62as
        0x60bs
        0x600s
        0x63bs
        0x61as
        0x607s
        0x602s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 51

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 51

    move/from16 v1, p1

    move-object/from16 v0, p0

    invoke-static {v0}, Lorg/apache/http/pool/ۣ۟۠۟۠;->۟ۧۦۤ۟(Ljava/lang/Object;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/inputmethod/ۥۧۥۦ;->ۣۥ۠(Ljava/lang/Object;)Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v0}, Landroidx/viewbinding/۟ۦۥۤۦ;->۟ۢۦ۟۠(Ljava/lang/Object;)F

    move-result v0

    mul-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 51

    move/from16 v1, p1

    move-object/from16 v0, p0

    invoke-static {v0}, Lorg/apache/http/pool/ۣ۟۠۟۠;->۟ۧۦۤ۟(Ljava/lang/Object;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/inputmethod/ۥۧۥۦ;->ۣۥ۠(Ljava/lang/Object;)Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v0}, Landroidx/viewbinding/۟ۦۥۤۦ;->۟ۢۦ۟۠(Ljava/lang/Object;)F

    move-result v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method public static ۣۡۢۦ()[S
    .locals 1

    invoke-static {}, Landroidx/core/internal/view/۟ۥۧۧۨ;->۠ۢۢۥ()I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Ldev/blaze/launcher/ui/DenUtil;->short:[S

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method
