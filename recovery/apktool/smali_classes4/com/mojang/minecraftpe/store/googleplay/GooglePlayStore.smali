.class public Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mojang/minecraftpe/store/Store;


# instance fields
.field mActivity:Lcom/mojang/minecraftpe/MainActivity;

.field mListener:Lcom/mojang/minecraftpe/store/StoreListener;


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/MainActivity;Ljava/lang/String;Lcom/mojang/minecraftpe/store/StoreListener;)V
    .locals 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    .line 17
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GooglePlayStore:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 18
    iput-object p3, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    const/4 p1, 0x1

    .line 19
    invoke-interface {p3, p1}, Lcom/mojang/minecraftpe/store/StoreListener;->onStoreInitialized(Z)V

    return-void
.end method


# virtual methods
.method public acknowledgePurchase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public destructor()V
    .locals 0

    return-void
.end method

.method public getExtraLicenseData()Lcom/mojang/minecraftpe/store/ExtraLicenseResponseData;
    .locals 9

    const/4 v0, 0x3

    .line 31
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    .line 32
    new-instance v8, Lcom/mojang/minecraftpe/store/ExtraLicenseResponseData;

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const/4 v1, 0x1

    aget-wide v4, v0, v1

    const/4 v1, 0x2

    aget-wide v6, v0, v1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/mojang/minecraftpe/store/ExtraLicenseResponseData;-><init>(JJJ)V

    return-object v8

    :array_0
    .array-data 8
        0xea60
        0x0
        0x0
    .end array-data
.end method

.method public getProductSkuPrefix()Ljava/lang/String;
    .locals 1

    .line 45
    const-string v0, ""

    return-object v0
.end method

.method public getRealmsSkuPrefix()Ljava/lang/String;
    .locals 1

    .line 49
    const-string v0, ""

    return-object v0
.end method

.method public getStoreId()Ljava/lang/String;
    .locals 1

    .line 23
    const-string v0, "android.googleplay"

    return-object v0
.end method

.method public hasVerifiedLicense()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public purchase(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public purchaseGame()V
    .locals 0

    return-void
.end method

.method public queryProducts([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public queryPurchases()V
    .locals 0

    return-void
.end method

.method public receivedLicenseResponse()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
