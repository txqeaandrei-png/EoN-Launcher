package com.braze.events;

import com.braze.models.response.h;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\b\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u0002HÂ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u001a\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0014R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\nR\u0011\u0010\u0018\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u000fR\u0013\u0010\u001c\u001a\u0004\u0018\u00010\u00198F¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bR\u0013\u0010\u001e\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b\u001d\u0010\nR\u0013\u0010 \u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b\u001f\u0010\n¨\u0006!"}, d2 = {"Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;", "", "Lcom/braze/models/response/h;", "sdkAuthError", "<init>", "(Lcom/braze/models/response/h;)V", "component1", "()Lcom/braze/models/response/h;", "", "toString", "()Ljava/lang/String;", "copy", "(Lcom/braze/models/response/h;)Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Lcom/braze/models/response/h;", "getErrorReason", "errorReason", "getErrorCode", "errorCode", "", "getRequestInitiationTime", "()Ljava/lang/Long;", "requestInitiationTime", "getSignature", "signature", "getUserId", "userId", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class BrazeSdkAuthenticationErrorEvent {
    private final h sdkAuthError;

    public BrazeSdkAuthenticationErrorEvent(h sdkAuthError) {
        Intrinsics.checkNotNullParameter(sdkAuthError, "sdkAuthError");
        this.sdkAuthError = sdkAuthError;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    private final h getSdkAuthError() {
        return this.sdkAuthError;
    }

    public static /* synthetic */ BrazeSdkAuthenticationErrorEvent copy$default(BrazeSdkAuthenticationErrorEvent brazeSdkAuthenticationErrorEvent, h hVar, int i, Object obj) {
        if ((i & 1) != 0) {
            hVar = brazeSdkAuthenticationErrorEvent.sdkAuthError;
        }
        return brazeSdkAuthenticationErrorEvent.copy(hVar);
    }

    public final BrazeSdkAuthenticationErrorEvent copy(h sdkAuthError) {
        Intrinsics.checkNotNullParameter(sdkAuthError, "sdkAuthError");
        return new BrazeSdkAuthenticationErrorEvent(sdkAuthError);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof BrazeSdkAuthenticationErrorEvent) && Intrinsics.areEqual(this.sdkAuthError, ((BrazeSdkAuthenticationErrorEvent) other).sdkAuthError);
    }

    public final int getErrorCode() {
        return this.sdkAuthError.b;
    }

    public final String getErrorReason() {
        return this.sdkAuthError.c;
    }

    public final Long getRequestInitiationTime() {
        return ((com.braze.requests.b) this.sdkAuthError.a).d;
    }

    public final String getSignature() {
        return ((com.braze.requests.b) this.sdkAuthError.a).i;
    }

    public final String getUserId() {
        return ((com.braze.requests.b) this.sdkAuthError.a).b;
    }

    public int hashCode() {
        return this.sdkAuthError.hashCode();
    }

    public String toString() {
        return this.sdkAuthError.toString();
    }
}
