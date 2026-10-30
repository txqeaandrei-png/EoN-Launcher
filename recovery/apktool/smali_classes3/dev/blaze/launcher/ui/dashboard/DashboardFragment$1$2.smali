.class Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;


# direct methods
.method static constructor <clinit>()V
    .locals 52

    return-void
.end method

.method constructor <init>(Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;)V
    .locals 51

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    iput-object v1, v0, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1$2;->this$1:Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ۟ۢۡۤۤ(Ljava/lang/Object;)Ldev/blaze/launcher/ui/dashboard/DashboardFragment;
    .locals 2

    invoke-static {}, Landroidx/concurrent/futures/ۦۢۦۢ;->۟ۡۢۥۤ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;

    iget-object v1, p0, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;->this$0:Ldev/blaze/launcher/ui/dashboard/DashboardFragment;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۟ۧۤۢۨ(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {}, Lcom/braze/ui/inappmessage/factories/ۣ۟۟ۦۢ;->ۣۣۨۡ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;

    invoke-static {p0}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;->-$$Nest$fgetisNeedStart(Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۡ۠۟۠(Ljava/lang/Object;)Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;
    .locals 2

    invoke-static {}, Lorg/spongycastle/crypto/ۣۢ;->ۣ۟ۧۢۦ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1$2;

    iget-object v1, p0, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1$2;->this$1:Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۣۣ۟ۡ(Ljava/lang/Object;)Landroidx/fragment/app/FragmentActivity;
    .locals 1

    invoke-static {}, Lorg/apache/http/io/ۦۣۡۤ;->ۥۢ۠ۢ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/dashboard/DashboardFragment;

    invoke-virtual {p0}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 55

    move-object/from16 v4, p0

    invoke-static {v4}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1$2;->ۡ۠۟۠(Ljava/lang/Object;)Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;

    move-result-object v0

    invoke-static {v0}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1$2;->۟ۧۤۢۨ(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v4}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1$2;->ۡ۠۟۠(Ljava/lang/Object;)Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;

    move-result-object v0

    invoke-static {v0}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1$2;->۟ۢۡۤۤ(Ljava/lang/Object;)Ldev/blaze/launcher/ui/dashboard/DashboardFragment;

    move-result-object v0

    invoke-static {v0}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1$2;->ۣۣ۟ۡ(Ljava/lang/Object;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sput-object v0, Ldev/blaze/launcher/GLES3JNIView;->mainActivity:Landroid/app/Activity;

    invoke-static {v4}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1$2;->ۡ۠۟۠(Ljava/lang/Object;)Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;

    move-result-object v0

    invoke-static {v0}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1$2;->۟ۢۡۤۤ(Ljava/lang/Object;)Ldev/blaze/launcher/ui/dashboard/DashboardFragment;

    move-result-object v0

    invoke-static {v0}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1$2;->ۣۣ۟ۡ(Ljava/lang/Object;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {v4}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1$2;->ۡ۠۟۠(Ljava/lang/Object;)Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;

    move-result-object v2

    invoke-static {v2}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1$2;->۟ۢۡۤۤ(Ljava/lang/Object;)Ldev/blaze/launcher/ui/dashboard/DashboardFragment;

    move-result-object v2

    invoke-static {v2}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1$2;->ۣۣ۟ۡ(Ljava/lang/Object;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Ldev/blaze/launcher/GameActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Lcom/braze/ui/inappmessage/config/ۣ۠۠ۤ;->ۣۡۡۤ(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
