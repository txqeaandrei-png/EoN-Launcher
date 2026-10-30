.class public Lcom/mojang/minecraftpe/packagesource/NativePackageSourceListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mojang/minecraftpe/packagesource/PackageSourceListener;


# instance fields
.field mPackageSourceListener:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcom/mojang/minecraftpe/packagesource/NativePackageSourceListener;->mPackageSourceListener:J

    return-void
.end method


# virtual methods
.method public native nativeOnDownloadProgress(JJJFJ)V
.end method

.method public native nativeOnDownloadStarted(J)V
.end method

.method public native nativeOnDownloadStateChanged(JZZZZZII)V
.end method

.method public native nativeOnMountStateChanged(JLjava/lang/String;I)V
.end method

.method public onDownloadProgress(JJFJ)V
    .locals 11

    move-object v10, p0

    .line 33
    iget-wide v1, v10, Lcom/mojang/minecraftpe/packagesource/NativePackageSourceListener;->mPackageSourceListener:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move/from16 v7, p5

    move-wide/from16 v8, p6

    invoke-virtual/range {v0 .. v9}, Lcom/mojang/minecraftpe/packagesource/NativePackageSourceListener;->nativeOnDownloadProgress(JJJFJ)V

    return-void
.end method

.method public onDownloadStarted()V
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/mojang/minecraftpe/packagesource/NativePackageSourceListener;->mPackageSourceListener:J

    invoke-virtual {p0, v0, v1}, Lcom/mojang/minecraftpe/packagesource/NativePackageSourceListener;->nativeOnDownloadStarted(J)V

    return-void
.end method

.method public onDownloadStateChanged(ZZZZZII)V
    .locals 11

    move-object v10, p0

    .line 28
    iget-wide v1, v10, Lcom/mojang/minecraftpe/packagesource/NativePackageSourceListener;->mPackageSourceListener:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/mojang/minecraftpe/packagesource/NativePackageSourceListener;->nativeOnDownloadStateChanged(JZZZZZII)V

    return-void
.end method

.method public onMountStateChanged(Ljava/lang/String;I)V
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/mojang/minecraftpe/packagesource/NativePackageSourceListener;->mPackageSourceListener:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/mojang/minecraftpe/packagesource/NativePackageSourceListener;->nativeOnMountStateChanged(JLjava/lang/String;I)V

    return-void
.end method

.method public setListener(J)V
    .locals 0

    .line 18
    iput-wide p1, p0, Lcom/mojang/minecraftpe/packagesource/NativePackageSourceListener;->mPackageSourceListener:J

    return-void
.end method
