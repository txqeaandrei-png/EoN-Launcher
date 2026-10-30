package com.mojang.minecraftpe.store.googleplay;

import com.mojang.minecraftpe.MainActivity;
import com.mojang.minecraftpe.store.ExtraLicenseResponseData;
import com.mojang.minecraftpe.store.Store;
import com.mojang.minecraftpe.store.StoreListener;

/* JADX INFO: loaded from: classes4.dex */
public class GooglePlayStore implements Store {
    MainActivity mActivity;
    StoreListener mListener;

    @Override // com.mojang.minecraftpe.store.Store
    public void acknowledgePurchase(String str, String str2) {
    }

    @Override // com.mojang.minecraftpe.store.Store
    public void destructor() {
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
    public void queryProducts(String[] strArr) {
    }

    @Override // com.mojang.minecraftpe.store.Store
    public void queryPurchases() {
    }

    @Override // com.mojang.minecraftpe.store.Store
    public boolean receivedLicenseResponse() {
        return true;
    }

    public GooglePlayStore(MainActivity mainActivity, String str, StoreListener storeListener) {
        this.mActivity = mainActivity;
        System.out.println("GooglePlayStore:" + mainActivity + ":" + str + ":" + storeListener);
        this.mListener = storeListener;
        storeListener.onStoreInitialized(true);
    }

    @Override // com.mojang.minecraftpe.store.Store
    public String getStoreId() {
        return "android.googleplay";
    }

    @Override // com.mojang.minecraftpe.store.Store
    public ExtraLicenseResponseData getExtraLicenseData() {
        long[] jArr = {60000, 0, 0};
        return new ExtraLicenseResponseData(jArr[0], jArr[1], jArr[2]);
    }

    @Override // com.mojang.minecraftpe.store.Store
    public String getProductSkuPrefix() {
        return "";
    }

    @Override // com.mojang.minecraftpe.store.Store
    public String getRealmsSkuPrefix() {
        return "";
    }
}
