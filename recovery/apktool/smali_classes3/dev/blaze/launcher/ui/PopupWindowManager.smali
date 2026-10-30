.class public Ldev/blaze/launcher/ui/PopupWindowManager;
.super Ljava/lang/Object;


# static fields
.field public static canRecord:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 53

    return-void
.end method

.method public constructor <init>()V
    .locals 51

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static circleView(Landroid/view/View;II)V
    .locals 53

    move/from16 v4, p2

    move/from16 v3, p1

    move-object/from16 v2, p0

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/customview/widget/ۣ۠۠ۨ;->ۨۡۦ۟(Ljava/lang/Object;I)V

    invoke-static {v0, v3}, Lcom/braze/ui/banners/ۢۦۢۥ;->ۤۡۥۣ(Ljava/lang/Object;I)V

    int-to-float v3, v4

    const/16 v4, 0x8

    new-array v4, v4, [F

    aput v3, v4, v1

    const/4 v1, 0x1

    aput v3, v4, v1

    const/4 v1, 0x2

    aput v3, v4, v1

    const/4 v1, 0x3

    aput v3, v4, v1

    const/4 v1, 0x4

    aput v3, v4, v1

    const/4 v1, 0x5

    aput v3, v4, v1

    const/4 v1, 0x6

    aput v3, v4, v1

    const/4 v1, 0x7

    aput v3, v4, v1

    invoke-static {v0, v4}, Lorg/apache/http/conn/routing/۟ۥۢۤ۠;->ۡۦۡ۠(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2, v0}, Lcom/braze/ui/actions/brazeactions/steps/۟ۤۦۧۤ;->ۣ۟ۤۡۨ(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static circleViewEachRadio(Landroid/view/View;I[I)V
    .locals 67

    move-object/from16 v18, p2

    move/from16 v17, p1

    move-object/from16 v16, p0

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/customview/widget/ۣ۠۠ۨ;->ۨۡۦ۟(Ljava/lang/Object;I)V

    move/from16 v2, v17

    invoke-static {v0, v2}, Lcom/braze/ui/banners/ۢۦۢۥ;->ۤۡۥۣ(Ljava/lang/Object;I)V

    aget v2, v18, v1

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v4, v18, v3

    int-to-float v4, v4

    const/4 v5, 0x2

    aget v6, v18, v5

    int-to-float v6, v6

    const/4 v7, 0x3

    aget v8, v18, v7

    int-to-float v8, v8

    const/4 v9, 0x4

    aget v10, v18, v9

    int-to-float v10, v10

    const/4 v11, 0x5

    aget v12, v18, v11

    int-to-float v12, v12

    const/4 v13, 0x6

    aget v14, v18, v13

    int-to-float v14, v14

    const/4 v15, 0x7

    aget v13, v18, v15

    int-to-float v13, v13

    const/16 v15, 0x8

    new-array v15, v15, [F

    aput v2, v15, v1

    aput v4, v15, v3

    aput v6, v15, v5

    aput v8, v15, v7

    aput v10, v15, v9

    aput v12, v15, v11

    const/4 v1, 0x6

    aput v14, v15, v1

    const/4 v1, 0x7

    aput v13, v15, v1

    invoke-static {v0, v15}, Lorg/apache/http/conn/routing/۟ۥۢۤ۠;->ۡۦۡ۠(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v1, v16

    invoke-static {v1, v0}, Lcom/braze/ui/actions/brazeactions/steps/۟ۤۦۧۤ;->ۣ۟ۤۡۨ(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static createCanClosePopupWindow(Landroid/app/Activity;Landroid/view/View;III)Landroid/widget/PopupWindow;
    .locals 54

    move/from16 v7, p4

    move/from16 v6, p3

    move/from16 v5, p2

    move-object/from16 v4, p1

    move-object/from16 v3, p0

    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    const/4 v2, 0x1

    invoke-direct {v0, v4, v1, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    invoke-static {v0, v2}, Lorg/apache/http/impl/conn/tsccm/۟ۧۥۤۥ;->۠ۦۢۤ(Ljava/lang/Object;Z)V

    invoke-static {v0, v2}, Lorg/spongycastle/crypto/kems/ۥۧۢۥ;->۠ۧ۟ۧ(Ljava/lang/Object;I)V

    invoke-static {v0, v2}, Lcom/google/android/gms/common/wrappers/۟ۡۨۨۦ;->۟۟ۢۧ۠(Ljava/lang/Object;Z)V

    invoke-static {v3}, Lcom/google/android/material/chip/ۧۨۤۡ;->۟ۤۡ۠ۤ(Ljava/lang/Object;)Landroid/view/Window;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/xbox/service/model/ۦ۠ۤۦ;->ۧ۠ۨ۠(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    invoke-static {v0, v3, v5, v6, v7}, Landroidx/dynamicanimation/animation/۟۟ۧۧ۟;->۠ۧۥ(Ljava/lang/Object;Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static createNoClickPopupWindow(Landroid/app/Activity;Landroid/view/View;IIIIIZ)Landroid/widget/PopupWindow;
    .locals 52

    move/from16 v8, p7

    move/from16 v7, p6

    move/from16 v6, p5

    move/from16 v5, p4

    move/from16 v4, p3

    move/from16 v3, p2

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    new-instance v8, Landroid/widget/PopupWindow;

    const/4 v0, 0x1

    invoke-direct {v8, v2, v6, v7, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    const/4 v2, 0x0

    invoke-static {v8, v2}, Lorg/apache/http/impl/conn/tsccm/۟ۧۥۤۥ;->۠ۦۢۤ(Ljava/lang/Object;Z)V

    invoke-static {v8, v2}, Lcom/google/android/gms/common/wrappers/۟ۡۨۨۦ;->۟۟ۢۧ۠(Ljava/lang/Object;Z)V

    invoke-static {v8, v2}, Ljavax/xml/stream/util/ۨۤۦۡ;->ۢۥۨۢ(Ljava/lang/Object;Z)V

    invoke-static {v1}, Lcom/google/android/material/chip/ۧۨۤۡ;->۟ۤۡ۠ۤ(Ljava/lang/Object;)Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/xbox/service/model/ۦ۠ۤۦ;->ۧ۠ۨ۠(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    invoke-static {v8, v1, v3, v4, v5}, Landroidx/dynamicanimation/animation/۟۟ۧۧ۟;->۠ۧۥ(Ljava/lang/Object;Ljava/lang/Object;III)V

    return-object v8
.end method

.method public static createNoClickPopupWindow(Landroid/app/Activity;Landroid/view/View;IIIZ)Landroid/widget/PopupWindow;
    .locals 53

    move/from16 v7, p5

    move/from16 v6, p4

    move/from16 v5, p3

    move/from16 v4, p2

    move-object/from16 v3, p1

    move-object/from16 v2, p0

    new-instance v7, Landroid/widget/PopupWindow;

    const/4 v0, -0x2

    const/4 v1, 0x1

    invoke-direct {v7, v3, v0, v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    const/4 v3, 0x0

    invoke-static {v7, v3}, Lorg/apache/http/impl/conn/tsccm/۟ۧۥۤۥ;->۠ۦۢۤ(Ljava/lang/Object;Z)V

    invoke-static {v7, v3}, Lcom/google/android/gms/common/wrappers/۟ۡۨۨۦ;->۟۟ۢۧ۠(Ljava/lang/Object;Z)V

    invoke-static {v7, v3}, Ljavax/xml/stream/util/ۨۤۦۡ;->ۢۥۨۢ(Ljava/lang/Object;Z)V

    invoke-static {v2}, Lcom/google/android/material/chip/ۧۨۤۡ;->۟ۤۡ۠ۤ(Ljava/lang/Object;)Landroid/view/Window;

    move-result-object v2

    invoke-static {v2}, Lcom/microsoft/xbox/service/model/ۦ۠ۤۦ;->ۧ۠ۨ۠(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    invoke-static {v7, v2, v4, v5, v6}, Landroidx/dynamicanimation/animation/۟۟ۧۧ۟;->۠ۧۥ(Ljava/lang/Object;Ljava/lang/Object;III)V

    return-object v7
.end method

.method public static createPopupWindow(Landroid/app/Activity;Landroid/view/View;III)Landroid/widget/PopupWindow;
    .locals 54

    move/from16 v7, p4

    move/from16 v6, p3

    move/from16 v5, p2

    move-object/from16 v4, p1

    move-object/from16 v3, p0

    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    const/4 v2, 0x1

    invoke-direct {v0, v4, v1, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lorg/apache/http/impl/conn/tsccm/۟ۧۥۤۥ;->۠ۦۢۤ(Ljava/lang/Object;Z)V

    invoke-static {v0, v4}, Lcom/google/android/gms/common/wrappers/۟ۡۨۨۦ;->۟۟ۢۧ۠(Ljava/lang/Object;Z)V

    invoke-static {v3}, Lcom/google/android/material/chip/ۧۨۤۡ;->۟ۤۡ۠ۤ(Ljava/lang/Object;)Landroid/view/Window;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/xbox/service/model/ۦ۠ۤۦ;->ۧ۠ۨ۠(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    invoke-static {v0, v3, v5, v6, v7}, Landroidx/dynamicanimation/animation/۟۟ۧۧ۟;->۠ۧۥ(Ljava/lang/Object;Ljava/lang/Object;III)V

    return-object v0
.end method
