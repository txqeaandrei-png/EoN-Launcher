.class public final synthetic Lcom/microsoft/xbox/toolkit/DataLoadUtil$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Lcom/microsoft/xbox/toolkit/XLEException;

.field public final synthetic f$3:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;


# direct methods
.method public synthetic constructor <init>(Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$$ExternalSyntheticLambda1;->f$0:Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;

    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$$ExternalSyntheticLambda1;->f$2:Lcom/microsoft/xbox/toolkit/XLEException;

    iput-object p4, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$$ExternalSyntheticLambda1;->f$3:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$$ExternalSyntheticLambda1;->f$0:Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$$ExternalSyntheticLambda1;->f$2:Lcom/microsoft/xbox/toolkit/XLEException;

    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$$ExternalSyntheticLambda1;->f$3:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-static {v0, v1, v2, v3}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->lambda$postExecute$0(Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method
