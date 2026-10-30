package com.mojang.minecraftpe.store;

/* JADX INFO: loaded from: classes3.dex */
public class ExtraLicenseResponseData {
    private long mRetryAttempts;
    private long mRetryUntilTime;
    private long mValidationTime;

    public ExtraLicenseResponseData(long j, long j2, long j3) {
        this.mValidationTime = j;
        this.mRetryUntilTime = j2;
        this.mRetryAttempts = j3;
    }

    public long getValidationTime() {
        return this.mValidationTime;
    }

    public long getRetryUntilTime() {
        return this.mRetryUntilTime;
    }

    public long getRetryAttempts() {
        return this.mRetryAttempts;
    }
}
