package org.spongycastle.openssl;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
interface PEMKeyPairParser {
    PEMKeyPair parse(byte[] bArr) throws IOException;
}
