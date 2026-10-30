package com.mojang.minecraftpe.platforms;

import android.os.Build;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public class Platform21 extends Platform19 {
    public Platform21(boolean z) {
        super(z);
    }

    @Override // com.mojang.minecraftpe.platforms.Platform9, com.mojang.minecraftpe.platforms.Platform
    public String getABIS() {
        return Arrays.toString(Build.SUPPORTED_ABIS);
    }
}
