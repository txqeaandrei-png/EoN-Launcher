.class public final synthetic Lcom/microsoft/xbox/toolkit/DataLoadUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;


# direct methods
.method public synthetic constructor <init>(Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$$ExternalSyntheticLambda0;->f$0:Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$$ExternalSyntheticLambda0;->f$0:Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;->onPreExecute()V

    return-void
.end method
