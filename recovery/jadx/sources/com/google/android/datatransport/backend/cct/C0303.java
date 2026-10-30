package com.google.android.datatransport.backend.cct;

import androidx.collection.C0039;
import java.io.ByteArrayOutputStream;
import java.io.File;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;
import org.spongycastle.asn1.mozilla.C0759;
import org.spongycastle.pqc.crypto.gmss.util.C0904;

/* JADX INFO: renamed from: com.google.android.datatransport.backend.cct.۟ۡ۠ۢۦ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes5.dex */
public class C0303 {

    /* JADX INFO: renamed from: ۥۨۦ۟, reason: contains not printable characters */
    public static int f289 = 772;

    /* JADX INFO: renamed from: ۟ۤ۠ۦ, reason: not valid java name and contains not printable characters */
    public static String m1800(String str) {
        String string = "";
        int i = 0;
        String str2 = "";
        while (i < 15) {
            string = new StringBuffer().append(string).append(Integer.toHexString(i)).toString();
            String string2 = new StringBuffer().append(str2).append(((int) (Math.random() * ((double) 10))) ^ i).toString();
            i++;
            str2 = string2;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(str.length() / 2);
        for (int i2 = 0; i2 < str.length(); i2 += 2) {
            byteArrayOutputStream.write((string.indexOf(str.charAt(i2)) << 4) | string.indexOf(str.charAt(i2 + 1)));
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        int length = byteArray.length;
        int length2 = str2.length();
        for (int i3 = 0; i3 < length; i3++) {
            byteArray[i3] = (byte) (byteArray[i3] ^ str2.charAt(i3 % length2));
        }
        for (int length3 = 0; length3 < byteArray.length; length3 = "".length() + 1) {
        }
        return new String(byteArray);
    }

    /* JADX INFO: renamed from: ۟ۦۢۡۢ, reason: not valid java name and contains not printable characters */
    public static int m1801() {
        return 514 ^ C0039.f37;
    }

    /* JADX INFO: renamed from: ۟ۧۡۢ۠, reason: not valid java name and contains not printable characters */
    public static String m1802(Object obj) {
        if (C0904.m6525() >= 0) {
            return ((File) obj).getName();
        }
        return null;
    }

    /* JADX INFO: renamed from: ۡۢۥ, reason: not valid java name and contains not printable characters */
    public static int m1803(Object obj) {
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: ۡۥۥۡ, reason: not valid java name and contains not printable characters */
    public static Job m1804(Object obj, Object obj2, Object obj3, Object obj4, int i, Object obj5) {
        if (C0759.m5914() <= 0) {
            return BuildersKt__Builders_commonKt.launch$default((CoroutineScope) obj, (CoroutineContext) obj2, (CoroutineStart) obj3, (Function2) obj4, i, obj5);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۨۢۨۡ, reason: not valid java name and contains not printable characters */
    public static String m1805(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}
