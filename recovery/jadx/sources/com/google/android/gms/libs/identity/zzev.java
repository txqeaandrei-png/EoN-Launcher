package com.google.android.gms.libs.identity;

/* JADX INFO: loaded from: classes2.dex */
final class zzev extends zzet {
    private final zzex zza;

    zzev(zzex zzexVar, int i) {
        super(zzexVar.size(), i);
        this.zza = zzexVar;
    }

    @Override // com.google.android.gms.libs.identity.zzet
    protected final Object zza(int i) {
        return this.zza.get(i);
    }
}
