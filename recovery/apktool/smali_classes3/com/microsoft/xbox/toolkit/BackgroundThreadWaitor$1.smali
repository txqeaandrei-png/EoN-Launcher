.class Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->waitForReady(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$1;->this$0:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$1;->this$0:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->updateWaitReady()V

    return-void
.end method
