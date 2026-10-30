.class Ldev/blaze/launcher/Server/MyService$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/blaze/launcher/Server/MyService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/blaze/launcher/Server/MyService;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Ldev/blaze/launcher/Server/MyService;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Ldev/blaze/launcher/Server/MyService$1;->this$0:Ldev/blaze/launcher/Server/MyService;

    iput-object p2, p0, Ldev/blaze/launcher/Server/MyService$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 90
    :try_start_0
    invoke-static {}, Ldev/blaze/launcher/Server/ShowImgui;->getWindowRect()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 91
    iget-object v1, p0, Ldev/blaze/launcher/Server/MyService$1;->this$0:Ldev/blaze/launcher/Server/MyService;

    invoke-static {v1}, Ldev/blaze/launcher/Server/MyService;->-$$Nest$fgetvParams(Ldev/blaze/launcher/Server/MyService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 92
    iget-object v1, p0, Ldev/blaze/launcher/Server/MyService$1;->this$0:Ldev/blaze/launcher/Server/MyService;

    invoke-static {v1}, Ldev/blaze/launcher/Server/MyService;->-$$Nest$fgetvParams(Ldev/blaze/launcher/Server/MyService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 93
    iget-object v1, p0, Ldev/blaze/launcher/Server/MyService$1;->this$0:Ldev/blaze/launcher/Server/MyService;

    invoke-static {v1}, Ldev/blaze/launcher/Server/MyService;->-$$Nest$fgetvParams(Ldev/blaze/launcher/Server/MyService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 94
    iget-object v1, p0, Ldev/blaze/launcher/Server/MyService$1;->this$0:Ldev/blaze/launcher/Server/MyService;

    invoke-static {v1}, Ldev/blaze/launcher/Server/MyService;->-$$Nest$fgetvParams(Ldev/blaze/launcher/Server/MyService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 95
    iget-object v0, p0, Ldev/blaze/launcher/Server/MyService$1;->this$0:Ldev/blaze/launcher/Server/MyService;

    invoke-static {v0}, Ldev/blaze/launcher/Server/MyService;->-$$Nest$fgetmanager(Ldev/blaze/launcher/Server/MyService;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Ldev/blaze/launcher/Server/MyService$1;->this$0:Ldev/blaze/launcher/Server/MyService;

    invoke-static {v1}, Ldev/blaze/launcher/Server/MyService;->-$$Nest$fgetvTouch(Ldev/blaze/launcher/Server/MyService;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Ldev/blaze/launcher/Server/MyService$1;->this$0:Ldev/blaze/launcher/Server/MyService;

    invoke-static {v2}, Ldev/blaze/launcher/Server/MyService;->-$$Nest$fgetvParams(Ldev/blaze/launcher/Server/MyService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :catch_0
    iget-object v0, p0, Ldev/blaze/launcher/Server/MyService$1;->val$handler:Landroid/os/Handler;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
