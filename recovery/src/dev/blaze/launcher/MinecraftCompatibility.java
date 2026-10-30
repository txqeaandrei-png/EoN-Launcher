package dev.blaze.launcher;

import android.content.pm.PackageInfo;

/**
 * Centralizes Minecraft package compatibility checks for the recovered launcher.
 *
 * Native compatibility is intentionally not inferred from these package checks.
 */
public final class MinecraftCompatibility {
    public static final String MINECRAFT_PACKAGE = "com.mojang.minecraftpe";
    public static final long TARGET_VERSION_CODE = 972605203L;
    public static final String TARGET_VERSION_NAME = "1.26.52.3";
    public static final long LEGACY_VERSION_CODE = 972108003L;

    private MinecraftCompatibility() {
    }

    public static boolean isSupported(PackageInfo packageInfo) {
        if (packageInfo == null || !MINECRAFT_PACKAGE.equals(packageInfo.packageName)) {
            return false;
        }

        long versionCode = packageInfo.versionCode;
        if (versionCode == LEGACY_VERSION_CODE) {
            return true;
        }

        return versionCode == TARGET_VERSION_CODE
            && TARGET_VERSION_NAME.equals(packageInfo.versionName);
    }
}
