package com.mojang.minecraftpe;

import android.content.Intent;
import android.net.Uri;

/* JADX INFO: loaded from: classes4.dex */
public class Minecraft_Market_Demo extends MainActivity {
    @Override // com.mojang.minecraftpe.MainActivity
    public boolean isDemo() {
        return true;
    }

    @Override // com.mojang.minecraftpe.MainActivity
    public void buyGame() {
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + getPackageName())));
    }
}
