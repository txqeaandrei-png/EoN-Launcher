.class public final Ldev/blaze/launcher/utils/FileHelper;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0012\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0007J\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00040\t2\u0006\u0010\n\u001a\u00020\u0006J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u0018\u0010\u000b\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0010H\u0007J\u0018\u0010\u000b\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0004H\u0007J\u0018\u0010\u000b\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0010H\u0007J\u0018\u0010\u000b\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004H\u0007\u00a8\u0006\u0011"
    }
    d2 = {
        "Ldev/blaze/launcher/utils/FileHelper;",
        "",
        "()V",
        "readFile",
        "",
        "file",
        "Ljava/io/File;",
        "path",
        "readFileAsLines",
        "",
        "fileName",
        "writeToFile",
        "",
        "content",
        "Ljava/io/InputStream;",
        "",
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
.field public static final INSTANCE:Ldev/blaze/launcher/utils/FileHelper;

.field private static final short:[S


# direct methods
.method static constructor <clinit>()V
    .locals 52

    const v0, 0x75

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Ldev/blaze/launcher/utils/FileHelper;->short:[S

    new-instance v0, Ldev/blaze/launcher/utils/FileHelper;

    invoke-direct {v0}, Ldev/blaze/launcher/utils/FileHelper;-><init>()V

    sput-object v0, Ldev/blaze/launcher/utils/FileHelper;->INSTANCE:Ldev/blaze/launcher/utils/FileHelper;

    return-void

    :array_0
    .array-data 2
        0x269s
        0x266s
        0x263s
        0x26as
        0x235s
        0x234s
        0x226s
        0x23fs
        0x258s
        0xc46s
        0xc57s
        0xc42s
        0xc5es
        0x1f4s
        0x1f5s
        0x1e7s
        0x1fes
        0x199s
        0x99ds
        0x992s
        0x997s
        0x99es
        0x3a2s
        0x3aes
        0x3afs
        0x3b5s
        0x3a4s
        0x3afs
        0x3b5s
        0x364s
        0x36bs
        0x36es
        0x367s
        0x4e5s
        0x4e9s
        0x4e8s
        0x4f2s
        0x4e3s
        0x4e8s
        0x4f2s
        0xadbs
        0xadas
        0xac8s
        0xad1s
        0xab6s
        0x8f9s
        0x8fbs
        0x8eas
        0x8dcs
        0x8e7s
        0x8eas
        0x8fbs
        0x8eds
        0x8b6s
        0x8b0s
        0x8b0s
        0x8b0s
        0x8b7s
        0x11cs
        0x113s
        0x116s
        0x11fs
        0x93ds
        0x931s
        0x930s
        0x92as
        0x93bs
        0x930s
        0x92as
        0xa9es
        0xa8fs
        0xa9as
        0xa86s
        0x320s
        0x32cs
        0x32ds
        0x337s
        0x326s
        0x32ds
        0x337s
        0x10es
        0x10fs
        0x11ds
        0x104s
        0x163s
        0x833s
        0x831s
        0x820s
        0x816s
        0x82ds
        0x820s
        0x831s
        0x827s
        0x87cs
        0x87as
        0x87as
        0x87as
        0x87ds
        0x8b9s
        0x8a8s
        0x8bds
        0x8a1s
        0x564s
        0x568s
        0x569s
        0x573s
        0x562s
        0x569s
        0x573s
        0x481s
        0x48es
        0x48bs
        0x482s
        0x4a9s
        0x486s
        0x48as
        0x482s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 51

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 53
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v2, p0

    invoke-static/range {}, Ldev/blaze/launcher/utils/FileHelper;->۟۟ۡۢۦ()[S

    move-result-object v29

    const v32, 0x20f

    const v30, 0x0

    const v31, 0x4

    invoke-static/range {v29 .. v32}, Lcom/braze/ui/feed/view/۟ۢۤۡۡ;->ۤۨۢۦ([SIII)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v2, v0}, Lcom/google/firebase/analytics/connector/۟ۧۢ۟;->۟ۡۤۨۡ(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v0, Ljava/io/InputStream;

    invoke-static {v0}, Landroidx/core/view/contentcapture/ۣ۟ۤۢۥ;->ۣۣ۟ۨۨ(Ljava/lang/Object;)[B

    move-result-object v2

    invoke-static {}, Landroidx/navigation/ui/ۤۦۤۡ;->۟ۧۥۧ۠()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static/range {}, Ldev/blaze/launcher/utils/FileHelper;->۟۟ۡۢۦ()[S

    move-result-object v17

    const v20, 0x260

    const v18, 0x4

    const v19, 0x5

    invoke-static/range {v17 .. v20}, Lorg/spongycastle/pqc/crypto/ntru/ۦۡۧۢ;->ۡۥۨ([SIII)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroidx/window/embedding/ۥۣۤۧ;->۟ۦ۠۟ۥ(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public static final readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 53
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v2, p0

    invoke-static/range {}, Ldev/blaze/launcher/utils/FileHelper;->۟۟ۡۢۦ()[S

    move-result-object v19

    const v22, 0xc36

    const v20, 0x9

    const v21, 0x4

    invoke-static/range {v19 .. v22}, Lcom/google/android/material/progressindicator/۠ۢۨۨ;->۟۠ۨۤۦ([SIII)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lcom/google/firebase/analytics/connector/۟ۧۢ۟;->۟ۡۤۨۡ(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v0, Ljava/io/InputStream;

    invoke-static {v0}, Landroidx/core/view/contentcapture/ۣ۟ۤۢۥ;->ۣۣ۟ۨۨ(Ljava/lang/Object;)[B

    move-result-object v2

    invoke-static {}, Landroidx/navigation/ui/ۤۦۤۡ;->۟ۧۥۧ۠()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static/range {}, Ldev/blaze/launcher/utils/FileHelper;->۟۟ۡۢۦ()[S

    move-result-object v41

    const v44, 0x1a1

    const v42, 0xd

    const v43, 0x5

    invoke-static/range {v41 .. v44}, Lorg/apache/http/client/config/ۥۥ۠ۧ;->ۡۦۤ([SIII)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Landroidx/window/embedding/ۥۣۤۧ;->۟ۦ۠۟ۥ(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public static final writeToFile(Ljava/io/File;Ljava/io/InputStream;)J
    .locals 52
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {}, Ldev/blaze/launcher/utils/FileHelper;->۟۟ۡۢۦ()[S

    move-result-object v8

    const v11, 0x9fb

    const v9, 0x12

    const v10, 0x4

    invoke-static/range {v8 .. v11}, Landroidx/constraintlayout/core/widgets/analyzer/ۨ۠ۧۥ;->ۢ۟ۢۧ([SIII)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v8

    invoke-static {v1, v0}, Lcom/google/firebase/analytics/connector/۟ۧۢ۟;->۟ۡۤۨۡ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static/range {}, Ldev/blaze/launcher/utils/FileHelper;->۟۟ۡۢۦ()[S

    move-result-object v28

    const v31, 0x3c1

    const v29, 0x16

    const v30, 0x7

    invoke-static/range {v28 .. v31}, Lokhttp3/internal/io/ۣ۟ۦۧ;->ۣ۟ۤ۠([SIII)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v2, v0}, Lcom/google/firebase/analytics/connector/۟ۧۢ۟;->۟ۡۤۨۡ(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v0, Ljava/io/OutputStream;

    const/16 v1, 0x1000

    invoke-static {v2, v0, v1}, Lorg/spongycastle/math/raw/۠ۢۥۤ;->ۣ۠ۢ(Ljava/lang/Object;Ljava/lang/Object;I)J

    move-result-wide v1

    return-wide v1
.end method

.method public static final writeToFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 53
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v3, p1

    move-object/from16 v2, p0

    invoke-static/range {}, Ldev/blaze/launcher/utils/FileHelper;->۟۟ۡۢۦ()[S

    move-result-object v41

    const v44, 0x302

    const v42, 0x1d

    const v43, 0x4

    invoke-static/range {v41 .. v44}, Lorg/apache/http/util/۟۠ۥۣۧ;->۟۟ۨۡۡ([SIII)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-static {v2, v0}, Lcom/google/firebase/analytics/connector/۟ۧۢ۟;->۟ۡۤۨۡ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static/range {}, Ldev/blaze/launcher/utils/FileHelper;->۟۟ۡۢۦ()[S

    move-result-object v34

    const v37, 0x486

    const v35, 0x21

    const v36, 0x7

    invoke-static/range {v34 .. v37}, Lcom/braze/communication/dust/ۣ۟ۡۤۤ;->۟۠ۧۨۡ([SIII)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v3, v0}, Lcom/google/firebase/analytics/connector/۟ۧۢ۟;->۟ۡۤۨۡ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Landroidx/navigation/ui/ۤۦۤۡ;->۟ۧۥۧ۠()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static/range {}, Ldev/blaze/launcher/utils/FileHelper;->۟۟ۡۢۦ()[S

    move-result-object v10

    const v13, 0xa8e

    const v11, 0x28

    const v12, 0x5

    invoke-static/range {v10 .. v13}, Lorg/chromium/support_lib_boundary/util/ۥ۟۟ۡ;->ۣۡۡۨ([SIII)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v1, v10

    invoke-static {v0, v1}, Landroidx/window/embedding/ۥۣۤۧ;->۟ۦ۠۟ۥ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3, v0}, Lcom/microsoft/xbox/service/model/privacy/ۥۤۡۨ;->۠ۦۣۨ(Ljava/lang/Object;Ljava/lang/Object;)[B

    move-result-object v3

    invoke-static/range {}, Ldev/blaze/launcher/utils/FileHelper;->۟۟ۡۢۦ()[S

    move-result-object v14

    const v17, 0x89e

    const v15, 0x2d

    const v16, 0xd

    invoke-static/range {v14 .. v17}, Lcom/microsoft/xbox/xle/model/۟۟ۤۦۡ;->ۧۡ۠ۦ([SIII)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v14

    invoke-static {v3, v0}, Landroidx/window/embedding/ۥۣۤۧ;->۟ۦ۠۟ۥ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2, v3}, Ldev/blaze/launcher/utils/FileHelper;->ۥۦۧ۟(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static final writeToFile(Ljava/io/File;[B)V
    .locals 52
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static/range {}, Ldev/blaze/launcher/utils/FileHelper;->۟۟ۡۢۦ()[S

    move-result-object v18

    const v21, 0x17a

    const v19, 0x3a

    const v20, 0x4

    invoke-static/range {v18 .. v21}, Lcom/google/firebase/messaging/ktx/ۣۣ۟۠۠;->ۣ۟ۢۢ۠([SIII)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v1, v0}, Lcom/google/firebase/analytics/connector/۟ۧۢ۟;->۟ۡۤۨۡ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static/range {}, Ldev/blaze/launcher/utils/FileHelper;->۟۟ۡۢۦ()[S

    move-result-object v18

    const v21, 0x95e

    const v19, 0x3e

    const v20, 0x7

    invoke-static/range {v18 .. v21}, Ldev/blaze/launcher/ۦۣۧۡ;->۟ۡ۟ۨۨ([SIII)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/google/firebase/analytics/connector/۟ۧۢ۟;->۟ۡۤۨۡ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, v2}, Ldev/blaze/launcher/utils/FileHelper;->ۥۦۧ۟(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static final writeToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 53
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v3, p1

    move-object/from16 v2, p0

    invoke-static/range {}, Ldev/blaze/launcher/utils/FileHelper;->۟۟ۡۢۦ()[S

    move-result-object v20

    const v23, 0xaee

    const v21, 0x45

    const v22, 0x4

    invoke-static/range {v20 .. v23}, Lcom/braze/ui/contentcards/managers/ۥۣۨۨ;->۟ۡۤ۟ۡ([SIII)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lcom/google/firebase/analytics/connector/۟ۧۢ۟;->۟ۡۤۨۡ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static/range {}, Ldev/blaze/launcher/utils/FileHelper;->۟۟ۡۢۦ()[S

    move-result-object v32

    const v35, 0x343

    const v33, 0x49

    const v34, 0x7

    invoke-static/range {v32 .. v35}, Lcom/braze/models/outgoing/event/۟ۡۦۣ۟;->ۡ۠ۢۦ([SIII)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-static {v3, v0}, Lcom/google/firebase/analytics/connector/۟ۧۢ۟;->۟ۡۤۨۡ(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroidx/navigation/ui/ۤۦۤۡ;->۟ۧۥۧ۠()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-static/range {}, Ldev/blaze/launcher/utils/FileHelper;->۟۟ۡۢۦ()[S

    move-result-object v32

    const v35, 0x15b

    const v33, 0x50

    const v34, 0x5

    invoke-static/range {v32 .. v35}, Landroidx/drawerlayout/ۡ۠۠ۢ;->۟ۦۡۦۢ([SIII)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v1, v32

    invoke-static {v2, v1}, Landroidx/window/embedding/ۥۣۤۧ;->۟ۦ۠۟ۥ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3, v2}, Lcom/microsoft/xbox/service/model/privacy/ۥۤۡۨ;->۠ۦۣۨ(Ljava/lang/Object;Ljava/lang/Object;)[B

    move-result-object v2

    invoke-static/range {}, Ldev/blaze/launcher/utils/FileHelper;->۟۟ۡۢۦ()[S

    move-result-object v26

    const v29, 0x854

    const v27, 0x55

    const v28, 0xd

    invoke-static/range {v26 .. v29}, Lkotlinx/coroutines/channels/ۣۨ۠ۡ;->۠ۧۥ۠([SIII)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v3, v26

    invoke-static {v2, v3}, Landroidx/window/embedding/ۥۣۤۧ;->۟ۦ۠۟ۥ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v2}, Ldev/blaze/launcher/utils/FileHelper;->ۥۦۧ۟(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static final writeToFile(Ljava/lang/String;[B)V
    .locals 52
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {}, Ldev/blaze/launcher/utils/FileHelper;->۟۟ۡۢۦ()[S

    move-result-object v9

    const v12, 0x8c9

    const v10, 0x62

    const v11, 0x4

    invoke-static/range {v9 .. v12}, Lorg/spongycastle/cert/path/validations/ۥۣۥۤ;->۠۟ۧۨ([SIII)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v9

    invoke-static {v1, v0}, Lcom/google/firebase/analytics/connector/۟ۧۢ۟;->۟ۡۤۨۡ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static/range {}, Ldev/blaze/launcher/utils/FileHelper;->۟۟ۡۢۦ()[S

    move-result-object v38

    const v41, 0x507

    const v39, 0x66

    const v40, 0x7

    invoke-static/range {v38 .. v41}, Lcom/google/android/gms/tasks/۠ۥ۟ۡ;->ۧۧۨۧ([SIII)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-static {v2, v0}, Lcom/google/firebase/analytics/connector/۟ۧۢ۟;->۟ۡۤۨۡ(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Ldev/blaze/launcher/utils/FileHelper;->ۥۦۧ۟(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static ۟۟ۡۢۦ()[S
    .locals 1

    invoke-static {}, Landroidx/webkit/internal/۟ۤۨ۠;->ۨۨ()I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Ldev/blaze/launcher/utils/FileHelper;->short:[S

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۥۦۧ۟(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Landroidx/navigation/common/ۣ۟ۤۨۨ;->ۡۨۨۢ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Ljava/io/File;

    check-cast p1, [B

    invoke-static {p0, p1}, Lkotlin/io/FilesKt;->writeBytes(Ljava/io/File;[B)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method


# virtual methods
.method public final readFileAsLines(Ljava/io/File;)Ljava/util/List;
    .locals 54
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v4, p1

    move-object/from16 v3, p0

    invoke-static/range {}, Ldev/blaze/launcher/utils/FileHelper;->۟۟ۡۢۦ()[S

    move-result-object v10

    const v13, 0x4e7

    const v11, 0x6d

    const v12, 0x8

    invoke-static/range {v10 .. v13}, Lcom/google/firebase/heartbeatinfo/ۡۧۤ۟;->ۦۡۤۦ([SIII)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v10

    invoke-static {v4, v0}, Lcom/google/firebase/analytics/connector/۟ۧۢ۟;->۟ۡۤۨۡ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/ۣ۟ۡۨۡ;->ۣ۟ۧۤۧ()Ljava/nio/charset/Charset;

    move-result-object v0

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v2, Ljava/io/InputStream;

    invoke-direct {v1, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v1, Ljava/io/Reader;

    instance-of v4, v1, Ljava/io/BufferedReader;

    if-eqz v4, :cond_0

    check-cast v1, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v0, 0x2000

    invoke-direct {v4, v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v1, v4

    :goto_0
    check-cast v1, Ljava/io/Reader;

    invoke-static {v1}, Landroidx/core/net/ۢ۠ۤۢ;->۟ۥۨۨۦ(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    return-object v4
.end method
