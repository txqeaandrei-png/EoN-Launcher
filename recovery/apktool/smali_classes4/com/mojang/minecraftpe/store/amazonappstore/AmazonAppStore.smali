.class public Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mojang/minecraftpe/store/Store;


# static fields
.field static final IAB_BROADCAST_ACTION:Ljava/lang/String; = "com.android.vending.billing.PURCHASES_UPDATED"


# instance fields
.field mActivity:Lcom/mojang/minecraftpe/MainActivity;

.field private mForFireTV:Z

.field mListener:Lcom/mojang/minecraftpe/store/StoreListener;

.field mPurchaseRequestCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mojang/minecraftpe/store/StoreListener;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AmazonAppStore:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 21
    iput-object p2, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mojang/minecraftpe/store/StoreListener;Z)V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AmazonAppStore:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 26
    iput-object p2, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    .line 27
    iput-boolean p3, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->mForFireTV:Z

    return-void
.end method


# virtual methods
.method public acknowledgePurchase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public destructor()V
    .locals 2

    .line 67
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "AmazonAppStore: Destructor"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getExtraLicenseData()Lcom/mojang/minecraftpe/store/ExtraLicenseResponseData;
    .locals 9

    const/4 v0, 0x3

    .line 43
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    .line 44
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

    .line 59
    iget-boolean v0, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->mForFireTV:Z

    if-eqz v0, :cond_0

    const-string v0, "firetv."

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getRealmsSkuPrefix()Ljava/lang/String;
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->mForFireTV:Z

    if-eqz v0, :cond_0

    const-string v0, "firetv."

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getStoreId()Ljava/lang/String;
    .locals 1

    .line 31
    const-string v0, "android.amazonappstore"

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
    .locals 1

    .line 48
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "AmazonAppStore: Query products"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public queryPurchases()V
    .locals 2

    .line 55
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "AmazonAppStore: Query purchases"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public receivedLicenseResponse()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
