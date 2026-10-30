.class public abstract Lcom/mojang/minecraftpe/packagesource/PackageSource;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mojang/minecraftpe/packagesource/PackageSource$StringResourceId;
    }
.end annotation


# static fields
.field static final stringMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/mojang/minecraftpe/packagesource/PackageSource$StringResourceId;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/mojang/minecraftpe/packagesource/PackageSource$StringResourceId;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/mojang/minecraftpe/packagesource/PackageSource;->stringMap:Ljava/util/EnumMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStringResource(Lcom/mojang/minecraftpe/packagesource/PackageSource$StringResourceId;)Ljava/lang/String;
    .locals 2

    .line 27
    sget-object v0, Lcom/mojang/minecraftpe/packagesource/PackageSource;->stringMap:Ljava/util/EnumMap;

    .line 28
    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/packagesource/PackageSource$StringResourceId;->name()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getStringResource - id: %s is not set."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageSource"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/packagesource/PackageSource$StringResourceId;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setStringResource(ILjava/lang/String;)V
    .locals 0

    .line 15
    invoke-static {p0}, Lcom/mojang/minecraftpe/packagesource/PackageSource$StringResourceId;->fromInt(I)Lcom/mojang/minecraftpe/packagesource/PackageSource$StringResourceId;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/mojang/minecraftpe/packagesource/PackageSource;->setStringResource(Lcom/mojang/minecraftpe/packagesource/PackageSource$StringResourceId;Ljava/lang/String;)V

    return-void
.end method

.method public static setStringResource(Lcom/mojang/minecraftpe/packagesource/PackageSource$StringResourceId;Ljava/lang/String;)V
    .locals 3

    .line 19
    sget-object v0, Lcom/mojang/minecraftpe/packagesource/PackageSource;->stringMap:Ljava/util/EnumMap;

    .line 20
    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/packagesource/PackageSource$StringResourceId;->name()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setStringResource - id: %s already set."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageSource"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_0
    invoke-virtual {v0, p0, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract abortDownload()V
.end method

.method public abstract destructor()V
.end method

.method public abstract downloadFiles(Ljava/lang/String;JZZ)V
.end method

.method public abstract getDownloadDirectoryPath()Ljava/lang/String;
.end method

.method public abstract getMountPath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract mountFiles(Ljava/lang/String;)V
.end method

.method public abstract pauseDownload()V
.end method

.method public abstract resumeDownload()V
.end method

.method public abstract resumeDownloadOnCell()V
.end method

.method public abstract unmountFiles(Ljava/lang/String;)V
.end method
