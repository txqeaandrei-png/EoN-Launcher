.class public Lcom/mojang/minecraftpe/store/NativeStoreListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mojang/minecraftpe/store/StoreListener;


# instance fields
.field mStoreListener:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lcom/mojang/minecraftpe/store/NativeStoreListener;->mStoreListener:J

    return-void
.end method


# virtual methods
.method public native onPurchaseCanceled(JLjava/lang/String;)V
.end method

.method public onPurchaseCanceled(Ljava/lang/String;)V
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/mojang/minecraftpe/store/NativeStoreListener;->mStoreListener:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/mojang/minecraftpe/store/NativeStoreListener;->onPurchaseCanceled(JLjava/lang/String;)V

    return-void
.end method

.method public native onPurchaseFailed(JLjava/lang/String;)V
.end method

.method public onPurchaseFailed(Ljava/lang/String;)V
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/mojang/minecraftpe/store/NativeStoreListener;->mStoreListener:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/mojang/minecraftpe/store/NativeStoreListener;->onPurchaseFailed(JLjava/lang/String;)V

    return-void
.end method

.method public native onPurchaseSuccessful(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public onPurchaseSuccessful(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/mojang/minecraftpe/store/NativeStoreListener;->mStoreListener:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/mojang/minecraftpe/store/NativeStoreListener;->onPurchaseSuccessful(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onQueryProductsFail()V
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/mojang/minecraftpe/store/NativeStoreListener;->mStoreListener:J

    invoke-virtual {p0, v0, v1}, Lcom/mojang/minecraftpe/store/NativeStoreListener;->onQueryProductsFail(J)V

    return-void
.end method

.method public native onQueryProductsFail(J)V
.end method

.method public native onQueryProductsSuccess(J[Lcom/mojang/minecraftpe/store/Product;)V
.end method

.method public onQueryProductsSuccess([Lcom/mojang/minecraftpe/store/Product;)V
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/mojang/minecraftpe/store/NativeStoreListener;->mStoreListener:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/mojang/minecraftpe/store/NativeStoreListener;->onQueryProductsSuccess(J[Lcom/mojang/minecraftpe/store/Product;)V

    return-void
.end method

.method public onQueryPurchasesFail()V
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/mojang/minecraftpe/store/NativeStoreListener;->mStoreListener:J

    invoke-virtual {p0, v0, v1}, Lcom/mojang/minecraftpe/store/NativeStoreListener;->onQueryPurchasesFail(J)V

    return-void
.end method

.method public native onQueryPurchasesFail(J)V
.end method

.method public native onQueryPurchasesSuccess(J[Lcom/mojang/minecraftpe/store/Purchase;)V
.end method

.method public onQueryPurchasesSuccess([Lcom/mojang/minecraftpe/store/Purchase;)V
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/mojang/minecraftpe/store/NativeStoreListener;->mStoreListener:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/mojang/minecraftpe/store/NativeStoreListener;->onQueryPurchasesSuccess(J[Lcom/mojang/minecraftpe/store/Purchase;)V

    return-void
.end method

.method public native onStoreInitialized(JZ)V
.end method

.method public onStoreInitialized(Z)V
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/mojang/minecraftpe/store/NativeStoreListener;->mStoreListener:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/mojang/minecraftpe/store/NativeStoreListener;->onStoreInitialized(JZ)V

    return-void
.end method
