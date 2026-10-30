.class public final Ldev/blaze/launcher/task/NativeInstaller;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNativeInstaller.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NativeInstaller.kt\ndev/blaze/launcher/task/NativeInstaller\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,89:1\n13409#2,2:90\n1863#3,2:92\n*S KotlinDebug\n*F\n+ 1 NativeInstaller.kt\ndev/blaze/launcher/task/NativeInstaller\n*L\n40#1:90,2\n73#1:92,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u0018\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0003J \u0010\u000e\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0008H\u0002J\u0008\u0010\u0011\u001a\u00020\u0008H\u0002J\u0006\u0010\u0012\u001a\u00020\u0006J\u0008\u0010\u0013\u001a\u00020\u0014H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Ldev/blaze/launcher/task/NativeInstaller;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "extractFromAPK",
        "",
        "abi",
        "",
        "archive",
        "Ljava/io/File;",
        "extractFromAppBundle",
        "extractLibArchive",
        "extractLibraries",
        "extractLibrary",
        "outDir",
        "libName",
        "getDeviceABI",
        "install",
        "isAppBundle",
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
.field private static final short:[S


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 52

    const v0, 0xb2

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Ldev/blaze/launcher/task/NativeInstaller;->short:[S

    return-void

    nop

    :array_0
    .array-data 2
        0x8d6s
        0x8das
        0x8dbs
        0x8c1s
        0x8d0s
        0x8cds
        0x8c1s
        0xaf8s
        0xafds
        0xaf6s
        0xabbs
        0x2des
        0x29ds
        0x298s
        0x293s
        0x29cs
        0x298s
        0x29fs
        0x294s
        0x292s
        0x283s
        0x290s
        0x297s
        0x285s
        0x281s
        0x294s
        0x2dfs
        0x282s
        0x29es
        0x7f2s
        0x7e1s
        0x7fes
        0x2d9s
        0x299s
        0x297s
        0xbf8s
        0xbfds
        0xbf6s
        0xbbbs
        0x2c3s
        0x280s
        0x285s
        0x28es
        0x28bs
        0x28ds
        0x281s
        0x289s
        0x2c2s
        0x29fs
        0x283s
        0x4bbs
        0x4fas
        0x4f5s
        0x4e0s
        0x4fds
        0x4e2s
        0x4f1s
        0x5ces
        0x5cbs
        0x5c0s
        0x5c5s
        0x5c3s
        0x5cfs
        0x5c7s
        0x58cs
        0x5d8s
        0x5cbs
        0x5d2s
        0xc4as
        0xc46s
        0xc44s
        0xc07s
        0xc44s
        0xc46s
        0xc43s
        0xc48s
        0xc47s
        0xc4es
        0xc07s
        0xc44s
        0xc40s
        0xc47s
        0xc4cs
        0xc4as
        0xc5bs
        0xc48s
        0xc4fs
        0xc5ds
        0xc59s
        0xc4cs
        0x418s
        0x459s
        0x456s
        0x443s
        0x45es
        0x441s
        0x452s
        0x418s
        0x925s
        0xb15s
        0xb10s
        0xb1bs
        0xb1as
        0xb52s
        0xb52s
        0xb26s
        0xb0as
        0xb11s
        0xb18s
        0xb0bs
        0xb1cs
        0xb1ds
        0xb57s
        0xb0as
        0xb16s
        0x4f4s
        0x4f1s
        0x4fas
        0x4f5s
        0x4f1s
        0x4f6s
        0x4fds
        0x4fbs
        0x4eas
        0x4f9s
        0x4fes
        0x4ecs
        0x4e8s
        0x4fds
        0x4b6s
        0x4ebs
        0x4f7s
        0x21as
        0x21fs
        0x214s
        0x23bs
        0x213s
        0x212s
        0x21fs
        0x217s
        0x232s
        0x213s
        0x215s
        0x219s
        0x212s
        0x213s
        0x204s
        0x205s
        0x229s
        0x237s
        0x218s
        0x212s
        0x204s
        0x219s
        0x21fs
        0x212s
        0x258s
        0x205s
        0x219s
        0x743s
        0x746s
        0x74ds
        0x749s
        0x742s
        0x740s
        0x74bs
        0x701s
        0x75cs
        0x740s
        0x89fs
        0x8dfs
        0x8d1s
        0x8b8s
        0x8d1s
        0x8d3s
        0x242s
        0x202s
        0x20cs
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 52

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static/range {}, Ldev/blaze/launcher/task/NativeInstaller;->ۣ۠ۥۧ()[S

    move-result-object v38

    const v41, 0x8b5

    const v39, 0x0

    const v40, 0x7

    invoke-static/range {v38 .. v41}, Landroidx/localbroadcastmanager/۟ۤ۠ۦ;->ۣۧۤۦ([SIII)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-static {v2, v0}, Lcom/google/firebase/analytics/connector/۟ۧۢ۟;->۟ۡۤۨۡ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Ldev/blaze/launcher/task/NativeInstaller;->context:Landroid/content/Context;

    return-void
.end method

.method private final extractFromAPK(Ljava/lang/String;Ljava/io/File;)V
    .locals 55

    move-object/from16 v6, p2

    move-object/from16 v5, p1

    move-object/from16 v4, p0

    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-static {v4}, Ldev/blaze/launcher/task/NativeInstaller;->ۣۣ۟ۡۡ(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/braze/ui/inappmessage/factories/۟ۦۣۣ۟;->ۤۧۧۧ(Ljava/lang/Object;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/iid/internal/۟۟ۢۤۧ;->۟ۨ۟(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/zip/ZipEntry;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {}, Ldev/blaze/launcher/task/NativeInstaller;->ۣ۠ۥۧ()[S

    move-result-object v17

    const v20, 0xa94

    const v18, 0x7

    const v19, 0x4

    invoke-static/range {v17 .. v20}, Lcom/mojang/minecraftpe/store/amazonappstore/۟۟ۧۢۥ;->۟۟ۥۢ۟([SIII)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v3, v17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5}, Lcom/braze/ui/inappmessage/factories/ۣ۟۟ۦۢ;->ۣۣ۟ۡ۠(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {}, Ldev/blaze/launcher/task/NativeInstaller;->ۣ۠ۥۧ()[S

    move-result-object v43

    const v46, 0x2f1

    const v44, 0xb

    const v45, 0x12

    invoke-static/range {v43 .. v46}, Lcom/google/android/material/expandable/۟۠ۥ۟ۥ;->ۣ۟۠ۢۥ([SIII)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v2, v43

    invoke-static {v5, v2}, Lcom/braze/ui/inappmessage/factories/ۣ۟۟ۦۢ;->ۣۣ۟ۡ۠(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v5}, Ljavax/xml/stream/util/ۨۤۦۡ;->۟ۢۧۡ۠(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/firebase/analytics/connector/ۡۤۧۧ;->۟۠۠ۦۡ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_0

    check-cast v5, Ljava/io/Closeable;

    :try_start_0
    move-object v0, v5

    check-cast v0, Ljava/io/InputStream;

    invoke-static {v6, v0}, Lcom/microsoft/xbox/idp/ui/۟ۡۥۤۤ;->۟۠ۥۥۦ(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/config/ۦۥۣۦ;->۟۟ۧۢۨ(J)Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroidx/core/os/ۡۧۥۨ;->۠ۢۡۧ(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v6

    :try_start_1
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v5, v6}, Landroidx/core/os/ۡۧۥۨ;->۠ۢۡۧ(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method private final extractFromAppBundle(Ljava/lang/String;Ljava/io/File;)V
    .locals 60

    move-object/from16 v11, p2

    move-object/from16 v10, p1

    move-object/from16 v9, p0

    invoke-static {v9}, Ldev/blaze/launcher/task/NativeInstaller;->ۣۣ۟ۡۡ(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/braze/ui/inappmessage/factories/۟ۦۣۣ۟;->ۤۧۧۧ(Ljava/lang/Object;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/config/ۣ۟۟۠۟;->ۧۡۡۤ(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/google/android/datatransport/backend/cct/۟ۡ۠ۢۦ;->۟ۧۡۢ۠(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/pqc/jcajce/provider/util/ۣۥۣۦ;->ۢۤ۟ۦ(Ljava/lang/Object;)V

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static/range {}, Ldev/blaze/launcher/task/NativeInstaller;->ۣ۠ۥۧ()[S

    move-result-object v33

    const v36, 0x793

    const v34, 0x1d

    const v35, 0x3

    invoke-static/range {v33 .. v36}, Lcom/google/firebase/platforminfo/ۣۣۤۥ;->ۡۥۢۧ([SIII)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v6, v33

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v5, v6, v2, v7, v8}, Ldev/blaze/launcher/task/NativeInstaller;->ۡ۠ۡۦ(Ljava/lang/Object;Ljava/lang/Object;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static/range {}, Ldev/blaze/launcher/task/NativeInstaller;->ۣ۠ۥۧ()[S

    move-result-object v47

    const v50, 0x2a1

    const v48, 0x20

    const v49, 0x3

    invoke-static/range {v47 .. v50}, Lorg/spongycastle/util/test/ۢۥۧ۠;->ۥۡۤ۟([SIII)Ljava/lang/String;

    move-result-object v47

    move-object/from16 v6, v47

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v5, v6, v2, v7, v8}, Ldev/blaze/launcher/task/NativeInstaller;->ۡ۠ۡۦ(Ljava/lang/Object;Ljava/lang/Object;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/zip/ZipEntry;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {}, Ldev/blaze/launcher/task/NativeInstaller;->ۣ۠ۥۧ()[S

    move-result-object v36

    const v39, 0xb94

    const v37, 0x23

    const v38, 0x4

    invoke-static/range {v36 .. v39}, Lkotlin/enums/ۦۥۨۡ;->ۣ۟ۤۢۢ([SIII)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v7, v36

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v10}, Lcom/braze/ui/inappmessage/factories/ۣ۟۟ۦۢ;->ۣۣ۟ۡ۠(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {}, Ldev/blaze/launcher/task/NativeInstaller;->ۣ۠ۥۧ()[S

    move-result-object v24

    const v27, 0x2ec

    const v25, 0x27

    const v26, 0xb

    invoke-static/range {v24 .. v27}, Lcom/google/firebase/installations/time/ۡۤۢ;->۟ۥۣۧۥ([SIII)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v7, v24

    invoke-static {v6, v7}, Lcom/braze/ui/inappmessage/factories/ۣ۟۟ۦۢ;->ۣۣ۟ۡ۠(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v6}, Ljavax/xml/stream/util/ۨۤۦۡ;->۟ۢۧۡ۠(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v4}, Lcom/google/firebase/analytics/connector/ۡۤۧۧ;->۟۠۠ۦۡ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v4}, Lorg/spongycastle/pqc/jcajce/provider/util/ۣۥۣۦ;->ۢۤ۟ۦ(Ljava/lang/Object;)V

    check-cast v4, Ljava/io/Closeable;

    :try_start_0
    move-object v5, v4

    check-cast v5, Ljava/io/InputStream;

    invoke-static {v11, v5}, Lcom/microsoft/xbox/idp/ui/۟ۡۥۤۤ;->۟۠ۥۥۦ(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/google/android/gms/common/config/ۦۥۣۦ;->۟۟ۧۢۨ(J)Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4, v8}, Landroidx/core/os/ۡۧۥۨ;->۠ۢۡۧ(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v10

    :try_start_1
    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v11

    invoke-static {v4, v10}, Landroidx/core/os/ۡۧۥۨ;->۠ۢۡۧ(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v11

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private final extractLibArchive(Ljava/lang/String;)V
    .locals 54

    move-object/from16 v4, p1

    move-object/from16 v3, p0

    :try_start_0
    invoke-static {}, Lorg/apache/http/config/ۣ۟۟۠۟;->ۣۣۤۥ()Lkotlin/Result$Companion;

    move-result-object v0

    move-object v0, v3

    check-cast v0, Ldev/blaze/launcher/task/NativeInstaller;

    new-instance v0, Ljava/io/File;

    invoke-static {v3}, Ldev/blaze/launcher/task/NativeInstaller;->ۣۣ۟ۡۡ(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/appcompat/text/ۣ۟۠ۥۥ;->ۥۧۨۦ(Ljava/lang/Object;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v1}, Lcom/braze/ui/contentcards/view/۟ۦۢ۟ۨ;->ۣ۟ۢ۟۟(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {}, Ldev/blaze/launcher/task/NativeInstaller;->ۣ۠ۥۧ()[S

    move-result-object v17

    const v20, 0x494

    const v18, 0x32

    const v19, 0x7

    invoke-static/range {v17 .. v20}, Landroidx/core/internal/view/۟ۥۧۧۨ;->۟ۥۤۤۨ([SIII)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v2, v17

    invoke-static {v1, v2}, Lcom/braze/ui/inappmessage/factories/ۣ۟۟ۦۢ;->ۣۣ۟ۡ۠(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1}, Ljavax/xml/stream/util/ۨۤۦۡ;->۟ۢۧۡ۠(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/braze/events/internal/۟ۥۥۣ۠;->ۣۢۢ۟(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroidx/core/hardware/fingerprint/ۣۣۨۤ;->ۨۤۦۡ(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static/range {}, Ldev/blaze/launcher/task/NativeInstaller;->ۣ۠ۥۧ()[S

    move-result-object v16

    const v19, 0x5a2

    const v17, 0x39

    const v18, 0xb

    invoke-static/range {v16 .. v19}, Lorg/apache/http/client/params/۠ۧۥۧ;->ۡۨۦ۠([SIII)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v2, v16

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Ldev/blaze/launcher/task/NativeInstaller;->۟ۤۡ۠۠(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v3, v4, v1}, Ldev/blaze/launcher/task/NativeInstaller;->۟۟ۢۤۥ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {v3, v4, v1}, Ldev/blaze/launcher/task/NativeInstaller;->ۨۦۨۤ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    invoke-static {}, Lorg/spongycastle/asn1/x500/style/ۧ۠ۨ;->۟۟ۡۡۢ()Lkotlin/Unit;

    move-result-object v4

    invoke-static {v4}, Landroidx/savedstate/ktx/ۣۨۨۡ;->۟ۤۦۢۤ(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-static {}, Lorg/apache/http/config/ۣ۟۟۠۟;->ۣۣۤۥ()Lkotlin/Result$Companion;

    move-result-object v0

    invoke-static {v4}, Landroidx/core/telephony/mbms/ۨۥۨۦ;->ۣ۟ۨۡۤ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroidx/savedstate/ktx/ۣۨۨۡ;->۟ۤۦۢۤ(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method private final extractLibraries(Ljava/lang/String;)V
    .locals 56

    move-object/from16 v6, p1

    move-object/from16 v5, p0

    new-instance v0, Ljava/io/File;

    invoke-static {v5}, Ldev/blaze/launcher/task/NativeInstaller;->ۣۣ۟ۡۡ(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v1

    invoke-static/range {}, Ldev/blaze/launcher/task/NativeInstaller;->ۣ۠ۥۧ()[S

    move-result-object v31

    const v34, 0xc29

    const v32, 0x44

    const v33, 0x16

    invoke-static/range {v31 .. v34}, Landroidx/appcompat/resources/ۣۣۡۥ;->ۥۥۤ۠([SIII)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v2, v31

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/braze/push/support/۟ۡۨۧۨ;->۟۠ۦۥۡ(Ljava/lang/Object;Ljava/lang/Object;I)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/braze/ui/inappmessage/factories/۟ۦۣۣ۟;->ۤۧۧۧ(Ljava/lang/Object;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/ktx/ۡۤۦ۠;->ۣۢۢۧ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-static {v5}, Ldev/blaze/launcher/task/NativeInstaller;->ۣۣ۟ۡۡ(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/appcompat/text/ۣ۟۠ۥۥ;->ۥۧۨۦ(Ljava/lang/Object;)Ljava/io/File;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v2}, Lcom/braze/ui/contentcards/view/۟ۦۢ۟ۨ;->ۣ۟ۢ۟۟(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {}, Ldev/blaze/launcher/task/NativeInstaller;->ۣ۠ۥۧ()[S

    move-result-object v18

    const v21, 0x437

    const v19, 0x5a

    const v20, 0x8

    invoke-static/range {v18 .. v21}, Lorg/apache/http/client/params/۟ۥ۠ۥۧ;->ۣ۟ۧۤۧ([SIII)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v4, v18

    invoke-static {v2, v4}, Lcom/braze/ui/inappmessage/factories/ۣ۟۟ۦۢ;->ۣۣ۟ۡ۠(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/braze/ui/inappmessage/factories/ۣ۟۟ۦۢ;->ۣۣ۟ۡ۠(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {}, Ldev/blaze/launcher/task/NativeInstaller;->ۣ۠ۥۧ()[S

    move-result-object v22

    const v25, 0x90a

    const v23, 0x62

    const v24, 0x1

    invoke-static/range {v22 .. v25}, Lcom/braze/push/support/۟ۧۧۤ;->ۣۣ۟ۢۡ([SIII)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v2, v22

    invoke-static {v6, v2}, Lcom/braze/ui/inappmessage/factories/ۣ۟۟ۦۢ;->ۣۣ۟ۡ۠(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v6}, Ljavax/xml/stream/util/ۨۤۦۡ;->۟ۢۧۡ۠(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/braze/events/internal/۟ۥۥۣ۠;->ۣۢۢ۟(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v1}, Landroidx/core/hardware/fingerprint/ۣۣۨۤ;->ۨۤۦۡ(Ljava/lang/Object;)Z

    :cond_0
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {}, Ldev/blaze/launcher/task/NativeInstaller;->ۣ۠ۥۧ()[S

    move-result-object v24

    const v27, 0xb79

    const v25, 0x63

    const v26, 0x10

    invoke-static/range {v24 .. v27}, Lorg/spongycastle/asn1/mozilla/ۥۨ۠ۨ;->ۣ۟ۧۦۡ([SIII)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v4, v24

    aput-object v4, v6, v2

    const/4 v2, 0x1

    invoke-static/range {}, Ldev/blaze/launcher/task/NativeInstaller;->ۣ۠ۥۧ()[S

    move-result-object v40

    const v43, 0x498

    const v41, 0x73

    const v42, 0x11

    invoke-static/range {v40 .. v43}, Lorg/spongycastle/jcajce/provider/asymmetric/util/۟ۥۥۤۧ;->۟۠۠ۥۡ([SIII)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v4, v40

    aput-object v4, v6, v2

    invoke-static/range {}, Ldev/blaze/launcher/task/NativeInstaller;->ۣ۠ۥۧ()[S

    move-result-object v40

    const v43, 0x276

    const v41, 0x84

    const v42, 0x1b

    invoke-static/range {v40 .. v43}, Lcom/mojang/minecraftpe/input/۟ۥ۟۟ۧ;->۟ۡۢۨۦ([SIII)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v2, v40

    aput-object v2, v6, v3

    const/4 v2, 0x3

    invoke-static/range {}, Ldev/blaze/launcher/task/NativeInstaller;->ۣ۠ۥۧ()[S

    move-result-object v15

    const v18, 0x72f

    const v16, 0x9f

    const v17, 0xa

    invoke-static/range {v15 .. v18}, Landroidx/navigation/common/ۣ۟ۤۨۨ;->ۣ۠ۤ۠([SIII)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v3, v15

    aput-object v3, v6, v2

    invoke-static {v6}, Ldev/blaze/launcher/task/NativeInstaller;->ۣۦۦۥ(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    invoke-static {v6}, Lcom/google/firebase/emulators/۠ۥ۠;->ۡۦۧۧ(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-static {v6}, Lcom/braze/ui/adapters/۟۠ۦ۠;->۟۟ۧۦۤ(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v6}, Landroidx/fragment/ktx/ۢۨۨۤ;->۟۟ۤۧۧ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5, v3, v1, v2}, Ldev/blaze/launcher/task/NativeInstaller;->ۦۣۤۥ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final extractLibrary(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 52

    move-object/from16 v4, p3

    move-object/from16 v3, p2

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v3, Ljava/io/Closeable;

    :try_start_0
    move-object v2, v3

    check-cast v2, Ljava/io/FileInputStream;

    check-cast v2, Ljava/io/InputStream;

    invoke-static {v0, v2}, Lcom/microsoft/xbox/idp/ui/۟ۡۥۤۤ;->۟۠ۥۥۦ(Ljava/lang/Object;Ljava/lang/Object;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    invoke-static {v3, v2}, Landroidx/core/os/ۡۧۥۨ;->۠ۢۡۧ(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lkotlinx/coroutines/flow/internal/ۦ۠۟ۦ;->۟ۡ۠۠(Ljava/lang/Object;Z)Z

    invoke-static {v0, v2}, Lcom/braze/ui/۟ۢۢۤۤ;->۟ۥ۠ۦۨ(Ljava/lang/Object;Z)Z

    invoke-static {v0, v2}, Lcom/google/android/gms/common/images/ۨۨۥۧ;->ۨ۠ۦۨ(Ljava/lang/Object;Z)Z

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v4

    invoke-static {v3, v2}, Landroidx/core/os/ۡۧۥۨ;->۠ۢۡۧ(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v4
.end method

.method private final getDeviceABI()Ljava/lang/String;
    .locals 53

    move-object/from16 v2, p0

    invoke-static {}, Landroidx/slidingpanelayout/widget/ۤۦ۠ۡ;->ۤۥۡۦ()Ldev/blaze/launcher/utils/ABIHelper;

    move-result-object v0

    invoke-static {v0}, Landroidx/constraintlayout/utils/widget/ۧۨۢ۟;->ۢۡۦۢ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static/range {}, Ldev/blaze/launcher/task/NativeInstaller;->ۣ۠ۥۧ()[S

    move-result-object v12

    const v15, 0x8e7

    const v13, 0xa9

    const v14, 0x6

    invoke-static/range {v12 .. v15}, Lcom/braze/triggers/events/۟ۧۤۦ۟;->ۣ۟ۢۢ([SIII)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v1, v12

    invoke-static {v0, v1}, Lorg/apache/http/client/config/ۥۥ۠ۧ;->ۣۣ۟۠۠(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static/range {}, Ldev/blaze/launcher/task/NativeInstaller;->ۣ۠ۥۧ()[S

    move-result-object v30

    const v33, 0x23a

    const v31, 0xaf

    const v32, 0x3

    invoke-static/range {v30 .. v33}, Lcom/braze/dispatch/ۣ۟ۦۢ;->ۥۢۢۨ([SIII)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    :cond_0
    return-object v0
.end method

.method private final isAppBundle()Z
    .locals 53

    move-object/from16 v2, p0

    invoke-static {v2}, Ldev/blaze/launcher/task/NativeInstaller;->ۣۣ۟ۡۡ(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/braze/ui/inappmessage/factories/۟ۦۣۣ۟;->ۤۧۧۧ(Ljava/lang/Object;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/config/ۣ۟۟۠۟;->ۧۡۡۤ(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public static ۟۟ۢۤۥ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Landroidx/core/view/۟ۦۥۣ۟;->ۤۧۢۡ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/task/NativeInstaller;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/io/File;

    invoke-direct {p0, p1, p2}, Ldev/blaze/launcher/task/NativeInstaller;->extractFromAppBundle(Ljava/lang/String;Ljava/io/File;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۣۣ۟ۡۡ(Ljava/lang/Object;)Landroid/content/Context;
    .locals 2

    invoke-static {}, Lorg/apache/http/impl/conn/ۤۥۣۨ;->۟ۧۦۢۨ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/task/NativeInstaller;

    iget-object v1, p0, Ldev/blaze/launcher/task/NativeInstaller;->context:Landroid/content/Context;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۟ۢ۟ۡ۟(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroidx/core/provider/ۡ۠۟;->ۣۣ۟ۦ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/task/NativeInstaller;

    invoke-direct {p0}, Ldev/blaze/launcher/task/NativeInstaller;->getDeviceABI()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۤۡ۠۠(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {}, Lcom/google/android/material/search/۟ۡ۠ۡۤ;->ۣۣۡ۠()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/task/NativeInstaller;

    invoke-direct {p0}, Ldev/blaze/launcher/task/NativeInstaller;->isAppBundle()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۥ۟ۤ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lorg/apache/http/conn/params/ۡ۠ۢ۠;->ۦۦۡ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/task/NativeInstaller;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Ldev/blaze/launcher/task/NativeInstaller;->extractLibArchive(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۣ۠ۥۧ()[S
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/channels/ۤۢۡۥ;->ۣ۟ۧۢۨ()I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Ldev/blaze/launcher/task/NativeInstaller;->short:[S

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۡ۠ۡۦ(Ljava/lang/Object;Ljava/lang/Object;ZILjava/lang/Object;)Z
    .locals 1

    invoke-static {}, Lcom/google/firebase/provider/ۨۡۢۡ;->ۥۧۥۥ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Ljava/lang/CharSequence;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣۥۦۣ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lorg/xmlpull/v1/wrapper/classic/۟۠ۡ۠ۧ;->ۤۨۧۦ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/task/NativeInstaller;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Ldev/blaze/launcher/task/NativeInstaller;->extractLibraries(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۣۦۦۥ(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    invoke-static {}, Lorg/spongycastle/crypto/ec/۟ۦ۟ۤۡ;->۟ۨۦ۠()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۦۣۤۥ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/mojang/minecraftpe/packagesource/۟ۦۣۨۢ;->ۡۦۦۧ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/task/NativeInstaller;

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    check-cast p3, Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Ldev/blaze/launcher/task/NativeInstaller;->extractLibrary(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۨۦۨۤ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lorg/spongycastle/asn1/bsi/ۧۦۡۧ;->۠ۧۤۥ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/task/NativeInstaller;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/io/File;

    invoke-direct {p0, p1, p2}, Ldev/blaze/launcher/task/NativeInstaller;->extractFromAPK(Ljava/lang/String;Ljava/io/File;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method


# virtual methods
.method public final install()V
    .locals 52

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/task/NativeInstaller;->۟ۢ۟ۡ۟(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldev/blaze/launcher/task/NativeInstaller;->۟ۥ۟ۤ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, v0}, Ldev/blaze/launcher/task/NativeInstaller;->ۣۥۦۣ(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
