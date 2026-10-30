.class public Ldev/blaze/launcher/ui/dashboard/DashboardFragment;
.super Landroidx/fragment/app/Fragment;


# static fields
.field private static final short:[S


# instance fields
.field private binding:Ldev/blaze/launcher/databinding/FragmentDashboardBinding;


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Ldev/blaze/launcher/ui/dashboard/DashboardFragment;)Ldev/blaze/launcher/databinding/FragmentDashboardBinding;
    .locals 51

    move-object/from16 v0, p0

    invoke-static {v0}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment;->ۨۤۦ۟(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentDashboardBinding;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 52

    const v0, 0x16

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Ldev/blaze/launcher/ui/dashboard/DashboardFragment;->short:[S

    return-void

    nop

    :array_0
    .array-data 2
        0x91ds
        0x911s
        0x913s
        0x950s
        0x913s
        0x911s
        0x914s
        0x91fs
        0x910s
        0x919s
        0x950s
        0x913s
        0x917s
        0x910s
        0x91bs
        0x91ds
        0x90cs
        0x91fs
        0x918s
        0x90as
        0x90es
        0x91bs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 51

    move-object/from16 v0, p0

    invoke-direct {v0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static ۟ۥۣ۠ۧ(Ljava/lang/Object;)Landroidx/fragment/app/FragmentActivity;
    .locals 1

    invoke-static {}, Lcom/google/android/material/switchmaterial/۟۠ۡۡۨ;->ۣۧۥۢ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/dashboard/DashboardFragment;

    invoke-virtual {p0}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۠ۧۥۤ()[S
    .locals 1

    invoke-static {}, Lcom/google/firebase/util/ۧ۠ۦۤ;->ۧ۠۠()I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Ldev/blaze/launcher/ui/dashboard/DashboardFragment;->short:[S

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۨۤۦ۟(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentDashboardBinding;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/common/server/response/۟ۦۨۨ۠;->ۧۦۡۨ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/dashboard/DashboardFragment;

    iget-object v1, p0, Ldev/blaze/launcher/ui/dashboard/DashboardFragment;->binding:Ldev/blaze/launcher/databinding/FragmentDashboardBinding;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 54

    move-object/from16 v5, p2

    move-object/from16 v4, p1

    move-object/from16 v3, p0

    const/4 v0, 0x0

    if-eqz v5, :cond_1

    invoke-static {v5}, Lorg/spongycastle/math/ec/۟۟ۦۣۤ;->ۧۨۥۡ(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lcom/google/firebase/inject/ۣۦۧ۠;->۟ۥ۠ۤۨ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v3, v4, v5}, Landroidx/profileinstaller/ۣ۟;->۟ۥۨ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v4}, Lcom/microsoft/xbox/xle/model/ۥۤۨۤ;->ۨ۠ۥۡ(Ljava/lang/Object;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/simpleframework/xml/stream/ۨ۟ۥ۟;->۟ۢۥۥۨ(Ljava/lang/Object;Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    return-object v4

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 54

    move-object/from16 v5, p2

    move-object/from16 v4, p1

    move-object/from16 v3, p0

    const/4 v0, 0x0

    if-eqz v5, :cond_1

    invoke-static {v5}, Lorg/spongycastle/math/ec/۟۟ۦۣۤ;->ۧۨۥۡ(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lcom/google/firebase/inject/ۣۦۧ۠;->۟ۥ۠ۤۨ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v4

    :try_start_0
    invoke-static {v4, v5, v2}, Lkotlin/internal/jdk8/۟ۡ۠۠ۦ;->۟ۢۢۢۨ(Ljava/lang/Object;Ljava/lang/Object;I)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    :catchall_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getPackageVersionCode(Landroid/content/Context;Ljava/lang/String;)I
    .locals 51

    move-object/from16 v2, p2

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroidx/profileinstaller/ۣ۟;->۟ۥۨ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/google/android/datatransport/runtime/dagger/multibindings/ۥۧۧۨ;->ۦۦۥۣ(Ljava/lang/Object;)I

    move-result v1

    return v1

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getPackageVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 51

    move-object/from16 v2, p2

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroidx/profileinstaller/ۣ۟;->۟ۥۨ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/google/androidgamesdk/swappy/۟ۦۡۨۨ;->ۣ۟ۤ۠ۧ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 52

    move-object/from16 v4, p3

    move-object/from16 v3, p2

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    new-instance v4, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v4, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Ldev/blaze/launcher/ui/dashboard/DashboardViewModel;

    invoke-static {v4, v0}, Lcom/google/firebase/messaging/reporting/۟ۧۡۨۦ;->۟ۡ۠ۡ۠(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/lifecycle/ViewModel;

    move-result-object v4

    check-cast v4, Ldev/blaze/launcher/ui/dashboard/DashboardViewModel;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/braze/ui/inappmessage/utils/ۣ۟۟ۧ۟;->۟ۡۥۦۢ(Ljava/lang/Object;Ljava/lang/Object;Z)Ldev/blaze/launcher/databinding/FragmentDashboardBinding;

    move-result-object v2

    iput-object v2, v1, Ldev/blaze/launcher/ui/dashboard/DashboardFragment;->binding:Ldev/blaze/launcher/databinding/FragmentDashboardBinding;

    invoke-static {v2}, Landroidx/slidingpanelayout/ۢ۠ۢ۠;->ۣۤ۠ۡ(Ljava/lang/Object;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    invoke-static {v1}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment;->ۨۤۦ۟(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentDashboardBinding;

    move-result-object v3

    invoke-static {v3}, Landroidx/constraintlayout/utils/widget/ۧۨۢ۟;->ۥ۠ۤ۠(Ljava/lang/Object;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v1}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment;->۟ۥۣ۠ۧ(Ljava/lang/Object;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static/range {}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment;->۠ۧۥۤ()[S

    move-result-object v37

    const v40, 0x97e

    const v38, 0x0

    const v39, 0x16

    invoke-static/range {v37 .. v40}, Lorg/spongycastle/pqc/jcajce/provider/ۦۧۦ;->ۤ۠ۤۦ([SIII)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-static {v1, v4, v0}, Landroidx/arch/core/internal/۟ۥ۠ۢۥ;->ۧۦۦۨ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/spongycastle/pkcs/bc/۠۟۠۠;->۟ۥۦۡ۠(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment;->ۨۤۦ۟(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentDashboardBinding;

    move-result-object v3

    invoke-static {v3}, Lkotlin/comparisons/۟ۥۨۢ۠;->۟ۧۢ۟۠(Ljava/lang/Object;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/spongycastle/mozilla/jcajce/ۨۨ۟;->ۧۨۤۥ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment;->ۨۤۦ۟(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentDashboardBinding;

    move-result-object v3

    invoke-static {v3}, Lcom/braze/ui/contentcards/ۥۡۡۡ;->ۣۦۥ۠(Ljava/lang/Object;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v1}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment;->۟ۥۣ۠ۧ(Ljava/lang/Object;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v1, v4, v0}, Lcom/braze/ui/contentcards/handlers/۟ۥۢۡۡ;->۟ۢۥۧۨ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/spongycastle/mozilla/jcajce/ۨۨ۟;->ۧۨۤۥ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment;->ۨۤۦ۟(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentDashboardBinding;

    move-result-object v3

    invoke-static {v3}, Landroidx/concurrent/futures/۟ۤ۠ۧۥ;->ۢۦۡۨ(Ljava/lang/Object;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v3

    new-instance v4, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;

    invoke-direct {v4, v1}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;-><init>(Ldev/blaze/launcher/ui/dashboard/DashboardFragment;)V

    invoke-static {v3, v4}, Lcom/microsoft/xal/androidjava/۟ۤۥۧۡ;->ۣ۟ۨۥ(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public onDestroyView()V
    .locals 52

    move-object/from16 v1, p0

    invoke-super {v1}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, v1, Ldev/blaze/launcher/ui/dashboard/DashboardFragment;->binding:Ldev/blaze/launcher/databinding/FragmentDashboardBinding;

    return-void
.end method
