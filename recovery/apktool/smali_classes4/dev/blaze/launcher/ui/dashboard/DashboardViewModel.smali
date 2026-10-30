.class public Ldev/blaze/launcher/ui/dashboard/DashboardViewModel;
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

    const v0, 0x1a

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Ldev/blaze/launcher/ui/dashboard/DashboardViewModel;->short:[S

    return-void

    nop

    :array_0
    .array-data 2
        0x101s
        0x13ds
        0x13cs
        0x126s
        0x175s
        0x13cs
        0x126s
        0x175s
        0x131s
        0x134s
        0x126s
        0x13ds
        0x137s
        0x13as
        0x134s
        0x127s
        0x131s
        0x175s
        0x133s
        0x127s
        0x134s
        0x132s
        0x138s
        0x130s
        0x13bs
        0x121s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 53

    move-object/from16 v2, p0

    invoke-direct {v2}, Landroidx/lifecycle/ViewModel;-><init>()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, v2, Ldev/blaze/launcher/ui/dashboard/DashboardViewModel;->mText:Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Ldev/blaze/launcher/ui/dashboard/DashboardViewModel;->ۨۢۨۤ()[S

    move-result-object v9

    const v12, 0x155

    const v10, 0x0

    const v11, 0x1a

    invoke-static/range {v9 .. v12}, Lkotlin/collections/jdk8/ۣ۟ۡۡۢ;->ۤۦۣۥ([SIII)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v1, v9

    invoke-static {v0, v1}, Lorg/spongycastle/asn1/cmp/۟ۥۨۡۥ;->۟۟ۨۡ۠(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static ۥۣۢۥ(Ljava/lang/Object;)Landroidx/lifecycle/MutableLiveData;
    .locals 2

    invoke-static {}, Lorg/spongycastle/util/io/pem/ۧ۠ۦ;->ۣ۟۠ۧۡ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/dashboard/DashboardViewModel;

    iget-object v1, p0, Ldev/blaze/launcher/ui/dashboard/DashboardViewModel;->mText:Landroidx/lifecycle/MutableLiveData;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۨۢۨۤ()[S
    .locals 1

    invoke-static {}, Landroidx/constraintlayout/utils/widget/۟ۥۤ۠ۤ;->ۣۢ۟ۡ()I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Ldev/blaze/launcher/ui/dashboard/DashboardViewModel;->short:[S

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

    invoke-static {v1}, Ldev/blaze/launcher/ui/dashboard/DashboardViewModel;->ۥۣۢۥ(Ljava/lang/Object;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    return-object v0
.end method
