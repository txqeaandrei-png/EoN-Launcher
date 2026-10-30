package org.spongycastle.crypto.engines;

import androidx.recyclerview.widget.ItemTouchHelper;
import java.lang.reflect.Array;
import kotlin.UByte;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import okio.Utf8;
import org.spongycastle.asn1.eac.EACTags;
import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.signers.PSSSigner;
import org.spongycastle.crypto.tls.CipherSuite;
import org.spongycastle.math.ec.Tnaf;
import org.spongycastle.util.Pack;

/* JADX INFO: loaded from: classes2.dex */
public class AESLightEngine implements BlockCipher {
    private static final int BLOCK_SIZE = 16;
    private static final int m1 = -2139062144;
    private static final int m2 = 2139062143;
    private static final int m3 = 27;
    private static final int m4 = -1061109568;
    private static final int m5 = 1061109567;
    private int C0;
    private int C1;
    private int C2;
    private int C3;
    private int ROUNDS;
    private int[][] WorkingKey = null;
    private boolean forEncryption;
    private static final byte[] S = {99, 124, 119, 123, -14, 107, 111, -59, 48, 1, 103, 43, -2, -41, -85, 118, -54, -126, -55, 125, -6, 89, 71, -16, -83, -44, -94, -81, -100, -92, 114, -64, -73, -3, -109, 38, 54, Utf8.REPLACEMENT_BYTE, -9, -52, 52, -91, -27, -15, 113, -40, 49, 21, 4, -57, 35, -61, 24, -106, 5, -102, 7, 18, ByteCompanionObject.MIN_VALUE, -30, -21, 39, -78, 117, 9, -125, 44, 26, 27, 110, 90, -96, 82, 59, -42, -77, 41, -29, 47, -124, 83, -47, 0, -19, 32, -4, -79, 91, 106, -53, -66, 57, 74, 76, 88, -49, -48, -17, -86, -5, 67, 77, 51, -123, 69, -7, 2, ByteCompanionObject.MAX_VALUE, 80, 60, -97, -88, 81, -93, 64, -113, -110, -99, 56, -11, PSSSigner.TRAILER_IMPLICIT, -74, -38, 33, Tnaf.POW_2_WIDTH, -1, -13, -46, -51, 12, 19, -20, 95, -105, 68, 23, -60, -89, 126, Base64.padSymbol, 100, 93, 25, 115, 96, -127, 79, -36, 34, 42, -112, -120, 70, -18, -72, 20, -34, 94, 11, -37, -32, 50, 58, 10, 73, 6, 36, 92, -62, -45, -84, 98, -111, -107, -28, 121, -25, -56, 55, 109, -115, -43, 78, -87, 108, 86, -12, -22, 101, 122, -82, 8, -70, 120, 37, 46, 28, -90, -76, -58, -24, -35, 116, 31, 75, -67, -117, -118, 112, 62, -75, 102, 72, 3, -10, 14, 97, 53, 87, -71, -122, -63, 29, -98, -31, -8, -104, 17, 105, -39, -114, -108, -101, 30, -121, -23, -50, 85, 40, -33, -116, -95, -119, 13, -65, -26, 66, 104, 65, -103, 45, 15, -80, 84, -69, 22};
    private static final byte[] Si = {82, 9, 106, -43, 48, 54, -91, 56, -65, 64, -93, -98, -127, -13, -41, -5, 124, -29, 57, -126, -101, 47, -1, -121, 52, -114, 67, 68, -60, -34, -23, -53, 84, 123, -108, 50, -90, -62, 35, Base64.padSymbol, -18, 76, -107, 11, 66, -6, -61, 78, 8, 46, -95, 102, 40, -39, 36, -78, 118, 91, -94, 73, 109, -117, -47, 37, 114, -8, -10, 100, -122, 104, -104, 22, -44, -92, 92, -52, 93, 101, -74, -110, 108, 112, 72, 80, -3, -19, -71, -38, 94, 21, 70, 87, -89, -115, -99, -124, -112, -40, -85, 0, -116, PSSSigner.TRAILER_IMPLICIT, -45, 10, -9, -28, 88, 5, -72, -77, 69, 6, -48, 44, 30, -113, -54, Utf8.REPLACEMENT_BYTE, 15, 2, -63, -81, -67, 3, 1, 19, -118, 107, 58, -111, 17, 65, 79, 103, -36, -22, -105, -14, -49, -50, -16, -76, -26, 115, -106, -84, 116, 34, -25, -83, 53, -123, -30, -7, 55, -24, 28, 117, -33, 110, 71, -15, 26, 113, 29, 41, -59, -119, 111, -73, 98, 14, -86, 24, -66, 27, -4, 86, 62, 75, -58, -46, 121, 32, -102, -37, -64, -2, 120, -51, 90, -12, 31, -35, -88, 51, -120, 7, -57, 49, -79, 18, Tnaf.POW_2_WIDTH, 89, 39, ByteCompanionObject.MIN_VALUE, -20, 95, 96, 81, ByteCompanionObject.MAX_VALUE, -87, 25, -75, 74, 13, 45, -27, 122, -97, -109, -55, -100, -17, -96, -32, 59, 77, -82, 42, -11, -80, -56, -21, -69, 60, -125, 83, -103, 97, 23, 43, 4, 126, -70, 119, -42, 38, -31, 105, 20, 99, 85, 33, 12, 125};
    private static final int[] rcon = {1, 2, 4, 8, 16, 32, 64, 128, 27, 54, 108, 216, CipherSuite.TLS_DHE_PSK_WITH_AES_256_GCM_SHA384, 77, CipherSuite.TLS_DHE_RSA_WITH_SEED_CBC_SHA, 47, 94, 188, 99, 198, CipherSuite.TLS_DH_DSS_WITH_SEED_CBC_SHA, 53, 106, 212, CipherSuite.TLS_DHE_PSK_WITH_AES_256_CBC_SHA384, EACTags.SECURE_MESSAGING_TEMPLATE, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 239, CipherSuite.TLS_DH_anon_WITH_CAMELLIA_256_CBC_SHA256, CipherSuite.TLS_DHE_PSK_WITH_AES_256_CBC_SHA};

