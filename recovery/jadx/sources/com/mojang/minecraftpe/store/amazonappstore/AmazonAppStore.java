package com.mojang.minecraftpe.store.amazonappstore;

import android.content.Context;
import com.mojang.minecraftpe.MainActivity;
import com.mojang.minecraftpe.store.ExtraLicenseResponseData;
import com.mojang.minecraftpe.store.Store;
import com.mojang.minecraftpe.store.StoreListener;

/* JADX INFO: loaded from: classes4.dex */
public class AmazonAppStore implements Store {
    static final String IAB_BROADCAST_ACTION = "com.android.vending.billing.PURCHASES_UPDATED";
    MainActivity mActivity;
    private boolean mForFireTV;
    StoreListener mListener;
    int mPurchaseRequestCode;

    @Override // com.mojang.minecraftpe.store.Store
    public void acknowledgePurchase(String str, String str2) {
    }

    @Override // com.mojang.minecraftpe.store.Store
    public boolean hasVerifiedLicense() {
        return true;
    }

    @Override // com.mojang.minecraftpe.store.Store
    public void purchase(String str, boolean z, String str2) {
    }

    @Override // com.mojang.minecraftpe.store.Store
    public void purchaseGame() {
    }

    @Override // com.mojang.minecraftpe.store.Store
    public boolean receivedLicenseResponse() {
        return true;
    }

    public AmazonAppStore(Context context, StoreListener storeListener) {
        System.out.println("AmazonAppStore:" + context + ":" + storeListener);
        this.mListener = storeListener;
    }

    public AmazonAppStore(Context context, StoreListener storeListener, boolean z) {
        System.out.println("AmazonAppStore:" + context + ":" + storeListener + ":" + z);
        this.mListener = storeListener;
        this.mForFireTV = z;
    }

    @Override // com.mojang.minecraftpe.store.Store
    public String getStoreId() {
        return "android.amazonappstore";
    }

    @Override // com.mojang.minecraftpe.store.Store
    public ExtraLicenseResponseData getExtraLicenseData() {
        long[] jArr = {60000, 0, 0};
        return new ExtraLicenseResponseData(jArr[0], jArr[1], jArr[2]);
    }

    @Override // com.mojang.minecraftpe.store.Store
    public void queryProducts(String[] strArr) {
        System.out.println("AmazonAppStore: Query products");
    }

    @Override // com.mojang.minecraftpe.store.Store
    public void queryPurchases() {
        System.out.println("AmazonAppStore: Query purchases");
    }

    @Override // com.mojang.minecraftpe.store.Store
    public String getProductSkuPrefix() {
        return this.mForFireTV ? "firetv." : "";
    }

    @Override // com.mojang.minecraftpe.store.Store
    public String getRealmsSkuPrefix() {
        return this.mForFireTV ? "firetv." : "";
    }

    @Override // com.mojang.minecraftpe.store.Store
    public void destructor() {
        System.out.println("AmazonAppStore: Destructor");
    }
}
