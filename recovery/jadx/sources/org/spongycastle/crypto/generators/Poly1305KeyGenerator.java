package org.spongycastle.crypto.generators;

import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.KeyGenerationParameters;

/* JADX INFO: loaded from: classes2.dex */
public class Poly1305KeyGenerator extends CipherKeyGenerator {
    private static final byte R_MASK_HIGH_4 = 15;
    private static final byte R_MASK_LOW_2 = -4;

    @Override // org.spongycastle.crypto.CipherKeyGenerator
    public void init(KeyGenerationParameters keyGenerationParameters) {
        super.init(new KeyGenerationParameters(keyGenerationParameters.getRandom(), 256));
    }

    @Override // org.spongycastle.crypto.CipherKeyGenerator
    public byte[] generateKey() {
        byte[] bArrGenerateKey = super.generateKey();
        clamp(bArrGenerateKey);
        return bArrGenerateKey;
    }

    public static void clamp(byte[] bArr) {
        if (bArr.length != 32) {
            throw new IllegalArgumentException("Poly1305 key must be 256 bits.");
        }
        bArr[19] = (byte) (bArr[19] & R_MASK_HIGH_4);
        bArr[23] = (byte) (bArr[23] & R_MASK_HIGH_4);
        bArr[27] = (byte) (bArr[27] & R_MASK_HIGH_4);
        bArr[31] = (byte) (bArr[31] & R_MASK_HIGH_4);
        bArr[20] = (byte) (bArr[20] & R_MASK_LOW_2);
        bArr[24] = (byte) (bArr[24] & R_MASK_LOW_2);
        bArr[28] = (byte) (bArr[28] & R_MASK_LOW_2);
    }

    public static void checkKey(byte[] bArr) {
        if (bArr.length != 32) {
            throw new IllegalArgumentException("Poly1305 key must be 256 bits.");
        }
        checkMask(bArr[19], R_MASK_HIGH_4);
        checkMask(bArr[23], R_MASK_HIGH_4);
        checkMask(bArr[27], R_MASK_HIGH_4);
        checkMask(bArr[31], R_MASK_HIGH_4);
        checkMask(bArr[20], R_MASK_LOW_2);
        checkMask(bArr[24], R_MASK_LOW_2);
        checkMask(bArr[28], R_MASK_LOW_2);
    }

    private static void checkMask(byte b, byte b2) {
        if ((b & (~b2)) != 0) {
            throw new IllegalArgumentException("Invalid format for r portion of Poly1305 key.");
        }
    }
}
