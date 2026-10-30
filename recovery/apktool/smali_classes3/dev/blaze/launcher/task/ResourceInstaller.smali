.class public final Ldev/blaze/launcher/task/ResourceInstaller;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0006\u0010\n\u001a\u00020\u0006R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Ldev/blaze/launcher/task/ResourceInstaller;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "extract",
        "",
        "assetsName",
        "",
        "output",
        "install",
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
.field private static final short:[S


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 52

    const v0, 0xf

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Ldev/blaze/launcher/task/ResourceInstaller;->short:[S

    return-void

    nop

    :array_0
    .array-data 2
        0x729s
        0x725s
        0x724s
        0x73es
        0x72fs
        0x732s
        0x73es
        0x1cds
        0x1dcs
        0x1d4s
        0x1c9s
        0x4e8s
        0x4bcs
        0x4afs
        0x4b6s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 52

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static/range {}, Ldev/blaze/launcher/task/ResourceInstaller;->ۣ۟ۡۥۥ()[S

    move-result-object v28

    const v31, 0x74a

    const v29, 0x0

    const v30, 0x7

    invoke-static/range {v28 .. v31}, Lorg/apache/http/impl/conn/tsccm/۟ۧۥۤۥ;->ۦۧ۟ۨ([SIII)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v2, v0}, Lcom/google/firebase/analytics/connector/۟ۧۢ۟;->۟ۡۤۨۡ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Ldev/blaze/launcher/task/ResourceInstaller;->context:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$extract(Ldev/blaze/launcher/task/ResourceInstaller;Ljava/lang/String;Ljava/lang/String;)V
    .locals 51

    move-object/from16 v2, p2

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Ldev/blaze/launcher/task/ResourceInstaller;->۟۟ۡ۠ۦ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final extract(Ljava/lang/String;Ljava/lang/String;)V
    .locals 54

    move-object/from16 v5, p2

    move-object/from16 v4, p1

    move-object/from16 v3, p0

    :try_start_0
    invoke-static/range {}, Ldev/blaze/launcher/task/ResourceInstaller;->ۣ۟ۡۥۥ()[S

    move-result-object v42

    const v45, 0x1b9

    const v43, 0x7

    const v44, 0x4

    invoke-static/range {v42 .. v45}, Landroidx/swiperefreshlayout/۟ۦۡۡ۠;->ۤۦۨ۟([SIII)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-static/range {}, Ldev/blaze/launcher/task/ResourceInstaller;->ۣ۟ۡۥۥ()[S

    move-result-object v23

    const v26, 0x4c6

    const v24, 0xb

    const v25, 0x4

    invoke-static/range {v23 .. v26}, Landroidx/dynamicanimation/animation/ۧ۟ۤ;->۟ۡۢ۟ۦ([SIII)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/google/android/gms/dynamic/۟ۥۢۤۢ;->ۦۥۣۧ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-static {v3}, Ldev/blaze/launcher/task/ResourceInstaller;->ۣۣۢۢ(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/appcompat/text/ۣ۟۠ۥۥ;->ۥۧۨۦ(Ljava/lang/Object;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/math/ec/endo/ۣۣ۟۠۟;->ۥ۟ۧ۟(Ljava/lang/Object;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Ldev/blaze/launcher/task/ResourceInstaller;->ۣۣۢۢ(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/client/protocol/ۥۧۢۢ;->ۣۧۥۥ(Ljava/lang/Object;)Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-static {v5, v4}, Landroidx/swiperefreshlayout/۟ۦۡۡ۠;->ۤ۟ۦۡ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v4

    check-cast v4, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v5, v4

    check-cast v5, Ljava/io/InputStream;

    invoke-static {v0}, Lorg/spongycastle/pqc/jcajce/provider/util/ۣۥۣۦ;->ۢۤ۟ۦ(Ljava/lang/Object;)V

    invoke-static {v5}, Lorg/spongycastle/pqc/jcajce/provider/util/ۣۥۣۦ;->ۢۤ۟ۦ(Ljava/lang/Object;)V

    invoke-static {v0, v5}, Lcom/microsoft/xbox/idp/ui/۟ۡۥۤۤ;->۟۠ۥۥۦ(Ljava/lang/Object;Ljava/lang/Object;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x0

    :try_start_2
    invoke-static {v4, v5}, Landroidx/core/os/ۡۧۥۨ;->۠ۢۡۧ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lorg/spongycastle/operator/jcajce/۠ۦۤۦ;->ۣۣ۟ۤ()Ldev/blaze/launcher/utils/ZipHelper;

    move-result-object v4

    invoke-static {v4, v0, v1}, Landroidx/arch/core/util/۟ۦۣ۠ۢ;->ۣ۟ۦ۠ۤ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Landroidx/constraintlayout/core/parser/۠ۡۦۥ;->۟ۢۥ۟ۦ(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v5

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {v4, v5}, Landroidx/core/os/ۡۧۥۨ;->۠ۢۡۧ(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v4

    invoke-static {v4}, Landroidx/appcompat/text/۟۟ۥۣۤ;->ۨ۟ۦۡ(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static ۟۟ۡ۠ۦ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/google/firebase/dynamicloading/ۡ۟ۧۥ;->۟ۢۡۨۤ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/task/ResourceInstaller;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Ldev/blaze/launcher/task/ResourceInstaller;->extract(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۣ۟ۡۥۥ()[S
    .locals 1

    invoke-static {}, Lokhttp3/internal/platform/android/۟ۥۡۡۢ;->۟ۢۥۡۡ()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Ldev/blaze/launcher/task/ResourceInstaller;->short:[S

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣۣۢۢ(Ljava/lang/Object;)Landroid/content/Context;
    .locals 2

    invoke-static {}, Lorg/spongycastle/x509/util/ۦۧۨۢ;->۟ۦۦۢۦ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/task/ResourceInstaller;

    iget-object v1, p0, Ldev/blaze/launcher/task/ResourceInstaller;->context:Landroid/content/Context;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final install()V
    .locals 58

    move-object/from16 v7, p0

    invoke-static {}, Lorg/spongycastle/jcajce/spec/۟ۤۧۢۢ;->ۦۣ۠ۨ()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Landroidx/loader/app/۟ۧۦۢۡ;->ۣ۟ۢۡۤ(Ljava/lang/Object;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Ldev/blaze/launcher/task/ResourceInstaller$install$1;

    const/4 v2, 0x0

    invoke-direct {v0, v7, v2}, Ldev/blaze/launcher/task/ResourceInstaller$install$1;-><init>(Ldev/blaze/launcher/task/ResourceInstaller;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcom/google/android/datatransport/backend/cct/۟ۡ۠ۢۦ;->ۡۥۥۡ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
