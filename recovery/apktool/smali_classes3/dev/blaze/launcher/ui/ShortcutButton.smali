.class public Ldev/blaze/launcher/ui/ShortcutButton;
.super Landroid/widget/PopupWindow;


# static fields
.field private static final short:[S


# instance fields
.field private X:F

.field private Y:F

.field private final activity:Landroid/app/Activity;

.field private downTime:J

.field private isShow:Z

.field private final mButton:Landroid/widget/Button;

.field public final text:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetX(Ldev/blaze/launcher/ui/ShortcutButton;)F
    .locals 51

    move-object/from16 v0, p0

    invoke-static {v0}, Ldev/blaze/launcher/ui/ShortcutButton;->ۡۥۦ۟(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$fgetY(Ldev/blaze/launcher/ui/ShortcutButton;)F
    .locals 51

    move-object/from16 v0, p0

    invoke-static {v0}, Ldev/blaze/launcher/ui/ShortcutButton;->ۢۤۨۢ(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$fgetdownTime(Ldev/blaze/launcher/ui/ShortcutButton;)J
    .locals 53

    move-object/from16 v2, p0

    invoke-static {v2}, Ldev/blaze/launcher/ui/ShortcutButton;->ۣۢۡۡ(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputX(Ldev/blaze/launcher/ui/ShortcutButton;F)V
    .locals 51

    move/from16 v1, p1

    move-object/from16 v0, p0

    iput v1, v0, Ldev/blaze/launcher/ui/ShortcutButton;->X:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputY(Ldev/blaze/launcher/ui/ShortcutButton;F)V
    .locals 51

    move/from16 v1, p1

    move-object/from16 v0, p0

    iput v1, v0, Ldev/blaze/launcher/ui/ShortcutButton;->Y:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdownTime(Ldev/blaze/launcher/ui/ShortcutButton;J)V
    .locals 51

    move-wide/from16 v1, p1

    move-object/from16 v0, p0

    iput-wide v1, v0, Ldev/blaze/launcher/ui/ShortcutButton;->downTime:J

    return-void
.end method

.method static constructor <clinit>()V
    .locals 52

    const v0, 0x11

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Ldev/blaze/launcher/ui/ShortcutButton;->short:[S

    return-void

    nop

    :array_0
    .array-data 2
        0x84cs
        0x829s
        0x829s
        0x829s
        0x829s
        0x829s
        0x829s
        0xadfs
        0xadcs
        0xadds
        0xb8as
        0xbefs
        0xbefs
        0xbefs
        0xbefs
        0xbefs
        0xbefs
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 58

    move/from16 v10, p3

    move-object/from16 v9, p2

    move-object/from16 v8, p1

    move-object/from16 v7, p0

    invoke-direct {v7}, Landroid/widget/PopupWindow;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, v7, Ldev/blaze/launcher/ui/ShortcutButton;->downTime:J

    const/4 v10, 0x0

    iput-boolean v10, v7, Ldev/blaze/launcher/ui/ShortcutButton;->isShow:Z

    const/4 v0, 0x0

    iput v0, v7, Ldev/blaze/launcher/ui/ShortcutButton;->Y:F

    iput-object v8, v7, Ldev/blaze/launcher/ui/ShortcutButton;->activity:Landroid/app/Activity;

    iput-object v9, v7, Ldev/blaze/launcher/ui/ShortcutButton;->text:Ljava/lang/String;

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Ldev/blaze/launcher/ui/ShortcutButton;->mButton:Landroid/widget/Button;

    const v8, 0x4115999a    # 9.35f

    invoke-static {v0, v8}, Landroidx/webkit/internal/۟ۤۨ۠;->۟ۧۥۢۡ(Ljava/lang/Object;F)V

    invoke-static/range {}, Ldev/blaze/launcher/ui/ShortcutButton;->۟ۤ۟ۧ۟()[S

    move-result-object v33

    const v36, 0x86f

    const v34, 0x0

    const v35, 0x7

    invoke-static/range {v33 .. v36}, Lcom/braze/triggers/events/۟ۧۤۦ۟;->ۣ۟ۢۢ([SIII)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v8, v33

    invoke-static {v8}, Landroidx/drawerlayout/ۡ۠۠ۢ;->ۥۧۢۡ(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v0, v8}, Landroidx/navigation/common/ۣ۟ۤۨۨ;->ۣ۟ۧۥۤ(Ljava/lang/Object;I)V

    const/4 v8, 0x1

    invoke-static {v0, v8}, Lcom/google/firebase/analytics/connector/۟ۧۢ۟;->ۣۥۣ۠(Ljava/lang/Object;Z)V

    const/16 v8, 0x11

    invoke-static {v0, v8}, Landroidx/emoji2/viewsintegration/ۣ۠۟ۤ;->ۥۧ۠ۥ(Ljava/lang/Object;I)V

    invoke-static {v0, v9}, Lorg/apache/http/impl/io/ۣ۟ۢۡ۟;->۟ۥۨۦۤ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v10}, Lcom/google/android/material/carousel/۟ۦۧۥ۠;->ۡۡۥۥ(Ljava/lang/Object;Z)V

    invoke-static {v7, v0}, Lcom/google/android/datatransport/cct/internal/ۦۡۥۢ;->ۥ۟ۥۢ(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    invoke-static {v0}, Lcom/braze/triggers/config/ۦۣ۟ۨ;->ۣۨ۠ۡ(Ljava/lang/Object;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    invoke-static {v8, v1}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/ۡۤۤۢ;->۟ۢ۠۠ۡ(Ljava/lang/Object;F)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v9}, Lcom/braze/ui/inappmessage/factories/ۣ۟۟ۦۢ;->ۣۣ۟ۡ۠(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {}, Ldev/blaze/launcher/ui/ShortcutButton;->۟ۤ۟ۧ۟()[S

    move-result-object v34

    const v37, 0xa9e

    const v35, 0x7

    const v36, 0x3

    invoke-static/range {v34 .. v37}, Lorg/spongycastle/crypto/util/ۣۦۧۧ;->ۡ۠ۤۧ([SIII)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v2, v34

    invoke-static {v1, v2}, Lcom/braze/ui/inappmessage/factories/ۣ۟۟ۦۢ;->ۣۣ۟ۡ۠(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1}, Ljavax/xml/stream/util/ۨۤۦۡ;->۟ۢۧۡ۠(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lkotlin/io/encoding/ۤۢۥ;->۟ۨۡۡ(Ljava/lang/Object;Ljava/lang/Object;)F

    move-result v1

    const v2, 0x3fd9999a    # 1.7f

    mul-float/2addr v1, v2

    const v2, 0x3eb33333    # 0.35f

    mul-float/2addr v1, v2

    invoke-static {v8}, Lcom/microsoft/xbox/service/model/serialization/۟ۥۧۡ۟;->ۦ۟ۦ۟(Ljava/lang/Object;)Landroid/graphics/Paint$FontMetrics;

    move-result-object v8

    invoke-static {v8}, Landroid/support/v4/os/ۣۣ۟ۡۧ;->۟ۤۧۢۦ(Ljava/lang/Object;)F

    move-result v2

    invoke-static {v8}, Lokhttp3/internal/http2/۟ۤۥۣۡ;->ۨۧ۟ۦ(Ljava/lang/Object;)F

    move-result v8

    sub-float/2addr v2, v8

    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v3, 0x7f

    invoke-static {v3, v10, v10, v10}, Landroidx/webkit/۠۠۠;->ۣۨۢ۟(IIII)I

    move-result v10

    invoke-static {v8, v10}, Lcom/braze/ui/banners/ۢۦۢۥ;->ۤۡۥۣ(Ljava/lang/Object;I)V

    const/high16 v10, 0x41700000    # 15.0f

    invoke-static {v8, v10}, Lcom/braze/models/outgoing/event/ۣۧ۟ۤ;->ۣۨۧۡ(Ljava/lang/Object;F)V

    invoke-static {v7, v8}, Lkotlin/streams/jdk8/۟ۤۨۢۦ;->ۦۧۤ۟(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v8}, Lkotlin/system/ۨ۠ۢ۟;->ۣۨۤۡ(Ljava/lang/Object;Ljava/lang/Object;)V

    float-to-double v3, v1

    const-wide v5, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v3, v5

    double-to-int v8, v3

    invoke-static {v7, v8}, Lkotlin/random/ۨۨ۠۠;->ۥۧۥۤ(Ljava/lang/Object;I)V

    float-to-double v1, v2

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v1, v3

    double-to-int v8, v1

    invoke-static {v7, v8}, Lokhttp3/internal/http/ۣ۟ۤ۠ۤ;->ۣ۟ۧۢ۠(Ljava/lang/Object;I)V

    const/high16 v8, 0x42c80000    # 100.0f

    invoke-static {v7, v8}, Lcom/google/android/material/shadow/۟ۡۦۤۦ;->ۣۢۡۨ(Ljava/lang/Object;F)V

    new-instance v8, Ldev/blaze/launcher/ui/ShortcutButton$$ExternalSyntheticLambda0;

    invoke-direct {v8, v9}, Ldev/blaze/launcher/ui/ShortcutButton$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v8}, Lorg/xmlpull/v1/builder/ۤۡۡ۠;->۟ۥۧۥ۠(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v8, Ldev/blaze/launcher/ui/ShortcutButton$$ExternalSyntheticLambda1;

    invoke-direct {v8}, Ldev/blaze/launcher/ui/ShortcutButton$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v8}, Lcom/microsoft/xbox/xle/model/ۥۤۨۤ;->ۢۨۡۢ(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v8, Ldev/blaze/launcher/ui/ShortcutButton$1;

    invoke-direct {v8, v7, v9}, Ldev/blaze/launcher/ui/ShortcutButton$1;-><init>(Ldev/blaze/launcher/ui/ShortcutButton;Ljava/lang/String;)V

    invoke-static {v0, v8}, Lorg/spongycastle/crypto/engines/ۣۢ۠۟;->ۦۧۧۨ(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$new$0(Ljava/lang/String;Landroid/view/View;)V
    .locals 51

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    invoke-static {v0}, Lkotlin/io/encoding/۟ۧۢ۠ۥ;->ۧۥۧ۟(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$new$1(Landroid/view/View;)Z
    .locals 51

    move-object/from16 v0, p0

    const/4 v0, 0x1

    return v0
.end method

.method public static native toggleModuleByName(Ljava/lang/String;)V
.end method

.method public static ۣ۟ۡۥ(Ljava/lang/Object;)Z
    .locals 2

    invoke-static {}, Lorg/spongycastle/crypto/agreement/kdf/۟۠ۡۥ;->ۣۧ۠ۤ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/ShortcutButton;

    iget-boolean v1, p0, Ldev/blaze/launcher/ui/ShortcutButton;->isShow:Z

    :goto_0
    return v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۟ۤ۟ۧ۟()[S
    .locals 1

    invoke-static {}, Lcom/google/firebase/encoders/config/ۣ۟۠ۧۤ;->۟۠ۤۡۧ()I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Ldev/blaze/launcher/ui/ShortcutButton;->short:[S

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۤۤۥۨ(Ljava/lang/Object;)Landroid/widget/Button;
    .locals 2

    invoke-static {}, Landroidx/recyclerview/ۣۤۨ;->ۥۨۥ۠()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/ShortcutButton;

    iget-object v1, p0, Ldev/blaze/launcher/ui/ShortcutButton;->mButton:Landroid/widget/Button;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۡۥۦ۟(Ljava/lang/Object;)F
    .locals 2

    invoke-static {}, Landroidx/constraintlayout/core/state/۟ۥۢۡۡ;->ۨۢۨۢ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/ShortcutButton;

    iget v1, p0, Ldev/blaze/launcher/ui/ShortcutButton;->X:F

    :goto_0
    return v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۣۢۡۡ(Ljava/lang/Object;)J
    .locals 4

    invoke-static {}, Lcom/google/android/material/tabs/ۥۣۤ۟;->ۥ۟۠ۤ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/ShortcutButton;

    iget-wide v2, p0, Ldev/blaze/launcher/ui/ShortcutButton;->downTime:J

    :goto_0
    return-wide v2

    :cond_0
    const-wide v2, 0x0

    goto :goto_0
.end method

.method public static ۢۤۨۢ(Ljava/lang/Object;)F
    .locals 2

    invoke-static {}, Lkotlin/jvm/ۦۧۦۧ;->ۣۡۤ۠()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/ShortcutButton;

    iget v1, p0, Ldev/blaze/launcher/ui/ShortcutButton;->Y:F

    :goto_0
    return v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 52

    move-object/from16 v1, p0

    invoke-static {v1}, Lokhttp3/internal/proxy/۟ۥۥ۠ۧ;->ۣۡ۟ۤ(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {v1}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    iput-boolean v0, v1, Ldev/blaze/launcher/ui/ShortcutButton;->isShow:Z

    :cond_0
    return-void
.end method

.method public isShow()Z
    .locals 52

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ui/ShortcutButton;->ۣ۟ۡۥ(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setEnable(Z)V
    .locals 57

    move/from16 v7, p1

    move-object/from16 v6, p0

    const/high16 v0, 0x41700000    # 15.0f

    const/16 v1, 0x7f

    const/16 v2, 0xcd

    const/16 v3, 0x28

    const/16 v4, 0xff

    const/4 v5, 0x0

    if-eqz v7, :cond_0

    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-static {v1, v5, v5, v5}, Landroidx/webkit/۠۠۠;->ۣۨۢ۟(IIII)I

    move-result v1

    invoke-static {v7, v1}, Lcom/braze/ui/banners/ۢۦۢۥ;->ۤۡۥۣ(Ljava/lang/Object;I)V

    invoke-static {v7, v0}, Lcom/braze/models/outgoing/event/ۣۧ۟ۤ;->ۣۨۧۡ(Ljava/lang/Object;F)V

    const/4 v0, 0x5

    invoke-static {v4, v3, v4, v2}, Landroidx/webkit/۠۠۠;->ۣۨۢ۟(IIII)I

    move-result v1

    invoke-static {v7, v0, v1}, Lcom/google/android/material/expandable/۟۠ۥ۟ۥ;->ۡ۟ۧ(Ljava/lang/Object;II)V

    invoke-static {v6, v7}, Lkotlin/streams/jdk8/۟ۤۨۢۦ;->ۦۧۤ۟(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v6}, Ldev/blaze/launcher/ui/ShortcutButton;->۟ۤۤۥۨ(Ljava/lang/Object;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/system/ۨ۠ۢ۟;->ۣۨۤۡ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v6}, Ldev/blaze/launcher/ui/ShortcutButton;->۟ۤۤۥۨ(Ljava/lang/Object;)Landroid/widget/Button;

    move-result-object v7

    invoke-static {v4, v3, v4, v2}, Landroidx/webkit/۠۠۠;->ۣۨۢ۟(IIII)I

    move-result v0

    invoke-static {v7, v0}, Landroidx/navigation/common/ۣ۟ۤۨۨ;->ۣ۟ۧۥۤ(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-static {v1, v5, v5, v5}, Landroidx/webkit/۠۠۠;->ۣۨۢ۟(IIII)I

    move-result v1

    invoke-static {v7, v1}, Lcom/braze/ui/banners/ۢۦۢۥ;->ۤۡۥۣ(Ljava/lang/Object;I)V

    invoke-static {v7, v0}, Lcom/braze/models/outgoing/event/ۣۧ۟ۤ;->ۣۨۧۡ(Ljava/lang/Object;F)V

    invoke-static {v5, v3, v4, v2}, Landroidx/webkit/۠۠۠;->ۣۨۢ۟(IIII)I

    move-result v0

    invoke-static {v7, v5, v0}, Lcom/google/android/material/expandable/۟۠ۥ۟ۥ;->ۡ۟ۧ(Ljava/lang/Object;II)V

    invoke-static {v6, v7}, Lkotlin/streams/jdk8/۟ۤۨۢۦ;->ۦۧۤ۟(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v6}, Ldev/blaze/launcher/ui/ShortcutButton;->۟ۤۤۥۨ(Ljava/lang/Object;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/system/ۨ۠ۢ۟;->ۣۨۤۡ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v6}, Ldev/blaze/launcher/ui/ShortcutButton;->۟ۤۤۥۨ(Ljava/lang/Object;)Landroid/widget/Button;

    move-result-object v7

    invoke-static/range {}, Ldev/blaze/launcher/ui/ShortcutButton;->۟ۤ۟ۧ۟()[S

    move-result-object v19

    const v22, 0xba9

    const v20, 0xa

    const v21, 0x7

    invoke-static/range {v19 .. v22}, Lgo/ۣۤۧۤ;->۟ۨۦۤ([SIII)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0}, Landroidx/drawerlayout/ۡ۠۠ۢ;->ۥۧۢۡ(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v7, v0}, Landroidx/navigation/common/ۣ۟ۤۨۨ;->ۣ۟ۧۥۤ(Ljava/lang/Object;I)V

    :goto_0
    return-void
.end method

.method public show(II)V
    .locals 53

    move/from16 v4, p2

    move/from16 v3, p1

    move-object/from16 v2, p0

    invoke-static {v2}, Lokhttp3/internal/proxy/۟ۥۥ۠ۧ;->ۣۡ۟ۤ(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2}, Ldev/blaze/launcher/ui/ShortcutButton;->۟ۤۤۥۨ(Ljava/lang/Object;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x11

    invoke-static {v2, v0, v1, v3, v4}, Landroidx/core/net/ۢ۠ۤۢ;->۠ۧۨ۠(Ljava/lang/Object;Ljava/lang/Object;III)V

    int-to-float v3, v3

    iput v3, v2, Ldev/blaze/launcher/ui/ShortcutButton;->X:F

    int-to-float v3, v4

    iput v3, v2, Ldev/blaze/launcher/ui/ShortcutButton;->Y:F

    const/4 v3, 0x1

    iput-boolean v3, v2, Ldev/blaze/launcher/ui/ShortcutButton;->isShow:Z

    :cond_0
    return-void
.end method
