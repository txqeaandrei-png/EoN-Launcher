.class public Lcom/mojang/minecraftpe/SessionInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final NOT_YET_CONFIGURED:Ljava/lang/String; = "Not yet configured"

.field private static final SEP:Ljava/lang/String; = ";"


# instance fields
.field public appVersion:I

.field public branchId:Ljava/lang/String;

.field public buildId:Ljava/lang/String;

.field public commitId:Ljava/lang/String;

.field public transient crashTimestamp:Ljava/util/Date;

.field public flavor:Ljava/lang/String;

.field public gameVersionName:Ljava/lang/String;

.field public recordDate:Ljava/util/Date;

.field public sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/mojang/minecraftpe/SessionInfo;->appVersion:I

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/mojang/minecraftpe/SessionInfo;->recordDate:Ljava/util/Date;

    .line 39
    iput-object v0, p0, Lcom/mojang/minecraftpe/SessionInfo;->crashTimestamp:Ljava/util/Date;

    .line 40
    const-string v0, "Not yet configured"

    iput-object v0, p0, Lcom/mojang/minecraftpe/SessionInfo;->sessionId:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/mojang/minecraftpe/SessionInfo;->buildId:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/mojang/minecraftpe/SessionInfo;->commitId:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/mojang/minecraftpe/SessionInfo;->branchId:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/mojang/minecraftpe/SessionInfo;->flavor:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/mojang/minecraftpe/SessionInfo;->gameVersionName:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/mojang/minecraftpe/SessionInfo;->recordDate:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Date;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/mojang/minecraftpe/SessionInfo;->crashTimestamp:Ljava/util/Date;

    .line 59
    iput-object p1, p0, Lcom/mojang/minecraftpe/SessionInfo;->sessionId:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/mojang/minecraftpe/SessionInfo;->buildId:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/mojang/minecraftpe/SessionInfo;->commitId:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/mojang/minecraftpe/SessionInfo;->branchId:Ljava/lang/String;

    .line 63
    iput-object p5, p0, Lcom/mojang/minecraftpe/SessionInfo;->flavor:Ljava/lang/String;

    .line 64
    iput-object p6, p0, Lcom/mojang/minecraftpe/SessionInfo;->gameVersionName:Ljava/lang/String;

    .line 65
    iput p7, p0, Lcom/mojang/minecraftpe/SessionInfo;->appVersion:I

    .line 66
    iput-object p8, p0, Lcom/mojang/minecraftpe/SessionInfo;->recordDate:Ljava/util/Date;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/mojang/minecraftpe/SessionInfo;
    .locals 8

    const-string v0, "Failed to parse date/time in SessionInfo string \'"

    .line 71
    new-instance v1, Lcom/mojang/minecraftpe/SessionInfo;

    invoke-direct {v1}, Lcom/mojang/minecraftpe/SessionInfo;-><init>()V

    if-eqz p0, :cond_2

    .line 72
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    const-string v2, ";"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 76
    array-length v3, v2

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    const/4 v3, 0x0

    .line 79
    aget-object v4, v2, v3

    iput-object v4, v1, Lcom/mojang/minecraftpe/SessionInfo;->sessionId:Ljava/lang/String;

    const/4 v4, 0x1

    .line 80
    aget-object v4, v2, v4

    iput-object v4, v1, Lcom/mojang/minecraftpe/SessionInfo;->buildId:Ljava/lang/String;

    const/4 v4, 0x2

    .line 81
    aget-object v4, v2, v4

    iput-object v4, v1, Lcom/mojang/minecraftpe/SessionInfo;->commitId:Ljava/lang/String;

    const/4 v4, 0x3

    .line 82
    aget-object v4, v2, v4

    iput-object v4, v1, Lcom/mojang/minecraftpe/SessionInfo;->branchId:Ljava/lang/String;

    const/4 v4, 0x4

    .line 83
    aget-object v4, v2, v4

    iput-object v4, v1, Lcom/mojang/minecraftpe/SessionInfo;->flavor:Ljava/lang/String;

    const/4 v4, 0x5

    .line 84
    aget-object v4, v2, v4

    iput-object v4, v1, Lcom/mojang/minecraftpe/SessionInfo;->gameVersionName:Ljava/lang/String;

    const/4 v4, 0x6

    .line 86
    :try_start_0
    aget-object v5, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/mojang/minecraftpe/SessionInfo;->appVersion:I

    .line 87
    invoke-static {}, Lcom/mojang/minecraftpe/SessionInfo;->getDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v5

    const/4 v6, 0x7

    aget-object v6, v2, v6

    new-instance v7, Ljava/text/ParsePosition;

    invoke-direct {v7, v3}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v5, v6, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v3

    .line 88
    iput-object v3, v1, Lcom/mojang/minecraftpe/SessionInfo;->recordDate:Ljava/util/Date;

    if-eqz v3, :cond_0

    return-object v1

    .line 92
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to convert app version \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, v2, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' into an integer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 77
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid SessionInfo string \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\', must be 8 parts split by \';\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Empty SessionInfo string"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getDateFormat()Ljava/text/SimpleDateFormat;
    .locals 2

    .line 100
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy-HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 101
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method


# virtual methods
.method public setContents(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p2, p0, Lcom/mojang/minecraftpe/SessionInfo;->sessionId:Ljava/lang/String;

    .line 107
    iput-object p3, p0, Lcom/mojang/minecraftpe/SessionInfo;->buildId:Ljava/lang/String;

    .line 108
    iput-object p4, p0, Lcom/mojang/minecraftpe/SessionInfo;->commitId:Ljava/lang/String;

    .line 109
    iput-object p5, p0, Lcom/mojang/minecraftpe/SessionInfo;->branchId:Ljava/lang/String;

    .line 110
    iput-object p6, p0, Lcom/mojang/minecraftpe/SessionInfo;->flavor:Ljava/lang/String;

    .line 111
    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/SessionInfo;->updateJavaConstants(Landroid/content/Context;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mojang/minecraftpe/SessionInfo;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mojang/minecraftpe/SessionInfo;->buildId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mojang/minecraftpe/SessionInfo;->commitId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mojang/minecraftpe/SessionInfo;->branchId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mojang/minecraftpe/SessionInfo;->flavor:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mojang/minecraftpe/SessionInfo;->gameVersionName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mojang/minecraftpe/SessionInfo;->appVersion:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mojang/minecraftpe/SessionInfo;->getDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/mojang/minecraftpe/SessionInfo;->recordDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateJavaConstants(Landroid/content/Context;)V
    .locals 2

    .line 115
    sget v0, Lcom/mojang/minecraftpe/AppConstants;->APP_VERSION:I

    iput v0, p0, Lcom/mojang/minecraftpe/SessionInfo;->appVersion:I

    .line 117
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object p1, p0, Lcom/mojang/minecraftpe/SessionInfo;->gameVersionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    const-string p1, "Not found"

    iput-object p1, p0, Lcom/mojang/minecraftpe/SessionInfo;->gameVersionName:Ljava/lang/String;

    :goto_0
    return-void
.end method