    private static int FFmulX(int i) {
        return (((i & m1) >>> 7) * 27) ^ ((m2 & i) << 1);
    }

    private static int FFmulX2(int i) {
        int i2 = (m5 & i) << 2;
        int i3 = i & m4;
        int i4 = i3 ^ (i3 >>> 1);
        return (i4 >>> 5) ^ (i2 ^ (i4 >>> 2));
    }

    private static int shift(int i, int i2) {
        return (i << (-i2)) | (i >>> i2);
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public void reset() {
    }

    private static int mcol(int i) {
        int iShift = shift(i, 8);
        int i2 = i ^ iShift;
        return FFmulX(i2) ^ (iShift ^ shift(i2, 16));
    }

    private static int inv_mcol(int i) {
        int iShift = shift(i, 8) ^ i;
        int iFFmulX = i ^ FFmulX(iShift);
        int iFFmulX2 = iShift ^ FFmulX2(iFFmulX);
        return iFFmulX ^ (iFFmulX2 ^ shift(iFFmulX2, 16));
    }

    private static int subWord(int i) {
        byte[] bArr = S;
        return (bArr[(i >> 24) & 255] << 24) | (bArr[i & 255] & UByte.MAX_VALUE) | ((bArr[(i >> 8) & 255] & UByte.MAX_VALUE) << 8) | ((bArr[(i >> 16) & 255] & UByte.MAX_VALUE) << 16);
    }

    private int[][] generateWorkingKey(byte[] bArr, boolean z) {
        int length = bArr.length;
        if (length < 16 || length > 32 || (length & 7) != 0) {
            throw new IllegalArgumentException("Key length not 128/192/256 bits.");
        }
        int i = length >> 2;
        this.ROUNDS = i + 6;
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i + 7, 4);
        if (i == 4) {
            int iLittleEndianToInt = Pack.littleEndianToInt(bArr, 0);
            iArr[0][0] = iLittleEndianToInt;
            int iLittleEndianToInt2 = Pack.littleEndianToInt(bArr, 4);
            iArr[0][1] = iLittleEndianToInt2;
            int iLittleEndianToInt3 = Pack.littleEndianToInt(bArr, 8);
            iArr[0][2] = iLittleEndianToInt3;
            int iLittleEndianToInt4 = Pack.littleEndianToInt(bArr, 12);
            iArr[0][3] = iLittleEndianToInt4;
            for (int i2 = 1; i2 <= 10; i2++) {
                iLittleEndianToInt ^= subWord(shift(iLittleEndianToInt4, 8)) ^ rcon[i2 - 1];
                int[] iArr2 = iArr[i2];
                iArr2[0] = iLittleEndianToInt;
                iLittleEndianToInt2 ^= iLittleEndianToInt;
                iArr2[1] = iLittleEndianToInt2;
                iLittleEndianToInt3 ^= iLittleEndianToInt2;
                iArr2[2] = iLittleEndianToInt3;
                iLittleEndianToInt4 ^= iLittleEndianToInt3;
                iArr2[3] = iLittleEndianToInt4;
            }
        } else if (i == 6) {
            int iLittleEndianToInt5 = Pack.littleEndianToInt(bArr, 0);
            iArr[0][0] = iLittleEndianToInt5;
            int iLittleEndianToInt6 = Pack.littleEndianToInt(bArr, 4);
            iArr[0][1] = iLittleEndianToInt6;
            int iLittleEndianToInt7 = Pack.littleEndianToInt(bArr, 8);
            iArr[0][2] = iLittleEndianToInt7;
            int iLittleEndianToInt8 = Pack.littleEndianToInt(bArr, 12);
            iArr[0][3] = iLittleEndianToInt8;
            int iLittleEndianToInt9 = Pack.littleEndianToInt(bArr, 16);
            iArr[1][0] = iLittleEndianToInt9;
            int iLittleEndianToInt10 = Pack.littleEndianToInt(bArr, 20);
            iArr[1][1] = iLittleEndianToInt10;
            int iSubWord = iLittleEndianToInt5 ^ (subWord(shift(iLittleEndianToInt10, 8)) ^ 1);
            int[] iArr3 = iArr[1];
            iArr3[2] = iSubWord;
            int i3 = iLittleEndianToInt6 ^ iSubWord;
            iArr3[3] = i3;
            int i4 = iLittleEndianToInt7 ^ i3;
            int[] iArr4 = iArr[2];
            iArr4[0] = i4;
            int i5 = iLittleEndianToInt8 ^ i4;
            iArr4[1] = i5;
            int i6 = iLittleEndianToInt9 ^ i5;
            iArr4[2] = i6;
            int i7 = iLittleEndianToInt10 ^ i6;
            iArr4[3] = i7;
            int i8 = 2;
            for (int i9 = 3; i9 < 12; i9 += 3) {
                int iSubWord2 = iSubWord ^ (subWord(shift(i7, 8)) ^ i8);
                int[] iArr5 = iArr[i9];
                iArr5[0] = iSubWord2;
                int i10 = i3 ^ iSubWord2;
                iArr5[1] = i10;
                int i11 = i4 ^ i10;
                iArr5[2] = i11;
                int i12 = i5 ^ i11;
                iArr5[3] = i12;
                int i13 = i6 ^ i12;
                int i14 = i9 + 1;
                int[] iArr6 = iArr[i14];
                iArr6[0] = i13;
                int i15 = i7 ^ i13;
                iArr6[1] = i15;
                int iSubWord3 = subWord(shift(i15, 8)) ^ (i8 << 1);
                i8 <<= 2;
                iSubWord = iSubWord2 ^ iSubWord3;
                int[] iArr7 = iArr[i14];
                iArr7[2] = iSubWord;
                i3 = i10 ^ iSubWord;
                iArr7[3] = i3;
                i4 = i11 ^ i3;
                int[] iArr8 = iArr[i9 + 2];
                iArr8[0] = i4;
                i5 = i12 ^ i4;
                iArr8[1] = i5;
                i6 = i13 ^ i5;
                iArr8[2] = i6;
                i7 = i15 ^ i6;
                iArr8[3] = i7;
            }
            int iSubWord4 = (subWord(shift(i7, 8)) ^ i8) ^ iSubWord;
            int[] iArr9 = iArr[12];
            iArr9[0] = iSubWord4;
            int i16 = iSubWord4 ^ i3;
            iArr9[1] = i16;
            int i17 = i16 ^ i4;
            iArr9[2] = i17;
            iArr9[3] = i17 ^ i5;
        } else if (i == 8) {
            int iLittleEndianToInt11 = Pack.littleEndianToInt(bArr, 0);
            iArr[0][0] = iLittleEndianToInt11;
            int iLittleEndianToInt12 = Pack.littleEndianToInt(bArr, 4);
            iArr[0][1] = iLittleEndianToInt12;
            int iLittleEndianToInt13 = Pack.littleEndianToInt(bArr, 8);
            iArr[0][2] = iLittleEndianToInt13;
            int iLittleEndianToInt14 = Pack.littleEndianToInt(bArr, 12);
            iArr[0][3] = iLittleEndianToInt14;
            int iLittleEndianToInt15 = Pack.littleEndianToInt(bArr, 16);
            iArr[1][0] = iLittleEndianToInt15;
            int iLittleEndianToInt16 = Pack.littleEndianToInt(bArr, 20);
            iArr[1][1] = iLittleEndianToInt16;
            int iLittleEndianToInt17 = Pack.littleEndianToInt(bArr, 24);
            iArr[1][2] = iLittleEndianToInt17;
            int iLittleEndianToInt18 = Pack.littleEndianToInt(bArr, 28);
            iArr[1][3] = iLittleEndianToInt18;
            int i18 = 1;
            for (int i19 = 2; i19 < 14; i19 += 2) {
                int iSubWord5 = subWord(shift(iLittleEndianToInt18, 8)) ^ i18;
                i18 <<= 1;
                iLittleEndianToInt11 ^= iSubWord5;
                int[] iArr10 = iArr[i19];
                iArr10[0] = iLittleEndianToInt11;
                iLittleEndianToInt12 ^= iLittleEndianToInt11;
                iArr10[1] = iLittleEndianToInt12;
                iLittleEndianToInt13 ^= iLittleEndianToInt12;
                iArr10[2] = iLittleEndianToInt13;
                iLittleEndianToInt14 ^= iLittleEndianToInt13;
                iArr10[3] = iLittleEndianToInt14;
                iLittleEndianToInt15 ^= subWord(iLittleEndianToInt14);
                int[] iArr11 = iArr[i19 + 1];
                iArr11[0] = iLittleEndianToInt15;
                iLittleEndianToInt16 ^= iLittleEndianToInt15;
                iArr11[1] = iLittleEndianToInt16;
                iLittleEndianToInt17 ^= iLittleEndianToInt16;
                iArr11[2] = iLittleEndianToInt17;
                iLittleEndianToInt18 ^= iLittleEndianToInt17;
                iArr11[3] = iLittleEndianToInt18;
            }
            int iSubWord6 = (subWord(shift(iLittleEndianToInt18, 8)) ^ i18) ^ iLittleEndianToInt11;
            int[] iArr12 = iArr[14];
            iArr12[0] = iSubWord6;
            int i20 = iSubWord6 ^ iLittleEndianToInt12;
            iArr12[1] = i20;
            int i21 = i20 ^ iLittleEndianToInt13;
            iArr12[2] = i21;
            iArr12[3] = i21 ^ iLittleEndianToInt14;
        } else {
            throw new IllegalStateException("Should never get here");
        }
        if (!z) {
            for (int i22 = 1; i22 < this.ROUNDS; i22++) {
                for (int i23 = 0; i23 < 4; i23++) {
                    int[] iArr13 = iArr[i22];
                    iArr13[i23] = inv_mcol(iArr13[i23]);
                }
            }
        }
        return iArr;
    }

