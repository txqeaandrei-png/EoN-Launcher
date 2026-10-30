package com.mojang.minecraftpe.utils;

import android.os.Build;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
public class FileHelper {
    public static String readFile(String str) throws IOException {
        if (Build.VERSION.SDK_INT >= 33) {
            return new FileInputStream(new File(str)).readAllBytes().toString();
        }
        return "";
    }

    public static long writeToFile(File file, InputStream inputStream) throws IOException {
        if (Build.VERSION.SDK_INT >= 33) {
            return inputStream.transferTo(new FileOutputStream(file));
        }
        return 0L;
    }
}
