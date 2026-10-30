.class Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/blaze/launcher/ui/dashboard/DashboardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final short:[S


# instance fields
.field private isNeedStart:Z

.field final synthetic this$0:Ldev/blaze/launcher/ui/dashboard/DashboardFragment;


# direct methods
.method static bridge synthetic -$$Nest$fgetisNeedStart(Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;)Z
    .locals 51

    move-object/from16 v0, p0

    invoke-static {v0}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;->ۤ۠۟۠(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$fputisNeedStart(Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;Z)V
    .locals 51

    move/from16 v1, p1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;->isNeedStart:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 52

    const v0, 0x96

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;->short:[S

    return-void

    nop

    :array_0
    .array-data 2
        0xae7s
        0xadcs
        0xac1s
        0xac7s
        0xac2s
        0xac2s
        0xadds
        0xac0s
        0xac6s
        0xad7s
        0xad6s
        0xa92s
        0xae4s
        0xad7s
        0xac0s
        0xac1s
        0xadbs
        0xadds
        0xadcs
        0xa88s
        0xa92s
        0x77bs
        0x767s
        0x73as
        0x775s
        0x766s
        0x777s
        0x77cs
        0x862s
        0x862s
        0x871s
        0x860s
        0x86bs
        0x835s
        0x837s
        0x184s
        0x188s
        0x18as
        0x1c9s
        0x18as
        0x188s
        0x18ds
        0x186s
        0x189s
        0x180s
        0x1c9s
        0x18as
        0x18es
        0x189s
        0x182s
        0x184s
        0x195s
        0x186s
        0x181s
        0x193s
        0x197s
        0x182s
        0x91cs
        0x90ds
        0x90ds
        0x922s
        0x90as
        0x918s
        0x91fs
        0x90bs
        0x914s
        0x918s
        0x90as
        0xa7ds
        0xa59s
        0xa5es
        0xa55s
        0xa53s
        0xa42s
        0xa51s
        0xa56s
        0xa44s
        0xa10s
        0xa63s
        0xa44s
        0xa51s
        0xa42s
        0xa44s
        0xa59s
        0xa5es
        0xa57s
        0xa1es
        0xa1es
        0xa1es
        0x9b9s
        0x99bs
        0x994s
        0x999s
        0x99fs
        0x996s
        0x721s
        0x705s
        0x702s
        0x709s
        0x70fs
        0x71es
        0x70ds
        0x70as
        0x718s
        0x74cs
        0x722s
        0x703s
        0x718s
        0x74cs
        0x72as
        0x703s
        0x719s
        0x702s
        0x708s
        0x742s
        0x95fs
        0x969s
        0x973s
        0x974s
        0x926s
        0x962s
        0x963s
        0x970s
        0x96fs
        0x965s
        0x963s
        0x926s
        0x962s
        0x969s
        0x963s
        0x975s
        0x926s
        0x968s
        0x969s
        0x972s
        0x926s
        0x975s
        0x973s
        0x976s
        0x976s
        0x969s
        0x974s
        0x972s
        0x926s
        0x930s
        0x932s
        0x944s
        0x96fs
        0x972s
        0x928s
    .end array-data
.end method

.method constructor <init>(Ldev/blaze/launcher/ui/dashboard/DashboardFragment;)V
    .locals 51

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    iput-object v1, v0, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;->this$0:Ldev/blaze/launcher/ui/dashboard/DashboardFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;->isNeedStart:Z

    return-void
.end method

.method public static ۟۟ۧۨۡ(Ljava/lang/Object;)Landroidx/fragment/app/FragmentActivity;
    .locals 1

    invoke-static {}, Landroidx/core/provider/ۡ۠۟;->ۣۣ۟ۦ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/dashboard/DashboardFragment;

    invoke-virtual {p0}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۢۢۧ۠(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;
    .locals 1

    invoke-static {}, Landroidx/constraintlayout/core/widgets/analyzer/۟ۥۢۨۡ;->ۥ۠ۢ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Lcom/google/android/material/snackbar/Snackbar;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/google/android/material/snackbar/Snackbar;->setAnchorView(Landroid/view/View;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣ۟ۦۢۢ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentDashboardBinding;
    .locals 1

    invoke-static {}, Lcom/braze/ui/inappmessage/۟۟۠۟ۡ;->ۣ۟ۤۧۨ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/dashboard/DashboardFragment;

    invoke-static {p0}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment;->-$$Nest$fgetbinding(Ldev/blaze/launcher/ui/dashboard/DashboardFragment;)Ldev/blaze/launcher/databinding/FragmentDashboardBinding;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۦۤۡۦ(Ljava/lang/Object;)Ldev/blaze/launcher/ui/dashboard/DashboardFragment;
    .locals 2

    invoke-static {}, Lcom/google/android/material/color/ۤ۠ۥۦ;->ۥۣۥ۠()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;

    iget-object v1, p0, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;->this$0:Ldev/blaze/launcher/ui/dashboard/DashboardFragment;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۤ۠۟۠(Ljava/lang/Object;)Z
    .locals 2

    invoke-static {}, Landroidx/customview/view/ۥۧۦۦ;->ۥۡۡ۠()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;

    iget-boolean v1, p0, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;->isNeedStart:Z

    :goto_0
    return v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۣۧۨۡ()[S
    .locals 1

    invoke-static {}, Lcom/braze/enums/ۣۧۨۧ;->۟۟ۦۧ()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;->short:[S

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 56

    move-object/from16 v6, p1

    move-object/from16 v5, p0

    invoke-static/range {}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;->ۣۧۨۡ()[S

    move-result-object v30

    const v33, 0xab2

    const v31, 0x0

    const v32, 0x15

    invoke-static/range {v30 .. v33}, Lkotlinx/coroutines/sync/۟ۥۧ۟ۨ;->ۣ۟ۧۧۡ([SIII)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    const/4 v1, 0x1

    iput-boolean v1, v5, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;->isNeedStart:Z

    invoke-static/range {}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;->ۣۧۨۡ()[S

    move-result-object v22

    const v25, 0x714

    const v23, 0x15

    const v24, 0x7

    invoke-static/range {v22 .. v25}, Lkotlinx/coroutines/channels/ۣۨ۠ۡ;->۠ۧۥ۠([SIII)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v1, v22

    invoke-static {v1}, Lgo/mainz/gojni/ۥۤۤۡ;->۟ۤۥۦۥ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;->ۣۧۨۡ()[S

    move-result-object v44

    const v47, 0x803

    const v45, 0x1c

    const v46, 0x7

    invoke-static/range {v44 .. v47}, Lcom/mojang/minecraftpe/input/۟ۥ۟۟ۧ;->۟ۡۢۨۦ([SIII)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v2, v44

    invoke-static {v1, v2}, Lokhttp3/internal/io/ۣ۟ۦۧ;->ۡۤۥۡ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {v5}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;->۟ۦۤۡۦ(Ljava/lang/Object;)Ldev/blaze/launcher/ui/dashboard/DashboardFragment;

    move-result-object v1

    invoke-static {v1}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;->۟۟ۧۨۡ(Ljava/lang/Object;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/impl/auth/۟۟ۢۥۨ;->۟۟ۨ۟ۨ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    invoke-static/range {}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;->ۣۧۨۡ()[S

    move-result-object v43

    const v46, 0x1e7

    const v44, 0x23

    const v45, 0x16

    invoke-static/range {v43 .. v46}, Lcom/google/gson/internal/reflect/۟ۥۤ۟ۡ;->ۣ۟۠۟۠([SIII)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v3, v43

    invoke-static {v1, v3, v2}, Lkotlin/internal/jdk8/۟ۡ۠۠ۦ;->۟ۢۢۢۨ(Ljava/lang/Object;Ljava/lang/Object;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "BlazeLauncherVersion"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "versionName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "versionCode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/google/android/datatransport/runtime/dagger/multibindings/ۥۧۧۨ;->ۦۦۥۣ(Ljava/lang/Object;)I

    move-result v3

    const v4, 0x39f130e3

    if-eq v3, v4, :cond_0

    const v4, 0x39f8c713

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/androidgamesdk/swappy/۟ۦۡۨۨ;->ۣ۟ۤ۠ۧ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/braze/ui/inappmessage/factories/ۣ۟۟ۦۢ;->ۣۣ۟ۡ۠(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0}, Ljavax/xml/stream/util/ۨۤۦۡ;->۟ۢۧۡ۠(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/۟ۧ۠ۢۦ;->۟ۦۧۢۥ(Ljava/lang/Object;Ljava/lang/Object;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-static {v5}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;->۟ۦۤۡۦ(Ljava/lang/Object;)Ldev/blaze/launcher/ui/dashboard/DashboardFragment;

    move-result-object v1

    invoke-static {v1}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;->ۣ۟ۦۢۢ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentDashboardBinding;

    move-result-object v1

    invoke-static {v1}, Landroidx/concurrent/futures/۟ۤ۠ۧۥ;->ۢۦۡۨ(Ljava/lang/Object;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;->۟ۢۢۧ۠(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/Snackbar;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/ۦۢۤۦ;->۟ۢۥۢۡ(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {v5}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;->۟ۦۤۡۦ(Ljava/lang/Object;)Ldev/blaze/launcher/ui/dashboard/DashboardFragment;

    move-result-object v1

    invoke-static {v1}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;->۟۟ۧۨۡ(Ljava/lang/Object;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ۣ۟۟ۡ۟;->ۦ۠ۢۨ(Ljava/lang/Object;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/math/ec/endo/ۣۣ۟۠۟;->ۥ۟ۧ۟(Ljava/lang/Object;)Ljava/io/File;

    move-result-object v1

    invoke-static/range {}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;->ۣۧۨۡ()[S

    move-result-object v33

    const v36, 0x97d

    const v34, 0x39

    const v35, 0xb

    invoke-static/range {v33 .. v36}, Lorg/chromium/support_lib_boundary/util/ۥ۟۟ۡ;->ۣۡۡۨ([SIII)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static/range {}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;->ۣۧۨۡ()[S

    move-result-object v15

    const v18, 0xa30

    const v16, 0x44

    const v17, 0x15

    invoke-static/range {v15 .. v18}, Landroidx/core/provider/ۡ۠۟;->ۧ۠ۤۢ([SIII)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v15

    invoke-static {v6, v0, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/۟ۧ۠ۢۦ;->۟ۦۧۢۥ(Ljava/lang/Object;Ljava/lang/Object;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v6

    invoke-static {v5}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;->۟ۦۤۡۦ(Ljava/lang/Object;)Ldev/blaze/launcher/ui/dashboard/DashboardFragment;

    move-result-object v0

    invoke-static {v0}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;->ۣ۟ۦۢۢ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentDashboardBinding;

    move-result-object v0

    invoke-static {v0}, Landroidx/concurrent/futures/۟ۤ۠ۧۥ;->ۢۦۡۨ(Ljava/lang/Object;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    invoke-static {v6, v0}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;->۟ۢۢۧ۠(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/snackbar/Snackbar;

    new-instance v0, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1$1;

    invoke-direct {v0, v5}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1$1;-><init>(Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;)V

    invoke-static/range {}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;->ۣۧۨۡ()[S

    move-result-object v16

    const v19, 0x9fa

    const v17, 0x59

    const v18, 0x6

    invoke-static/range {v16 .. v19}, Lorg/spongycastle/crypto/util/ۣۦۧۧ;->ۡ۠ۤۧ([SIII)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v1, v16

    invoke-static {v6, v1, v0}, Landroidx/tracing/ۡۦۥۤ;->ۨ۠۟ۧ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v6

    invoke-static {v6}, Lcom/microsoft/xbox/xle/app/ۦۢۤۦ;->۟ۢۥۢۡ(Ljava/lang/Object;)V

    invoke-static {v5}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;->۟ۦۤۡۦ(Ljava/lang/Object;)Ldev/blaze/launcher/ui/dashboard/DashboardFragment;

    move-result-object v6

    invoke-static {v6}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;->۟۟ۧۨۡ(Ljava/lang/Object;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/material/motion/ۣ۟ۤۡۤ;->۟ۥۢ(Ljava/lang/Object;)Landroid/view/Window;

    move-result-object v6

    invoke-static {v6}, Lcom/microsoft/xbox/service/model/ۦ۠ۤۦ;->ۧ۠ۨ۠(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    new-instance v0, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1$2;

    invoke-direct {v0, v5}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1$2;-><init>(Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;)V

    const-wide/16 v1, 0xbb8

    invoke-static {v6, v0, v1, v2}, Lcom/microsoft/xbox/xle/app/activity/Profile/ۣ۟۟ۡ۟;->۠ۢۧۡ(Ljava/lang/Object;Ljava/lang/Object;J)Z

    goto :goto_0

    :catch_0
    invoke-static/range {}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;->ۣۧۨۡ()[S

    move-result-object v39

    const v42, 0x76c

    const v40, 0x5f

    const v41, 0x14

    invoke-static/range {v39 .. v42}, Lcom/google/android/gms/common/server/۟ۥۧ۠ۧ;->۟ۢۥۧ([SIII)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-static {v6, v0, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/۟ۧ۠ۢۦ;->۟ۦۧۢۥ(Ljava/lang/Object;Ljava/lang/Object;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v6

    invoke-static {v5}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;->۟ۦۤۡۦ(Ljava/lang/Object;)Ldev/blaze/launcher/ui/dashboard/DashboardFragment;

    move-result-object v0

    invoke-static {v0}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;->ۣ۟ۦۢۢ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentDashboardBinding;

    move-result-object v0

    invoke-static {v0}, Landroidx/concurrent/futures/۟ۤ۠ۧۥ;->ۢۦۡۨ(Ljava/lang/Object;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    invoke-static {v6, v0}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;->۟ۢۢۧ۠(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/snackbar/Snackbar;

    invoke-static {v6}, Lcom/microsoft/xbox/xle/app/ۦۢۤۦ;->۟ۢۥۢۡ(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static/range {}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;->ۣۧۨۡ()[S

    move-result-object v37

    const v40, 0x906

    const v38, 0x73

    const v39, 0x23

    invoke-static/range {v37 .. v40}, Lcom/braze/images/ۣۤۤۥ;->ۣۨ۠ۢ([SIII)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-static {v6, v0, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/۟ۧ۠ۢۦ;->۟ۦۧۢۥ(Ljava/lang/Object;Ljava/lang/Object;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v6

    invoke-static {v5}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;->۟ۦۤۡۦ(Ljava/lang/Object;)Ldev/blaze/launcher/ui/dashboard/DashboardFragment;

    move-result-object v0

    invoke-static {v0}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;->ۣ۟ۦۢۢ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentDashboardBinding;

    move-result-object v0

    invoke-static {v0}, Landroidx/concurrent/futures/۟ۤ۠ۧۥ;->ۢۦۡۨ(Ljava/lang/Object;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    invoke-static {v6, v0}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;->۟ۢۢۧ۠(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/snackbar/Snackbar;

    invoke-static {v6}, Lcom/microsoft/xbox/xle/app/ۦۢۤۦ;->۟ۢۥۢۡ(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