    public AESLightEngine() {
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (cipherParameters instanceof KeyParameter) {
            this.WorkingKey = generateWorkingKey(((KeyParameter) cipherParameters).getKey(), z);
            this.forEncryption = z;
            return;
        }
        throw new IllegalArgumentException("invalid parameter passed to AES init - " + cipherParameters.getClass().getName());
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "AES";
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        if (this.WorkingKey == null) {
            throw new IllegalStateException("AES engine not initialised");
        }
        if (i + 16 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (i2 + 16 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        if (this.forEncryption) {
            unpackBlock(bArr, i);
            encryptBlock(this.WorkingKey);
            packBlock(bArr2, i2);
            return 16;
        }
        unpackBlock(bArr, i);
        decryptBlock(this.WorkingKey);
        packBlock(bArr2, i2);
        return 16;
    }

    private void unpackBlock(byte[] bArr, int i) {
        this.C0 = ((bArr[i + 1] & UByte.MAX_VALUE) << 8) | (bArr[i] & UByte.MAX_VALUE) | ((bArr[i + 2] & UByte.MAX_VALUE) << 16) | (bArr[i + 3] << 24);
        this.C1 = ((bArr[i + 5] & UByte.MAX_VALUE) << 8) | (bArr[i + 4] & UByte.MAX_VALUE) | ((bArr[i + 6] & UByte.MAX_VALUE) << 16) | (bArr[i + 7] << 24);
        this.C2 = ((bArr[i + 9] & UByte.MAX_VALUE) << 8) | (bArr[i + 8] & UByte.MAX_VALUE) | ((bArr[i + 10] & UByte.MAX_VALUE) << 16) | (bArr[i + 11] << 24);
        int i2 = ((bArr[i + 13] & UByte.MAX_VALUE) << 8) | (bArr[i + 12] & UByte.MAX_VALUE);
        this.C3 = (bArr[i + 15] << 24) | i2 | ((bArr[i + 14] & UByte.MAX_VALUE) << 16);
    }

    private void packBlock(byte[] bArr, int i) {
        int i2 = this.C0;
        bArr[i] = (byte) i2;
        bArr[i + 1] = (byte) (i2 >> 8);
        bArr[i + 2] = (byte) (i2 >> 16);
        bArr[i + 3] = (byte) (i2 >> 24);
        int i3 = this.C1;
        bArr[i + 4] = (byte) i3;
        bArr[i + 5] = (byte) (i3 >> 8);
        bArr[i + 6] = (byte) (i3 >> 16);
        bArr[i + 7] = (byte) (i3 >> 24);
        int i4 = this.C2;
        bArr[i + 8] = (byte) i4;
        bArr[i + 9] = (byte) (i4 >> 8);
        bArr[i + 10] = (byte) (i4 >> 16);
        bArr[i + 11] = (byte) (i4 >> 24);
        int i5 = this.C3;
        bArr[i + 12] = (byte) i5;
        bArr[i + 13] = (byte) (i5 >> 8);
        bArr[i + 14] = (byte) (i5 >> 16);
        bArr[i + 15] = (byte) (i5 >> 24);
    }

    private void encryptBlock(int[][] iArr) {
        int i = this.C0;
        int[] iArr2 = iArr[0];
        int i2 = i ^ iArr2[0];
        int i3 = this.C1 ^ iArr2[1];
        int i4 = this.C2 ^ iArr2[2];
        int iMcol = iArr2[3] ^ this.C3;
        int i5 = 1;
        while (i5 < this.ROUNDS - 1) {
            byte[] bArr = S;
            int iMcol2 = mcol((((bArr[i2 & 255] & UByte.MAX_VALUE) ^ ((bArr[(i3 >> 8) & 255] & UByte.MAX_VALUE) << 8)) ^ ((bArr[(i4 >> 16) & 255] & UByte.MAX_VALUE) << 16)) ^ (bArr[(iMcol >> 24) & 255] << 24)) ^ iArr[i5][0];
            int iMcol3 = mcol((((bArr[i3 & 255] & UByte.MAX_VALUE) ^ ((bArr[(i4 >> 8) & 255] & UByte.MAX_VALUE) << 8)) ^ ((bArr[(iMcol >> 16) & 255] & UByte.MAX_VALUE) << 16)) ^ (bArr[(i2 >> 24) & 255] << 24)) ^ iArr[i5][1];
            int iMcol4 = mcol((((bArr[i4 & 255] & UByte.MAX_VALUE) ^ ((bArr[(iMcol >> 8) & 255] & UByte.MAX_VALUE) << 8)) ^ ((bArr[(i2 >> 16) & 255] & UByte.MAX_VALUE) << 16)) ^ (bArr[(i3 >> 24) & 255] << 24)) ^ iArr[i5][2];
            int iMcol5 = mcol(((((bArr[(i2 >> 8) & 255] & UByte.MAX_VALUE) << 8) ^ (bArr[iMcol & 255] & UByte.MAX_VALUE)) ^ ((bArr[(i3 >> 16) & 255] & UByte.MAX_VALUE) << 16)) ^ (bArr[(i4 >> 24) & 255] << 24));
            int i6 = i5 + 1;
            int i7 = iMcol5 ^ iArr[i5][3];
            int iMcol6 = mcol((((bArr[iMcol2 & 255] & UByte.MAX_VALUE) ^ ((bArr[(iMcol3 >> 8) & 255] & UByte.MAX_VALUE) << 8)) ^ ((bArr[(iMcol4 >> 16) & 255] & UByte.MAX_VALUE) << 16)) ^ (bArr[(i7 >> 24) & 255] << 24)) ^ iArr[i6][0];
            int iMcol7 = mcol((((bArr[iMcol3 & 255] & UByte.MAX_VALUE) ^ ((bArr[(iMcol4 >> 8) & 255] & UByte.MAX_VALUE) << 8)) ^ ((bArr[(i7 >> 16) & 255] & UByte.MAX_VALUE) << 16)) ^ (bArr[(iMcol2 >> 24) & 255] << 24)) ^ iArr[i6][1];
            int iMcol8 = mcol((((bArr[iMcol4 & 255] & UByte.MAX_VALUE) ^ ((bArr[(i7 >> 8) & 255] & UByte.MAX_VALUE) << 8)) ^ ((bArr[(iMcol2 >> 16) & 255] & UByte.MAX_VALUE) << 16)) ^ (bArr[(iMcol3 >> 24) & 255] << 24)) ^ iArr[i6][2];
            i5 += 2;
            iMcol = iArr[i6][3] ^ mcol((((bArr[i7 & 255] & UByte.MAX_VALUE) ^ ((bArr[(iMcol2 >> 8) & 255] & UByte.MAX_VALUE) << 8)) ^ ((bArr[(iMcol3 >> 16) & 255] & UByte.MAX_VALUE) << 16)) ^ (bArr[(iMcol4 >> 24) & 255] << 24));
            i2 = iMcol6;
            i3 = iMcol7;
            i4 = iMcol8;
        }
        byte[] bArr2 = S;
        int iMcol9 = mcol((((bArr2[i2 & 255] & UByte.MAX_VALUE) ^ ((bArr2[(i3 >> 8) & 255] & UByte.MAX_VALUE) << 8)) ^ ((bArr2[(i4 >> 16) & 255] & UByte.MAX_VALUE) << 16)) ^ (bArr2[(iMcol >> 24) & 255] << 24)) ^ iArr[i5][0];
        int iMcol10 = mcol((((bArr2[i3 & 255] & UByte.MAX_VALUE) ^ ((bArr2[(i4 >> 8) & 255] & UByte.MAX_VALUE) << 8)) ^ ((bArr2[(iMcol >> 16) & 255] & UByte.MAX_VALUE) << 16)) ^ (bArr2[(i2 >> 24) & 255] << 24)) ^ iArr[i5][1];
        int iMcol11 = mcol((((bArr2[i4 & 255] & UByte.MAX_VALUE) ^ ((bArr2[(iMcol >> 8) & 255] & UByte.MAX_VALUE) << 8)) ^ ((bArr2[(i2 >> 16) & 255] & UByte.MAX_VALUE) << 16)) ^ (bArr2[(i3 >> 24) & 255] << 24)) ^ iArr[i5][2];
        int iMcol12 = mcol(((((bArr2[(i2 >> 8) & 255] & UByte.MAX_VALUE) << 8) ^ (bArr2[iMcol & 255] & UByte.MAX_VALUE)) ^ ((bArr2[(i3 >> 16) & 255] & UByte.MAX_VALUE) << 16)) ^ (bArr2[(i4 >> 24) & 255] << 24)) ^ iArr[i5][3];
        int i8 = (((bArr2[iMcol9 & 255] & UByte.MAX_VALUE) ^ ((bArr2[(iMcol10 >> 8) & 255] & UByte.MAX_VALUE) << 8)) ^ ((bArr2[(iMcol11 >> 16) & 255] & UByte.MAX_VALUE) << 16)) ^ (bArr2[(iMcol12 >> 24) & 255] << 24);
        int[] iArr3 = iArr[i5 + 1];
        this.C0 = iArr3[0] ^ i8;
        this.C1 = ((((bArr2[iMcol10 & 255] & UByte.MAX_VALUE) ^ ((bArr2[(iMcol11 >> 8) & 255] & UByte.MAX_VALUE) << 8)) ^ ((bArr2[(iMcol12 >> 16) & 255] & UByte.MAX_VALUE) << 16)) ^ (bArr2[(iMcol9 >> 24) & 255] << 24)) ^ iArr3[1];
        this.C2 = ((((bArr2[iMcol11 & 255] & UByte.MAX_VALUE) ^ ((bArr2[(iMcol12 >> 8) & 255] & UByte.MAX_VALUE) << 8)) ^ ((bArr2[(iMcol9 >> 16) & 255] & UByte.MAX_VALUE) << 16)) ^ (bArr2[(iMcol10 >> 24) & 255] << 24)) ^ iArr3[2];
        this.C3 = ((((bArr2[iMcol12 & 255] & UByte.MAX_VALUE) ^ ((bArr2[(iMcol9 >> 8) & 255] & UByte.MAX_VALUE) << 8)) ^ ((bArr2[(iMcol10 >> 16) & 255] & UByte.MAX_VALUE) << 16)) ^ (bArr2[(iMcol11 >> 24) & 255] << 24)) ^ iArr3[3];
    }

    private void decryptBlock(int[][] iArr) {
        int i = this.C0;
        int i2 = this.ROUNDS;
        int[] iArr2 = iArr[i2];
        int i3 = i ^ iArr2[0];
        int i4 = this.C1 ^ iArr2[1];
        int i5 = this.C2 ^ iArr2[2];
        int i6 = i2 - 1;
        int iInv_mcol = iArr2[3] ^ this.C3;
        while (i6 > 1) {
            byte[] bArr = Si;
            int iInv_mcol2 = inv_mcol((((bArr[i3 & 255] & UByte.MAX_VALUE) ^ ((bArr[(iInv_mcol >> 8) & 255] & UByte.MAX_VALUE) << 8)) ^ ((bArr[(i5 >> 16) & 255] & UByte.MAX_VALUE) << 16)) ^ (bArr[(i4 >> 24) & 255] << 24)) ^ iArr[i6][0];
            int iInv_mcol3 = inv_mcol((((bArr[i4 & 255] & UByte.MAX_VALUE) ^ ((bArr[(i3 >> 8) & 255] & UByte.MAX_VALUE) << 8)) ^ ((bArr[(iInv_mcol >> 16) & 255] & UByte.MAX_VALUE) << 16)) ^ (bArr[(i5 >> 24) & 255] << 24)) ^ iArr[i6][1];
            int iInv_mcol4 = inv_mcol((((bArr[i5 & 255] & UByte.MAX_VALUE) ^ ((bArr[(i4 >> 8) & 255] & UByte.MAX_VALUE) << 8)) ^ ((bArr[(i3 >> 16) & 255] & UByte.MAX_VALUE) << 16)) ^ (bArr[(iInv_mcol >> 24) & 255] << 24)) ^ iArr[i6][2];
            int iInv_mcol5 = inv_mcol((bArr[(i3 >> 24) & 255] << 24) ^ (((bArr[iInv_mcol & 255] & UByte.MAX_VALUE) ^ ((bArr[(i5 >> 8) & 255] & UByte.MAX_VALUE) << 8)) ^ ((bArr[(i4 >> 16) & 255] & UByte.MAX_VALUE) << 16)));
            int i7 = i6 - 1;
            int i8 = iInv_mcol5 ^ iArr[i6][3];
            int iInv_mcol6 = inv_mcol((((bArr[iInv_mcol2 & 255] & UByte.MAX_VALUE) ^ ((bArr[(i8 >> 8) & 255] & UByte.MAX_VALUE) << 8)) ^ ((bArr[(iInv_mcol4 >> 16) & 255] & UByte.MAX_VALUE) << 16)) ^ (bArr[(iInv_mcol3 >> 24) & 255] << 24)) ^ iArr[i7][0];
            int iInv_mcol7 = inv_mcol((((bArr[iInv_mcol3 & 255] & UByte.MAX_VALUE) ^ ((bArr[(iInv_mcol2 >> 8) & 255] & UByte.MAX_VALUE) << 8)) ^ ((bArr[(i8 >> 16) & 255] & UByte.MAX_VALUE) << 16)) ^ (bArr[(iInv_mcol4 >> 24) & 255] << 24)) ^ iArr[i7][1];
            int iInv_mcol8 = inv_mcol((((bArr[iInv_mcol4 & 255] & UByte.MAX_VALUE) ^ ((bArr[(iInv_mcol3 >> 8) & 255] & UByte.MAX_VALUE) << 8)) ^ ((bArr[(iInv_mcol2 >> 16) & 255] & UByte.MAX_VALUE) << 16)) ^ (bArr[(i8 >> 24) & 255] << 24)) ^ iArr[i7][2];
            i6 -= 2;
            iInv_mcol = iArr[i7][3] ^ inv_mcol((((bArr[i8 & 255] & UByte.MAX_VALUE) ^ ((bArr[(iInv_mcol4 >> 8) & 255] & UByte.MAX_VALUE) << 8)) ^ ((bArr[(iInv_mcol3 >> 16) & 255] & UByte.MAX_VALUE) << 16)) ^ (bArr[(iInv_mcol2 >> 24) & 255] << 24));
            i3 = iInv_mcol6;
            i4 = iInv_mcol7;
            i5 = iInv_mcol8;
        }
        byte[] bArr2 = Si;
        int iInv_mcol9 = inv_mcol((((bArr2[i3 & 255] & UByte.MAX_VALUE) ^ ((bArr2[(iInv_mcol >> 8) & 255] & UByte.MAX_VALUE) << 8)) ^ ((bArr2[(i5 >> 16) & 255] & UByte.MAX_VALUE) << 16)) ^ (bArr2[(i4 >> 24) & 255] << 24)) ^ iArr[i6][0];
        int iInv_mcol10 = inv_mcol((((bArr2[i4 & 255] & UByte.MAX_VALUE) ^ ((bArr2[(i3 >> 8) & 255] & UByte.MAX_VALUE) << 8)) ^ ((bArr2[(iInv_mcol >> 16) & 255] & UByte.MAX_VALUE) << 16)) ^ (bArr2[(i5 >> 24) & 255] << 24)) ^ iArr[i6][1];
        int iInv_mcol11 = inv_mcol((((bArr2[i5 & 255] & UByte.MAX_VALUE) ^ ((bArr2[(i4 >> 8) & 255] & UByte.MAX_VALUE) << 8)) ^ ((bArr2[(i3 >> 16) & 255] & UByte.MAX_VALUE) << 16)) ^ (bArr2[(iInv_mcol >> 24) & 255] << 24)) ^ iArr[i6][2];
        int iInv_mcol12 = inv_mcol((bArr2[(i3 >> 24) & 255] << 24) ^ (((bArr2[iInv_mcol & 255] & UByte.MAX_VALUE) ^ ((bArr2[(i5 >> 8) & 255] & UByte.MAX_VALUE) << 8)) ^ ((bArr2[(i4 >> 16) & 255] & UByte.MAX_VALUE) << 16))) ^ iArr[i6][3];
        int i9 = (((bArr2[iInv_mcol9 & 255] & UByte.MAX_VALUE) ^ ((bArr2[(iInv_mcol12 >> 8) & 255] & UByte.MAX_VALUE) << 8)) ^ ((bArr2[(iInv_mcol11 >> 16) & 255] & UByte.MAX_VALUE) << 16)) ^ (bArr2[(iInv_mcol10 >> 24) & 255] << 24);
        int[] iArr3 = iArr[0];
        this.C0 = i9 ^ iArr3[0];
        this.C1 = ((((bArr2[iInv_mcol10 & 255] & UByte.MAX_VALUE) ^ ((bArr2[(iInv_mcol9 >> 8) & 255] & UByte.MAX_VALUE) << 8)) ^ ((bArr2[(iInv_mcol12 >> 16) & 255] & UByte.MAX_VALUE) << 16)) ^ (bArr2[(iInv_mcol11 >> 24) & 255] << 24)) ^ iArr3[1];
        this.C2 = ((((bArr2[iInv_mcol11 & 255] & UByte.MAX_VALUE) ^ ((bArr2[(iInv_mcol10 >> 8) & 255] & UByte.MAX_VALUE) << 8)) ^ ((bArr2[(iInv_mcol9 >> 16) & 255] & UByte.MAX_VALUE) << 16)) ^ (bArr2[(iInv_mcol12 >> 24) & 255] << 24)) ^ iArr3[2];
        this.C3 = ((((bArr2[iInv_mcol12 & 255] & UByte.MAX_VALUE) ^ ((bArr2[(iInv_mcol11 >> 8) & 255] & UByte.MAX_VALUE) << 8)) ^ ((bArr2[(iInv_mcol10 >> 16) & 255] & UByte.MAX_VALUE) << 16)) ^ (bArr2[(iInv_mcol9 >> 24) & 255] << 24)) ^ iArr3[3];
    }
}
