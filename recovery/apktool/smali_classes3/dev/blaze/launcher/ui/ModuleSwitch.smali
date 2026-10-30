.class public Ldev/blaze/launcher/ui/ModuleSwitch;
.super Landroid/view/View;


# static fields
.field private static final short:[S


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;


# direct methods
.method static constructor <clinit>()V
    .locals 52

    const v0, 0xe

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Ldev/blaze/launcher/ui/ModuleSwitch;->short:[S

    return-void

    nop

    :array_0
    .array-data 2
        0x5f7s
        0x5e7s
        0x5e4s
        0x5e7s
        0x5e4s
        0x5e7s
        0x5e4s
        0x9e4s
        0x9f1s
        0x982s
        0x9f1s
        0x982s
        0x9f1s
        0x982s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 51

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static ۣۢ۟ۡ()[S
    .locals 1

    invoke-static {}, Lkotlin/io/encoding/ۤۦۣۦ;->۟ۦۢۢۤ()I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Ldev/blaze/launcher/ui/ModuleSwitch;->short:[S

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 56

    move-object/from16 v6, p1

    move-object/from16 v5, p0

    invoke-super {v5, v6}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iput-object v6, v5, Ldev/blaze/launcher/ui/ModuleSwitch;->mCanvas:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-static/range {}, Ldev/blaze/launcher/ui/ModuleSwitch;->ۣۢ۟ۡ()[S

    move-result-object v18

    const v21, 0x5d4

    const v19, 0x0

    const v20, 0x7

    invoke-static/range {v18 .. v21}, Lorg/spongycastle/jce/spec/ۣۣۧۥ;->ۡۧۤۡ([SIII)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v1, v18

    invoke-static {v1}, Landroidx/drawerlayout/ۡ۠۠ۢ;->ۥۧۢۡ(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/actions/ۣۨۨۦ;->۟ۢۢ۠(Ljava/lang/Object;I)V

    invoke-static {}, Lokhttp3/internal/io/ۣ۟ۦۧ;->۟ۦۣ۠۠()Landroid/graphics/Paint$Style;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/ripple/۠ۨ۟ۥ;->ۣۨۨ۟(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-static/range {}, Ldev/blaze/launcher/ui/ModuleSwitch;->ۣۢ۟ۡ()[S

    move-result-object v21

    const v24, 0x9c7

    const v22, 0x7

    const v23, 0x7

    invoke-static/range {v21 .. v24}, Lorg/spongycastle/asn1/۟ۤۥۧ۟;->۟ۡۧۡۦ([SIII)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v2, v21

    invoke-static {v2}, Landroidx/drawerlayout/ۡ۠۠ۢ;->ۥۧۢۡ(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/actions/ۣۨۨۦ;->۟ۢۢ۠(Ljava/lang/Object;I)V

    invoke-static {}, Lokhttp3/internal/io/ۣ۟ۦۧ;->۟ۦۣ۠۠()Landroid/graphics/Paint$Style;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/material/ripple/۠ۨ۟ۥ;->ۣۨۨ۟(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Landroid/graphics/RectF;

    const/high16 v3, 0x43960000    # 300.0f

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v6, v2, v3, v3, v0}, Lorg/spongycastle/asn1/crmf/۟۟ۡ۠ۥ;->۟ۧ۟۠ۨ(Ljava/lang/Object;Ljava/lang/Object;FFLjava/lang/Object;)V

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v6, v4, v4, v0, v1}, Landroidx/dynamicanimation/animation/۟۟ۧۧ۟;->۟ۦۥۢ۠(Ljava/lang/Object;FFFLjava/lang/Object;)V

    invoke-static {v5}, Lkotlin/jvm/functions/ۣۣ۟ۧۢ;->۟ۡۥۢ(Ljava/lang/Object;)V

    return-void
.end method
