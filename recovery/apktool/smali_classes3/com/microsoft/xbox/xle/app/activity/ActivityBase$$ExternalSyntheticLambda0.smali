.class public final synthetic Lcom/microsoft/xbox/xle/app/activity/ActivityBase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/ref/WeakReference;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->lambda$onAnimateInCompleted$0(Ljava/lang/ref/WeakReference;)V

    return-void
.end method
