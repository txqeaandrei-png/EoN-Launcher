.class public Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserPresence"
.end annotation


# instance fields
.field private broadcastRecord:Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$BroadcastRecord;

.field private broadcastRecordSet:Z

.field public devices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$DeviceRecord;",
            ">;"
        }
    .end annotation
.end field

.field public lastSeen:Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$LastSeenRecord;

.field public state:Ljava/lang/String;

.field public xuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBroadcastRecord(J)Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$BroadcastRecord;
    .locals 5

    .line 49
    iget-boolean v0, p0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;->broadcastRecordSet:Z

    if-nez v0, :cond_4

    .line 50
    const-string v0, "Online"

    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;->devices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 54
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 57
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$DeviceRecord;

    .line 58
    invoke-virtual {v1}, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$DeviceRecord;->isXboxOne()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    iget-object v1, v1, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$DeviceRecord;->titles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 60
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;

    .line 62
    iget-wide v3, v2, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;->id:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;->isRunningInFullOrFill()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;->activity:Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$ActivityRecord;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;->activity:Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$ActivityRecord;

    iget-object v3, v3, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$ActivityRecord;->broadcast:Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$BroadcastRecord;

    if-eqz v3, :cond_2

    .line 63
    iget-object p1, v2, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;->activity:Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$ActivityRecord;

    iget-object p1, p1, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$ActivityRecord;->broadcast:Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$BroadcastRecord;

    iput-object p1, p0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;->broadcastRecord:Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$BroadcastRecord;

    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 71
    iput-boolean p1, p0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;->broadcastRecordSet:Z

    .line 73
    :cond_4
    iget-object p1, p0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;->broadcastRecord:Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$BroadcastRecord;

    return-object p1
.end method

.method public getBroadcastingViewerCount(J)I
    .locals 0

    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;->getBroadcastRecord(J)Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$BroadcastRecord;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 81
    :cond_0
    iget p1, p1, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$BroadcastRecord;->viewers:I

    return p1
.end method

.method public getXboxOneNowPlayingDate()Ljava/util/Date;
    .locals 5

    .line 110
    const-string v0, "Online"

    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 111
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;->devices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 112
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 113
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$DeviceRecord;

    .line 114
    invoke-virtual {v2}, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$DeviceRecord;->isXboxOne()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    iget-object v2, v2, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$DeviceRecord;->titles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 117
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 120
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;

    .line 121
    invoke-virtual {v3}, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;->isRunningInFullOrFill()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 122
    iget-object v1, v3, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;->lastModified:Ljava/util/Date;

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public getXboxOneNowPlayingTitleId()J
    .locals 6

    .line 86
    const-string v0, "Online"

    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_3

    .line 87
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;->devices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 88
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 89
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$DeviceRecord;

    .line 90
    invoke-virtual {v3}, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$DeviceRecord;->isXboxOne()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    iget-object v3, v3, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$DeviceRecord;->titles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 93
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 96
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;

    .line 97
    invoke-virtual {v4}, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;->isRunningInFullOrFill()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 98
    iget-wide v1, v4, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;->id:J

    goto :goto_0

    :cond_3
    return-wide v1
.end method
