package org.spongycastle.jce.interfaces;

import java.security.PublicKey;

/* JADX INFO: loaded from: classes5.dex */
public interface MQVPublicKey extends PublicKey {
    PublicKey getEphemeralKey();

    PublicKey getStaticKey();
}
