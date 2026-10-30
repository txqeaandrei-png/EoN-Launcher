package org.spongycastle.crypto.modes.gcm;

/* JADX INFO: loaded from: classes.dex */
public interface GCMExponentiator {
    void exponentiateX(long j, byte[] bArr);

    void init(byte[] bArr);
}
