.class public final Ldev/blaze/launcher/utils/ABIHelper;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Ldev/blaze/launcher/utils/ABIHelper;",
        "",
        "()V",
        "getABI",
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
.field public static final INSTANCE:Ldev/blaze/launcher/utils/ABIHelper;

.field private static final short:[S


# direct methods
.method static constructor <clinit>()V
    .locals 52

    const v0, 0x4e

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Ldev/blaze/launcher/utils/ABIHelper;->short:[S

    new-instance v0, Ldev/blaze/launcher/utils/ABIHelper;

    invoke-direct {v0}, Ldev/blaze/launcher/utils/ABIHelper;-><init>()V

    sput-object v0, Ldev/blaze/launcher/utils/ABIHelper;->INSTANCE:Ldev/blaze/launcher/utils/ABIHelper;

    return-void

    :array_0
    .array-data 2
        0xa65s
        0xa63s
        0xa66s
        0xa66s
        0xa79s
        0xa64s
        0xa62s
        0xa73s
        0xa72s
        0xa69s
        0xa00s
        0xa02s
        0xa69s
        0xa74s
        0xa7fs
        0xa62s
        0xa69s
        0xa77s
        0xa74s
        0xa7fs
        0xa65s
        0x10as
        0x14as
        0x144s
        0x239s
        0x22as
        0x235s
        0x26es
        0x26cs
        0x275s
        0x22es
        0x260s
        0x239s
        0x107s
        0x147s
        0x149s
        0x120s
        0x149s
        0x14bs
        0xba0s
        0xba6s
        0xba3s
        0xba3s
        0xbbcs
        0xba1s
        0xba7s
        0xbb6s
        0xbb7s
        0xbacs
        0xbc0s
        0xbc1s
        0xbacs
        0xbb1s
        0xbbas
        0xba7s
        0xbacs
        0xbb2s
        0xbb1s
        0xbbas
        0xba0s
        0xafbs
        0xae8s
        0xaf7s
        0xaffs
        0xafbs
        0xaf8s
        0xaf3s
        0xab7s
        0xaecs
        0xaads
        0xafbs
        0x8a5s
        0x8b6s
        0x8b3s
        0x8b9s
        0x8a7s
        0x8a4s
        0x8afs
    .end array-data
.end method

.method private constructor <init>()V
    .locals 51

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ۟ۦ۠ۢۨ(Ljava/lang/Object;Ljava/lang/Object;ZILjava/lang/Object;)Z
    .locals 1

    invoke-static {}, Lcom/google/android/gms/common/annotation/ۤۤۥۥ;->۠ۥۣۨ()I

    move-result v0

    if-gez v0, :cond_0

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

.method public static ۟ۦ۠ۥۥ()[S
    .locals 1

    invoke-static {}, Lcom/google/android/gms/common/api/۟ۥۡ۠ۨ;->ۣۢۢۦ()I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Ldev/blaze/launcher/utils/ABIHelper;->short:[S

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final getABI()Ljava/lang/String;
    .locals 61

    move-object/from16 v10, p0

    invoke-static {}, Lcom/braze/ui/inappmessage/utils/ۣ۟۟ۧ۟;->ۣ۟ۤۤ۟()[Ljava/lang/String;

    move-result-object v0

    invoke-static/range {}, Ldev/blaze/launcher/utils/ABIHelper;->۟ۦ۠ۥۥ()[S

    move-result-object v33

    const v36, 0xa36

    const v34, 0x0

    const v35, 0x15

    invoke-static/range {v33 .. v36}, Landroidx/appcompat/ۤ۟ۧۦ;->۟ۨ۟([SIII)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Landroidx/window/embedding/ۥۣۤۧ;->۟ۦ۠۟ۥ(Ljava/lang/Object;Ljava/lang/Object;)V

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-static/range {}, Ldev/blaze/launcher/utils/ABIHelper;->۟ۦ۠ۥۥ()[S

    move-result-object v32

    const v35, 0x172

    const v33, 0x15

    const v34, 0x3

    invoke-static/range {v32 .. v35}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/۟ۥۦۢ۠;->۟ۢۥۦۦ([SIII)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v4, v32

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ge v3, v1, :cond_2

    aget-object v7, v0, v3

    invoke-static {v7}, Lorg/spongycastle/pqc/jcajce/provider/util/ۣۥۣۦ;->ۢۤ۟ۦ(Ljava/lang/Object;)V

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static/range {}, Ldev/blaze/launcher/utils/ABIHelper;->۟ۦ۠ۥۥ()[S

    move-result-object v23

    const v26, 0x258

    const v24, 0x18

    const v25, 0x9

    invoke-static/range {v23 .. v26}, Lorg/spongycastle/jcajce/provider/util/ۨۨۥۣ;->ۥۤۥۧ([SIII)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v8, v23

    move-object v9, v8

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v7, v9, v2, v6, v5}, Ldev/blaze/launcher/utils/ABIHelper;->۟ۦ۠ۢۨ(Ljava/lang/Object;Ljava/lang/Object;ZILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    return-object v8

    :cond_0
    invoke-static/range {}, Ldev/blaze/launcher/utils/ABIHelper;->۟ۦ۠ۥۥ()[S

    move-result-object v49

    const v52, 0x17f

    const v50, 0x21

    const v51, 0x6

    invoke-static/range {v49 .. v52}, Landroidx/fragment/ۥۡۨۨ;->ۣۣ۟ۡۤ([SIII)Ljava/lang/String;

    move-result-object v49

    move-object/from16 v8, v49

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v7, v8, v2, v6, v5}, Ldev/blaze/launcher/utils/ABIHelper;->۟ۦ۠ۢۨ(Ljava/lang/Object;Ljava/lang/Object;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/spongycastle/asn1/x509/sigi/۟ۢۢۨۧ;->۟۟ۡۥۢ()[Ljava/lang/String;

    move-result-object v0

    invoke-static/range {}, Ldev/blaze/launcher/utils/ABIHelper;->۟ۦ۠ۥۥ()[S

    move-result-object v19

    const v22, 0xbf3

    const v20, 0x27

    const v21, 0x15

    invoke-static/range {v19 .. v22}, Lcom/google/android/gms/common/api/internal/ۣۤ۟ۨ;->ۣۧۤۥ([SIII)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroidx/window/embedding/ۥۣۤۧ;->۟ۦ۠۟ۥ(Ljava/lang/Object;Ljava/lang/Object;)V

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_5

    aget-object v7, v0, v3

    invoke-static {v7}, Lorg/spongycastle/pqc/jcajce/provider/util/ۣۥۣۦ;->ۢۤ۟ۦ(Ljava/lang/Object;)V

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static/range {}, Ldev/blaze/launcher/utils/ABIHelper;->۟ۦ۠ۥۥ()[S

    move-result-object v29

    const v32, 0xa9a

    const v30, 0x3c

    const v31, 0xb

    invoke-static/range {v29 .. v32}, Lcom/microsoft/xbox/xle/app/activity/Profile/ۣ۟ۤۨۢ;->ۦۧۡۡ([SIII)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v8, v29

    move-object v9, v8

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v7, v9, v2, v6, v5}, Ldev/blaze/launcher/utils/ABIHelper;->۟ۦ۠ۢۨ(Ljava/lang/Object;Ljava/lang/Object;ZILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    return-object v8

    :cond_3
    move-object v8, v4

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v7, v8, v2, v6, v5}, Ldev/blaze/launcher/utils/ABIHelper;->۟ۦ۠ۢۨ(Ljava/lang/Object;Ljava/lang/Object;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    return-object v4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/microsoft/xbox/telemetry/utc/model/۟ۡ۟ۧۨ;->ۥ۠ۢۤ()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {}, Ldev/blaze/launcher/utils/ABIHelper;->۟ۦ۠ۥۥ()[S

    move-result-object v33

    const v36, 0x8e6

    const v34, 0x47

    const v35, 0x7

    invoke-static/range {v33 .. v36}, Lkotlin/io/ۡۦۧ۟;->ۥ۠ۧۡ([SIII)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Landroidx/window/embedding/ۥۣۤۧ;->۟ۦ۠۟ۥ(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
