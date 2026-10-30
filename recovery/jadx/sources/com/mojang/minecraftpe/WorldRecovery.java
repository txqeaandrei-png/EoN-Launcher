package com.mojang.minecraftpe;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.StatFs;
import android.util.Log;
import androidx.documentfile.provider.DocumentFile;
import com.mojang.minecraftpe.utils.FileHelper;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class WorldRecovery {
    private ContentResolver mContentResolver;
    private Context mContext;
    private int mTotalFilesToCopy = 0;
    private long mTotalBytesRequired = 0;

    private static native void nativeComplete();

    private static native void nativeError(String str, long j, long j2);

    private static native void nativeUpdate(String str, int i, int i2, long j, long j2);

    public WorldRecovery(Context context, ContentResolver contentResolver) {
        this.mContext = context;
        this.mContentResolver = contentResolver;
    }

    public String migrateFolderContents(String str, String str2) {
        final DocumentFile documentFileFromTreeUri = DocumentFile.fromTreeUri(this.mContext, Uri.parse(str));
        if (documentFileFromTreeUri == null) {
            return "Could not resolve URI to a DocumentFile tree: " + str;
        }
        if (!documentFileFromTreeUri.isDirectory()) {
            return "Root file of URI is not a directory: " + str;
        }
        final File file = new File(str2);
        if (!file.isDirectory()) {
            return "Destination folder does not exist: " + str2;
        }
        String[] list = file.list();
        Objects.requireNonNull(list);
        if (list.length != 0) {
            return "Destination folder is not empty: " + str2;
        }
        new Thread(new Runnable() { // from class: com.mojang.minecraftpe.WorldRecovery$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$migrateFolderContents$0(documentFileFromTreeUri, file);
            }
        }).start();
        return "";
    }

    /* JADX INFO: renamed from: doMigrateFolderContents, reason: merged with bridge method [inline-methods] */
    public void lambda$migrateFolderContents$0(DocumentFile documentFile, File file) {
        ArrayList<DocumentFile> arrayList = new ArrayList<>();
        int i = 0;
        this.mTotalFilesToCopy = 0;
        this.mTotalBytesRequired = 0L;
        generateCopyFilesRecursively(arrayList, documentFile);
        long availableBytes = new StatFs(file.getAbsolutePath()).getAvailableBytes();
        long j = this.mTotalBytesRequired;
        if (j >= availableBytes) {
            nativeError("Insufficient space", j, availableBytes);
            return;
        }
        String path = documentFile.getUri().getPath();
        String str = file + "_temp";
        File file2 = new File(str);
        for (DocumentFile documentFile2 : arrayList) {
            String str2 = str + documentFile2.getUri().getPath().substring(path.length());
            if (documentFile2.isDirectory()) {
                File file3 = new File(str2);
                if (!file3.isDirectory()) {
                    Log.i("BlazeLauncher", "Creating directory '" + str2 + "'");
                    if (!file3.mkdirs()) {
                        nativeError("Could not create directory: " + str2, 0L, 0L);
                        return;
                    }
                } else {
                    Log.i("BlazeLauncher", "Directory '" + str2 + "' already exists");
                }
            } else {
                Log.i("BlazeLauncher", "Copying '" + documentFile2.getUri().getPath() + "' to '" + str2 + "'");
                i++;
                nativeUpdate("Copying: " + str2, this.mTotalFilesToCopy, i, this.mTotalBytesRequired, 0L);
                try {
                    FileHelper.writeToFile(new File(str2), this.mContentResolver.openInputStream(documentFile2.getUri()));
                } catch (IOException e) {
                    nativeError(e.getMessage(), 0L, 0L);
                    return;
                }
            }
        }
        if (file.delete()) {
            if (file2.renameTo(file)) {
                nativeComplete();
                return;
            } else if (file.mkdir()) {
                nativeError("Could not replace destination directory: " + file.getAbsolutePath(), 0L, 0L);
                return;
            } else {
                nativeError("Could not recreate destination directory after failed replace: " + file.getAbsolutePath(), 0L, 0L);
                return;
            }
        }
        nativeError("Could not delete empty destination directory: " + file.getAbsolutePath(), 0L, 0L);
    }

    private void generateCopyFilesRecursively(ArrayList<DocumentFile> arrayList, DocumentFile documentFile) {
        for (DocumentFile documentFile2 : documentFile.listFiles()) {
            arrayList.add(documentFile2);
            if (documentFile2.isDirectory()) {
                generateCopyFilesRecursively(arrayList, documentFile2);
            } else {
                this.mTotalBytesRequired += documentFile2.length();
                this.mTotalFilesToCopy++;
            }
        }
    }
}
