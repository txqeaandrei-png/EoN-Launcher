package com.braze.images;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.braze.lrucache.j;
import com.braze.support.BrazeLogger;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.regex.Pattern;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    public final com.braze.lrucache.f a;

    public a(File file) throws IOException {
        Pattern pattern = com.braze.lrucache.f.o;
        File file2 = new File(file, "journal.bkp");
        if (file2.exists()) {
            File file3 = new File(file, "journal");
            if (file3.exists()) {
                file2.delete();
            } else if (!file2.renameTo(file3)) {
                throw new IOException();
            }
        }
        com.braze.lrucache.f fVar = new com.braze.lrucache.f(file);
        if (fVar.b.exists()) {
            try {
                fVar.c();
                fVar.b();
            } catch (IOException e) {
                BrazeLogger.w(com.braze.lrucache.f.p, "DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                synchronized (fVar) {
                    if (fVar.i != null) {
                        Iterator it = new ArrayList(fVar.j.values()).iterator();
                        while (it.hasNext()) {
                            com.braze.lrucache.d dVar = ((com.braze.lrucache.g) it.next()).d;
                            if (dVar != null) {
                                com.braze.lrucache.f.a(dVar.d, dVar, false);
                            }
                        }
                        while (fVar.h > fVar.f) {
                            fVar.d((String) ((Map.Entry) fVar.j.entrySet().iterator().next()).getKey());
                        }
                        fVar.i.close();
                        fVar.i = null;
                    }
                    j.a(fVar.a);
                    file.mkdirs();
                    fVar = new com.braze.lrucache.f(file);
                    fVar.d();
                }
            }
        } else {
            file.mkdirs();
            fVar = new com.braze.lrucache.f(file);
            fVar.d();
        }
        Intrinsics.checkNotNullExpressionValue(fVar, "open(...)");
        this.a = fVar;
    }

    public static final String c(String str, String str2) {
        return "Failed to load image from disk cache: " + str + '/' + str2;
    }

    public static final String d(String str, String str2) {
        return "Error while producing output stream or compressing bitmap for key " + str + " diskKey " + str2;
    }

    public final boolean a(final String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        final String strValueOf = String.valueOf(key.hashCode());
        try {
            com.braze.lrucache.e eVarB = this.a.b(strValueOf);
            boolean z = eVarB != null;
            CloseableKt.closeFinally(eVarB, null);
            return z;
        } catch (Throwable th) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, th, false, new Function0() { // from class: com.braze.images.a$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return a.a(key, strValueOf);
                }
            }, 4, (Object) null);
            return false;
        }
    }

    public final Bitmap b(final String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        final String strValueOf = String.valueOf(key.hashCode());
        try {
            com.braze.lrucache.e eVarB = this.a.b(strValueOf);
            try {
                Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(eVarB.a[0]);
                CloseableKt.closeFinally(eVarB, null);
                return bitmapDecodeStream;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(eVarB, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, BrazeLogger.Priority.E, th3, false, new Function0() { // from class: com.braze.images.a$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return a.b(key, strValueOf);
                }
            }, 4, (Object) null);
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.images.a$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return a.c(key, strValueOf);
                }
            }, 7, (Object) null);
            return null;
        }
    }

    public static final String a(String str, String str2) {
        return "Error while retrieving disk for key " + str + " diskKey " + str2;
    }

    public final void a(final String key, Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        final String strValueOf = String.valueOf(key.hashCode());
        try {
            com.braze.lrucache.d dVarA = this.a.a(strValueOf);
            OutputStream outputStreamA = dVarA.a();
            try {
                bitmap.compress(Bitmap.CompressFormat.PNG, 100, outputStreamA);
                outputStreamA.flush();
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(outputStreamA, null);
                if (dVarA.c) {
                    com.braze.lrucache.f.a(dVarA.d, dVarA, false);
                    dVarA.d.d(dVarA.a.a);
                } else {
                    com.braze.lrucache.f.a(dVarA.d, dVarA, true);
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(outputStreamA, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, th3, false, new Function0() { // from class: com.braze.images.a$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return a.d(key, strValueOf);
                }
            }, 4, (Object) null);
        }
    }

    public static final String b(String str, String str2) {
        return "Failed to get bitmap from disk cache for key " + str + " diskKey " + str2;
    }
}
