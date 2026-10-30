.class public Ldev/blaze/launcher/ui/profile/ProfileViewModel;
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

    const v0, 0x15

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Ldev/blaze/launcher/ui/profile/ProfileViewModel;->short:[S

    return-void

    nop

    :array_0
    .array-data 2
        0x4c0s
        0x4fcs
        0x4fds
        0x4e7s
        0x4b4s
        0x4fds
        0x4e7s
        0x4b4s
        0x4fcs
        0x4fbs
        0x4f9s
        0x4f1s
        0x4b4s
        0x4f2s
        0x4e6s
        0x4f5s
        0x4f3s
        0x4f9s
        0x4f1s
        0x4fas
        0x4e0s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 53

    move-object/from16 v2, p0

    invoke-direct {v2}, Landroidx/lifecycle/ViewModel;-><init>()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, v2, Ldev/blaze/launcher/ui/profile/ProfileViewModel;->mText:Landroidx/lifecycle/MutableLiveData;

    invoke-static/range {}, Ldev/blaze/launcher/ui/profile/ProfileViewModel;->ۡۡ۟ۥ()[S

    move-result-object v39

    const v42, 0x494

    const v40, 0x0

    const v41, 0x15

    invoke-static/range {v39 .. v42}, Lorg/apache/commons/codec/digest/۟ۦۣۢۧ;->ۣ۟ۧۤ([SIII)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lorg/spongycastle/asn1/cmp/۟ۥۨۡۥ;->۟۟ۨۡ۠(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static ۟ۦۦۣۧ(Ljava/lang/Object;)Landroidx/lifecycle/MutableLiveData;
    .locals 2

    invoke-static {}, Lokhttp3/internal/io/ۣ۟ۦۧ;->ۣۢۢۧ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/profile/ProfileViewModel;

    iget-object v1, p0, Ldev/blaze/launcher/ui/profile/ProfileViewModel;->mText:Landroidx/lifecycle/MutableLiveData;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۡۡ۟ۥ()[S
    .locals 1

    invoke-static {}, Lcom/mojang/minecraftpe/store/amazonappstore/ۧۤۢۤ;->۟۟ۢۧۥ()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Ldev/blaze/launcher/ui/profile/ProfileViewModel;->short:[S

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

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

    invoke-static {v1}, Ldev/blaze/launcher/ui/profile/ProfileViewModel;->۟ۦۦۣۧ(Ljava/lang/Object;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    return-object v0
.end method
