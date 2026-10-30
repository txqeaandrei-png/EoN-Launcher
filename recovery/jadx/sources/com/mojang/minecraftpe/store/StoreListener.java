package com.mojang.minecraftpe.store;

/* JADX INFO: loaded from: classes3.dex */
public interface StoreListener {
    void onPurchaseCanceled(String str);

    void onPurchaseFailed(String str);

    void onPurchaseSuccessful(String str, String str2);

    void onQueryProductsFail();

    void onQueryProductsSuccess(Product[] productArr);

    void onQueryPurchasesFail();

    void onQueryPurchasesSuccess(Purchase[] purchaseArr);

    void onStoreInitialized(boolean z);
}
