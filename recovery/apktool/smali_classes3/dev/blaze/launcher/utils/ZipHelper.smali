.class public final Ldev/blaze/launcher/utils/ZipHelper;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\u0018\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Ldev/blaze/launcher/utils/ZipHelper;",
        "",
        "()V",
        "extractFiles",
        "",
        "input",
        "Ljava/io/File;",
        "output",
        "getZipEntry",
        "",
        "entry",
        "",
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
.field public static final INSTANCE:Ldev/blaze/launcher/utils/ZipHelper;

.field private static final short:[S


# direct methods
.method static constructor <clinit>()V
    .locals 52

    const v0, 0x15

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Ldev/blaze/launcher/utils/ZipHelper;->short:[S

    new-instance v0, Ldev/blaze/launcher/utils/ZipHelper;

    invoke-direct {v0}, Ldev/blaze/launcher/utils/ZipHelper;-><init>()V

    sput-object v0, Ldev/blaze/launcher/utils/ZipHelper;->INSTANCE:Ldev/blaze/launcher/utils/ZipHelper;

    return-void

    :array_0
    .array-data 2
        0x1bas
        0x1bds
        0x1a3s
        0x1a6s
        0x1a7s
        0xb69s
        0xb73s
        0xb72s
        0xb76s
        0xb73s
        0xb72s
        0x92es
        0x929s
        0x937s
        0x932s
        0x933s
        0x43cs
        0x437s
        0x42ds
        0x42bs
        0x420s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 51

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ۣۣ۟۠ۢ()[S
    .locals 1

    invoke-static {}, Lcom/braze/models/outgoing/event/ۣۧ۟ۤ;->ۧۥۥۥ()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Ldev/blaze/launcher/utils/ZipHelper;->short:[S

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final extractFiles(Ljava/io/File;Ljava/io/File;)V
    .locals 60

    move-object/from16 v11, p2

    move-object/from16 v10, p1

    move-object/from16 v9, p0

    invoke-static/range {}, Ldev/blaze/launcher/utils/ZipHelper;->ۣۣ۟۠ۢ()[S

    move-result-object v19

    const v22, 0x1d3

    const v20, 0x0

    const v21, 0x5

    invoke-static/range {v19 .. v22}, Landroidx/concurrent/futures/۟ۦۡۡۡ;->۟ۢ۠ۤۤ([SIII)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v10, v0}, Lcom/google/firebase/analytics/connector/۟ۧۢ۟;->۟ۡۤۨۡ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static/range {}, Ldev/blaze/launcher/utils/ZipHelper;->ۣۣ۟۠ۢ()[S

    move-result-object v19

    const v22, 0xb06

    const v20, 0x5

    const v21, 0x6

    invoke-static/range {v19 .. v22}, Lcom/google/android/datatransport/runtime/time/ۧۢۥۢ;->۟ۡ۠ۡۤ([SIII)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v11, v0}, Lcom/google/firebase/analytics/connector/۟ۧۢ۟;->۟ۡۤۨۡ(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, v10}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    check-cast v0, Ljava/io/Closeable;

    :try_start_0
    move-object v10, v0

    check-cast v10, Ljava/util/zip/ZipFile;

    invoke-static {v10}, Lorg/xmlpull/v1/wrapper/۟ۥۣۦۡ;->ۣ۟ۡۤ۟(Ljava/lang/Object;)Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lorg/spongycastle/asn1/mozilla/ۥۨ۠ۨ;->ۡۡۥۡ(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/google/android/gms/common/server/response/۟۟ۨۢۤ;->ۥۥ۟ۡ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    new-instance v4, Ljava/io/File;

    invoke-static {v2}, Lorg/spongycastle/asn1/gnu/ۨ۟۠ۤ;->ۣۣ۟ۢ۟(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v11, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Landroidx/browser/trusted/splashscreens/۠ۨ۟ۢ;->ۧۦۥۤ(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Landroidx/core/hardware/fingerprint/ۣۣۨۤ;->ۨۤۦۡ(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lorg/spongycastle/math/ec/endo/ۣۣ۟۠۟;->ۥ۟ۧ۟(Ljava/lang/Object;)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {v5}, Landroidx/core/hardware/fingerprint/ۣۣۨۤ;->ۨۤۦۡ(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {v10, v2}, Lcom/google/firebase/analytics/connector/ۡۤۧۧ;->۟۠۠ۦۡ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    move-object v5, v2

    check-cast v5, Ljava/io/InputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v6, Ljava/io/Closeable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object v4, v6

    check-cast v4, Ljava/io/FileOutputStream;

    invoke-static {v5}, Lorg/spongycastle/pqc/jcajce/provider/util/ۣۥۣۦ;->ۢۤ۟ۦ(Ljava/lang/Object;)V

    check-cast v4, Ljava/io/OutputStream;

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-static {v5, v4, v7, v8, v3}, Landroidx/core/os/ۡۧۥۨ;->ۣ۟۟ۨۡ(Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v6, v3}, Landroidx/core/os/ۡۧۥۨ;->۠ۢۡۧ(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {v2, v3}, Landroidx/core/os/ۡۧۥۨ;->۠ۢۡۧ(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_0

    :catchall_0
    move-exception v10

    :try_start_5
    throw v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v11

    :try_start_6
    invoke-static {v6, v10}, Landroidx/core/os/ۡۧۥۨ;->۠ۢۡۧ(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v10

    :try_start_7
    throw v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v11

    :try_start_8
    invoke-static {v2, v10}, Landroidx/core/os/ۡۧۥۨ;->۠ۢۡۧ(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v11

    :cond_2
    invoke-static/range {}, Lorg/spongycastle/asn1/x500/style/ۧ۠ۨ;->۟۟ۡۡۢ()Lkotlin/Unit;

    move-result-object v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    invoke-static {v0, v3}, Landroidx/core/os/ۡۧۥۨ;->۠ۢۡۧ(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_4
    move-exception v10

    :try_start_9
    throw v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    move-exception v11

    invoke-static {v0, v10}, Landroidx/core/os/ۡۧۥۨ;->۠ۢۡۧ(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v11
.end method

.method public final getZipEntry(Ljava/io/File;Ljava/lang/String;)[B
    .locals 53

    move-object/from16 v4, p2

    move-object/from16 v3, p1

    move-object/from16 v2, p0

    invoke-static/range {}, Ldev/blaze/launcher/utils/ZipHelper;->ۣۣ۟۠ۢ()[S

    move-result-object v15

    const v18, 0x947

    const v16, 0xb

    const v17, 0x5

    invoke-static/range {v15 .. v18}, Lcom/braze/exceptions/ۨ۟ۨ۟;->۟ۤۧۢۥ([SIII)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v15

    invoke-static {v3, v0}, Lcom/google/firebase/analytics/connector/۟ۧۢ۟;->۟ۡۤۨۡ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static/range {}, Ldev/blaze/launcher/utils/ZipHelper;->ۣۣ۟۠ۢ()[S

    move-result-object v11

    const v14, 0x459

    const v12, 0x10

    const v13, 0x5

    invoke-static/range {v11 .. v14}, Landroidx/viewpager/ۨۦۦۣ;->۟ۥۣۣ۟([SIII)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v11

    invoke-static {v4, v0}, Lcom/google/firebase/analytics/connector/۟ۧۢ۟;->۟ۡۤۨۡ(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    check-cast v0, Ljava/io/Closeable;

    :try_start_0
    move-object v3, v0

    check-cast v3, Ljava/util/zip/ZipFile;

    invoke-static {v3, v4}, Lorg/spongycastle/eac/operator/jcajce/۟ۢۨ۟ۢ;->ۢۤۤۤ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/zip/ZipEntry;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    if-nez v4, :cond_0

    invoke-static {v0, v1}, Landroidx/core/os/ۡۧۥۨ;->۠ۢۡۧ(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_0
    :try_start_1
    invoke-static {v4}, Lorg/spongycastle/pqc/jcajce/provider/util/ۣۥۣۦ;->ۢۤ۟ۦ(Ljava/lang/Object;)V

    invoke-static {v3, v4}, Lcom/google/firebase/analytics/connector/ۡۤۧۧ;->۟۠۠ۦۡ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v3

    check-cast v3, Ljava/io/Closeable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object v4, v3

    check-cast v4, Ljava/io/InputStream;

    invoke-static {v4}, Lorg/spongycastle/pqc/jcajce/provider/util/ۣۥۣۦ;->ۢۤ۟ۦ(Ljava/lang/Object;)V

    invoke-static {v4}, Landroidx/core/view/contentcapture/ۣ۟ۤۢۥ;->ۣۣ۟ۨۨ(Ljava/lang/Object;)[B

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v3, v1}, Landroidx/core/os/ۡۧۥۨ;->۠ۢۡۧ(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v0, v1}, Landroidx/core/os/ۡۧۥۨ;->۠ۢۡۧ(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4

    :catchall_0
    move-exception v4

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-static {v3, v4}, Landroidx/core/os/ۡۧۥۨ;->۠ۢۡۧ(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v3

    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v4

    invoke-static {v0, v3}, Landroidx/core/os/ۡۧۥۨ;->۠ۢۡۧ(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v4
.end method
