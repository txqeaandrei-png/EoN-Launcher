.class public Lcom/microsoft/xbox/service/model/FollowersData;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/service/model/FollowersData$DummyType;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5d301434c32a65e1L


# instance fields
.field private followerText:Ljava/lang/String;

.field public isCurrentlyPlaying:Z

.field protected isDummy:Z

.field public isFavorite:Z

.field public transient isNew:Z

.field protected itemDummyType:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

.field private lastPlayedWithDateTime:Ljava/util/Date;

.field private personSummary:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;

.field public presenceString:Ljava/lang/String;

.field private recentPlayerText:Ljava/lang/String;

.field private searchResultPerson:Lcom/microsoft/xbox/service/model/SearchResultPerson;

.field public status:Lcom/microsoft/xbox/service/model/UserStatus;

.field private timeStamp:Ljava/util/Date;

.field public titleId:J

.field public userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

.field public xuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->personSummary:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->isCurrentlyPlaying:Z

    .line 41
    iput-boolean v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->isDummy:Z

    .line 42
    iput-boolean v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->isNew:Z

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/xbox/service/model/FollowersData;)V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->personSummary:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->isCurrentlyPlaying:Z

    .line 92
    iput-boolean v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->isDummy:Z

    .line 93
    iput-boolean v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->isNew:Z

    .line 94
    iget-object v0, p1, Lcom/microsoft/xbox/service/model/FollowersData;->xuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->xuid:Ljava/lang/String;

    .line 95
    iget-boolean v0, p1, Lcom/microsoft/xbox/service/model/FollowersData;->isFavorite:Z

    iput-boolean v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->isFavorite:Z

    .line 96
    iget-object v0, p1, Lcom/microsoft/xbox/service/model/FollowersData;->status:Lcom/microsoft/xbox/service/model/UserStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->status:Lcom/microsoft/xbox/service/model/UserStatus;

    .line 97
    iget-object v0, p1, Lcom/microsoft/xbox/service/model/FollowersData;->presenceString:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->presenceString:Ljava/lang/String;

    .line 98
    iget-wide v0, p1, Lcom/microsoft/xbox/service/model/FollowersData;->titleId:J

    iput-wide v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->titleId:J

    .line 99
    iget-object v0, p1, Lcom/microsoft/xbox/service/model/FollowersData;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    .line 100
    iget-boolean v0, p1, Lcom/microsoft/xbox/service/model/FollowersData;->isCurrentlyPlaying:Z

    iput-boolean v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->isCurrentlyPlaying:Z

    .line 101
    iget-object v0, p1, Lcom/microsoft/xbox/service/model/FollowersData;->timeStamp:Ljava/util/Date;

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->timeStamp:Ljava/util/Date;

    .line 102
    iget-boolean p1, p1, Lcom/microsoft/xbox/service/model/FollowersData;->isDummy:Z

    iput-boolean p1, p0, Lcom/microsoft/xbox/service/model/FollowersData;->isDummy:Z

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;)V
    .locals 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->personSummary:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->isCurrentlyPlaying:Z

    .line 61
    iput-boolean v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->isDummy:Z

    .line 62
    iput-boolean v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->isNew:Z

    .line 63
    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 64
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/FollowersData;->personSummary:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;

    .line 65
    iget-object v1, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->xuid:Ljava/lang/String;

    iput-object v1, p0, Lcom/microsoft/xbox/service/model/FollowersData;->xuid:Ljava/lang/String;

    .line 66
    new-instance v1, Lcom/microsoft/xbox/service/model/UserProfileData;

    invoke-direct {v1, p1}, Lcom/microsoft/xbox/service/model/UserProfileData;-><init>(Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;)V

    iput-object v1, p0, Lcom/microsoft/xbox/service/model/FollowersData;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    .line 67
    iget-boolean v1, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->isFavorite:Z

    iput-boolean v1, p0, Lcom/microsoft/xbox/service/model/FollowersData;->isFavorite:Z

    .line 68
    iget-object v1, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->presenceState:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/xbox/service/model/UserStatus;->getStatusFromString(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/UserStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/service/model/FollowersData;->status:Lcom/microsoft/xbox/service/model/UserStatus;

    .line 69
    iget-object v1, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->presenceText:Ljava/lang/String;

    iput-object v1, p0, Lcom/microsoft/xbox/service/model/FollowersData;->presenceString:Ljava/lang/String;

    .line 70
    iget-object v1, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->titleHistory:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubTitleHistory;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->titleHistory:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubTitleHistory;

    iget-wide v1, v1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubTitleHistory;->TitleId:J

    iput-wide v1, p0, Lcom/microsoft/xbox/service/model/FollowersData;->titleId:J

    .line 72
    iget-object v1, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->titleHistory:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubTitleHistory;

    iget-object v1, v1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubTitleHistory;->LastTimePlayed:Ljava/util/Date;

    iput-object v1, p0, Lcom/microsoft/xbox/service/model/FollowersData;->timeStamp:Ljava/util/Date;

    .line 74
    :cond_0
    iget-object v1, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->recentPlayer:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecentPlayer;

    if-eqz v1, :cond_1

    .line 75
    iget-object v1, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->recentPlayer:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecentPlayer;

    iget-object v1, v1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecentPlayer;->text:Ljava/lang/String;

    iput-object v1, p0, Lcom/microsoft/xbox/service/model/FollowersData;->recentPlayerText:Ljava/lang/String;

    .line 76
    iget-object v1, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->recentPlayer:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecentPlayer;

    iget-object v1, v1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecentPlayer;->titles:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/microsoft/xbox/xle/app/XLEUtil;->isNullOrEmpty(Ljava/lang/Iterable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 77
    iget-object v1, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->recentPlayer:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecentPlayer;

    iget-object v1, v1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecentPlayer;->titles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$Title;

    iget-object v0, v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$Title;->lastPlayedWithDateTime:Ljava/util/Date;

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->lastPlayedWithDateTime:Ljava/util/Date;

    .line 80
    :cond_1
    iget-object v0, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->follower:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$Follower;

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->follower:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$Follower;

    iget-object v0, v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$Follower;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->followerText:Ljava/lang/String;

    .line 83
    :cond_2
    iget-object v0, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->titlePresence:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubTitlePresence;

    if-eqz v0, :cond_3

    .line 84
    iget-object v0, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->titlePresence:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubTitlePresence;

    iget-boolean v0, v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubTitlePresence;->IsCurrentlyPlaying:Z

    iput-boolean v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->isCurrentlyPlaying:Z

    .line 85
    iget-object p1, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->titlePresence:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubTitlePresence;

    iget-object p1, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubTitlePresence;->PresenceText:Ljava/lang/String;

    iput-object p1, p0, Lcom/microsoft/xbox/service/model/FollowersData;->presenceString:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 46
    sget-object v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->NOT_SET:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/service/model/FollowersData;-><init>(ZLcom/microsoft/xbox/service/model/FollowersData$DummyType;)V

    return-void
.end method

.method public constructor <init>(ZLcom/microsoft/xbox/service/model/FollowersData$DummyType;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->personSummary:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->isCurrentlyPlaying:Z

    .line 53
    iput-boolean v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->isNew:Z

    .line 54
    iput-boolean p1, p0, Lcom/microsoft/xbox/service/model/FollowersData;->isDummy:Z

    .line 55
    iput-object p2, p0, Lcom/microsoft/xbox/service/model/FollowersData;->itemDummyType:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    return-void
.end method


# virtual methods
.method public getFollowersTitleText()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->followerText:Ljava/lang/String;

    return-object v0
.end method

.method public getGameScore()I
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, v0, Lcom/microsoft/xbox/service/model/UserProfileData;->gamerScore:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getGamerName()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, v0, Lcom/microsoft/xbox/service/model/UserProfileData;->appDisplayName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getGamerPicUrl()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, v0, Lcom/microsoft/xbox/service/model/UserProfileData;->profileImageUrl:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGamerRealName()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 149
    :cond_0
    iget-object v0, v0, Lcom/microsoft/xbox/service/model/UserProfileData;->gamerRealName:Ljava/lang/String;

    return-object v0
.end method

.method public getGamertag()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, v0, Lcom/microsoft/xbox/service/model/UserProfileData;->gamerTag:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getIsDummy()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->isDummy:Z

    return v0
.end method

.method public getIsOnline()Z
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->status:Lcom/microsoft/xbox/service/model/UserStatus;

    sget-object v1, Lcom/microsoft/xbox/service/model/UserStatus;->Online:Lcom/microsoft/xbox/service/model/UserStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemDummyType()Lcom/microsoft/xbox/service/model/FollowersData$DummyType;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->itemDummyType:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    return-object v0
.end method

.method public getLastPlayedWithDateTime()Ljava/util/Date;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->lastPlayedWithDateTime:Ljava/util/Date;

    return-object v0
.end method

.method public getPersonSummary()Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->personSummary:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;

    return-object v0
.end method

.method public getRecentPlayerTitleText()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->recentPlayerText:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchResultPerson()Lcom/microsoft/xbox/service/model/SearchResultPerson;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->searchResultPerson:Lcom/microsoft/xbox/service/model/SearchResultPerson;

    return-object v0
.end method

.method public getTimeStamp()Ljava/util/Date;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->timeStamp:Ljava/util/Date;

    return-object v0
.end method

.method public setItemDummyType(Lcom/microsoft/xbox/service/model/FollowersData$DummyType;)V
    .locals 1

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->isDummy:Z

    .line 111
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/FollowersData;->itemDummyType:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    return-void
.end method

.method public setSearchResultPerson(Lcom/microsoft/xbox/service/model/SearchResultPerson;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/FollowersData;->searchResultPerson:Lcom/microsoft/xbox/service/model/SearchResultPerson;

    return-void
.end method

.method public setTimeStamp(Ljava/util/Date;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/FollowersData;->timeStamp:Ljava/util/Date;

    return-void
.end method
