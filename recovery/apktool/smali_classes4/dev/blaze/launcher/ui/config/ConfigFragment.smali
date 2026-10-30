.class public Ldev/blaze/launcher/ui/config/ConfigFragment;
.super Landroidx/fragment/app/Fragment;


# static fields
.field private static final short:[S


# instance fields
.field private binding:Ldev/blaze/launcher/databinding/FragmentConfigBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 52

    const v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Ldev/blaze/launcher/ui/config/ConfigFragment;->short:[S

    return-void

    nop

    :array_0
    .array-data 2
        0x530s
        0x51cs
        0x51ds
        0x515s
        0x51as
        0x514s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 51

    move-object/from16 v0, p0

    invoke-direct {v0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static ۟ۡ۟ۡۦ(Ljava/lang/Object;)Landroidx/fragment/app/FragmentActivity;
    .locals 1

    invoke-static {}, Lcom/braze/ui/inappmessage/views/ۣۨۢۡ;->۟۠ۦۧ۠()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/config/ConfigFragment;

    invoke-virtual {p0}, Ldev/blaze/launcher/ui/config/ConfigFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۢ۟۠ۨ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentConfigBinding;
    .locals 2

    invoke-static {}, Lorg/spongycastle/jcajce/provider/asymmetric/ies/۟ۦۤۥ۟;->۟ۥۢ۠()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/config/ConfigFragment;

    iget-object v1, p0, Ldev/blaze/launcher/ui/config/ConfigFragment;->binding:Ldev/blaze/launcher/databinding/FragmentConfigBinding;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۤۢ۠ۧ()[S
    .locals 1

    invoke-static {}, Landroidx/appcompat/resources/ۣۣۡۥ;->۟ۡۧۦ()I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Ldev/blaze/launcher/ui/config/ConfigFragment;->short:[S

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 54

    move-object/from16 v6, p3

    move-object/from16 v5, p2

    move-object/from16 v4, p1

    move-object/from16 v3, p0

    new-instance v6, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v6, v3}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Ldev/blaze/launcher/ui/config/ConfigViewModel;

    invoke-static {v6, v0}, Lcom/google/firebase/messaging/reporting/۟ۧۡۨۦ;->۟ۡ۠ۡ۠(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/lifecycle/ViewModel;

    move-result-object v6

    check-cast v6, Ldev/blaze/launcher/ui/config/ConfigViewModel;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/google/firebase/messaging/۟ۧۦۨ;->ۥ۠ۦۧ(Ljava/lang/Object;Ljava/lang/Object;Z)Ldev/blaze/launcher/databinding/FragmentConfigBinding;

    move-result-object v4

    iput-object v4, v3, Ldev/blaze/launcher/ui/config/ConfigFragment;->binding:Ldev/blaze/launcher/databinding/FragmentConfigBinding;

    invoke-static {v4}, Lcom/mojang/minecraftpe/Webview/۟۟ۡۥ۠;->۟ۥۤ۟(Ljava/lang/Object;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v4

    invoke-static {v3}, Ldev/blaze/launcher/ui/config/ConfigFragment;->۟ۢ۟۠ۨ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentConfigBinding;

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/pqc/math/ntru/euclid/ۣ۟ۤ۟۠;->ۤۧ۠ۡ(Ljava/lang/Object;)Landroid/widget/LinearLayout;

    move-result-object v5

    new-instance v5, Ljava/io/File;

    invoke-static {v3}, Ldev/blaze/launcher/ui/config/ConfigFragment;->۟ۡ۟ۡۦ(Ljava/lang/Object;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/google/android/material/tooltip/ۢۧۦ۟;->ۣۢۤ۠()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/legacy/coreutils/۟ۡۥۨۡ;->۟ۡۦۦۧ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/io/File;

    move-result-object v0

    invoke-static/range {}, Ldev/blaze/launcher/ui/config/ConfigFragment;->ۤۢ۠ۧ()[S

    move-result-object v22

    const v25, 0x573

    const v23, 0x0

    const v24, 0x6

    invoke-static/range {v22 .. v25}, Landroidx/viewpager/ۨۦۦۣ;->۟ۥۣۣ۟([SIII)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v1, v22

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5}, Lorg/spongycastle/crypto/util/ۣۦۧۧ;->ۣ۟۠ۥۡ(Ljava/lang/Object;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v5}, Lorg/spongycastle/crypto/util/ۣۦۧۧ;->ۣ۟۠ۥۡ(Ljava/lang/Object;)[Ljava/io/File;

    move-result-object v5

    array-length v0, v5

    :goto_0
    if-ge v6, v0, :cond_0

    aget-object v1, v5, v6

    new-instance v1, Lcom/google/android/material/card/MaterialCardView;

    invoke-static {v3}, Ldev/blaze/launcher/ui/config/ConfigFragment;->۟ۡ۟ۡۦ(Ljava/lang/Object;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/material/card/MaterialCardView;-><init>(Landroid/content/Context;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method public onDestroyView()V
    .locals 52

    move-object/from16 v1, p0

    invoke-super {v1}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, v1, Ldev/blaze/launcher/ui/config/ConfigFragment;->binding:Ldev/blaze/launcher/databinding/FragmentConfigBinding;

    return-void
.end method
