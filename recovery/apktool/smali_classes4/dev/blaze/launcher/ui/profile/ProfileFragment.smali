.class public Ldev/blaze/launcher/ui/profile/ProfileFragment;
.super Landroidx/fragment/app/Fragment;


# static fields
.field public static currentUser:Ldev/blaze/launcher/ui/User;

.field public static isLogined:Z

.field private static final short:[S


# instance fields
.field private binding:Ldev/blaze/launcher/databinding/FragmentProfileBinding;


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Ldev/blaze/launcher/ui/profile/ProfileFragment;)Ldev/blaze/launcher/databinding/FragmentProfileBinding;
    .locals 51

    move-object/from16 v0, p0

    invoke-static {v0}, Ldev/blaze/launcher/ui/profile/ProfileFragment;->ۦۨۦۨ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentProfileBinding;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 53

    const v0, 0xe

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Ldev/blaze/launcher/ui/profile/ProfileFragment;->short:[S

    return-void

    nop

    :array_0
    .array-data 2
        0x707s
        0x714s
        0x714s
        0x742s
        0x742s
        0x747s
        0x742s
        0x2a9s
        0x2bes
        0x2bes
        0x2bes
        0x2bes
        0x2bes
        0x2bes
    .end array-data
.end method

.method public constructor <init>()V
    .locals 51

    move-object/from16 v0, p0

    invoke-direct {v0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static ۣ۟ۧۡۤ()[S
    .locals 1

    invoke-static {}, Lcom/braze/enums/inappmessage/ۥۣۦۢ;->ۥۧۡۧ()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Ldev/blaze/launcher/ui/profile/ProfileFragment;->short:[S

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۦۨۦۨ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentProfileBinding;
    .locals 2

    invoke-static {}, Lorg/apache/http/impl/cookie/۟ۥ۠۠ۥ;->۟ۧۥۡۧ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/profile/ProfileFragment;

    iget-object v1, p0, Ldev/blaze/launcher/ui/profile/ProfileFragment;->binding:Ldev/blaze/launcher/databinding/FragmentProfileBinding;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

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

    const-class v0, Ldev/blaze/launcher/ui/profile/ProfileViewModel;

    invoke-static {v6, v0}, Lcom/google/firebase/messaging/reporting/۟ۧۡۨۦ;->۟ۡ۠ۡ۠(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/lifecycle/ViewModel;

    move-result-object v6

    check-cast v6, Ldev/blaze/launcher/ui/profile/ProfileViewModel;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lorg/apache/http/client/params/۟ۥ۠ۥۧ;->ۣۢۥ۠(Ljava/lang/Object;Ljava/lang/Object;Z)Ldev/blaze/launcher/databinding/FragmentProfileBinding;

    move-result-object v4

    iput-object v4, v3, Ldev/blaze/launcher/ui/profile/ProfileFragment;->binding:Ldev/blaze/launcher/databinding/FragmentProfileBinding;

    invoke-static {v4}, Lorg/spongycastle/math/raw/۟ۡۢۧۤ;->ۣ۟ۧ۟ۥ(Ljava/lang/Object;)Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v4

    invoke-static {v3}, Ldev/blaze/launcher/ui/profile/ProfileFragment;->ۦۨۦۨ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentProfileBinding;

    move-result-object v5

    invoke-static {v5}, Lorg/xmlpull/v1/util/۟ۡ۟۠ۥ;->۟ۤۢۡۦ(Ljava/lang/Object;)Landroid/widget/Button;

    move-result-object v5

    new-instance v0, Ldev/blaze/launcher/ui/profile/ProfileFragment$1;

    invoke-direct {v0, v3}, Ldev/blaze/launcher/ui/profile/ProfileFragment$1;-><init>(Ldev/blaze/launcher/ui/profile/ProfileFragment;)V

    invoke-static {v5, v0}, Lorg/xmlpull/v1/builder/ۤۡۡ۠;->۟ۥۧۥ۠(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, Ldev/blaze/launcher/ui/profile/ProfileFragment;->ۦۨۦۨ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentProfileBinding;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/builders/ۧۢ۠ۧ;->ۣۨۧۥ(Ljava/lang/Object;)Landroid/widget/Button;

    move-result-object v5

    invoke-static/range {}, Ldev/blaze/launcher/ui/profile/ProfileFragment;->ۣ۟ۧۡۤ()[S

    move-result-object v34

    const v37, 0x724

    const v35, 0x0

    const v36, 0x7

    invoke-static/range {v34 .. v37}, Lorg/spongycastle/tsp/cms/ۦ۟ۦ۠;->ۤۤۢ۟([SIII)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v0}, Landroidx/drawerlayout/ۡ۠۠ۢ;->ۥۧۢۡ(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v5, v1}, Landroidx/browser/trusted/ۣۡ۠۟;->۟ۥ۟ۨ(Ljava/lang/Object;I)V

    invoke-static {v3}, Ldev/blaze/launcher/ui/profile/ProfileFragment;->ۦۨۦۨ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentProfileBinding;

    move-result-object v5

    invoke-static {v5}, Lorg/xmlpull/v1/util/۟ۡ۟۠ۥ;->۟ۤۢۡۦ(Ljava/lang/Object;)Landroid/widget/Button;

    move-result-object v5

    invoke-static {v0}, Landroidx/drawerlayout/ۡ۠۠ۢ;->ۥۧۢۡ(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v5, v1}, Landroidx/browser/trusted/ۣۡ۠۟;->۟ۥ۟ۨ(Ljava/lang/Object;I)V

    invoke-static {v3}, Ldev/blaze/launcher/ui/profile/ProfileFragment;->ۦۨۦۨ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentProfileBinding;

    move-result-object v5

    invoke-static {v5}, Landroidx/concurrent/futures/ۦۢۦۢ;->۟۠ۧۢۤ(Ljava/lang/Object;)Landroid/widget/EditText;

    move-result-object v5

    invoke-static/range {}, Ldev/blaze/launcher/ui/profile/ProfileFragment;->ۣ۟ۧۡۤ()[S

    move-result-object v36

    const v39, 0x28a

    const v37, 0x7

    const v38, 0x7

    invoke-static/range {v36 .. v39}, Landroidx/core/hardware/display/ۣۣ۟۠ۦ;->۟ۢۨۨۡ([SIII)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v1, v36

    invoke-static {v1}, Landroidx/drawerlayout/ۡ۠۠ۢ;->ۥۧۢۡ(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v5, v2}, Lcom/google/firebase/iid/internal/۟۟ۢۤۧ;->ۦۧ۟ۤ(Ljava/lang/Object;I)V

    invoke-static {v3}, Ldev/blaze/launcher/ui/profile/ProfileFragment;->ۦۨۦۨ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentProfileBinding;

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/asn1/iana/ۦ۠ۤ۠;->ۨۥۧۧ(Ljava/lang/Object;)Landroid/widget/EditText;

    move-result-object v5

    invoke-static {v1}, Landroidx/drawerlayout/ۡ۠۠ۢ;->ۥۧۢۡ(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v5, v2}, Lcom/google/firebase/iid/internal/۟۟ۢۤۧ;->ۦۧ۟ۤ(Ljava/lang/Object;I)V

    invoke-static {v3}, Ldev/blaze/launcher/ui/profile/ProfileFragment;->ۦۨۦۨ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentProfileBinding;

    move-result-object v5

    invoke-static {v5}, Lkotlin/annotation/ۡۨۡ۠;->ۧۤۡ۟(Ljava/lang/Object;)Landroid/widget/EditText;

    move-result-object v5

    invoke-static {v1}, Landroidx/drawerlayout/ۡ۠۠ۢ;->ۥۧۢۡ(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v5, v2}, Lcom/google/firebase/iid/internal/۟۟ۢۤۧ;->ۦۧ۟ۤ(Ljava/lang/Object;I)V

    invoke-static {v3}, Ldev/blaze/launcher/ui/profile/ProfileFragment;->ۦۨۦۨ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentProfileBinding;

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/asn1/microsoft/ۣ۠ۧۤ;->۟ۡۤۦ۟(Ljava/lang/Object;)Landroid/widget/EditText;

    move-result-object v5

    invoke-static {v1}, Landroidx/drawerlayout/ۡ۠۠ۢ;->ۥۧۢۡ(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v5, v1}, Lcom/google/firebase/iid/internal/۟۟ۢۤۧ;->ۦۧ۟ۤ(Ljava/lang/Object;I)V

    invoke-static {v3}, Ldev/blaze/launcher/ui/profile/ProfileFragment;->ۦۨۦۨ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentProfileBinding;

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/util/test/ۢۥۧ۠;->۟ۧۦ۟ۤ(Ljava/lang/Object;)Landroid/widget/Button;

    move-result-object v5

    invoke-static {v0}, Landroidx/drawerlayout/ۡ۠۠ۢ;->ۥۧۢۡ(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v5, v1}, Landroidx/browser/trusted/ۣۡ۠۟;->۟ۥ۟ۨ(Ljava/lang/Object;I)V

    invoke-static {v3}, Ldev/blaze/launcher/ui/profile/ProfileFragment;->ۦۨۦۨ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentProfileBinding;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/ۣ۠ۧۡ;->ۣ۠۟۠(Ljava/lang/Object;)Landroid/widget/Button;

    move-result-object v5

    invoke-static {v0}, Landroidx/drawerlayout/ۡ۠۠ۢ;->ۥۧۢۡ(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v5, v0}, Landroidx/browser/trusted/ۣۡ۠۟;->۟ۥ۟ۨ(Ljava/lang/Object;I)V

    invoke-static {v3}, Ldev/blaze/launcher/ui/profile/ProfileFragment;->ۦۨۦۨ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentProfileBinding;

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/util/test/ۢۥۧ۠;->۟ۧۦ۟ۤ(Ljava/lang/Object;)Landroid/widget/Button;

    move-result-object v5

    new-instance v0, Ldev/blaze/launcher/ui/profile/ProfileFragment$2;

    invoke-direct {v0, v3}, Ldev/blaze/launcher/ui/profile/ProfileFragment$2;-><init>(Ldev/blaze/launcher/ui/profile/ProfileFragment;)V

    invoke-static {v5, v0}, Lorg/xmlpull/v1/builder/ۤۡۡ۠;->۟ۥۧۥ۠(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, Ldev/blaze/launcher/ui/profile/ProfileFragment;->ۦۨۦۨ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentProfileBinding;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/pool/ۢۨۨۧ;->۟ۦۧۤ۟(Ljava/lang/Object;)Landroid/widget/Button;

    move-result-object v5

    new-instance v0, Ldev/blaze/launcher/ui/profile/ProfileFragment$3;

    invoke-direct {v0, v3}, Ldev/blaze/launcher/ui/profile/ProfileFragment$3;-><init>(Ldev/blaze/launcher/ui/profile/ProfileFragment;)V

    invoke-static {v5, v0}, Lorg/xmlpull/v1/builder/ۤۡۡ۠;->۟ۥۧۥ۠(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, Ldev/blaze/launcher/ui/profile/ProfileFragment;->ۦۨۦۨ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentProfileBinding;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/material/transformation/۟ۦۢۧۦ;->۟۠ۢ۠۠(Ljava/lang/Object;)Landroid/widget/Button;

    move-result-object v5

    new-instance v0, Ldev/blaze/launcher/ui/profile/ProfileFragment$4;

    invoke-direct {v0, v3}, Ldev/blaze/launcher/ui/profile/ProfileFragment$4;-><init>(Ldev/blaze/launcher/ui/profile/ProfileFragment;)V

    invoke-static {v5, v0}, Lorg/xmlpull/v1/builder/ۤۡۡ۠;->۟ۥۧۥ۠(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Landroidx/fragment/app/strictmode/۟ۥۡۦۤ;->ۤۢۧۧ()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Ldev/blaze/launcher/ui/profile/ProfileFragment;->ۦۨۦۨ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentProfileBinding;

    move-result-object v5

    invoke-static {v5}, Lcom/google/firebase/messaging/threads/ۣۡۡ۟;->ۥ۠ۦۣ(Ljava/lang/Object;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v5

    invoke-static {v5, v6}, Lorg/spongycastle/crypto/agreement/ۥۥۤۢ;->ۦۣۢ(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    invoke-static {v3}, Ldev/blaze/launcher/ui/profile/ProfileFragment;->ۦۨۦۨ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentProfileBinding;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/ۣ۟ۤۨ;->۟۟ۨۧۤ(Ljava/lang/Object;)Landroid/widget/TextView;

    move-result-object v5

    invoke-static {}, Lkotlin/io/ۡۦۧ۟;->۟ۦۥۤۦ()Ldev/blaze/launcher/ui/User;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/iso/ۥۨ۟۟;->۟ۧۢۨ۠(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lorg/spongycastle/mozilla/jcajce/ۨۨ۟;->ۧۨۤۥ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, Ldev/blaze/launcher/ui/profile/ProfileFragment;->ۦۨۦۨ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentProfileBinding;

    move-result-object v5

    invoke-static {v5}, Landroidx/profileinstaller/ۦۤۧ۠;->۠ۧ۟ۥ(Ljava/lang/Object;)Landroid/widget/TextView;

    move-result-object v5

    invoke-static {}, Lkotlin/io/ۡۦۧ۟;->۟ۦۥۤۦ()Ldev/blaze/launcher/ui/User;

    move-result-object v0

    invoke-static {v0}, Lcom/braze/ui/banners/۟ۡۦۤۡ;->ۤۧۥ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lorg/spongycastle/mozilla/jcajce/ۨۨ۟;->ۧۨۤۥ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, Ldev/blaze/launcher/ui/profile/ProfileFragment;->ۦۨۦۨ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentProfileBinding;

    move-result-object v5

    invoke-static {v5}, Lcom/google/firebase/messaging/threads/ۣۡۡ۟;->ۥ۠ۦۣ(Ljava/lang/Object;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v5

    const/16 v0, 0x8

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/agreement/ۥۥۤۢ;->ۦۣۢ(Ljava/lang/Object;I)V

    invoke-static {v3}, Ldev/blaze/launcher/ui/profile/ProfileFragment;->ۦۨۦۨ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentProfileBinding;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/tasks/۟۟۟ۡۢ;->ۣۢۤۥ(Ljava/lang/Object;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v5

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/agreement/ۥۥۤۢ;->ۦۣۢ(Ljava/lang/Object;I)V

    invoke-static {v3}, Ldev/blaze/launcher/ui/profile/ProfileFragment;->ۦۨۦۨ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentProfileBinding;

    move-result-object v5

    invoke-static {v5}, Lcom/google/gson/internal/bind/ۤ۟ۨۤ;->ۣۨۧۦ(Ljava/lang/Object;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v5

    invoke-static {v5, v6}, Lorg/spongycastle/crypto/agreement/ۥۥۤۢ;->ۦۣۢ(Ljava/lang/Object;I)V

    :goto_0
    return-object v4
.end method

.method public onDestroyView()V
    .locals 52

    move-object/from16 v1, p0

    invoke-super {v1}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, v1, Ldev/blaze/launcher/ui/profile/ProfileFragment;->binding:Ldev/blaze/launcher/databinding/FragmentProfileBinding;

    return-void
.end method
