package com.microsoft.xal.crypto;

import java.security.MessageDigest;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;

/* JADX INFO: loaded from: classes3.dex */
public class ShaHasher {
    private final MessageDigest md = MessageDigest.getInstance(MessageDigestAlgorithms.SHA_256);

    public void AddBytes(byte[] bArr) {
        this.md.update(bArr);
    }

    public byte[] SignHash() {
        return this.md.digest();
    }
}
