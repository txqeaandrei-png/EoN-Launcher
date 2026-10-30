.class public Lcom/microsoft/xbox/service/model/SearchResultPerson;
.super Ljava/lang/Object;


# instance fields
.field public GamertagAfter:Ljava/lang/String;

.field public GamertagBefore:Ljava/lang/String;

.field public GamertagMatch:Ljava/lang/String;

.field public RealNameAfter:Ljava/lang/String;

.field public RealNameBefore:Ljava/lang/String;

.field public RealNameMatch:Ljava/lang/String;

.field public SearchText:Ljava/lang/String;

.field public StatusAfter:Ljava/lang/String;

.field public StatusBefore:Ljava/lang/String;

.field public StatusMatch:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/service/model/FollowersData;Ljava/lang/String;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p2}, Lcom/microsoft/xbox/service/model/SearchResultPerson;->isNullOrWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    iput-object p2, p0, Lcom/microsoft/xbox/service/model/SearchResultPerson;->SearchText:Ljava/lang/String;

    .line 32
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/service/model/SearchResultPerson;->setInlineRuns(Lcom/microsoft/xbox/service/model/FollowersData;)V

    return-void

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static getRuns(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    invoke-static {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->findWordIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    const/4 v3, 0x0

    .line 43
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method private static isNullOrWhitespace(Ljava/lang/String;)Z
    .locals 1

    .line 55
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private setInlineRuns(Lcom/microsoft/xbox/service/model/FollowersData;)V
    .locals 6

    .line 59
    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/FollowersData;->getGamertag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/service/model/SearchResultPerson;->SearchText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/service/model/SearchResultPerson;->getRuns(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 60
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-ne v1, v5, :cond_0

    .line 61
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/microsoft/xbox/service/model/SearchResultPerson;->GamertagBefore:Ljava/lang/String;

    .line 62
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/microsoft/xbox/service/model/SearchResultPerson;->GamertagMatch:Ljava/lang/String;

    .line 63
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/SearchResultPerson;->GamertagAfter:Ljava/lang/String;

    .line 65
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/FollowersData;->getGamerRealName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/service/model/SearchResultPerson;->SearchText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/service/model/SearchResultPerson;->getRuns(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 66
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 67
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/microsoft/xbox/service/model/SearchResultPerson;->RealNameBefore:Ljava/lang/String;

    .line 68
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/microsoft/xbox/service/model/SearchResultPerson;->RealNameMatch:Ljava/lang/String;

    .line 69
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/SearchResultPerson;->RealNameAfter:Ljava/lang/String;

    .line 71
    :cond_1
    iget-object p1, p1, Lcom/microsoft/xbox/service/model/FollowersData;->presenceString:Ljava/lang/String;

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/SearchResultPerson;->SearchText:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/microsoft/xbox/service/model/SearchResultPerson;->getRuns(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 72
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 73
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/SearchResultPerson;->StatusBefore:Ljava/lang/String;

    .line 74
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/SearchResultPerson;->StatusMatch:Ljava/lang/String;

    .line 75
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/microsoft/xbox/service/model/SearchResultPerson;->StatusAfter:Ljava/lang/String;

    :cond_2
    return-void
.end method
