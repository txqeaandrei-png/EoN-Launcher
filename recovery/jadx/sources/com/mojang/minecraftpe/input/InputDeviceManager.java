package com.mojang.minecraftpe.input;

import android.content.Context;
import android.util.Log;

/* JADX INFO: loaded from: classes3.dex */
public abstract class InputDeviceManager {
    public abstract void register();

    public abstract void unregister();

    public static InputDeviceManager create(Context context) {
        return new JellyBeanDeviceManager(context);
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class DefaultDeviceManager extends InputDeviceManager {
        private DefaultDeviceManager() {
        }

        @Override // com.mojang.minecraftpe.input.InputDeviceManager
        public void register() {
            Log.w("BlazeLauncher", "INPUT Noop register device manager");
        }

        @Override // com.mojang.minecraftpe.input.InputDeviceManager
        public void unregister() {
            Log.w("BlazeLauncher", "INPUT Noop unregister device manager");
        }
    }
}
