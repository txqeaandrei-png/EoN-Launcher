package com.mojang.minecraftpe.platforms;

import android.os.Handler;
import android.view.View;

/* JADX INFO: loaded from: classes4.dex */
public class Platform19 extends Platform9 {
    public Runnable decorViewSettings;
    public View decoreView;
    public Handler eventHandler;

    @Override // com.mojang.minecraftpe.platforms.Platform9, com.mojang.minecraftpe.platforms.Platform
    public void onVolumePressed() {
    }

    public Platform19(boolean z) {
        if (z) {
            this.eventHandler = new Handler();
        }
    }

    @Override // com.mojang.minecraftpe.platforms.Platform9, com.mojang.minecraftpe.platforms.Platform
    public void onAppStart(View view) {
        if (this.eventHandler != null) {
            this.decoreView = view;
            view.setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.mojang.minecraftpe.platforms.Platform19$$ExternalSyntheticLambda0
                @Override // android.view.View.OnSystemUiVisibilityChangeListener
                public final void onSystemUiVisibilityChange(int i) {
                    this.f$0.lambda$onAppStart$0(i);
                }
            });
            Runnable runnable = new Runnable() { // from class: com.mojang.minecraftpe.platforms.Platform19$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onAppStart$1();
                }
            };
            this.decorViewSettings = runnable;
            this.eventHandler.post(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onAppStart$0(int i) {
        this.eventHandler.postDelayed(this.decorViewSettings, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onAppStart$1() {
        this.decoreView.setSystemUiVisibility(5894);
    }

    @Override // com.mojang.minecraftpe.platforms.Platform9, com.mojang.minecraftpe.platforms.Platform
    public void onViewFocusChanged(boolean z) {
        Handler handler = this.eventHandler;
        if (handler == null || !z) {
            return;
        }
        handler.postDelayed(this.decorViewSettings, 500L);
    }
}
