.class public Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$BroadcastRecord;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BroadcastRecord"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public provider:Ljava/lang/String;

.field public session:Ljava/lang/String;

.field public viewers:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
