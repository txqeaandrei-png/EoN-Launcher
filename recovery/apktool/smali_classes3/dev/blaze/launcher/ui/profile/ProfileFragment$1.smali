.class Ldev/blaze/launcher/ui/profile/ProfileFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/blaze/launcher/ui/profile/ProfileFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/blaze/launcher/ui/profile/ProfileFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 52

    return-void
.end method

.method constructor <init>(Ldev/blaze/launcher/ui/profile/ProfileFragment;)V
    .locals 51

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    iput-object v1, v0, Ldev/blaze/launcher/ui/profile/ProfileFragment$1;->this$0:Ldev/blaze/launcher/ui/profile/ProfileFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ۟ۧۤ۟ۢ(Ljava/lang/Object;)Ldev/blaze/launcher/ui/profile/ProfileFragment;
    .locals 2

    invoke-static {}, Landroidx/viewpager2/adapter/۟ۦۦ۠۠;->۟ۥۧۧۥ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/profile/ProfileFragment$1;

    iget-object v1, p0, Ldev/blaze/launcher/ui/profile/ProfileFragment$1;->this$0:Ldev/blaze/launcher/ui/profile/ProfileFragment;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۣ۠ۤۧ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentProfileBinding;
    .locals 1

    invoke-static {}, Lorg/apache/commons/logging/impl/ۣۥۤۢ;->۟ۡۤۦۨ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/profile/ProfileFragment;

    invoke-static {p0}, Ldev/blaze/launcher/ui/profile/ProfileFragment;->-$$Nest$fgetbinding(Ldev/blaze/launcher/ui/profile/ProfileFragment;)Ldev/blaze/launcher/databinding/FragmentProfileBinding;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 52

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    const/4 v2, 0x0

    sput-boolean v2, Ldev/blaze/launcher/ui/profile/ProfileFragment;->isLogined:Z

    const/4 v0, 0x0

    sput-object v0, Ldev/blaze/launcher/ui/profile/ProfileFragment;->currentUser:Ldev/blaze/launcher/ui/User;

    invoke-static {v1}, Ldev/blaze/launcher/ui/profile/ProfileFragment$1;->۟ۧۤ۟ۢ(Ljava/lang/Object;)Ldev/blaze/launcher/ui/profile/ProfileFragment;

    move-result-object v0

    invoke-static {v0}, Ldev/blaze/launcher/ui/profile/ProfileFragment$1;->ۣ۠ۤۧ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentProfileBinding;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/messaging/threads/ۣۡۡ۟;->ۥ۠ۦۣ(Ljava/lang/Object;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/spongycastle/crypto/agreement/ۥۥۤۢ;->ۦۣۢ(Ljava/lang/Object;I)V

    invoke-static {v1}, Ldev/blaze/launcher/ui/profile/ProfileFragment$1;->۟ۧۤ۟ۢ(Ljava/lang/Object;)Ldev/blaze/launcher/ui/profile/ProfileFragment;

    move-result-object v2

    invoke-static {v2}, Ldev/blaze/launcher/ui/profile/ProfileFragment$1;->ۣ۠ۤۧ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentProfileBinding;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/tasks/۟۟۟ۡۢ;->ۣۢۤۥ(Ljava/lang/Object;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    const/16 v0, 0x8

    invoke-static {v2, v0}, Lorg/spongycastle/crypto/agreement/ۥۥۤۢ;->ۦۣۢ(Ljava/lang/Object;I)V

    invoke-static {v1}, Ldev/blaze/launcher/ui/profile/ProfileFragment$1;->۟ۧۤ۟ۢ(Ljava/lang/Object;)Ldev/blaze/launcher/ui/profile/ProfileFragment;

    move-result-object v2

    invoke-static {v2}, Ldev/blaze/launcher/ui/profile/ProfileFragment$1;->ۣ۠ۤۧ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentProfileBinding;

    move-result-object v2

    invoke-static {v2}, Lcom/google/gson/internal/bind/ۤ۟ۨۤ;->ۣۨۧۦ(Ljava/lang/Object;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/spongycastle/crypto/agreement/ۥۥۤۢ;->ۦۣۢ(Ljava/lang/Object;I)V

    invoke-static {v1}, Ldev/blaze/launcher/ui/profile/ProfileFragment$1;->۟ۧۤ۟ۢ(Ljava/lang/Object;)Ldev/blaze/launcher/ui/profile/ProfileFragment;

    move-result-object v2

    invoke-static {v2}, Ldev/blaze/launcher/ui/profile/ProfileFragment$1;->ۣ۠ۤۧ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentProfileBinding;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/math/raw/۟ۡۢۧۤ;->ۣ۟ۧ۟ۥ(Ljava/lang/Object;)Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/iana/ۨۡۨۦ;->۟ۦۤۤۦ(Ljava/lang/Object;)V

    return-void
.end method
