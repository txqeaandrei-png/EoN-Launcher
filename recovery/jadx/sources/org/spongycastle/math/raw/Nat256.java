package org.spongycastle.math.raw;

import java.math.BigInteger;
import org.spongycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Nat256 {
    private static final long M = 4294967295L;

    public static int add(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = (((long) iArr[0]) & M) + (((long) iArr2[0]) & M);
        iArr3[0] = (int) j;
        long j2 = (j >>> 32) + (((long) iArr[1]) & M) + (((long) iArr2[1]) & M);
        iArr3[1] = (int) j2;
        long j3 = (j2 >>> 32) + (((long) iArr[2]) & M) + (((long) iArr2[2]) & M);
        iArr3[2] = (int) j3;
        long j4 = (j3 >>> 32) + (((long) iArr[3]) & M) + (((long) iArr2[3]) & M);
        iArr3[3] = (int) j4;
        long j5 = (j4 >>> 32) + (((long) iArr[4]) & M) + (((long) iArr2[4]) & M);
        iArr3[4] = (int) j5;
        long j6 = (j5 >>> 32) + (((long) iArr[5]) & M) + (((long) iArr2[5]) & M);
        iArr3[5] = (int) j6;
        long j7 = (j6 >>> 32) + (((long) iArr[6]) & M) + (((long) iArr2[6]) & M);
        iArr3[6] = (int) j7;
        long j8 = (j7 >>> 32) + (((long) iArr[7]) & M) + (((long) iArr2[7]) & M);
        iArr3[7] = (int) j8;
        return (int) (j8 >>> 32);
    }

    public static int add(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        long j = (((long) iArr[i]) & M) + (((long) iArr2[i2]) & M);
        iArr3[i3] = (int) j;
        long j2 = (j >>> 32) + (((long) iArr[i + 1]) & M) + (((long) iArr2[i2 + 1]) & M);
        iArr3[i3 + 1] = (int) j2;
        long j3 = (j2 >>> 32) + (((long) iArr[i + 2]) & M) + (((long) iArr2[i2 + 2]) & M);
        iArr3[i3 + 2] = (int) j3;
        long j4 = (j3 >>> 32) + (((long) iArr[i + 3]) & M) + (((long) iArr2[i2 + 3]) & M);
        iArr3[i3 + 3] = (int) j4;
        long j5 = (j4 >>> 32) + (((long) iArr[i + 4]) & M) + (((long) iArr2[i2 + 4]) & M);
        iArr3[i3 + 4] = (int) j5;
        long j6 = (j5 >>> 32) + (((long) iArr[i + 5]) & M) + (((long) iArr2[i2 + 5]) & M);
        iArr3[i3 + 5] = (int) j6;
        long j7 = (j6 >>> 32) + (((long) iArr[i + 6]) & M) + (((long) iArr2[i2 + 6]) & M);
        iArr3[i3 + 6] = (int) j7;
        long j8 = (j7 >>> 32) + (((long) iArr[i + 7]) & M) + (((long) iArr2[i2 + 7]) & M);
        iArr3[i3 + 7] = (int) j8;
        return (int) (j8 >>> 32);
    }

    public static int addBothTo(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = (((long) iArr[0]) & M) + (((long) iArr2[0]) & M) + (((long) iArr3[0]) & M);
        iArr3[0] = (int) j;
        long j2 = (j >>> 32) + (((long) iArr[1]) & M) + (((long) iArr2[1]) & M) + (((long) iArr3[1]) & M);
        iArr3[1] = (int) j2;
        long j3 = (j2 >>> 32) + (((long) iArr[2]) & M) + (((long) iArr2[2]) & M) + (((long) iArr3[2]) & M);
        iArr3[2] = (int) j3;
        long j4 = (j3 >>> 32) + (((long) iArr[3]) & M) + (((long) iArr2[3]) & M) + (((long) iArr3[3]) & M);
        iArr3[3] = (int) j4;
        long j5 = (j4 >>> 32) + (((long) iArr[4]) & M) + (((long) iArr2[4]) & M) + (((long) iArr3[4]) & M);
        iArr3[4] = (int) j5;
        long j6 = (j5 >>> 32) + (((long) iArr[5]) & M) + (((long) iArr2[5]) & M) + (((long) iArr3[5]) & M);
        iArr3[5] = (int) j6;
        long j7 = (j6 >>> 32) + (((long) iArr[6]) & M) + (((long) iArr2[6]) & M) + (((long) iArr3[6]) & M);
        iArr3[6] = (int) j7;
        long j8 = (j7 >>> 32) + (((long) iArr[7]) & M) + (((long) iArr2[7]) & M) + (((long) iArr3[7]) & M);
        iArr3[7] = (int) j8;
        return (int) (j8 >>> 32);
    }

    public static int addBothTo(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        long j = (((long) iArr[i]) & M) + (((long) iArr2[i2]) & M) + (((long) iArr3[i3]) & M);
        iArr3[i3] = (int) j;
        int i4 = i3 + 1;
        long j2 = (j >>> 32) + (((long) iArr[i + 1]) & M) + (((long) iArr2[i2 + 1]) & M) + (((long) iArr3[i4]) & M);
        iArr3[i4] = (int) j2;
        int i5 = i3 + 2;
        long j3 = (j2 >>> 32) + (((long) iArr[i + 2]) & M) + (((long) iArr2[i2 + 2]) & M) + (((long) iArr3[i5]) & M);
        iArr3[i5] = (int) j3;
        int i6 = i3 + 3;
        long j4 = (j3 >>> 32) + (((long) iArr[i + 3]) & M) + (((long) iArr2[i2 + 3]) & M) + (((long) iArr3[i6]) & M);
        iArr3[i6] = (int) j4;
        int i7 = i3 + 4;
        long j5 = (j4 >>> 32) + (((long) iArr[i + 4]) & M) + (((long) iArr2[i2 + 4]) & M) + (((long) iArr3[i7]) & M);
        iArr3[i7] = (int) j5;
        int i8 = i3 + 5;
        long j6 = (j5 >>> 32) + (((long) iArr[i + 5]) & M) + (((long) iArr2[i2 + 5]) & M) + (((long) iArr3[i8]) & M);
        iArr3[i8] = (int) j6;
        int i9 = i3 + 6;
        long j7 = (j6 >>> 32) + (((long) iArr[i + 6]) & M) + (((long) iArr2[i2 + 6]) & M) + (((long) iArr3[i9]) & M);
        iArr3[i9] = (int) j7;
        int i10 = i3 + 7;
        long j8 = (j7 >>> 32) + (((long) iArr[i + 7]) & M) + (((long) iArr2[i2 + 7]) & M) + (((long) iArr3[i10]) & M);
        iArr3[i10] = (int) j8;
        return (int) (j8 >>> 32);
    }

    public static int addTo(int[] iArr, int[] iArr2) {
        long j = (((long) iArr[0]) & M) + (((long) iArr2[0]) & M);
        iArr2[0] = (int) j;
        long j2 = (j >>> 32) + (((long) iArr[1]) & M) + (((long) iArr2[1]) & M);
        iArr2[1] = (int) j2;
        long j3 = (j2 >>> 32) + (((long) iArr[2]) & M) + (((long) iArr2[2]) & M);
        iArr2[2] = (int) j3;
        long j4 = (j3 >>> 32) + (((long) iArr[3]) & M) + (((long) iArr2[3]) & M);
        iArr2[3] = (int) j4;
        long j5 = (j4 >>> 32) + (((long) iArr[4]) & M) + (((long) iArr2[4]) & M);
        iArr2[4] = (int) j5;
        long j6 = (j5 >>> 32) + (((long) iArr[5]) & M) + (((long) iArr2[5]) & M);
        iArr2[5] = (int) j6;
        long j7 = (j6 >>> 32) + (((long) iArr[6]) & M) + (((long) iArr2[6]) & M);
        iArr2[6] = (int) j7;
        long j8 = (j7 >>> 32) + (((long) iArr[7]) & M) + (M & ((long) iArr2[7]));
        iArr2[7] = (int) j8;
        return (int) (j8 >>> 32);
    }

    public static int addTo(int[] iArr, int i, int[] iArr2, int i2, int i3) {
        long j = (((long) i3) & M) + (((long) iArr[i]) & M) + (((long) iArr2[i2]) & M);
        iArr2[i2] = (int) j;
        int i4 = i2 + 1;
        long j2 = (j >>> 32) + (((long) iArr[i + 1]) & M) + (((long) iArr2[i4]) & M);
        iArr2[i4] = (int) j2;
        int i5 = i2 + 2;
        long j3 = (j2 >>> 32) + (((long) iArr[i + 2]) & M) + (((long) iArr2[i5]) & M);
        iArr2[i5] = (int) j3;
        int i6 = i2 + 3;
        long j4 = (j3 >>> 32) + (((long) iArr[i + 3]) & M) + (((long) iArr2[i6]) & M);
        iArr2[i6] = (int) j4;
        int i7 = i2 + 4;
        long j5 = (j4 >>> 32) + (((long) iArr[i + 4]) & M) + (((long) iArr2[i7]) & M);
        iArr2[i7] = (int) j5;
        int i8 = i2 + 5;
        long j6 = (j5 >>> 32) + (((long) iArr[i + 5]) & M) + (((long) iArr2[i8]) & M);
        iArr2[i8] = (int) j6;
        int i9 = i2 + 6;
        long j7 = (j6 >>> 32) + (((long) iArr[i + 6]) & M) + (((long) iArr2[i9]) & M);
        iArr2[i9] = (int) j7;
        int i10 = i2 + 7;
        long j8 = (j7 >>> 32) + (((long) iArr[i + 7]) & M) + (M & ((long) iArr2[i10]));
        iArr2[i10] = (int) j8;
        return (int) (j8 >>> 32);
    }

    public static int addToEachOther(int[] iArr, int i, int[] iArr2, int i2) {
        long j = (((long) iArr[i]) & M) + (((long) iArr2[i2]) & M);
        int i3 = (int) j;
        iArr[i] = i3;
        iArr2[i2] = i3;
        int i4 = i + 1;
        int i5 = i2 + 1;
        long j2 = (j >>> 32) + (((long) iArr[i4]) & M) + (((long) iArr2[i5]) & M);
        int i6 = (int) j2;
        iArr[i4] = i6;
        iArr2[i5] = i6;
        int i7 = i + 2;
        int i8 = i2 + 2;
        long j3 = (j2 >>> 32) + (((long) iArr[i7]) & M) + (((long) iArr2[i8]) & M);
        int i9 = (int) j3;
        iArr[i7] = i9;
        iArr2[i8] = i9;
        int i10 = i + 3;
        int i11 = i2 + 3;
        long j4 = (j3 >>> 32) + (((long) iArr[i10]) & M) + (((long) iArr2[i11]) & M);
        int i12 = (int) j4;
        iArr[i10] = i12;
        iArr2[i11] = i12;
        int i13 = i + 4;
        int i14 = i2 + 4;
        long j5 = (j4 >>> 32) + (((long) iArr[i13]) & M) + (((long) iArr2[i14]) & M);
        int i15 = (int) j5;
        iArr[i13] = i15;
        iArr2[i14] = i15;
        int i16 = i + 5;
        int i17 = i2 + 5;
        long j6 = (j5 >>> 32) + (((long) iArr[i16]) & M) + (((long) iArr2[i17]) & M);
        int i18 = (int) j6;
        iArr[i16] = i18;
        iArr2[i17] = i18;
        int i19 = i + 6;
        int i20 = i2 + 6;
        long j7 = (j6 >>> 32) + (((long) iArr[i19]) & M) + (((long) iArr2[i20]) & M);
        int i21 = (int) j7;
        iArr[i19] = i21;
        iArr2[i20] = i21;
        int i22 = i + 7;
        int i23 = i2 + 7;
        long j8 = (j7 >>> 32) + (((long) iArr[i22]) & M) + (M & ((long) iArr2[i23]));
        int i24 = (int) j8;
        iArr[i22] = i24;
        iArr2[i23] = i24;
        return (int) (j8 >>> 32);
    }

    public static void copy(int[] iArr, int[] iArr2) {
        iArr2[0] = iArr[0];
        iArr2[1] = iArr[1];
        iArr2[2] = iArr[2];
        iArr2[3] = iArr[3];
        iArr2[4] = iArr[4];
        iArr2[5] = iArr[5];
        iArr2[6] = iArr[6];
        iArr2[7] = iArr[7];
    }

    public static void copy64(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0];
        jArr2[1] = jArr[1];
        jArr2[2] = jArr[2];
        jArr2[3] = jArr[3];
    }

    public static int[] create() {
        return new int[8];
    }

    public static long[] create64() {
        return new long[4];
    }

    public static int[] createExt() {
        return new int[16];
    }

    public static long[] createExt64() {
        return new long[8];
    }

    public static boolean diff(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        boolean zGte = gte(iArr, i, iArr2, i2);
        if (zGte) {
            sub(iArr, i, iArr2, i2, iArr3, i3);
        } else {
            sub(iArr2, i2, iArr, i, iArr3, i3);
        }
        return zGte;
    }

    public static boolean eq(int[] iArr, int[] iArr2) {
        for (int i = 7; i >= 0; i--) {
            if (iArr[i] != iArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public static boolean eq64(long[] jArr, long[] jArr2) {
        for (int i = 3; i >= 0; i--) {
            if (jArr[i] != jArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 256) {
            throw new IllegalArgumentException();
        }
        int[] iArrCreate = create();
        int i = 0;
        while (bigInteger.signum() != 0) {
            iArrCreate[i] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
            i++;
        }
        return iArrCreate;
    }

    public static long[] fromBigInteger64(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 256) {
            throw new IllegalArgumentException();
        }
        long[] jArrCreate64 = create64();
        int i = 0;
        while (bigInteger.signum() != 0) {
            jArrCreate64[i] = bigInteger.longValue();
            bigInteger = bigInteger.shiftRight(64);
            i++;
        }
        return jArrCreate64;
    }

    public static int getBit(int[] iArr, int i) {
        int i2;
        if (i == 0) {
            i2 = iArr[0];
        } else {
            if ((i & 255) != i) {
                return 0;
            }
            i2 = iArr[i >>> 5] >>> (i & 31);
        }
        return i2 & 1;
    }

    public static boolean gte(int[] iArr, int[] iArr2) {
        for (int i = 7; i >= 0; i--) {
            int i2 = iArr[i] ^ Integer.MIN_VALUE;
            int i3 = Integer.MIN_VALUE ^ iArr2[i];
            if (i2 < i3) {
                return false;
            }
            if (i2 > i3) {
                return true;
            }
        }
        return true;
    }

    public static boolean gte(int[] iArr, int i, int[] iArr2, int i2) {
        for (int i3 = 7; i3 >= 0; i3--) {
            int i4 = iArr[i + i3] ^ Integer.MIN_VALUE;
            int i5 = Integer.MIN_VALUE ^ iArr2[i2 + i3];
            if (i4 < i5) {
                return false;
            }
            if (i4 > i5) {
                return true;
            }
        }
        return true;
    }

    public static boolean isOne(int[] iArr) {
        if (iArr[0] != 1) {
            return false;
        }
        for (int i = 1; i < 8; i++) {
            if (iArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isOne64(long[] jArr) {
        if (jArr[0] != 1) {
            return false;
        }
        for (int i = 1; i < 4; i++) {
            if (jArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isZero(int[] iArr) {
        for (int i = 0; i < 8; i++) {
            if (iArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isZero64(long[] jArr) {
        for (int i = 0; i < 4; i++) {
            if (jArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    public static void mul(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = ((long) iArr2[0]) & M;
        long j2 = ((long) iArr2[1]) & M;
        long j3 = ((long) iArr2[2]) & M;
        long j4 = ((long) iArr2[3]) & M;
        long j5 = ((long) iArr2[4]) & M;
        long j6 = ((long) iArr2[5]) & M;
        long j7 = ((long) iArr2[6]) & M;
        long j8 = ((long) iArr2[7]) & M;
        long j9 = ((long) iArr[0]) & M;
        long j10 = j9 * j;
        iArr3[0] = (int) j10;
        long j11 = (j10 >>> 32) + (j9 * j2);
        iArr3[1] = (int) j11;
        long j12 = (j11 >>> 32) + (j9 * j3);
        iArr3[2] = (int) j12;
        long j13 = (j12 >>> 32) + (j9 * j4);
        iArr3[3] = (int) j13;
        long j14 = (j13 >>> 32) + (j9 * j5);
        iArr3[4] = (int) j14;
        long j15 = (j14 >>> 32) + (j9 * j6);
        iArr3[5] = (int) j15;
        long j16 = (j15 >>> 32) + (j9 * j7);
        iArr3[6] = (int) j16;
        long j17 = (j16 >>> 32) + (j9 * j8);
        iArr3[7] = (int) j17;
        iArr3[8] = (int) (j17 >>> 32);
        int i = 1;
        for (int i2 = 8; i < i2; i2 = 8) {
            long j18 = ((long) iArr[i]) & M;
            long j19 = (j18 * j) + (((long) iArr3[i]) & M);
            iArr3[i] = (int) j19;
            int i3 = i + 1;
            long j20 = (j19 >>> 32) + (j18 * j2) + (((long) iArr3[i3]) & M);
            iArr3[i3] = (int) j20;
            int i4 = i + 2;
            long j21 = j2;
            long j22 = (j20 >>> 32) + (j18 * j3) + (((long) iArr3[i4]) & M);
            iArr3[i4] = (int) j22;
            int i5 = i + 3;
            long j23 = (j22 >>> 32) + (j18 * j4) + (((long) iArr3[i5]) & M);
            iArr3[i5] = (int) j23;
            int i6 = i + 4;
            long j24 = (j23 >>> 32) + (j18 * j5) + (((long) iArr3[i6]) & M);
            iArr3[i6] = (int) j24;
            int i7 = i + 5;
            long j25 = (j24 >>> 32) + (j18 * j6) + (((long) iArr3[i7]) & M);
            iArr3[i7] = (int) j25;
            int i8 = i + 6;
            long j26 = (j25 >>> 32) + (j18 * j7) + (((long) iArr3[i8]) & M);
            iArr3[i8] = (int) j26;
            int i9 = i + 7;
            long j27 = (j26 >>> 32) + (j18 * j8) + (((long) iArr3[i9]) & M);
            iArr3[i9] = (int) j27;
            iArr3[i + 8] = (int) (j27 >>> 32);
            j4 = j4;
            j = j;
            i = i3;
            j2 = j21;
        }
    }

    public static void mul(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        long j = ((long) iArr2[i2]) & M;
        long j2 = ((long) iArr2[i2 + 1]) & M;
        long j3 = ((long) iArr2[i2 + 2]) & M;
        long j4 = ((long) iArr2[i2 + 3]) & M;
        long j5 = ((long) iArr2[i2 + 4]) & M;
        long j6 = ((long) iArr2[i2 + 5]) & M;
        long j7 = ((long) iArr2[i2 + 6]) & M;
        long j8 = ((long) iArr2[i2 + 7]) & M;
        long j9 = ((long) iArr[i]) & M;
        long j10 = j9 * j;
        iArr3[i3] = (int) j10;
        long j11 = (j10 >>> 32) + (j9 * j2);
        iArr3[i3 + 1] = (int) j11;
        long j12 = (j11 >>> 32) + (j9 * j3);
        iArr3[i3 + 2] = (int) j12;
        long j13 = (j12 >>> 32) + (j9 * j4);
        iArr3[i3 + 3] = (int) j13;
        long j14 = (j13 >>> 32) + (j9 * j5);
        iArr3[i3 + 4] = (int) j14;
        long j15 = (j14 >>> 32) + (j9 * j6);
        iArr3[i3 + 5] = (int) j15;
        long j16 = (j15 >>> 32) + (j9 * j7);
        iArr3[i3 + 6] = (int) j16;
        long j17 = j8;
        long j18 = (j16 >>> 32) + (j9 * j17);
        iArr3[i3 + 7] = (int) j18;
        iArr3[i3 + 8] = (int) (j18 >>> 32);
        int i4 = 1;
        int i5 = i3;
        while (i4 < 8) {
            int i6 = i5 + 1;
            long j19 = ((long) iArr[i + i4]) & M;
            long j20 = j17;
            int i7 = i4;
            long j21 = (j19 * j) + (((long) iArr3[i6]) & M);
            iArr3[i6] = (int) j21;
            int i8 = i5 + 2;
            long j22 = (j21 >>> 32) + (j19 * j2) + (((long) iArr3[i8]) & M);
            iArr3[i8] = (int) j22;
            int i9 = i5 + 3;
            long j23 = j3;
            long j24 = (j22 >>> 32) + (j19 * j3) + (((long) iArr3[i9]) & M);
            iArr3[i9] = (int) j24;
            int i10 = i5 + 4;
            int i11 = i5;
            long j25 = (j24 >>> 32) + (j19 * j4) + (((long) iArr3[i10]) & M);
            iArr3[i10] = (int) j25;
            int i12 = i11 + 5;
            long j26 = (j25 >>> 32) + (j19 * j5) + (((long) iArr3[i12]) & M);
            iArr3[i12] = (int) j26;
            int i13 = i11 + 6;
            long j27 = (j26 >>> 32) + (j19 * j6) + (((long) iArr3[i13]) & M);
            iArr3[i13] = (int) j27;
            int i14 = i11 + 7;
            long j28 = (j27 >>> 32) + (j19 * j7) + (((long) iArr3[i14]) & M);
            iArr3[i14] = (int) j28;
            int i15 = i11 + 8;
            long j29 = (j28 >>> 32) + (j19 * j20) + (((long) iArr3[i15]) & M);
            iArr3[i15] = (int) j29;
            iArr3[i11 + 9] = (int) (j29 >>> 32);
            i4 = i7 + 1;
            i5 = i6;
            j3 = j23;
            j17 = j20;
        }
    }

    public static int mulAddTo(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = iArr2[0];
        long j2 = M;
        long j3 = j & M;
        long j4 = ((long) iArr2[1]) & M;
        long j5 = ((long) iArr2[2]) & M;
        long j6 = ((long) iArr2[3]) & M;
        long j7 = ((long) iArr2[4]) & M;
        long j8 = ((long) iArr2[5]) & M;
        long j9 = ((long) iArr2[6]) & M;
        long j10 = ((long) iArr2[7]) & M;
        long j11 = 0;
        int i = 0;
        while (i < 8) {
            long j12 = j10;
            long j13 = ((long) iArr[i]) & j2;
            long j14 = j8;
            long j15 = (((long) iArr3[i]) & j2) + (j13 * j3);
            iArr3[i] = (int) j15;
            int i2 = i + 1;
            long j16 = j4;
            long j17 = (j15 >>> 32) + (j13 * j4) + (((long) iArr3[i2]) & j2);
            iArr3[i2] = (int) j17;
            int i3 = i + 2;
            long j18 = (j17 >>> 32) + (j13 * j5) + (((long) iArr3[i3]) & j2);
            iArr3[i3] = (int) j18;
            int i4 = i + 3;
            long j19 = (j18 >>> 32) + (j13 * j6) + (((long) iArr3[i4]) & j2);
            iArr3[i4] = (int) j19;
            int i5 = i + 4;
            long j20 = (j19 >>> 32) + (j13 * j7) + (((long) iArr3[i5]) & j2);
            iArr3[i5] = (int) j20;
            int i6 = i + 5;
            long j21 = (j20 >>> 32) + (j13 * j14) + (((long) iArr3[i6]) & j2);
            iArr3[i6] = (int) j21;
            int i7 = i + 6;
            long j22 = (j21 >>> 32) + (j13 * j9) + (((long) iArr3[i7]) & j2);
            iArr3[i7] = (int) j22;
            int i8 = i + 7;
            long j23 = (j22 >>> 32) + (j13 * j12) + (((long) iArr3[i8]) & j2);
            iArr3[i8] = (int) j23;
            int i9 = i + 8;
            long j24 = (j23 >>> 32) + j11 + (((long) iArr3[i9]) & j2);
            iArr3[i9] = (int) j24;
            j11 = j24 >>> 32;
            i = i2;
            j10 = j12;
            j8 = j14;
            j4 = j16;
            j2 = M;
        }
        return (int) j11;
    }

    public static int mulAddTo(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        long j = ((long) iArr2[i2]) & M;
        long j2 = ((long) iArr2[i2 + 1]) & M;
        long j3 = ((long) iArr2[i2 + 2]) & M;
        long j4 = ((long) iArr2[i2 + 3]) & M;
        long j5 = ((long) iArr2[i2 + 4]) & M;
        long j6 = ((long) iArr2[i2 + 5]) & M;
        long j7 = ((long) iArr2[i2 + 6]) & M;
        long j8 = ((long) iArr2[i2 + 7]) & M;
        int i4 = 0;
        long j9 = 0;
        int i5 = i3;
        while (i4 < 8) {
            int i6 = i4;
            long j10 = ((long) iArr[i + i4]) & M;
            long j11 = j;
            long j12 = (j10 * j) + (((long) iArr3[i5]) & M);
            long j13 = j8;
            iArr3[i5] = (int) j12;
            int i7 = i5 + 1;
            long j14 = (j12 >>> 32) + (j10 * j2) + (((long) iArr3[i7]) & M);
            iArr3[i7] = (int) j14;
            int i8 = i5 + 2;
            long j15 = (j14 >>> 32) + (j10 * j3) + (((long) iArr3[i8]) & M);
            iArr3[i8] = (int) j15;
            int i9 = i5 + 3;
            long j16 = (j15 >>> 32) + (j10 * j4) + (((long) iArr3[i9]) & M);
            iArr3[i9] = (int) j16;
            int i10 = i5 + 4;
            long j17 = (j16 >>> 32) + (j10 * j5) + (((long) iArr3[i10]) & M);
            iArr3[i10] = (int) j17;
            int i11 = i5 + 5;
            long j18 = (j17 >>> 32) + (j10 * j6) + (((long) iArr3[i11]) & M);
            iArr3[i11] = (int) j18;
            int i12 = i5 + 6;
            long j19 = (j18 >>> 32) + (j10 * j7) + (((long) iArr3[i12]) & M);
            iArr3[i12] = (int) j19;
            int i13 = i5 + 7;
            long j20 = (j19 >>> 32) + (j10 * j13) + (((long) iArr3[i13]) & M);
            iArr3[i13] = (int) j20;
            int i14 = i5 + 8;
            long j21 = (j20 >>> 32) + j9 + (((long) iArr3[i14]) & M);
            iArr3[i14] = (int) j21;
            j9 = j21 >>> 32;
            i4 = i6 + 1;
            i5 = i7;
            j8 = j13;
            j = j11;
            j3 = j3;
            j2 = j2;
        }
        return (int) j9;
    }

    public static long mul33Add(int i, int[] iArr, int i2, int[] iArr2, int i3, int[] iArr3, int i4) {
        long j = ((long) i) & M;
        long j2 = ((long) iArr[i2]) & M;
        long j3 = (j * j2) + (((long) iArr2[i3]) & M);
        iArr3[i4] = (int) j3;
        long j4 = ((long) iArr[i2 + 1]) & M;
        long j5 = (j3 >>> 32) + (j * j4) + j2 + (((long) iArr2[i3 + 1]) & M);
        iArr3[i4 + 1] = (int) j5;
        long j6 = j5 >>> 32;
        long j7 = ((long) iArr[i2 + 2]) & M;
        long j8 = j6 + (j * j7) + j4 + (((long) iArr2[i3 + 2]) & M);
        iArr3[i4 + 2] = (int) j8;
        long j9 = ((long) iArr[i2 + 3]) & M;
        long j10 = (j8 >>> 32) + (j * j9) + j7 + (((long) iArr2[i3 + 3]) & M);
        iArr3[i4 + 3] = (int) j10;
        long j11 = ((long) iArr[i2 + 4]) & M;
        long j12 = (j10 >>> 32) + (j * j11) + j9 + (((long) iArr2[i3 + 4]) & M);
        iArr3[i4 + 4] = (int) j12;
        long j13 = ((long) iArr[i2 + 5]) & M;
        long j14 = (j12 >>> 32) + (j * j13) + j11 + (((long) iArr2[i3 + 5]) & M);
        iArr3[i4 + 5] = (int) j14;
        long j15 = ((long) iArr[i2 + 6]) & M;
        long j16 = (j14 >>> 32) + (j * j15) + j13 + (((long) iArr2[i3 + 6]) & M);
        iArr3[i4 + 6] = (int) j16;
        long j17 = ((long) iArr[i2 + 7]) & M;
        long j18 = (j16 >>> 32) + (j * j17) + j15 + (M & ((long) iArr2[i3 + 7]));
        iArr3[i4 + 7] = (int) j18;
        return (j18 >>> 32) + j17;
    }

    public static int mulByWord(int i, int[] iArr) {
        long j = ((long) i) & M;
        long j2 = (((long) iArr[0]) & M) * j;
        iArr[0] = (int) j2;
        long j3 = (j2 >>> 32) + ((((long) iArr[1]) & M) * j);
        iArr[1] = (int) j3;
        long j4 = (j3 >>> 32) + ((((long) iArr[2]) & M) * j);
        iArr[2] = (int) j4;
        long j5 = (j4 >>> 32) + ((((long) iArr[3]) & M) * j);
        iArr[3] = (int) j5;
        long j6 = (j5 >>> 32) + ((((long) iArr[4]) & M) * j);
        iArr[4] = (int) j6;
        long j7 = (j6 >>> 32) + ((((long) iArr[5]) & M) * j);
        iArr[5] = (int) j7;
        long j8 = (j7 >>> 32) + ((((long) iArr[6]) & M) * j);
        iArr[6] = (int) j8;
        long j9 = (j8 >>> 32) + (j * (M & ((long) iArr[7])));
        iArr[7] = (int) j9;
        return (int) (j9 >>> 32);
    }

    public static int mulByWordAddTo(int i, int[] iArr, int[] iArr2) {
        long j = ((long) i) & M;
        long j2 = ((((long) iArr2[0]) & M) * j) + (((long) iArr[0]) & M);
        iArr2[0] = (int) j2;
        long j3 = (j2 >>> 32) + ((((long) iArr2[1]) & M) * j) + (((long) iArr[1]) & M);
        iArr2[1] = (int) j3;
        long j4 = (j3 >>> 32) + ((((long) iArr2[2]) & M) * j) + (((long) iArr[2]) & M);
        iArr2[2] = (int) j4;
        long j5 = (j4 >>> 32) + ((((long) iArr2[3]) & M) * j) + (((long) iArr[3]) & M);
        iArr2[3] = (int) j5;
        long j6 = (j5 >>> 32) + ((((long) iArr2[4]) & M) * j) + (((long) iArr[4]) & M);
        iArr2[4] = (int) j6;
        long j7 = (j6 >>> 32) + ((((long) iArr2[5]) & M) * j) + (((long) iArr[5]) & M);
        iArr2[5] = (int) j7;
        long j8 = (j7 >>> 32) + ((((long) iArr2[6]) & M) * j) + (((long) iArr[6]) & M);
        iArr2[6] = (int) j8;
        long j9 = (j8 >>> 32) + (j * (((long) iArr2[7]) & M)) + (M & ((long) iArr[7]));
        iArr2[7] = (int) j9;
        return (int) (j9 >>> 32);
    }

    public static int mulWordAddTo(int i, int[] iArr, int i2, int[] iArr2, int i3) {
        long j = ((long) i) & M;
        long j2 = ((((long) iArr[i2]) & M) * j) + (((long) iArr2[i3]) & M);
        iArr2[i3] = (int) j2;
        int i4 = i3 + 1;
        long j3 = (j2 >>> 32) + ((((long) iArr[i2 + 1]) & M) * j) + (((long) iArr2[i4]) & M);
        iArr2[i4] = (int) j3;
        int i5 = i3 + 2;
        long j4 = (j3 >>> 32) + ((((long) iArr[i2 + 2]) & M) * j) + (((long) iArr2[i5]) & M);
        iArr2[i5] = (int) j4;
        int i6 = i3 + 3;
        long j5 = (j4 >>> 32) + ((((long) iArr[i2 + 3]) & M) * j) + (((long) iArr2[i6]) & M);
        iArr2[i6] = (int) j5;
        int i7 = i3 + 4;
        long j6 = (j5 >>> 32) + ((((long) iArr[i2 + 4]) & M) * j) + (((long) iArr2[i7]) & M);
        iArr2[i7] = (int) j6;
        int i8 = i3 + 5;
        long j7 = (j6 >>> 32) + ((((long) iArr[i2 + 5]) & M) * j) + (((long) iArr2[i8]) & M);
        iArr2[i8] = (int) j7;
        int i9 = i3 + 6;
        long j8 = (j7 >>> 32) + ((((long) iArr[i2 + 6]) & M) * j) + (((long) iArr2[i9]) & M);
        iArr2[i9] = (int) j8;
        int i10 = i3 + 7;
        long j9 = (j8 >>> 32) + (j * (((long) iArr[i2 + 7]) & M)) + (((long) iArr2[i10]) & M);
        iArr2[i10] = (int) j9;
        return (int) (j9 >>> 32);
    }

    public static int mul33DWordAdd(int i, long j, int[] iArr, int i2) {
        long j2 = ((long) i) & M;
        long j3 = j & M;
        long j4 = (j2 * j3) + (((long) iArr[i2]) & M);
        iArr[i2] = (int) j4;
        long j5 = j >>> 32;
        long j6 = (j2 * j5) + j3;
        int i3 = i2 + 1;
        long j7 = (j4 >>> 32) + j6 + (((long) iArr[i3]) & M);
        iArr[i3] = (int) j7;
        int i4 = i2 + 2;
        long j8 = (j7 >>> 32) + j5 + (((long) iArr[i4]) & M);
        iArr[i4] = (int) j8;
        long j9 = j8 >>> 32;
        int i5 = i2 + 3;
        long j10 = j9 + (((long) iArr[i5]) & M);
        iArr[i5] = (int) j10;
        if ((j10 >>> 32) == 0) {
            return 0;
        }
        return Nat.incAt(8, iArr, i2, 4);
    }

    public static int mul33WordAdd(int i, int i2, int[] iArr, int i3) {
        long j = ((long) i) & M;
        long j2 = ((long) i2) & M;
        long j3 = (j * j2) + (((long) iArr[i3]) & M);
        iArr[i3] = (int) j3;
        int i4 = i3 + 1;
        long j4 = (j3 >>> 32) + j2 + (((long) iArr[i4]) & M);
        iArr[i4] = (int) j4;
        long j5 = j4 >>> 32;
        int i5 = i3 + 2;
        long j6 = j5 + (((long) iArr[i5]) & M);
        iArr[i5] = (int) j6;
        if ((j6 >>> 32) == 0) {
            return 0;
        }
        return Nat.incAt(8, iArr, i3, 3);
    }

    public static int mulWordDwordAdd(int i, long j, int[] iArr, int i2) {
        long j2 = ((long) i) & M;
        long j3 = ((j & M) * j2) + (((long) iArr[i2]) & M);
        iArr[i2] = (int) j3;
        long j4 = j2 * (j >>> 32);
        int i3 = i2 + 1;
        long j5 = (j3 >>> 32) + j4 + (((long) iArr[i3]) & M);
        iArr[i3] = (int) j5;
        int i4 = i2 + 2;
        long j6 = (j5 >>> 32) + (((long) iArr[i4]) & M);
        iArr[i4] = (int) j6;
        if ((j6 >>> 32) == 0) {
            return 0;
        }
        return Nat.incAt(8, iArr, i2, 3);
    }

    public static int mulWord(int i, int[] iArr, int[] iArr2, int i2) {
        long j = ((long) i) & M;
        long j2 = 0;
        int i3 = 0;
        do {
            long j3 = j2 + ((((long) iArr[i3]) & M) * j);
            iArr2[i2 + i3] = (int) j3;
            j2 = j3 >>> 32;
            i3++;
        } while (i3 < 8);
        return (int) j2;
    }

    public static void square(int[] iArr, int[] iArr2) {
        long j = ((long) iArr[0]) & M;
        int i = 16;
        int i2 = 0;
        int i3 = 7;
        while (true) {
            int i4 = i3 - 1;
            long j2 = ((long) iArr[i3]) & M;
            long j3 = j2 * j2;
            iArr2[i - 1] = (i2 << 31) | ((int) (j3 >>> 33));
            i -= 2;
            iArr2[i] = (int) (j3 >>> 1);
            i2 = (int) j3;
            if (i4 <= 0) {
                long j4 = j * j;
                long j5 = (j4 >>> 33) | (((long) (i2 << 31)) & M);
                iArr2[0] = (int) j4;
                long j6 = ((long) iArr[1]) & M;
                long j7 = ((long) iArr2[2]) & M;
                long j8 = j5 + (j6 * j);
                int i5 = (int) j8;
                iArr2[1] = (i5 << 1) | (((int) (j4 >>> 32)) & 1);
                int i6 = i5 >>> 31;
                long j9 = j7 + (j8 >>> 32);
                long j10 = ((long) iArr[2]) & M;
                long j11 = ((long) iArr2[3]) & M;
                long j12 = ((long) iArr2[4]) & M;
                long j13 = j9 + (j10 * j);
                int i7 = (int) j13;
                iArr2[2] = (i7 << 1) | i6;
                long j14 = j11 + (j13 >>> 32) + (j10 * j6);
                long j15 = j12 + (j14 >>> 32);
                long j16 = j14 & M;
                long j17 = ((long) iArr[3]) & M;
                long j18 = ((long) iArr2[5]) & M;
                long j19 = ((long) iArr2[6]) & M;
                long j20 = j16 + (j17 * j);
                int i8 = (int) j20;
                iArr2[3] = (i8 << 1) | (i7 >>> 31);
                int i9 = i8 >>> 31;
                long j21 = j15 + (j20 >>> 32) + (j17 * j6);
                long j22 = j18 + (j21 >>> 32) + (j17 * j10);
                long j23 = j21 & M;
                long j24 = j19 + (j22 >>> 32);
                long j25 = j22 & M;
                long j26 = ((long) iArr[4]) & M;
                long j27 = ((long) iArr2[7]) & M;
                long j28 = ((long) iArr2[8]) & M;
                long j29 = j23 + (j26 * j);
                int i10 = (int) j29;
                iArr2[4] = (i10 << 1) | i9;
                int i11 = i10 >>> 31;
                long j30 = j25 + (j29 >>> 32) + (j26 * j6);
                long j31 = j24 + (j30 >>> 32) + (j26 * j10);
                long j32 = j30 & M;
                long j33 = j27 + (j31 >>> 32) + (j26 * j17);
                long j34 = j31 & M;
                long j35 = j28 + (j33 >>> 32);
                long j36 = j33 & M;
                long j37 = ((long) iArr[5]) & M;
                long j38 = ((long) iArr2[9]) & M;
                long j39 = ((long) iArr2[10]) & M;
                long j40 = j32 + (j37 * j);
                int i12 = (int) j40;
                iArr2[5] = (i12 << 1) | i11;
                int i13 = i12 >>> 31;
                long j41 = j34 + (j40 >>> 32) + (j37 * j6);
                long j42 = j36 + (j41 >>> 32) + (j37 * j10);
                long j43 = j41 & M;
                long j44 = j35 + (j42 >>> 32) + (j37 * j17);
                long j45 = j42 & M;
                long j46 = j38 + (j44 >>> 32) + (j37 * j26);
                long j47 = j44 & M;
                long j48 = j39 + (j46 >>> 32);
                long j49 = j46 & M;
                long j50 = ((long) iArr[6]) & M;
                long j51 = ((long) iArr2[11]) & M;
                long j52 = ((long) iArr2[12]) & M;
                long j53 = j43 + (j50 * j);
                int i14 = (int) j53;
                iArr2[6] = (i14 << 1) | i13;
                int i15 = i14 >>> 31;
                long j54 = j45 + (j53 >>> 32) + (j50 * j6);
                long j55 = j47 + (j54 >>> 32) + (j50 * j10);
                long j56 = j54 & M;
                long j57 = j49 + (j55 >>> 32) + (j50 * j17);
                long j58 = j55 & M;
                long j59 = j48 + (j57 >>> 32) + (j50 * j26);
                long j60 = j57 & M;
                long j61 = j51 + (j59 >>> 32) + (j50 * j37);
                long j62 = j59 & M;
                long j63 = j52 + (j61 >>> 32);
                long j64 = j61 & M;
                long j65 = ((long) iArr[7]) & M;
                long j66 = ((long) iArr2[13]) & M;
                long j67 = M & ((long) iArr2[14]);
                long j68 = j56 + (j65 * j);
                int i16 = (int) j68;
                iArr2[7] = (i16 << 1) | i15;
                long j69 = j58 + (j68 >>> 32) + (j65 * j6);
                long j70 = j60 + (j69 >>> 32) + (j10 * j65);
                long j71 = j62 + (j70 >>> 32) + (j65 * j17);
                long j72 = j64 + (j71 >>> 32) + (j65 * j26);
                long j73 = j63 + (j72 >>> 32) + (j65 * j37);
                long j74 = j66 + (j73 >>> 32) + (j65 * j50);
                long j75 = j67 + (j74 >>> 32);
                int i17 = (int) j69;
                iArr2[8] = (i17 << 1) | (i16 >>> 31);
                int i18 = (int) j70;
                iArr2[9] = (i18 << 1) | (i17 >>> 31);
                int i19 = (int) j71;
                iArr2[10] = (i18 >>> 31) | (i19 << 1);
                int i20 = i19 >>> 31;
                int i21 = (int) j72;
                iArr2[11] = i20 | (i21 << 1);
                int i22 = i21 >>> 31;
                int i23 = (int) j73;
                iArr2[12] = i22 | (i23 << 1);
                int i24 = i23 >>> 31;
                int i25 = (int) j74;
                iArr2[13] = i24 | (i25 << 1);
                int i26 = i25 >>> 31;
                int i27 = (int) j75;
                iArr2[14] = i26 | (i27 << 1);
                iArr2[15] = (i27 >>> 31) | ((iArr2[15] + ((int) (j75 >> 32))) << 1);
                return;
            }
            i3 = i4;
        }
    }

    public static void square(int[] iArr, int i, int[] iArr2, int i2) {
        long j = ((long) iArr[i]) & M;
        int i3 = 0;
        int i4 = 16;
        int i5 = 7;
        while (true) {
            int i6 = i5 - 1;
            long j2 = ((long) iArr[i + i5]) & M;
            long j3 = j2 * j2;
            iArr2[i2 + (i4 - 1)] = (i3 << 31) | ((int) (j3 >>> 33));
            i4 -= 2;
            iArr2[i2 + i4] = (int) (j3 >>> 1);
            i3 = (int) j3;
            if (i6 <= 0) {
                long j4 = j * j;
                long j5 = (j4 >>> 33) | (((long) (i3 << 31)) & M);
                iArr2[i2] = (int) j4;
                int i7 = ((int) (j4 >>> 32)) & 1;
                long j6 = ((long) iArr[i + 1]) & M;
                int i8 = i2 + 2;
                long j7 = ((long) iArr2[i8]) & M;
                long j8 = j5 + (j6 * j);
                int i9 = (int) j8;
                iArr2[i2 + 1] = (i9 << 1) | i7;
                int i10 = i9 >>> 31;
                long j9 = j7 + (j8 >>> 32);
                long j10 = ((long) iArr[i + 2]) & M;
                int i11 = i2 + 3;
                long j11 = ((long) iArr2[i11]) & M;
                int i12 = i2 + 4;
                long j12 = ((long) iArr2[i12]) & M;
                long j13 = j9 + (j10 * j);
                int i13 = (int) j13;
                iArr2[i8] = (i13 << 1) | i10;
                long j14 = j11 + (j13 >>> 32) + (j10 * j6);
                long j15 = j14 & M;
                long j16 = ((long) iArr[i + 3]) & M;
                int i14 = i2 + 5;
                long j17 = ((long) iArr2[i14]) & M;
                int i15 = i2 + 6;
                long j18 = ((long) iArr2[i15]) & M;
                long j19 = j15 + (j16 * j);
                int i16 = (int) j19;
                iArr2[i11] = (i16 << 1) | (i13 >>> 31);
                long j20 = j12 + (j14 >>> 32) + (j19 >>> 32) + (j16 * j6);
                long j21 = j17 + (j20 >>> 32) + (j16 * j10);
                long j22 = j20 & M;
                long j23 = j18 + (j21 >>> 32);
                long j24 = j21 & M;
                long j25 = ((long) iArr[i + 4]) & M;
                int i17 = i2 + 7;
                long j26 = ((long) iArr2[i17]) & M;
                int i18 = i2 + 8;
                long j27 = ((long) iArr2[i18]) & M;
                long j28 = j22 + (j25 * j);
                int i19 = (int) j28;
                iArr2[i12] = (i19 << 1) | (i16 >>> 31);
                int i20 = i19 >>> 31;
                long j29 = j24 + (j28 >>> 32) + (j25 * j6);
                long j30 = j23 + (j29 >>> 32) + (j25 * j10);
                long j31 = j29 & M;
                long j32 = j26 + (j30 >>> 32) + (j25 * j16);
                long j33 = j30 & M;
                long j34 = j27 + (j32 >>> 32);
                long j35 = j32 & M;
                long j36 = ((long) iArr[i + 5]) & M;
                int i21 = i2 + 9;
                long j37 = ((long) iArr2[i21]) & M;
                int i22 = i2 + 10;
                long j38 = ((long) iArr2[i22]) & M;
                long j39 = j31 + (j36 * j);
                int i23 = (int) j39;
                iArr2[i14] = i20 | (i23 << 1);
                int i24 = i23 >>> 31;
                long j40 = j33 + (j39 >>> 32) + (j36 * j6);
                long j41 = j35 + (j40 >>> 32) + (j36 * j10);
                long j42 = j40 & M;
                long j43 = j34 + (j41 >>> 32) + (j36 * j16);
                long j44 = j41 & M;
                long j45 = j37 + (j43 >>> 32) + (j36 * j25);
                long j46 = j43 & M;
                long j47 = j38 + (j45 >>> 32);
                long j48 = j45 & M;
                long j49 = ((long) iArr[i + 6]) & M;
                int i25 = i2 + 11;
                long j50 = ((long) iArr2[i25]) & M;
                int i26 = i2 + 12;
                long j51 = ((long) iArr2[i26]) & M;
                long j52 = j42 + (j49 * j);
                int i27 = (int) j52;
                iArr2[i15] = i24 | (i27 << 1);
                int i28 = i27 >>> 31;
                long j53 = j44 + (j52 >>> 32) + (j49 * j6);
                long j54 = j46 + (j53 >>> 32) + (j49 * j10);
                long j55 = j53 & M;
                long j56 = j48 + (j54 >>> 32) + (j49 * j16);
                long j57 = j54 & M;
                long j58 = j47 + (j56 >>> 32) + (j49 * j25);
                long j59 = j56 & M;
                long j60 = j50 + (j58 >>> 32) + (j49 * j36);
                long j61 = j58 & M;
                long j62 = j51 + (j60 >>> 32);
                long j63 = j60 & M;
                long j64 = ((long) iArr[i + 7]) & M;
                int i29 = i2 + 13;
                long j65 = ((long) iArr2[i29]) & M;
                int i30 = i2 + 14;
                long j66 = M & ((long) iArr2[i30]);
                long j67 = j55 + (j * j64);
                int i31 = (int) j67;
                iArr2[i17] = (i31 << 1) | i28;
                long j68 = j57 + (j67 >>> 32) + (j6 * j64);
                long j69 = j59 + (j68 >>> 32) + (j64 * j10);
                long j70 = j61 + (j69 >>> 32) + (j64 * j16);
                long j71 = j63 + (j70 >>> 32) + (j64 * j25);
                long j72 = j62 + (j71 >>> 32) + (j64 * j36);
                long j73 = j65 + (j72 >>> 32) + (j64 * j49);
                long j74 = j66 + (j73 >>> 32);
                int i32 = (int) j68;
                iArr2[i18] = (i31 >>> 31) | (i32 << 1);
                int i33 = i32 >>> 31;
                int i34 = (int) j69;
                iArr2[i21] = i33 | (i34 << 1);
                int i35 = i34 >>> 31;
                int i36 = (int) j70;
                iArr2[i22] = i35 | (i36 << 1);
                int i37 = i36 >>> 31;
                int i38 = (int) j71;
                iArr2[i25] = i37 | (i38 << 1);
                int i39 = i38 >>> 31;
                int i40 = (int) j72;
                iArr2[i26] = i39 | (i40 << 1);
                int i41 = i40 >>> 31;
                int i42 = (int) j73;
                iArr2[i29] = i41 | (i42 << 1);
                int i43 = i42 >>> 31;
                int i44 = (int) j74;
                iArr2[i30] = i43 | (i44 << 1);
                int i45 = i44 >>> 31;
                int i46 = i2 + 15;
                iArr2[i46] = i45 | ((iArr2[i46] + ((int) (j74 >> 32))) << 1);
                return;
            }
            i5 = i6;
        }
    }

    public static int sub(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = (((long) iArr[0]) & M) - (((long) iArr2[0]) & M);
        iArr3[0] = (int) j;
        long j2 = (j >> 32) + ((((long) iArr[1]) & M) - (((long) iArr2[1]) & M));
        iArr3[1] = (int) j2;
        long j3 = (j2 >> 32) + ((((long) iArr[2]) & M) - (((long) iArr2[2]) & M));
        iArr3[2] = (int) j3;
        long j4 = (j3 >> 32) + ((((long) iArr[3]) & M) - (((long) iArr2[3]) & M));
        iArr3[3] = (int) j4;
        long j5 = (j4 >> 32) + ((((long) iArr[4]) & M) - (((long) iArr2[4]) & M));
        iArr3[4] = (int) j5;
        long j6 = (j5 >> 32) + ((((long) iArr[5]) & M) - (((long) iArr2[5]) & M));
        iArr3[5] = (int) j6;
        long j7 = (j6 >> 32) + ((((long) iArr[6]) & M) - (((long) iArr2[6]) & M));
        iArr3[6] = (int) j7;
        long j8 = (j7 >> 32) + ((((long) iArr[7]) & M) - (((long) iArr2[7]) & M));
        iArr3[7] = (int) j8;
        return (int) (j8 >> 32);
    }

    public static int sub(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        long j = (((long) iArr[i]) & M) - (((long) iArr2[i2]) & M);
        iArr3[i3] = (int) j;
        long j2 = (j >> 32) + ((((long) iArr[i + 1]) & M) - (((long) iArr2[i2 + 1]) & M));
        iArr3[i3 + 1] = (int) j2;
        long j3 = (j2 >> 32) + ((((long) iArr[i + 2]) & M) - (((long) iArr2[i2 + 2]) & M));
        iArr3[i3 + 2] = (int) j3;
        long j4 = (j3 >> 32) + ((((long) iArr[i + 3]) & M) - (((long) iArr2[i2 + 3]) & M));
        iArr3[i3 + 3] = (int) j4;
        long j5 = (j4 >> 32) + ((((long) iArr[i + 4]) & M) - (((long) iArr2[i2 + 4]) & M));
        iArr3[i3 + 4] = (int) j5;
        long j6 = (j5 >> 32) + ((((long) iArr[i + 5]) & M) - (((long) iArr2[i2 + 5]) & M));
        iArr3[i3 + 5] = (int) j6;
        long j7 = (j6 >> 32) + ((((long) iArr[i + 6]) & M) - (((long) iArr2[i2 + 6]) & M));
        iArr3[i3 + 6] = (int) j7;
        long j8 = (j7 >> 32) + ((((long) iArr[i + 7]) & M) - (((long) iArr2[i2 + 7]) & M));
        iArr3[i3 + 7] = (int) j8;
        return (int) (j8 >> 32);
    }

    public static int subBothFrom(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = ((((long) iArr3[0]) & M) - (((long) iArr[0]) & M)) - (((long) iArr2[0]) & M);
        iArr3[0] = (int) j;
        long j2 = (j >> 32) + (((((long) iArr3[1]) & M) - (((long) iArr[1]) & M)) - (((long) iArr2[1]) & M));
        iArr3[1] = (int) j2;
        long j3 = (j2 >> 32) + (((((long) iArr3[2]) & M) - (((long) iArr[2]) & M)) - (((long) iArr2[2]) & M));
        iArr3[2] = (int) j3;
        long j4 = (j3 >> 32) + (((((long) iArr3[3]) & M) - (((long) iArr[3]) & M)) - (((long) iArr2[3]) & M));
        iArr3[3] = (int) j4;
        long j5 = (j4 >> 32) + (((((long) iArr3[4]) & M) - (((long) iArr[4]) & M)) - (((long) iArr2[4]) & M));
        iArr3[4] = (int) j5;
        long j6 = (j5 >> 32) + (((((long) iArr3[5]) & M) - (((long) iArr[5]) & M)) - (((long) iArr2[5]) & M));
        iArr3[5] = (int) j6;
        long j7 = (j6 >> 32) + (((((long) iArr3[6]) & M) - (((long) iArr[6]) & M)) - (((long) iArr2[6]) & M));
        iArr3[6] = (int) j7;
        long j8 = (j7 >> 32) + (((((long) iArr3[7]) & M) - (((long) iArr[7]) & M)) - (((long) iArr2[7]) & M));
        iArr3[7] = (int) j8;
        return (int) (j8 >> 32);
    }

    public static int subFrom(int[] iArr, int[] iArr2) {
        long j = (((long) iArr2[0]) & M) - (((long) iArr[0]) & M);
        iArr2[0] = (int) j;
        long j2 = (j >> 32) + ((((long) iArr2[1]) & M) - (((long) iArr[1]) & M));
        iArr2[1] = (int) j2;
        long j3 = (j2 >> 32) + ((((long) iArr2[2]) & M) - (((long) iArr[2]) & M));
        iArr2[2] = (int) j3;
        long j4 = (j3 >> 32) + ((((long) iArr2[3]) & M) - (((long) iArr[3]) & M));
        iArr2[3] = (int) j4;
        long j5 = (j4 >> 32) + ((((long) iArr2[4]) & M) - (((long) iArr[4]) & M));
        iArr2[4] = (int) j5;
        long j6 = (j5 >> 32) + ((((long) iArr2[5]) & M) - (((long) iArr[5]) & M));
        iArr2[5] = (int) j6;
        long j7 = (j6 >> 32) + ((((long) iArr2[6]) & M) - (((long) iArr[6]) & M));
        iArr2[6] = (int) j7;
        long j8 = (j7 >> 32) + ((((long) iArr2[7]) & M) - (M & ((long) iArr[7])));
        iArr2[7] = (int) j8;
        return (int) (j8 >> 32);
    }

    public static int subFrom(int[] iArr, int i, int[] iArr2, int i2) {
        long j = (((long) iArr2[i2]) & M) - (((long) iArr[i]) & M);
        iArr2[i2] = (int) j;
        int i3 = i2 + 1;
        long j2 = (j >> 32) + ((((long) iArr2[i3]) & M) - (((long) iArr[i + 1]) & M));
        iArr2[i3] = (int) j2;
        int i4 = i2 + 2;
        long j3 = (j2 >> 32) + ((((long) iArr2[i4]) & M) - (((long) iArr[i + 2]) & M));
        iArr2[i4] = (int) j3;
        int i5 = i2 + 3;
        long j4 = (j3 >> 32) + ((((long) iArr2[i5]) & M) - (((long) iArr[i + 3]) & M));
        iArr2[i5] = (int) j4;
        int i6 = i2 + 4;
        long j5 = (j4 >> 32) + ((((long) iArr2[i6]) & M) - (((long) iArr[i + 4]) & M));
        iArr2[i6] = (int) j5;
        int i7 = i2 + 5;
        long j6 = (j5 >> 32) + ((((long) iArr2[i7]) & M) - (((long) iArr[i + 5]) & M));
        iArr2[i7] = (int) j6;
        int i8 = i2 + 6;
        long j7 = (j6 >> 32) + ((((long) iArr2[i8]) & M) - (((long) iArr[i + 6]) & M));
        iArr2[i8] = (int) j7;
        int i9 = i2 + 7;
        long j8 = (j7 >> 32) + ((((long) iArr2[i9]) & M) - (((long) iArr[i + 7]) & M));
        iArr2[i9] = (int) j8;
        return (int) (j8 >> 32);
    }

    public static BigInteger toBigInteger(int[] iArr) {
        byte[] bArr = new byte[32];
        for (int i = 0; i < 8; i++) {
            int i2 = iArr[i];
            if (i2 != 0) {
                Pack.intToBigEndian(i2, bArr, (7 - i) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }

    public static BigInteger toBigInteger64(long[] jArr) {
        byte[] bArr = new byte[32];
        for (int i = 0; i < 4; i++) {
            long j = jArr[i];
            if (j != 0) {
                Pack.longToBigEndian(j, bArr, (3 - i) << 3);
            }
        }
        return new BigInteger(1, bArr);
    }

    public static void zero(int[] iArr) {
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        iArr[3] = 0;
        iArr[4] = 0;
        iArr[5] = 0;
        iArr[6] = 0;
        iArr[7] = 0;
    }
}
