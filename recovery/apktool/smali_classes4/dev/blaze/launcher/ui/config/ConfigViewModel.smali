.class public Ldev/blaze/launcher/ui/config/ConfigViewModel;
.super Landroidx/lifecycle/ViewModel;


# static fields
.field private static final short:[S


# instance fields
.field private final mText:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 52

    const v0, 0x1e

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Ldev/blaze/launcher/ui/config/ConfigViewModel;->short:[S

    return-void

    nop

    :array_0
    .array-data 2
        0x61bs
        0x627s
        0x626s
        0x63cs
        0x66fs
        0x626s
        0x63cs
        0x66fs
        0x621s
        0x620s
        0x63bs
        0x626s
        0x629s
        0x626s
        0x62cs
        0x62es
        0x63bs
        0x626s
        0x620s
        0x621s
        0x63cs
        0x66fs
        0x629s
        0x63ds
        0x62es
        0x628s
        0x622s
        0x62as
        0x621s
        0x63bs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 53

    move-object/from16 v2, p0

    invoke-direct {v2}, Landroidx/lifecycle/ViewModel;-><init>()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, v2, Ldev/blaze/launcher/ui/config/ConfigViewModel;->mText:Landroidx/lifecycle/MutableLiveData;

    invoke-static/range {}, Ldev/blaze/launcher/ui/config/ConfigViewModel;->۟۠ۨ۟ۥ()[S

    move-result-object v27

    const v30, 0x64f

    const v28, 0x0

    const v29, 0x1e

    invoke-static/range {v27 .. v30}, Landroidx/lifecycle/livedata/core/ۥ۠ۢۧ;->ۢۥۥۨ([SIII)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lorg/spongycastle/asn1/cmp/۟ۥۨۡۥ;->۟۟ۨۡ۠(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static ۟۠ۨ۟ۥ()[S
    .locals 1

    invoke-static {}, Lcom/mojang/minecraftpe/Webview/ۦۦ۟ۦ;->ۣ۟ۢۢۧ()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Ldev/blaze/launcher/ui/config/ConfigViewModel;->short:[S

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۨ۟ۢ۟(Ljava/lang/Object;)Landroidx/lifecycle/MutableLiveData;
    .locals 2

    invoke-static {}, Lcom/google/firebase/messaging/threads/ۣۡۡ۟;->۟۟ۧۢۡ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/config/ConfigViewModel;

    iget-object v1, p0, Ldev/blaze/launcher/ui/config/ConfigViewModel;->mText:Landroidx/lifecycle/MutableLiveData;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getText()Landroidx/lifecycle/LiveData;
    .locals 52
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ui/config/ConfigViewModel;->ۨ۟ۢ۟(Ljava/lang/Object;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    return-object v0
.end method
