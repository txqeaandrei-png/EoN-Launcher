.class public Lcom/mojang/minecraftpe/packagesource/StubPackageSource;
.super Lcom/mojang/minecraftpe/packagesource/PackageSource;


# instance fields
.field private final listener:Lcom/mojang/minecraftpe/packagesource/PackageSourceListener;


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/packagesource/PackageSourceListener;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/mojang/minecraftpe/packagesource/PackageSource;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/mojang/minecraftpe/packagesource/StubPackageSource;->listener:Lcom/mojang/minecraftpe/packagesource/PackageSourceListener;

    return-void
.end method


# virtual methods
.method public abortDownload()V
    .locals 0

    return-void
.end method

.method public destructor()V
    .locals 0

    return-void
.end method

.method public downloadFiles(Ljava/lang/String;JZZ)V
    .locals 8

    .line 22
    iget-object v0, p0, Lcom/mojang/minecraftpe/packagesource/StubPackageSource;->listener:Lcom/mojang/minecraftpe/packagesource/PackageSourceListener;

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v7}, Lcom/mojang/minecraftpe/packagesource/PackageSourceListener;->onDownloadStateChanged(ZZZZZII)V

    return-void
.end method

.method public getDownloadDirectoryPath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMountPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public mountFiles(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public pauseDownload()V
    .locals 0

    return-void
.end method

.method public resumeDownload()V
    .locals 0

    return-void
.end method

.method public resumeDownloadOnCell()V
    .locals 0

    return-void
.end method

.method public unmountFiles(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
