.class public Ldev/blaze/launcher/utils/Patcher;
.super Ljava/lang/Object;


# static fields
.field private static final short:[S


# direct methods
.method static constructor <clinit>()V
    .locals 52

    const v0, 0xc6

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Ldev/blaze/launcher/utils/Patcher;->short:[S

    return-void

    nop

    :array_0
    .array-data 2
        0x638s
        0x637s
        0x622s
        0x63fs
        0x620s
        0x633s
        0x61as
        0x63fs
        0x634s
        0x624s
        0x637s
        0x624s
        0x62fs
        0x606s
        0x637s
        0x622s
        0x63es
        0x613s
        0x63as
        0x633s
        0x63bs
        0x633s
        0x638s
        0x622s
        0x625s
        0x64cs
        0x643s
        0x656s
        0x64bs
        0x654s
        0x647s
        0x66es
        0x64bs
        0x640s
        0x650s
        0x643s
        0x650s
        0x65bs
        0x666s
        0x64bs
        0x650s
        0x647s
        0x641s
        0x656s
        0x64ds
        0x650s
        0x64bs
        0x647s
        0x651s
        0x851s
        0x85bs
        0x851s
        0x856s
        0x847s
        0x84fs
        0x86cs
        0x843s
        0x856s
        0x84bs
        0x854s
        0x847s
        0x86es
        0x84bs
        0x840s
        0x850s
        0x843s
        0x850s
        0x85bs
        0x866s
        0x84bs
        0x850s
        0x847s
        0x841s
        0x856s
        0x84ds
        0x850s
        0x84bs
        0x847s
        0x851s
        0xc40s
        0xc51s
        0xc44s
        0xc58s
        0xc7cs
        0xc59s
        0xc43s
        0xc44s
        0xb9cs
        0xb99s
        0xb94s
        0xb8es
        0xb91s
        0xb93s
        0xbd6s
        0xb8bs
        0xb81s
        0xb8bs
        0xb8cs
        0xb9ds
        0xb95s
        0xbd6s
        0xbbas
        0xb99s
        0xb8bs
        0xb9ds
        0xbbcs
        0xb9ds
        0xb80s
        0xbbbs
        0xb94s
        0xb99s
        0xb8bs
        0xb8bs
        0xbb4s
        0xb97s
        0xb99s
        0xb9cs
        0xb9ds
        0xb8as
        0x525s
        0x520s
        0x52ds
        0x537s
        0x528s
        0x52as
        0x56fs
        0x532s
        0x538s
        0x532s
        0x535s
        0x524s
        0x52cs
        0x56fs
        0x505s
        0x524s
        0x539s
        0x511s
        0x520s
        0x535s
        0x529s
        0x50ds
        0x528s
        0x532s
        0x535s
        0x565s
        0x504s
        0x52ds
        0x524s
        0x52cs
        0x524s
        0x52fs
        0x535s
        0x1fas
        0x1ffs
        0x1f2s
        0x1e8s
        0x1f7s
        0x1f5s
        0x1b0s
        0x1eds
        0x1e7s
        0x1eds
        0x1eas
        0x1fbs
        0x1f3s
        0x1b0s
        0x1das
        0x1fbs
        0x1e6s
        0x1ces
        0x1ffs
        0x1eas
        0x1f6s
        0x1d2s
        0x1f7s
        0x1eds
        0x1eas
        0x1bas
        0x1d0s
        0x1ffs
        0x1eas
        0x1f7s
        0x1e8s
        0x1fbs
        0x1d2s
        0x1f7s
        0x1fcs
        0x1ecs
        0x1ffs
        0x1ecs
        0x1e7s
        0x1dbs
        0x1f2s
        0x1fbs
        0x1f3s
        0x1fbs
        0x1f0s
        0x1eas
    .end array-data
.end method

.method public constructor <init>()V
    .locals 51

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
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

    invoke-static/range {}, Ldev/blaze/launcher/utils/Patcher;->ۣۨ۟ۡ()[S

    move-result-object v27

    const v30, 0x656

    const v28, 0x0

    const v29, 0x19

    invoke-static/range {v27 .. v30}, Lorg/spongycastle/jcajce/provider/keystore/۠ۢۤۨ;->ۧۢ۠ۦ([SIII)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v2, v27

    invoke-static/range {}, Ldev/blaze/launcher/utils/Patcher;->ۣۨ۟ۡ()[S

    move-result-object v23

    const v26, 0x622

    const v24, 0x19

    const v25, 0x18

    invoke-static/range {v23 .. v26}, Lokhttp3/ۣ۟۠۟۠;->ۤۤۡ([SIII)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v3, v23

    invoke-static/range {}, Ldev/blaze/launcher/utils/Patcher;->ۣۨ۟ۡ()[S

    move-result-object v30

    const v33, 0x822

    const v31, 0x31

    const v32, 0x1e

    invoke-static/range {v30 .. v33}, Lcom/braze/triggers/conditions/ۦۤ۟ۡ;->ۡۤۡ۟([SIII)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v4, v30

    invoke-static/range {}, Ldev/blaze/launcher/utils/Patcher;->ۣۨ۟ۡ()[S

    move-result-object v27

    const v30, 0xc30

    const v28, 0x4f

    const v29, 0x8

    invoke-static/range {v27 .. v30}, Landroidx/core/view/animation/ۨ۠ۧ۟;->۟ۤۦۥۡ([SIII)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v5, v27

    invoke-static/range {}, Ldev/blaze/launcher/utils/Patcher;->ۣۨ۟ۡ()[S

    move-result-object v29

    const v32, 0xbf8

    const v30, 0x57

    const v31, 0x20

    invoke-static/range {v29 .. v32}, Lorg/spongycastle/pqc/math/ntru/euclid/ۣ۟ۤ۟۠;->ۤ۟ۧۧ([SIII)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v6, v29

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

    invoke-static/range {}, Ldev/blaze/launcher/utils/Patcher;->ۣۨ۟ۡ()[S

    move-result-object v42

    const v45, 0x541

    const v43, 0x77

    const v44, 0x21

    invoke-static/range {v42 .. v45}, Lcom/google/firebase/messaging/ktx/ۣۣ۟۠۠;->ۣ۟ۢۢ۠([SIII)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

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

    invoke-static/range {}, Ldev/blaze/launcher/utils/Patcher;->ۣۨ۟ۡ()[S

    move-result-object v35

    const v38, 0x19e

    const v36, 0x98

    const v37, 0x2e

    invoke-static/range {v35 .. v38}, Lorg/spongycastle/cert/crmf/bc/۟ۧ۠ۢۥ;->ۣ۟۠۠ۨ([SIII)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

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

.method public static ۣۨ۟ۡ()[S
    .locals 1

    invoke-static {}, Lorg/xmlpull/v1/builder/adapter/۟ۤۢۦۨ;->۟۠ۦۤۡ()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Ldev/blaze/launcher/utils/Patcher;->short:[S

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method
