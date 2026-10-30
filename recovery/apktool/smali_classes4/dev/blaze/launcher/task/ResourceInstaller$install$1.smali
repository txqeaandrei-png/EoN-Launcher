.class final Ldev/blaze/launcher/task/ResourceInstaller$install$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/blaze/launcher/task/ResourceInstaller;->install()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "dev.blaze.launcher.task.ResourceInstaller$install$1"
    f = "ResourceInstaller.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# static fields
.field private static final short:[S


# instance fields
.field label:I

.field final synthetic this$0:Ldev/blaze/launcher/task/ResourceInstaller;


# direct methods
.method static constructor <clinit>()V
    .locals 52

    const v0, 0x10c

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Ldev/blaze/launcher/task/ResourceInstaller$install$1;->short:[S

    return-void

    nop

    :array_0
    .array-data 2
        0x472s
        0x465s
        0x473s
        0x46fs
        0x475s
        0x472s
        0x463s
        0x465s
        0x473s
        0x42fs
        0x477s
        0x46fs
        0x472s
        0x46cs
        0x464s
        0x473s
        0x42es
        0x47as
        0x469s
        0x470s
        0x50as
        0x50cs
        0x500s
        0x508s
        0x51es
        0x542s
        0x50es
        0x502s
        0x500s
        0x543s
        0x500s
        0x502s
        0x507s
        0x50cs
        0x503s
        0x50as
        0x542s
        0x500s
        0x504s
        0x503s
        0x508s
        0x50es
        0x51fs
        0x50cs
        0x50bs
        0x519s
        0x53as
        0x502s
        0x51fs
        0x501s
        0x509s
        0x51es
        0x8c4s
        0x8d3s
        0x8c5s
        0x8d9s
        0x8c3s
        0x8c4s
        0x8d5s
        0x8d3s
        0x8c5s
        0x899s
        0x8d4s
        0x8d3s
        0x8des
        0x8d7s
        0x8c0s
        0x8dfs
        0x8d9s
        0x8c4s
        0x8e9s
        0x8c6s
        0x8d7s
        0x8d5s
        0x8dds
        0x8c5s
        0x898s
        0x8ccs
        0x8dfs
        0x8c6s
        0xc59s
        0xc5fs
        0xc53s
        0xc5bs
        0xc4ds
        0xc11s
        0xc5ds
        0xc51s
        0xc53s
        0xc10s
        0xc53s
        0xc51s
        0xc54s
        0xc5fs
        0xc50s
        0xc59s
        0xc11s
        0xc5cs
        0xc5bs
        0xc56s
        0xc5fs
        0xc48s
        0xc57s
        0xc51s
        0xc4cs
        0xc61s
        0xc4es
        0xc5fs
        0xc5ds
        0xc55s
        0xc4ds
        0xa96s
        0xa81s
        0xa97s
        0xa8bs
        0xa91s
        0xa96s
        0xa87s
        0xa81s
        0xa97s
        0xacbs
        0xa96s
        0xa81s
        0xa97s
        0xa8bs
        0xa91s
        0xa96s
        0xa87s
        0xa81s
        0xabbs
        0xa94s
        0xa85s
        0xa87s
        0xa8fs
        0xa97s
        0xacas
        0xa9es
        0xa8ds
        0xa94s
        0x8eds
        0x8ebs
        0x8e7s
        0x8efs
        0x8f9s
        0x8a5s
        0x8e9s
        0x8e5s
        0x8e7s
        0x8a4s
        0x8e7s
        0x8e5s
        0x8e0s
        0x8ebs
        0x8e4s
        0x8eds
        0x8a5s
        0x8f8s
        0x8efs
        0x8f9s
        0x8e5s
        0x8ffs
        0x8f8s
        0x8e9s
        0x8efs
        0x8d5s
        0x8fas
        0x8ebs
        0x8e9s
        0x8e1s
        0x8f9s
        0xaf0s
        0xae7s
        0xaf1s
        0xaeds
        0xaf7s
        0xaf0s
        0xae1s
        0xae7s
        0xaf1s
        0xaads
        0xaf1s
        0xae9s
        0xaebs
        0xaecs
        0xadds
        0xaf2s
        0xae3s
        0xae1s
        0xae9s
        0xaf1s
        0xaacs
        0xaf8s
        0xaebs
        0xaf2s
        0xa1bs
        0xa1ds
        0xa11s
        0xa19s
        0xa0fs
        0xa53s
        0xa1fs
        0xa13s
        0xa11s
        0xa52s
        0xa11s
        0xa13s
        0xa16s
        0xa1ds
        0xa12s
        0xa1bs
        0xa53s
        0xa0fs
        0xa17s
        0xa15s
        0xa12s
        0xa23s
        0xa0cs
        0xa1ds
        0xa1fs
        0xa17s
        0xa0fs
        0x4f8s
        0x4fas
        0x4f7s
        0x4f7s
        0x4bbs
        0x4efs
        0x4f4s
        0x4bbs
        0x4bcs
        0x4e9s
        0x4fes
        0x4e8s
        0x4ees
        0x4f6s
        0x4fes
        0x4bcs
        0x4bbs
        0x4f9s
        0x4fes
        0x4fds
        0x4f4s
        0x4e9s
        0x4fes
        0x4bbs
        0x4bcs
        0x4f2s
        0x4f5s
        0x4eds
        0x4f4s
        0x4f0s
        0x4fes
        0x4bcs
        0x4bbs
        0x4ecs
        0x4f2s
        0x4efs
        0x4f3s
        0x4bbs
        0x4f8s
        0x4f4s
        0x4e9s
        0x4f4s
        0x4ees
        0x4efs
        0x4f2s
        0x4f5s
        0x4fes
    .end array-data
.end method

.method constructor <init>(Ldev/blaze/launcher/task/ResourceInstaller;Lkotlin/coroutines/Continuation;)V
    .locals 51
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldev/blaze/launcher/task/ResourceInstaller;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ldev/blaze/launcher/task/ResourceInstaller$install$1;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v2, p2

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    iput-object v1, v0, Ldev/blaze/launcher/task/ResourceInstaller$install$1;->this$0:Ldev/blaze/launcher/task/ResourceInstaller;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static ۟۟۟ۦۤ(Ljava/lang/Object;)I
    .locals 2

    invoke-static {}, Lorg/spongycastle/asn1/cmp/۟ۥۨۡۥ;->ۢ۠ۨۡ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/task/ResourceInstaller$install$1;

    iget v1, p0, Ldev/blaze/launcher/task/ResourceInstaller$install$1;->label:I

    :goto_0
    return v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۣ۟ۧۦ۠(Ljava/lang/Object;)Ldev/blaze/launcher/task/ResourceInstaller;
    .locals 2

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/۟ۡۥۤۤ;->ۣۦۨ۠()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/task/ResourceInstaller$install$1;

    iget-object v1, p0, Ldev/blaze/launcher/task/ResourceInstaller$install$1;->this$0:Ldev/blaze/launcher/task/ResourceInstaller;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۣ۠ۡۦ()Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lorg/spongycastle/pqc/jcajce/provider/gmss/۟ۧۧ۠ۤ;->ۣۨۥۦ()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۥ۠ۢۢ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/coroutines/Continuation;
    .locals 1

    invoke-static {}, Lcom/google/android/material/circularreveal/cardview/ۦۥۢ۠;->ۦۥۨۥ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/task/ResourceInstaller$install$1;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Ldev/blaze/launcher/task/ResourceInstaller$install$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۥۥۤۤ()[S
    .locals 1

    invoke-static {}, Lkotlin/jvm/jdk8/۟۠ۦۤۡ;->ۣۤۨۡ()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Ldev/blaze/launcher/task/ResourceInstaller$install$1;->short:[S

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۦۥۥۤ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lorg/apache/http/impl/conn/tsccm/ۣۣۤۢ;->۠۠ۦۤ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/task/ResourceInstaller$install$1;

    invoke-virtual {p0, p1}, Ldev/blaze/launcher/task/ResourceInstaller$install$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۦۨ۟ۤ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lorg/spongycastle/openssl/ۣۨۡۤ;->ۣ۟ۧۡ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/task/ResourceInstaller$install$1;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Ldev/blaze/launcher/task/ResourceInstaller$install$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 52
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    move-object/from16 v3, p2

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    new-instance v2, Ldev/blaze/launcher/task/ResourceInstaller$install$1;

    invoke-static {v1}, Ldev/blaze/launcher/task/ResourceInstaller$install$1;->ۣ۟ۧۦ۠(Ljava/lang/Object;)Ldev/blaze/launcher/task/ResourceInstaller;

    move-result-object v0

    invoke-direct {v2, v0, v3}, Ldev/blaze/launcher/task/ResourceInstaller$install$1;-><init>(Ldev/blaze/launcher/task/ResourceInstaller;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/coroutines/Continuation;

    return-object v2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 51

    move-object/from16 v2, p2

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    check-cast v2, Lkotlin/coroutines/Continuation;

    invoke-static {v0, v1, v2}, Ldev/blaze/launcher/task/ResourceInstaller$install$1;->ۦۨ۟ۤ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 51
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v2, p2

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Ldev/blaze/launcher/task/ResourceInstaller$install$1;->ۥ۠ۢۢ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    check-cast v1, Ldev/blaze/launcher/task/ResourceInstaller$install$1;

    invoke-static {}, Lorg/spongycastle/asn1/x500/style/ۧ۠ۨ;->۟۟ۡۡۢ()Lkotlin/Unit;

    move-result-object v2

    invoke-static {v1, v2}, Ldev/blaze/launcher/task/ResourceInstaller$install$1;->ۦۥۥۤ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 53

    move-object/from16 v3, p1

    move-object/from16 v2, p0

    invoke-static {}, Ldev/blaze/launcher/task/ResourceInstaller$install$1;->ۣ۠ۡۦ()Ljava/lang/Object;

    invoke-static {v2}, Ldev/blaze/launcher/task/ResourceInstaller$install$1;->۟۟۟ۦۤ(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v3}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/۟۠ۡۡۥ;->ۥۣۤۦ(Ljava/lang/Object;)V

    invoke-static {v2}, Ldev/blaze/launcher/task/ResourceInstaller$install$1;->ۣ۟ۧۦ۠(Ljava/lang/Object;)Ldev/blaze/launcher/task/ResourceInstaller;

    move-result-object v3

    invoke-static/range {}, Ldev/blaze/launcher/task/ResourceInstaller$install$1;->ۥۥۤۤ()[S

    move-result-object v17

    const v20, 0x400

    const v18, 0x0

    const v19, 0x14

    invoke-static/range {v17 .. v20}, Lkotlin/collections/builders/ۦۨ۠ۥ;->ۣۢۢۦ([SIII)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static/range {}, Ldev/blaze/launcher/task/ResourceInstaller$install$1;->ۥۥۤۤ()[S

    move-result-object v40

    const v43, 0x56d

    const v41, 0x14

    const v42, 0x20

    invoke-static/range {v40 .. v43}, Lkotlin/system/ۨ۠ۢ۟;->ۨۥۤۧ([SIII)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v1, v40

    invoke-static {v3, v0, v1}, Lorg/spongycastle/jce/spec/ۣۣۧۥ;->۟۟ۦۡۦ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Ldev/blaze/launcher/task/ResourceInstaller$install$1;->ۣ۟ۧۦ۠(Ljava/lang/Object;)Ldev/blaze/launcher/task/ResourceInstaller;

    move-result-object v3

    invoke-static/range {}, Ldev/blaze/launcher/task/ResourceInstaller$install$1;->ۥۥۤۤ()[S

    move-result-object v41

    const v44, 0x8b6

    const v42, 0x34

    const v43, 0x1c

    invoke-static/range {v41 .. v44}, Lorg/apache/http/impl/auth/ۨۥۥۨ;->ۣ۟۠ۤۨ([SIII)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-static/range {}, Ldev/blaze/launcher/task/ResourceInstaller$install$1;->ۥۥۤۤ()[S

    move-result-object v28

    const v31, 0xc3e

    const v29, 0x50

    const v30, 0x1f

    invoke-static/range {v28 .. v31}, Lcom/google/firebase/dynamicloading/ۣۨ۠۟;->ۣۢۨۦ([SIII)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v1, v28

    invoke-static {v3, v0, v1}, Lorg/spongycastle/jce/spec/ۣۣۧۥ;->۟۟ۦۡۦ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Ldev/blaze/launcher/task/ResourceInstaller$install$1;->ۣ۟ۧۦ۠(Ljava/lang/Object;)Ldev/blaze/launcher/task/ResourceInstaller;

    move-result-object v3

    invoke-static/range {}, Ldev/blaze/launcher/task/ResourceInstaller$install$1;->ۥۥۤۤ()[S

    move-result-object v20

    const v23, 0xae4

    const v21, 0x6f

    const v22, 0x1c

    invoke-static/range {v20 .. v23}, Lcom/braze/ui/۟ۢۥۨ۟;->۟ۢۨۨۤ([SIII)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static/range {}, Ldev/blaze/launcher/task/ResourceInstaller$install$1;->ۥۥۤۤ()[S

    move-result-object v31

    const v34, 0x88a

    const v32, 0x8b

    const v33, 0x1f

    invoke-static/range {v31 .. v34}, Lokhttp3/internal/ws/ۧ۠ۦ;->ۣۢ۠ۨ([SIII)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v1, v31

    invoke-static {v3, v0, v1}, Lorg/spongycastle/jce/spec/ۣۣۧۥ;->۟۟ۦۡۦ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Ldev/blaze/launcher/task/ResourceInstaller$install$1;->ۣ۟ۧۦ۠(Ljava/lang/Object;)Ldev/blaze/launcher/task/ResourceInstaller;

    move-result-object v3

    invoke-static/range {}, Ldev/blaze/launcher/task/ResourceInstaller$install$1;->ۥۥۤۤ()[S

    move-result-object v29

    const v32, 0xa82

    const v30, 0xaa

    const v31, 0x18

    invoke-static/range {v29 .. v32}, Lokhttp3/internal/cache2/ۦۣۡ۠;->ۣ۟۟ۨ([SIII)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static/range {}, Ldev/blaze/launcher/task/ResourceInstaller$install$1;->ۥۥۤۤ()[S

    move-result-object v32

    const v35, 0xa7c

    const v33, 0xc2

    const v34, 0x1b

    invoke-static/range {v32 .. v35}, Lcom/microsoft/xbox/telemetry/utc/model/۟ۡ۟ۧۨ;->ۡۡ۟ۢ([SIII)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v1, v32

    invoke-static {v3, v0, v1}, Lorg/spongycastle/jce/spec/ۣۣۧۥ;->۟۟ۦۡۦ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lorg/spongycastle/asn1/x500/style/ۧ۠ۨ;->۟۟ۡۡۢ()Lkotlin/Unit;

    move-result-object v3

    return-object v3

    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-static/range {}, Ldev/blaze/launcher/task/ResourceInstaller$install$1;->ۥۥۤۤ()[S

    move-result-object v14

    const v17, 0x49b

    const v15, 0xdd

    const v16, 0x2f

    invoke-static/range {v14 .. v17}, Lorg/xmlpull/v1/util/۟ۡ۟۠ۥ;->ۦۤۦ۠([SIII)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v14

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
