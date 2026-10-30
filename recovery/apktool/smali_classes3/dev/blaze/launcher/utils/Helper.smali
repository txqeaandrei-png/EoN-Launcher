.class public final Ldev/blaze/launcher/utils/Helper;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Ldev/blaze/launcher/utils/Helper;",
        "",
        "()V",
        "isNetworkConnected",
        "",
        "context",
        "Landroid/content/Context;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Ldev/blaze/launcher/utils/Helper;

.field private static final short:[S


# direct methods
.method static constructor <clinit>()V
    .locals 52

    const v0, 0x57

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Ldev/blaze/launcher/utils/Helper;->short:[S

    new-instance v0, Ldev/blaze/launcher/utils/Helper;

    invoke-direct {v0}, Ldev/blaze/launcher/utils/Helper;-><init>()V

    sput-object v0, Ldev/blaze/launcher/utils/Helper;->INSTANCE:Ldev/blaze/launcher/utils/Helper;

    return-void

    :array_0
    .array-data 2
        0x8cds
        0x8c1s
        0x8c0s
        0x8das
        0x8cbs
        0x8d6s
        0x8das
        0x57bs
        0x577s
        0x576s
        0x576s
        0x57ds
        0x57bs
        0x56cs
        0x571s
        0x56es
        0x571s
        0x56cs
        0x561s
        0xcd1s
        0xccas
        0xcd3s
        0xcd3s
        0xc9fs
        0xcdcs
        0xcdes
        0xcd1s
        0xcd1s
        0xcd0s
        0xccbs
        0xc9fs
        0xcdds
        0xcdas
        0xc9fs
        0xcdcs
        0xcdes
        0xcccs
        0xccbs
        0xc9fs
        0xccbs
        0xcd0s
        0xc9fs
        0xcd1s
        0xcd0s
        0xcd1s
        0xc92s
        0xcd1s
        0xccas
        0xcd3s
        0xcd3s
        0xc9fs
        0xccbs
        0xcc6s
        0xccfs
        0xcdas
        0xc9fs
        0xcdes
        0xcd1s
        0xcdbs
        0xccds
        0xcd0s
        0xcd6s
        0xcdbs
        0xc91s
        0xcd1s
        0xcdas
        0xccbs
        0xc91s
        0xcfcs
        0xcd0s
        0xcd1s
        0xcd1s
        0xcdas
        0xcdcs
        0xccbs
        0xcd6s
        0xcc9s
        0xcd6s
        0xccbs
        0xcc6s
        0xcf2s
        0xcdes
        0xcd1s
        0xcdes
        0xcd8s
        0xcdas
        0xccds
    .end array-data
.end method

.method private constructor <init>()V
    .locals 51

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ۣ۟ۧۢۦ()[S
    .locals 1

    invoke-static {}, Lcom/google/android/gms/dynamic/۟ۢۦۤۢ;->ۦ۟ۤۦ()I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Ldev/blaze/launcher/utils/Helper;->short:[S

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final isNetworkConnected(Landroid/content/Context;)Z
    .locals 52

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static/range {}, Ldev/blaze/launcher/utils/Helper;->ۣ۟ۧۢۦ()[S

    move-result-object v15

    const v18, 0x8ae

    const v16, 0x0

    const v17, 0x7

    invoke-static/range {v15 .. v18}, Lcom/microsoft/xbox/service/model/۟۟ۡۦۤ;->ۡۧ۠([SIII)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v15

    invoke-static {v2, v0}, Lcom/google/firebase/analytics/connector/۟ۧۢ۟;->۟ۡۤۨۡ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static/range {}, Ldev/blaze/launcher/utils/Helper;->ۣ۟ۧۢۦ()[S

    move-result-object v20

    const v23, 0x518

    const v21, 0x7

    const v22, 0xc

    invoke-static/range {v20 .. v23}, Landroidx/core/view/inputmethod/ۣ۟ۥۦ;->۟ۧ۟ۤ([SIII)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lcom/google/errorprone/annotations/ۣۣ۟ۡۨ;->۟ۡ۟ۦۡ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static/range {}, Ldev/blaze/launcher/utils/Helper;->ۣ۟ۧۢۦ()[S

    move-result-object v16

    const v19, 0xcbf

    const v17, 0x13

    const v18, 0x44

    invoke-static/range {v16 .. v19}, Lcom/braze/configuration/ۥۦۣۢ;->ۡۧۡ۟([SIII)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroidx/core/math/۟ۦۦ۠ۡ;->ۥۣ۟۠(Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-static {v2}, Lcom/google/firebase/emulators/ۡۨۥۢ;->ۣ۟ۡ۠ۧ(Ljava/lang/Object;)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lorg/spongycastle/dvcs/ۥۨ۠۟;->۟ۡۡ۠ۦ(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
