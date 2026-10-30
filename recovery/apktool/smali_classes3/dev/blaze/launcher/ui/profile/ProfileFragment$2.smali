.class Ldev/blaze/launcher/ui/profile/ProfileFragment$2;
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


# static fields
.field private static final short:[S


# instance fields
.field final synthetic this$0:Ldev/blaze/launcher/ui/profile/ProfileFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 52

    const v0, 0x16

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Ldev/blaze/launcher/ui/profile/ProfileFragment$2;->short:[S

    return-void

    nop

    :array_0
    .array-data 2
        0x395s
        0x384s
        0x392s
        0x395s
        0x2aas
        0x2a9s
        0x2a8s
        0x2afs
        0x2aes
        0x2ads
        0x2dbs
        0x2f4s
        0x2ees
        0x2efs
        0x2f7s
        0x2f4s
        0x2f4s
        0x2f0s
        0x2b5s
        0x2f8s
        0x2f4s
        0x2f6s
    .end array-data
.end method

.method constructor <init>(Ldev/blaze/launcher/ui/profile/ProfileFragment;)V
    .locals 51

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    iput-object v1, v0, Ldev/blaze/launcher/ui/profile/ProfileFragment$2;->this$0:Ldev/blaze/launcher/ui/profile/ProfileFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ۟۠ۥۧۦ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentProfileBinding;
    .locals 1

    invoke-static {}, Lcom/google/android/material/motion/ۣ۟ۤۡۤ;->ۧۨۥۢ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/profile/ProfileFragment;

    invoke-static {p0}, Ldev/blaze/launcher/ui/profile/ProfileFragment;->-$$Nest$fgetbinding(Ldev/blaze/launcher/ui/profile/ProfileFragment;)Ldev/blaze/launcher/databinding/FragmentProfileBinding;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۠ۤۢ۠(Ljava/lang/Object;)Ldev/blaze/launcher/ui/profile/ProfileFragment;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/actions/ۣۨۨۦ;->ۦۥۨ۟()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/profile/ProfileFragment$2;

    iget-object v1, p0, Ldev/blaze/launcher/ui/profile/ProfileFragment$2;->this$0:Ldev/blaze/launcher/ui/profile/ProfileFragment;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۥۨۡۢ()[S
    .locals 1

    invoke-static {}, Landroidx/core/text/util/۟ۦۨۥ۟;->۟ۡۢۤ()I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Ldev/blaze/launcher/ui/profile/ProfileFragment$2;->short:[S

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

    const/4 v2, 0x1

    sput-boolean v2, Ldev/blaze/launcher/ui/profile/ProfileFragment;->isLogined:Z

    new-instance v2, Ldev/blaze/launcher/ui/User;

    invoke-direct {v2}, Ldev/blaze/launcher/ui/User;-><init>()V

    sput-object v2, Ldev/blaze/launcher/ui/profile/ProfileFragment;->currentUser:Ldev/blaze/launcher/ui/User;

    invoke-static {}, Lkotlin/io/ۡۦۧ۟;->۟ۦۥۤۦ()Ldev/blaze/launcher/ui/User;

    move-result-object v2

    invoke-static/range {}, Ldev/blaze/launcher/ui/profile/ProfileFragment$2;->ۥۨۡۢ()[S

    move-result-object v31

    const v34, 0x3c1

    const v32, 0x0

    const v33, 0x4

    invoke-static/range {v31 .. v34}, Landroidx/lifecycle/livedata/core/ۥ۟ۨ۠;->ۣ۟ۥۤ([SIII)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v2, Ldev/blaze/launcher/ui/User;->userName:Ljava/lang/String;

    invoke-static {}, Lkotlin/io/ۡۦۧ۟;->۟ۦۥۤۦ()Ldev/blaze/launcher/ui/User;

    move-result-object v2

    invoke-static/range {}, Ldev/blaze/launcher/ui/profile/ProfileFragment$2;->ۥۨۡۢ()[S

    move-result-object v20

    const v23, 0x29b

    const v21, 0x4

    const v22, 0x12

    invoke-static/range {v20 .. v23}, Landroid/support/customtabs/۟ۦۣۧۦ;->۟۠۟ۨ۠([SIII)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v2, Ldev/blaze/launcher/ui/User;->email:Ljava/lang/String;

    invoke-static {v1}, Ldev/blaze/launcher/ui/profile/ProfileFragment$2;->۠ۤۢ۠(Ljava/lang/Object;)Ldev/blaze/launcher/ui/profile/ProfileFragment;

    move-result-object v2

    invoke-static {v2}, Ldev/blaze/launcher/ui/profile/ProfileFragment$2;->۟۠ۥۧۦ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentProfileBinding;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/ۣ۟ۤۨ;->۟۟ۨۧۤ(Ljava/lang/Object;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {}, Lkotlin/io/ۡۦۧ۟;->۟ۦۥۤۦ()Ldev/blaze/launcher/ui/User;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/iso/ۥۨ۟۟;->۟ۧۢۨ۠(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/spongycastle/mozilla/jcajce/ۨۨ۟;->ۧۨۤۥ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Ldev/blaze/launcher/ui/profile/ProfileFragment$2;->۠ۤۢ۠(Ljava/lang/Object;)Ldev/blaze/launcher/ui/profile/ProfileFragment;

    move-result-object v2

    invoke-static {v2}, Ldev/blaze/launcher/ui/profile/ProfileFragment$2;->۟۠ۥۧۦ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentProfileBinding;

    move-result-object v2

    invoke-static {v2}, Landroidx/profileinstaller/ۦۤۧ۠;->۠ۧ۟ۥ(Ljava/lang/Object;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {}, Lkotlin/io/ۡۦۧ۟;->۟ۦۥۤۦ()Ldev/blaze/launcher/ui/User;

    move-result-object v0

    invoke-static {v0}, Lcom/braze/ui/banners/۟ۡۦۤۡ;->ۤۧۥ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/spongycastle/mozilla/jcajce/ۨۨ۟;->ۧۨۤۥ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Ldev/blaze/launcher/ui/profile/ProfileFragment$2;->۠ۤۢ۠(Ljava/lang/Object;)Ldev/blaze/launcher/ui/profile/ProfileFragment;

    move-result-object v2

    invoke-static {v2}, Ldev/blaze/launcher/ui/profile/ProfileFragment$2;->۟۠ۥۧۦ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentProfileBinding;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/messaging/threads/ۣۡۡ۟;->ۥ۠ۦۣ(Ljava/lang/Object;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    const/16 v0, 0x8

    invoke-static {v2, v0}, Lorg/spongycastle/crypto/agreement/ۥۥۤۢ;->ۦۣۢ(Ljava/lang/Object;I)V

    invoke-static {v1}, Ldev/blaze/launcher/ui/profile/ProfileFragment$2;->۠ۤۢ۠(Ljava/lang/Object;)Ldev/blaze/launcher/ui/profile/ProfileFragment;

    move-result-object v2

    invoke-static {v2}, Ldev/blaze/launcher/ui/profile/ProfileFragment$2;->۟۠ۥۧۦ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentProfileBinding;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/tasks/۟۟۟ۡۢ;->ۣۢۤۥ(Ljava/lang/Object;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/spongycastle/crypto/agreement/ۥۥۤۢ;->ۦۣۢ(Ljava/lang/Object;I)V

    invoke-static {v1}, Ldev/blaze/launcher/ui/profile/ProfileFragment$2;->۠ۤۢ۠(Ljava/lang/Object;)Ldev/blaze/launcher/ui/profile/ProfileFragment;

    move-result-object v2

    invoke-static {v2}, Ldev/blaze/launcher/ui/profile/ProfileFragment$2;->۟۠ۥۧۦ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentProfileBinding;

    move-result-object v2

    invoke-static {v2}, Lcom/google/gson/internal/bind/ۤ۟ۨۤ;->ۣۨۧۦ(Ljava/lang/Object;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    const/4 v0, 0x0

    invoke-static {v2, v0}, Lorg/spongycastle/crypto/agreement/ۥۥۤۢ;->ۦۣۢ(Ljava/lang/Object;I)V

    invoke-static {v1}, Ldev/blaze/launcher/ui/profile/ProfileFragment$2;->۠ۤۢ۠(Ljava/lang/Object;)Ldev/blaze/launcher/ui/profile/ProfileFragment;

    move-result-object v2

    invoke-static {v2}, Ldev/blaze/launcher/ui/profile/ProfileFragment$2;->۟۠ۥۧۦ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/FragmentProfileBinding;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/math/raw/۟ۡۢۧۤ;->ۣ۟ۧ۟ۥ(Ljava/lang/Object;)Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/iana/ۨۡۨۦ;->۟ۦۤۤۦ(Ljava/lang/Object;)V

    return-void
.end method
