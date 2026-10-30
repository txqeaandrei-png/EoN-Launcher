.class public Ldev/blaze/launcher/Patcher;
.super Ljava/lang/Object;


# static fields
.field private static final short:[S


# direct methods
.method static constructor <clinit>()V
    .locals 52

    const v0, 0xf2

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Ldev/blaze/launcher/Patcher;->short:[S

    return-void

    nop

    :array_0
    .array-data 2
        0xa90s
        0xa9fs
        0xa95s
        0xa83s
        0xa9es
        0xa98s
        0xa95s
        0xadfs
        0xa92s
        0xa9es
        0xa9fs
        0xa85s
        0xa94s
        0xa9fs
        0xa85s
        0xadfs
        0xa83s
        0xa94s
        0xa82s
        0xadfs
        0xab0s
        0xa82s
        0xa82s
        0xa94s
        0xa85s
        0xabcs
        0xa90s
        0xa9fs
        0xa90s
        0xa96s
        0xa94s
        0xa83s
        0x267s
        0x262s
        0x262s
        0x247s
        0x275s
        0x275s
        0x263s
        0x272s
        0x256s
        0x267s
        0x272s
        0x26es
        0xc76s
        0xc79s
        0xc6cs
        0xc71s
        0xc6es
        0xc7ds
        0xc54s
        0xc71s
        0xc7as
        0xc6as
        0xc79s
        0xc6as
        0xc61s
        0xc48s
        0xc79s
        0xc6cs
        0xc70s
        0xc5ds
        0xc74s
        0xc7ds
        0xc75s
        0xc7ds
        0xc76s
        0xc6cs
        0xc6bs
        0x310s
        0x31fs
        0x30as
        0x317s
        0x308s
        0x31bs
        0x332s
        0x317s
        0x31cs
        0x30cs
        0x31fs
        0x30cs
        0x307s
        0x33as
        0x317s
        0x30cs
        0x31bs
        0x31ds
        0x30as
        0x311s
        0x30cs
        0x317s
        0x31bs
        0x30ds
        0x2dds
        0x2d7s
        0x2dds
        0x2das
        0x2cbs
        0x2c3s
        0x2e0s
        0x2cfs
        0x2das
        0x2c7s
        0x2d8s
        0x2cbs
        0x2e2s
        0x2c7s
        0x2ccs
        0x2dcs
        0x2cfs
        0x2dcs
        0x2d7s
        0x2eas
        0x2c7s
        0x2dcs
        0x2cbs
        0x2cds
        0x2das
        0x2c1s
        0x2dcs
        0x2c7s
        0x2cbs
        0x2dds
        0xb7bs
        0xb6as
        0xb7fs
        0xb63s
        0xb47s
        0xb62s
        0xb78s
        0xb7fs
        0x78fs
        0x78as
        0x787s
        0x79ds
        0x782s
        0x780s
        0x7c5s
        0x798s
        0x792s
        0x798s
        0x79fs
        0x78es
        0x786s
        0x7c5s
        0x7a9s
        0x78as
        0x798s
        0x78es
        0x7afs
        0x78es
        0x793s
        0x7a8s
        0x787s
        0x78as
        0x798s
        0x798s
        0x7a7s
        0x784s
        0x78as
        0x78fs
        0x78es
        0x799s
        0x60fs
        0x60as
        0x607s
        0x61ds
        0x602s
        0x600s
        0x645s
        0x618s
        0x612s
        0x618s
        0x61fs
        0x60es
        0x606s
        0x645s
        0x62fs
        0x60es
        0x613s
        0x63bs
        0x60as
        0x61fs
        0x603s
        0x627s
        0x602s
        0x618s
        0x61fs
        0x64fs
        0x62es
        0x607s
        0x60es
        0x606s
        0x60es
        0x605s
        0x61fs
        0x56cs
        0x569s
        0x564s
        0x57es
        0x561s
        0x563s
        0x526s
        0x57bs
        0x571s
        0x57bs
        0x57cs
        0x56ds
        0x565s
        0x526s
        0x54cs
        0x56ds
        0x570s
        0x558s
        0x569s
        0x57cs
        0x560s
        0x544s
        0x561s
        0x57bs
        0x57cs
        0x52cs
        0x546s
        0x569s
        0x57cs
        0x561s
        0x57es
        0x56ds
        0x544s
        0x561s
        0x56as
        0x57as
        0x569s
        0x57as
        0x571s
        0x54ds
        0x564s
        0x56ds
        0x565s
        0x56ds
        0x566s
        0x57cs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 51

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPluginAssetsManager(Ljava/io/File;Ljava/io/File;)Landroid/content/res/AssetManager;
    .locals 57
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    move-object/from16 v7, p1

    move-object/from16 v6, p0

    invoke-static/range {}, Ldev/blaze/launcher/Patcher;->۠ۨ۟ۧ()[S

    move-result-object v38

    const v41, 0xaf1

    const v39, 0x0

    const v40, 0x20

    invoke-static/range {v38 .. v41}, Lorg/spongycastle/x509/util/ۣ۟ۤۨ۟;->ۢ۠ۢۧ([SIII)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-static {v0}, Lorg/simpleframework/xml/core/۟۟ۤ۟;->۟۠ۦۣۢ(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/keystore/ۣ۟ۨۨ;->ۣ۟۠۟ۨ(Ljava/lang/Object;)[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Lorg/spongycastle/eac/operator/jcajce/ۢۦۤۨ;->۟ۤۦۣۨ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {}, Ldev/blaze/launcher/Patcher;->۠ۨ۟ۧ()[S

    move-result-object v43

    const v46, 0x206

    const v44, 0x20

    const v45, 0xc

    invoke-static/range {v43 .. v46}, Lcom/braze/۟ۡۥۥۥ;->ۣ۠۟ۤ([SIII)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v5, v43

    invoke-static {v4, v5}, Landroidx/customview/ۥۡۧۦ;->ۣ۟ۧۡۥ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    const-class v4, Landroid/content/res/AssetManager;

    invoke-static {v4}, Ldev/blaze/launcher/Patcher;->۟ۢ۠ۧۢ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/AssetManager;

    invoke-static {v6}, Lorg/spongycastle/jcajce/provider/keystore/bc/۟ۤ۟ۦ۠;->ۤ۠ۧۦ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/android/datatransport/runtime/time/ۢۧۦ۠;->ۧۧۢۡ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Lorg/spongycastle/jcajce/provider/keystore/bc/۟ۤ۟ۦ۠;->ۤ۠ۧۦ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/android/datatransport/runtime/time/ۢۧۦ۠;->ۧۧۢۡ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v3

    invoke-static {v3}, Landroidx/appcompat/text/۟۟ۥۣۤ;->ۨ۟ۦۡ(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    return-object v6
.end method

.method public static patchNativeLibraryDir(Ljava/lang/ClassLoader;Ljava/io/File;)V
    .locals 62
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    move-object/from16 v12, p1

    move-object/from16 v11, p0

    check-cast v11, Ldalvik/system/PathClassLoader;

    invoke-static {}, Lorg/spongycastle/pqc/math/ntru/util/۟ۤۢۨۨ;->۟ۤۨۥۦ()I

    move-result v0

    const/16 v1, 0x19

    invoke-static/range {}, Ldev/blaze/launcher/Patcher;->۠ۨ۟ۧ()[S

    move-result-object v20

    const v23, 0xc18

    const v21, 0x2c

    const v22, 0x19

    invoke-static/range {v20 .. v23}, Lorg/spongycastle/x509/util/۟۟۟ۦ۟;->۟ۦۤۤۤ([SIII)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v2, v20

    invoke-static/range {}, Ldev/blaze/launcher/Patcher;->۠ۨ۟ۧ()[S

    move-result-object v27

    const v30, 0x37e

    const v28, 0x45

    const v29, 0x18

    invoke-static/range {v27 .. v30}, Lcom/google/firebase/heartbeatinfo/ۨۨۢۥ;->ۨۢۥۣ([SIII)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v3, v27

    invoke-static/range {}, Ldev/blaze/launcher/Patcher;->۠ۨ۟ۧ()[S

    move-result-object v25

    const v28, 0x2ae

    const v26, 0x5d

    const v27, 0x1e

    invoke-static/range {v25 .. v28}, Lcom/braze/support/delegates/ۡۥۡ۟;->ۥۣۡ([SIII)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v4, v25

    invoke-static/range {}, Ldev/blaze/launcher/Patcher;->۠ۨ۟ۧ()[S

    move-result-object v44

    const v47, 0xb0b

    const v45, 0x7b

    const v46, 0x8

    invoke-static/range {v44 .. v47}, Lorg/spongycastle/mozilla/۟ۢۨۡۥ;->۟ۤ۟ۧۧ([SIII)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v5, v44

    invoke-static/range {}, Ldev/blaze/launcher/Patcher;->۠ۨ۟ۧ()[S

    move-result-object v22

    const v25, 0x7eb

    const v23, 0x83

    const v24, 0x20

    invoke-static/range {v22 .. v25}, Lcom/google/android/material/drawable/ۨۦۢۨ;->ۣ۟ۡ۟ۦ([SIII)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v6, v22

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-gt v0, v1, :cond_1

    invoke-static {v6}, Lorg/simpleframework/xml/core/۟۟ۤ۟;->۟۠ۦۣۢ(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v5}, Lorg/spongycastle/pqc/crypto/mceliece/ۣۤۧۤ;->ۣۧۨ۟(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0, v8}, Landroidx/activity/ktx/۠ۥۤۨ;->ۣ۟ۤۦ۠(Ljava/lang/Object;Z)V

    invoke-static {v0, v11}, Lorg/spongycastle/crypto/engines/۟ۤ۠ۦ;->۟ۦۣۡۦ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-static/range {}, Ldev/blaze/launcher/Patcher;->۠ۨ۟ۧ()[S

    move-result-object v19

    const v22, 0x66b

    const v20, 0xa3

    const v21, 0x21

    invoke-static/range {v19 .. v22}, Lorg/simpleframework/xml/convert/ۥۣۣ۠;->۟ۧ۟۟ۡ([SIII)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0}, Lorg/simpleframework/xml/core/۟۟ۤ۟;->۟۠ۦۣۢ(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const-class v5, Ljava/io/File;

    aput-object v5, v1, v7

    invoke-static {}, Lokhttp3/internal/cache2/ۦۣۡ۠;->ۣۣ۟ۧ()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v1, v8

    const/4 v5, 0x2

    const-class v6, Ljava/io/File;

    aput-object v6, v1, v5

    const/4 v5, 0x3

    const-class v6, Ldalvik/system/DexFile;

    aput-object v6, v1, v5

    invoke-static {v0, v1}, Lcom/google/android/material/drawable/ۨۦۢۨ;->۟ۤۥۦۦ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-static {v11}, Lorg/spongycastle/pqc/asn1/۟ۤۦۨۤ;->۟۟۠ۦۤ(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v4}, Lorg/spongycastle/pqc/crypto/mceliece/ۣۤۧۤ;->ۣۧۨ۟(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-static {v11}, Lorg/spongycastle/pqc/asn1/۟ۤۦۨۤ;->۟۟۠ۦۤ(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v3}, Lorg/spongycastle/pqc/crypto/mceliece/ۣۤۧۤ;->ۣۧۨ۟(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-static {v11}, Lorg/spongycastle/pqc/asn1/۟ۤۦۨۤ;->۟۟۠ۦۤ(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v2}, Lorg/spongycastle/pqc/crypto/mceliece/ۣۤۧۤ;->ۣۧۨ۟(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v4, v8}, Landroidx/activity/ktx/۠ۥۤۨ;->ۣ۟ۤۦ۠(Ljava/lang/Object;Z)V

    invoke-static {v3, v8}, Landroidx/activity/ktx/۠ۥۤۨ;->ۣ۟ۤۦ۠(Ljava/lang/Object;Z)V

    invoke-static {v2, v8}, Landroidx/activity/ktx/۠ۥۤۨ;->ۣ۟ۤۦ۠(Ljava/lang/Object;Z)V

    invoke-static {v4, v11}, Lorg/spongycastle/crypto/engines/۟ۤ۠ۦ;->۟ۦۣۡۦ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_3

    invoke-static {v3, v11}, Lorg/spongycastle/crypto/engines/۟ۤ۠ۦ;->۟ۦۣۡۦ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_3

    invoke-static {v2, v11}, Lorg/spongycastle/crypto/engines/۟ۤ۠ۦ;->۟ۦۣۡۦ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    if-eqz v9, :cond_3

    array-length v10, v9

    add-int/2addr v10, v8

    invoke-static {v0, v10}, Lcom/braze/configuration/۟ۥۨۥ۟;->ۤ۟ۥۡ(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v12}, Lorg/spongycastle/openssl/ۣۨۡۤ;->۠ۦ۟ۧ(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-static {v6, v12}, Lorg/spongycastle/openssl/ۣۨۡۤ;->۠ۦ۟ۧ(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-static {v4, v11, v5}, Landroidx/core/view/contentcapture/ۣ۟ۤۢۥ;->۟ۡ۠ۥۨ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3, v11, v6}, Landroidx/core/view/contentcapture/ۣ۟ۤۢۥ;->۟ۡ۠ۥۨ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v1, :cond_3

    invoke-static {v1, v8}, Lorg/apache/http/impl/pool/ۨۢۡۡ;->ۨۨۡ۟(Ljava/lang/Object;Z)V

    invoke-static {v8}, Lorg/apache/http/conn/scheme/ۡۨ۟ۧ;->۟ۥۣۤۦ(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    filled-new-array {v12, v3, v4, v4}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v1, v12}, Landroidx/savedstate/ۣ۟ۡ۠ۧ;->ۣۡۨۧ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v0, v7, v12}, Lcom/google/android/gms/common/ۡۨۤۢ;->ۣ۟۠ۨۥ(Ljava/lang/Object;ILjava/lang/Object;)V

    move v12, v8

    :goto_0
    array-length v1, v9

    add-int/2addr v1, v8

    if-ge v12, v1, :cond_0

    add-int/lit8 v1, v12, -0x1

    aget-object v1, v9, v1

    invoke-static {v0, v12, v1}, Lcom/google/android/gms/common/ۡۨۤۢ;->ۣ۟۠ۨۥ(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2, v11, v0}, Landroidx/core/view/contentcapture/ۣ۟ۤۢۥ;->۟ۡ۠ۥۨ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    invoke-static {v6}, Lorg/simpleframework/xml/core/۟۟ۤ۟;->۟۠ۦۣۢ(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v5}, Lorg/spongycastle/pqc/crypto/mceliece/ۣۤۧۤ;->ۣۧۨ۟(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0, v8}, Landroidx/activity/ktx/۠ۥۤۨ;->ۣ۟ۤۦ۠(Ljava/lang/Object;Z)V

    invoke-static {v0, v11}, Lorg/spongycastle/crypto/engines/۟ۤ۠ۦ;->۟ۦۣۡۦ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-static/range {}, Ldev/blaze/launcher/Patcher;->۠ۨ۟ۧ()[S

    move-result-object v22

    const v25, 0x508

    const v23, 0xc4

    const v24, 0x2e

    invoke-static/range {v22 .. v25}, Landroidx/core/accessibilityservice/ۨۥ۠۠;->۟ۡۤۢۧ([SIII)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v0}, Lorg/simpleframework/xml/core/۟۟ۤ۟;->۟۠ۦۣۢ(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Class;

    const-class v5, Ljava/io/File;

    aput-object v5, v1, v7

    invoke-static {v0, v1}, Lcom/google/android/material/drawable/ۨۦۢۨ;->۟ۤۥۦۦ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-static {v11}, Lorg/spongycastle/pqc/asn1/۟ۤۦۨۤ;->۟۟۠ۦۤ(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v4}, Lorg/spongycastle/pqc/crypto/mceliece/ۣۤۧۤ;->ۣۧۨ۟(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-static {v11}, Lorg/spongycastle/pqc/asn1/۟ۤۦۨۤ;->۟۟۠ۦۤ(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v3}, Lorg/spongycastle/pqc/crypto/mceliece/ۣۤۧۤ;->ۣۧۨ۟(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-static {v11}, Lorg/spongycastle/pqc/asn1/۟ۤۦۨۤ;->۟۟۠ۦۤ(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v2}, Lorg/spongycastle/pqc/crypto/mceliece/ۣۤۧۤ;->ۣۧۨ۟(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v4, v8}, Landroidx/activity/ktx/۠ۥۤۨ;->ۣ۟ۤۦ۠(Ljava/lang/Object;Z)V

    invoke-static {v3, v8}, Landroidx/activity/ktx/۠ۥۤۨ;->ۣ۟ۤۦ۠(Ljava/lang/Object;Z)V

    invoke-static {v2, v8}, Landroidx/activity/ktx/۠ۥۤۨ;->ۣ۟ۤۦ۠(Ljava/lang/Object;Z)V

    invoke-static {v4, v11}, Lorg/spongycastle/crypto/engines/۟ۤ۠ۦ;->۟ۦۣۡۦ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_3

    invoke-static {v3, v11}, Lorg/spongycastle/crypto/engines/۟ۤ۠ۦ;->۟ۦۣۡۦ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_3

    invoke-static {v2, v11}, Lorg/spongycastle/crypto/engines/۟ۤ۠ۦ;->۟ۦۣۡۦ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    if-eqz v9, :cond_3

    array-length v10, v9

    add-int/2addr v10, v8

    invoke-static {v0, v10}, Lcom/braze/configuration/۟ۥۨۥ۟;->ۤ۟ۥۡ(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v12}, Lorg/spongycastle/openssl/ۣۨۡۤ;->۠ۦ۟ۧ(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-static {v6, v12}, Lorg/spongycastle/openssl/ۣۨۡۤ;->۠ۦ۟ۧ(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-static {v4, v11, v5}, Landroidx/core/view/contentcapture/ۣ۟ۤۢۥ;->۟ۡ۠ۥۨ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3, v11, v6}, Landroidx/core/view/contentcapture/ۣ۟ۤۢۥ;->۟ۡ۠ۥۨ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v1, :cond_3

    invoke-static {v1, v8}, Lorg/apache/http/impl/pool/ۨۢۡۡ;->ۨۨۡ۟(Ljava/lang/Object;Z)V

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v1, v12}, Landroidx/savedstate/ۣ۟ۡ۠ۧ;->ۣۡۨۧ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v0, v7, v12}, Lcom/google/android/gms/common/ۡۨۤۢ;->ۣ۟۠ۨۥ(Ljava/lang/Object;ILjava/lang/Object;)V

    move v12, v8

    :goto_1
    array-length v1, v9

    add-int/2addr v1, v8

    if-ge v12, v1, :cond_2

    add-int/lit8 v1, v12, -0x1

    aget-object v1, v9, v1

    invoke-static {v0, v12, v1}, Lcom/google/android/gms/common/ۡۨۤۢ;->ۣ۟۠ۨۥ(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v2, v11, v0}, Landroidx/core/view/contentcapture/ۣ۟ۤۢۥ;->۟ۡ۠ۥۨ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public static ۟ۢ۠ۧۢ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/android/material/canvas/ۧۧ۠ۦ;->ۣۧۡۡ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۠ۨ۟ۧ()[S
    .locals 1

    invoke-static {}, Lcom/google/android/material/shadow/۟۠ۢۡۤ;->ۣ۟ۢۤ۠()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Ldev/blaze/launcher/Patcher;->short:[S

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method
