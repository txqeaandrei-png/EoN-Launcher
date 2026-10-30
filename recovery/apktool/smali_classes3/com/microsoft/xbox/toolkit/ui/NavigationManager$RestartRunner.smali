.class Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/toolkit/ui/NavigationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestartRunner"
.end annotation


# instance fields
.field private final params:Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

.field final synthetic this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;->params:Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 531
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    .line 532
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 533
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onSetInactive()V

    .line 534
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onPause()V

    .line 535
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onStop()V

    .line 536
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    iget-object v1, v1, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationParameters:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "navigationParameters cannot be empty!"

    invoke-static {v2, v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Ljava/lang/String;Z)V

    .line 537
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    iget-object v1, v1, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationParameters:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 538
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    iget-object v1, v1, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationParameters:Ljava/util/Stack;

    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;->params:Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onStart()V

    .line 540
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onResume()V

    .line 541
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onSetActive()V

    .line 542
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onAnimateInStarted()V

    .line 543
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 544
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    iget-object v1, v1, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationListener:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$OnNavigatedListener;

    if-eqz v1, :cond_0

    .line 545
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    iget-object v1, v1, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationListener:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$OnNavigatedListener;

    invoke-interface {v1, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$OnNavigatedListener;->onPageRestarted(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V

    :cond_0
    return-void
.end method
