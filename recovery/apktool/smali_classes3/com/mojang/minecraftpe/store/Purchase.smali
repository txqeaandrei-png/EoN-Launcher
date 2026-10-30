.class public Lcom/mojang/minecraftpe/store/Purchase;
.super Ljava/lang/Object;


# instance fields
.field public mPlatformPurchaseId:Ljava/lang/String;

.field public mProductId:Ljava/lang/String;

.field public mPurchaseActive:Z

.field public mReceipt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/mojang/minecraftpe/store/Purchase;->mProductId:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/mojang/minecraftpe/store/Purchase;->mPlatformPurchaseId:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/mojang/minecraftpe/store/Purchase;->mReceipt:Ljava/lang/String;

    .line 22
    iput-boolean p4, p0, Lcom/mojang/minecraftpe/store/Purchase;->mPurchaseActive:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/mojang/minecraftpe/store/Purchase;->mProductId:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/mojang/minecraftpe/store/Purchase;->mReceipt:Ljava/lang/String;

    .line 15
    iput-boolean p3, p0, Lcom/mojang/minecraftpe/store/Purchase;->mPurchaseActive:Z

    return-void
.end method
