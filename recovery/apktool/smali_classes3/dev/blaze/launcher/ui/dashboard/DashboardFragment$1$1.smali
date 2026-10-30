.class Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object v1, v0, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1$1;->this$1:Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ۟ۡۦۧۢ(Ljava/lang/Object;Z)V
    .locals 1

    invoke-static {}, Lcom/braze/ui/contentcards/view/ۣۦۦ;->ۣ۠ۤۧ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;

    invoke-static {p0, p1}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;->-$$Nest$fputisNeedStart(Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;Z)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۟ۧۥۤۨ(Ljava/lang/Object;)Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;
    .locals 2

    invoke-static {}, Landroidx/lifecycle/livedata/core/ۣۢۥۦ;->۟ۢ۟۠ۤ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1$1;

    iget-object v1, p0, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1$1;->this$1:Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 52

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1$1;->۟ۧۥۤۨ(Ljava/lang/Object;)Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1;

    move-result-object v2

    const/4 v0, 0x0

    invoke-static {v2, v0}, Ldev/blaze/launcher/ui/dashboard/DashboardFragment$1$1;->۟ۡۦۧۢ(Ljava/lang/Object;Z)V

    return-void
.end method
