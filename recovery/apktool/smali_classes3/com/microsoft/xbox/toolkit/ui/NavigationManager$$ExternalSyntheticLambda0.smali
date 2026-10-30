.class public final synthetic Lcom/microsoft/xbox/toolkit/ui/NavigationManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

.field public final synthetic f$1:Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

.field public final synthetic f$2:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;

.field public final synthetic f$3:Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$$ExternalSyntheticLambda0;->f$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$$ExternalSyntheticLambda0;->f$1:Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    iput-object p3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$$ExternalSyntheticLambda0;->f$2:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;

    iput-object p4, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$$ExternalSyntheticLambda0;->f$3:Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$$ExternalSyntheticLambda0;->f$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$$ExternalSyntheticLambda0;->f$1:Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$$ExternalSyntheticLambda0;->f$2:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;

    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$$ExternalSyntheticLambda0;->f$3:Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    invoke-static {v0, v1, v2, v3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->$r8$lambda$KciOe2VmUS436qM8GxFH39dS29c(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V

    return-void
.end method
