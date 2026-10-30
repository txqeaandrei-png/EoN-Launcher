package com.mojang.minecraftpe.store;

import com.mojang.minecraftpe.MainActivity;
import com.mojang.minecraftpe.store.amazonappstore.AmazonAppStore;
import com.mojang.minecraftpe.store.googleplay.GooglePlayStore;

/* JADX INFO: loaded from: classes3.dex */
public class StoreFactory {
    static Store createGooglePlayStore(String str, StoreListener storeListener) {
        return new GooglePlayStore(MainActivity.mInstance, str, storeListener);
    }

    static Store createAmazonAppStore(StoreListener storeListener) {
        return new AmazonAppStore(MainActivity.mInstance, storeListener);
    }
}
