.class public Ldev/blaze/launcher/ui/ClickGuiButton;
.super Landroid/widget/PopupWindow;


# static fields
.field private static final short:[S


# instance fields
.field private X:F

.field private Y:F

.field private final activity:Landroid/app/Activity;

.field private bitmap:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private downTime:J

.field private isEnable:Z

.field private isShow:Z

.field private mButton:Landroid/widget/ImageView;

.field public final text:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$CmZEzvCYwfnW796lx-nqNDKb_KQ(Ldev/blaze/launcher/ui/ClickGuiButton;Landroid/view/View;)V
    .locals 51

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Ldev/blaze/launcher/ui/ClickGuiButton;->ۣۣ۟ۥۤ(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetX(Ldev/blaze/launcher/ui/ClickGuiButton;)F
    .locals 51

    move-object/from16 v0, p0

    invoke-static {v0}, Ldev/blaze/launcher/ui/ClickGuiButton;->ۢۢۥۡ(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$fgetY(Ldev/blaze/launcher/ui/ClickGuiButton;)F
    .locals 51

    move-object/from16 v0, p0

    invoke-static {v0}, Ldev/blaze/launcher/ui/ClickGuiButton;->ۤۢۢ۠(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$fgetdownTime(Ldev/blaze/launcher/ui/ClickGuiButton;)J
    .locals 53

    move-object/from16 v2, p0

    invoke-static {v2}, Ldev/blaze/launcher/ui/ClickGuiButton;->۟۟ۨۨ۟(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputX(Ldev/blaze/launcher/ui/ClickGuiButton;F)V
    .locals 51

    move/from16 v1, p1

    move-object/from16 v0, p0

    iput v1, v0, Ldev/blaze/launcher/ui/ClickGuiButton;->X:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputY(Ldev/blaze/launcher/ui/ClickGuiButton;F)V
    .locals 51

    move/from16 v1, p1

    move-object/from16 v0, p0

    iput v1, v0, Ldev/blaze/launcher/ui/ClickGuiButton;->Y:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdownTime(Ldev/blaze/launcher/ui/ClickGuiButton;J)V
    .locals 51

    move-wide/from16 v1, p1

    move-object/from16 v0, p0

    iput-wide v1, v0, Ldev/blaze/launcher/ui/ClickGuiButton;->downTime:J

    return-void
.end method

.method static constructor <clinit>()V
    .locals 52

    const v0, 0x1e

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Ldev/blaze/launcher/ui/ClickGuiButton;->short:[S

    return-void

    nop

    :array_0
    .array-data 2
        0x839s
        0x838s
        0x82bs
        0x873s
        0x83fs
        0x831s
        0x83cs
        0x827s
        0x838s
        0x873s
        0x831s
        0x83cs
        0x828s
        0x833s
        0x83es
        0x835s
        0x838s
        0x82fs
        0xad2s
        0xad1s
        0xad9s
        0xad1s
        0xae1s
        0xad1s
        0xad8s
        0xad8s
        0xa90s
        0xaces
        0xad0s
        0xad9s
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 53

    move/from16 v5, p3

    move-object/from16 v4, p2

    move-object/from16 v3, p1

    move-object/from16 v2, p0

    invoke-direct {v2}, Landroid/widget/PopupWindow;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, v2, Ldev/blaze/launcher/ui/ClickGuiButton;->downTime:J

    const/4 v0, 0x0

    iput-boolean v0, v2, Ldev/blaze/launcher/ui/ClickGuiButton;->isShow:Z

    const/4 v1, 0x0

    iput v1, v2, Ldev/blaze/launcher/ui/ClickGuiButton;->Y:F

    iput-object v3, v2, Ldev/blaze/launcher/ui/ClickGuiButton;->activity:Landroid/app/Activity;

    iput-object v4, v2, Ldev/blaze/launcher/ui/ClickGuiButton;->text:Ljava/lang/String;

    iput-boolean v5, v2, Ldev/blaze/launcher/ui/ClickGuiButton;->isEnable:Z

    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/xle/anim/ۡ۠ۥۥ;->ۣ۟۟ۡۤ()Landroid/app/Activity;

    move-result-object v4

    invoke-static/range {}, Ldev/blaze/launcher/ui/ClickGuiButton;->ۣۣ۟ۧۦ()[S

    move-result-object v14

    const v17, 0x85d    # 3.0E-42f

    const v15, 0x0

    const v16, 0x12

    invoke-static/range {v14 .. v17}, Lcom/braze/configuration/۟ۡۤۡۨ;->ۢۥ۠ۥ([SIII)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v5, v14

    invoke-static {v4, v5, v0}, Lorg/apache/http/conn/routing/۟ۥۢۤ۠;->۟۟ۧ۠ۨ(Ljava/lang/Object;Ljava/lang/Object;I)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/client/protocol/ۥۧۢۢ;->ۣۧۥۥ(Ljava/lang/Object;)Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-static/range {}, Ldev/blaze/launcher/ui/ClickGuiButton;->ۣۣ۟ۧۦ()[S

    move-result-object v27

    const v30, 0xabe

    const v28, 0x12

    const v29, 0xc

    invoke-static/range {v27 .. v30}, Lokhttp3/internal/http/ۧۨ۟ۥ;->ۢۦۥ۟([SIII)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v5, v27

    invoke-static {v4, v5}, Landroidx/swiperefreshlayout/۟ۦۡۡ۠;->ۤ۟ۦۡ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Lcom/google/gson/internal/bind/ۤ۟ۨۤ;->۟۟ۧۢۧ(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v2, Ldev/blaze/launcher/ui/ClickGuiButton;->mButton:Landroid/widget/ImageView;

    invoke-static {v5, v4}, Lcom/braze/support/delegates/ۡۥۡ۟;->ۤ۟ۢ۠(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Ldev/blaze/launcher/ui/ClickGuiButton;->ۣ۟ۥۢۡ(Ljava/lang/Object;)Landroid/widget/ImageView;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Landroidx/customview/ۧ۟ۥ;->۟ۧ۟ۤ۠(Ljava/lang/Object;F)V

    invoke-static {v2}, Ldev/blaze/launcher/ui/ClickGuiButton;->ۣ۟ۥۢۡ(Ljava/lang/Object;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v3, v4}, Lorg/spongycastle/asn1/cmp/۟ۥۨۡۥ;->ۣۧۤ۟(Ljava/lang/Object;F)V

    invoke-static {v2}, Ldev/blaze/launcher/ui/ClickGuiButton;->ۣ۟ۥۢۡ(Ljava/lang/Object;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/lifecycle/runtime/۟ۦۨ۟;->۟۠ۡ۟ۧ(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v4, 0x7f

    invoke-static {v4, v0, v0, v0}, Landroidx/webkit/۠۠۠;->ۣۨۢ۟(IIII)I

    move-result v4

    invoke-static {v3, v4}, Lcom/braze/ui/banners/ۢۦۢۥ;->ۤۡۥۣ(Ljava/lang/Object;I)V

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v3, v4}, Lcom/braze/models/outgoing/event/ۣۧ۟ۤ;->ۣۨۧۡ(Ljava/lang/Object;F)V

    invoke-static {}, Lorg/simpleframework/xml/util/ۣۡۧۤ;->ۤۧۧ۠()I

    move-result v4

    invoke-static {}, Lorg/simpleframework/xml/util/ۣۡۧۤ;->ۤۧۧ۠()I

    move-result v5

    invoke-static {v3, v4, v5}, Lorg/apache/http/protocol/ۡۧ۟ۥ;->ۣ۠۟ۨ(Ljava/lang/Object;II)V

    invoke-static {v2, v3}, Lcom/google/android/material/drawable/ۤۤۨ;->۟ۥ۠ۢ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Ldev/blaze/launcher/ui/ClickGuiButton;->ۣ۟ۥۢۡ(Ljava/lang/Object;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/braze/ui/feed/view/ۥۦۢ۟;->ۧۡۨۢ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lorg/simpleframework/xml/util/ۣۡۧۤ;->ۤۧۧ۠()I

    move-result v3

    invoke-static {v2, v3}, Lokhttp3/internal/connection/ۧ۟۠ۢ;->۠۟ۢ۟(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/simpleframework/xml/util/ۣۡۧۤ;->ۤۧۧ۠()I

    move-result v3

    invoke-static {v2, v3}, Lorg/spongycastle/cert/ocsp/jcajce/۟ۤ۠ۦۢ;->ۣۡۤ۟(Ljava/lang/Object;I)V

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v2, v3}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/ۣ۟ۡۨۡ;->۟ۥۤۦۡ(Ljava/lang/Object;F)V

    invoke-static {v2}, Ldev/blaze/launcher/ui/ClickGuiButton;->ۣ۟ۥۢۡ(Ljava/lang/Object;)Landroid/widget/ImageView;

    move-result-object v3

    new-instance v4, Ldev/blaze/launcher/ui/ClickGuiButton$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Ldev/blaze/launcher/ui/ClickGuiButton$$ExternalSyntheticLambda0;-><init>(Ldev/blaze/launcher/ui/ClickGuiButton;)V

    invoke-static {v3, v4}, Landroidx/browser/ۤ۠۠ۦ;->۟ۤۥۡۦ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Ldev/blaze/launcher/ui/ClickGuiButton;->ۣ۟ۥۢۡ(Ljava/lang/Object;)Landroid/widget/ImageView;

    move-result-object v3

    new-instance v4, Ldev/blaze/launcher/ui/ClickGuiButton$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Ldev/blaze/launcher/ui/ClickGuiButton$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v3, v4}, Lcom/braze/triggers/events/۟ۧۤۦ۟;->ۥۢ۟ۦ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Ldev/blaze/launcher/ui/ClickGuiButton;->ۣ۟ۥۢۡ(Ljava/lang/Object;)Landroid/widget/ImageView;

    move-result-object v3

    new-instance v4, Ldev/blaze/launcher/ui/ClickGuiButton$1;

    invoke-direct {v4, v2}, Ldev/blaze/launcher/ui/ClickGuiButton$1;-><init>(Ldev/blaze/launcher/ui/ClickGuiButton;)V

    invoke-static {v3, v4}, Lcom/google/firebase/emulators/۠ۥ۠;->ۨۡۨۢ(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    :goto_0
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static native getEnable()Z
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 51

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    invoke-static {}, Landroidx/resourceinspection/annotation/ۦۣۨ;->ۧ۟ۦۤ()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/microsoft/xbox/service/model/۟۟ۡۦۤ;->۟ۥۣۣ۟(Z)V

    invoke-static {}, Landroidx/resourceinspection/annotation/ۦۣۨ;->ۧ۟ۦۤ()Z

    move-result v1

    iput-boolean v1, v0, Ldev/blaze/launcher/ui/ClickGuiButton;->isEnable:Z

    invoke-static {v0, v1}, Ldev/blaze/launcher/ui/dashboard/ۥۢۦ;->۟ۡۦۦۣ(Ljava/lang/Object;Z)V

    return-void
.end method

.method static synthetic lambda$new$1(Landroid/view/View;)Z
    .locals 51

    move-object/from16 v0, p0

    const/4 v0, 0x1

    return v0
.end method

.method public static native toggle(Z)V
.end method

.method public static ۟۟ۨۨ۟(Ljava/lang/Object;)J
    .locals 4

    invoke-static {}, Lcom/google/android/datatransport/runtime/firebase/transport/ۨۤۥ۟;->ۣۣۣۤ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/ClickGuiButton;

    iget-wide v2, p0, Ldev/blaze/launcher/ui/ClickGuiButton;->downTime:J

    :goto_0
    return-wide v2

    :cond_0
    const-wide v2, 0x0

    goto :goto_0
.end method

.method public static ۣۣ۟ۥۤ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Landroidx/window/۟ۡۦۨۦ;->ۢۨ۟ۤ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/ClickGuiButton;

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Ldev/blaze/launcher/ui/ClickGuiButton;->lambda$new$0(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۣ۟ۥۢۡ(Ljava/lang/Object;)Landroid/widget/ImageView;
    .locals 2

    invoke-static {}, Lorg/apache/http/impl/io/ۣ۟ۢۡ۟;->۟۟ۦۣ۟()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/ClickGuiButton;

    iget-object v1, p0, Ldev/blaze/launcher/ui/ClickGuiButton;->mButton:Landroid/widget/ImageView;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۣۣ۟ۧۦ()[S
    .locals 1

    invoke-static {}, Lorg/xmlpull/v1/wrapper/۟ۥۣۦۡ;->ۥۦۡۥ()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Ldev/blaze/launcher/ui/ClickGuiButton;->short:[S

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۢۢۥۡ(Ljava/lang/Object;)F
    .locals 2

    invoke-static {}, Lorg/apache/http/config/ۣ۟۟۠۟;->ۧۦۣۤ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/ClickGuiButton;

    iget v1, p0, Ldev/blaze/launcher/ui/ClickGuiButton;->X:F

    :goto_0
    return v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۤۢۢ۠(Ljava/lang/Object;)F
    .locals 2

    invoke-static {}, Lcom/google/android/datatransport/runtime/backends/۟ۥۢۡۤ;->۟ۡ۟ۤۦ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/ClickGuiButton;

    iget v1, p0, Ldev/blaze/launcher/ui/ClickGuiButton;->Y:F

    :goto_0
    return v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۥۦۦ۠(Ljava/lang/Object;)Z
    .locals 2

    invoke-static {}, Lcom/braze/requests/framework/queue/ۧۨۦۤ;->ۣ۟۟ۤۢ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/ClickGuiButton;

    iget-boolean v1, p0, Ldev/blaze/launcher/ui/ClickGuiButton;->isShow:Z

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

    invoke-static {v1}, Lcom/google/android/material/bottomappbar/ۣۨۡۡ;->۟ۥ۟ۥۨ(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {v1}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    iput-boolean v0, v1, Ldev/blaze/launcher/ui/ClickGuiButton;->isShow:Z

    :cond_0
    return-void
.end method

.method public isShow()Z
    .locals 52

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ui/ClickGuiButton;->ۥۦۦ۠(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setEnable(Z)V
    .locals 57

    move/from16 v7, p1

    move-object/from16 v6, p0

    const/high16 v0, 0x41a00000    # 20.0f

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

    invoke-static {}, Lorg/simpleframework/xml/util/ۣۡۧۤ;->ۤۧۧ۠()I

    move-result v0

    invoke-static {}, Lorg/simpleframework/xml/util/ۣۡۧۤ;->ۤۧۧ۠()I

    move-result v1

    invoke-static {v7, v0, v1}, Lorg/apache/http/protocol/ۡۧ۟ۥ;->ۣ۠۟ۨ(Ljava/lang/Object;II)V

    const/4 v0, 0x7

    invoke-static {v4, v3, v4, v2}, Landroidx/webkit/۠۠۠;->ۣۨۢ۟(IIII)I

    move-result v1

    invoke-static {v7, v0, v1}, Lcom/google/android/material/expandable/۟۠ۥ۟ۥ;->ۡ۟ۧ(Ljava/lang/Object;II)V

    invoke-static {v6, v7}, Lcom/google/android/material/drawable/ۤۤۨ;->۟ۥ۠ۢ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v6}, Ldev/blaze/launcher/ui/ClickGuiButton;->ۣ۟ۥۢۡ(Ljava/lang/Object;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/braze/ui/feed/view/ۥۦۢ۟;->ۧۡۨۢ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v6}, Ldev/blaze/launcher/ui/ClickGuiButton;->ۣ۟ۥۢۡ(Ljava/lang/Object;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-static {v4, v3, v4, v2}, Landroidx/webkit/۠۠۠;->ۣۨۢ۟(IIII)I

    move-result v0

    invoke-static {v7, v0}, Lkotlin/js/۟ۢ۠ۨۥ;->ۣ۟ۡۧۡ(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-static {v1, v5, v5, v5}, Landroidx/webkit/۠۠۠;->ۣۨۢ۟(IIII)I

    move-result v1

    invoke-static {v7, v1}, Lcom/braze/ui/banners/ۢۦۢۥ;->ۤۡۥۣ(Ljava/lang/Object;I)V

    invoke-static {v7, v0}, Lcom/braze/models/outgoing/event/ۣۧ۟ۤ;->ۣۨۧۡ(Ljava/lang/Object;F)V

    invoke-static {}, Lorg/simpleframework/xml/util/ۣۡۧۤ;->ۤۧۧ۠()I

    move-result v0

    invoke-static {}, Lorg/simpleframework/xml/util/ۣۡۧۤ;->ۤۧۧ۠()I

    move-result v1

    invoke-static {v7, v0, v1}, Lorg/apache/http/protocol/ۡۧ۟ۥ;->ۣ۠۟ۨ(Ljava/lang/Object;II)V

    invoke-static {v6, v7}, Lcom/google/android/material/drawable/ۤۤۨ;->۟ۥ۠ۢ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v6}, Ldev/blaze/launcher/ui/ClickGuiButton;->ۣ۟ۥۢۡ(Ljava/lang/Object;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/braze/ui/feed/view/ۥۦۢ۟;->ۧۡۨۢ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v6}, Ldev/blaze/launcher/ui/ClickGuiButton;->ۣ۟ۥۢۡ(Ljava/lang/Object;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-static {v5, v3, v4, v2}, Landroidx/webkit/۠۠۠;->ۣۨۢ۟(IIII)I

    move-result v0

    invoke-static {v7, v0}, Lkotlin/js/۟ۢ۠ۨۥ;->ۣ۟ۡۧۡ(Ljava/lang/Object;I)V

    :goto_0
    return-void
.end method

.method public show(II)V
    .locals 53

    move/from16 v4, p2

    move/from16 v3, p1

    move-object/from16 v2, p0

    invoke-static {v2}, Lcom/google/android/material/bottomappbar/ۣۨۡۡ;->۟ۥ۟ۥۨ(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2}, Ldev/blaze/launcher/ui/ClickGuiButton;->ۣ۟ۥۢۡ(Ljava/lang/Object;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x11

    invoke-static {v2, v0, v1, v3, v4}, Lorg/xmlpull/v1/ۥ۠ۦۡ;->ۣ۠ۦ۠(Ljava/lang/Object;Ljava/lang/Object;III)V

    int-to-float v3, v3

    iput v3, v2, Ldev/blaze/launcher/ui/ClickGuiButton;->X:F

    int-to-float v3, v4

    iput v3, v2, Ldev/blaze/launcher/ui/ClickGuiButton;->Y:F

    const/4 v3, 0x1

    iput-boolean v3, v2, Ldev/blaze/launcher/ui/ClickGuiButton;->isShow:Z

    :cond_0
    return-void
.end method
