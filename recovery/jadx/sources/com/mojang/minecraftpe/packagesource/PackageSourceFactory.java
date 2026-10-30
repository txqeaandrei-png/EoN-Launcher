package com.mojang.minecraftpe.packagesource;

/* JADX INFO: loaded from: classes3.dex */
public class PackageSourceFactory {
    static PackageSource createGooglePlayPackageSource(String str, PackageSourceListener packageSourceListener) {
        return new StubPackageSource(packageSourceListener);
    }
}
