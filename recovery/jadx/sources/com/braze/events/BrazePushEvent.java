package com.braze.events;

import com.braze.enums.BrazePushEventType;
import com.braze.models.push.BrazeNotificationPayload;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/braze/events/BrazePushEvent;", "", "eventType", "Lcom/braze/enums/BrazePushEventType;", "notificationPayload", "Lcom/braze/models/push/BrazeNotificationPayload;", "<init>", "(Lcom/braze/enums/BrazePushEventType;Lcom/braze/models/push/BrazeNotificationPayload;)V", "getEventType", "()Lcom/braze/enums/BrazePushEventType;", "getNotificationPayload", "()Lcom/braze/models/push/BrazeNotificationPayload;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class BrazePushEvent {
    private final BrazePushEventType eventType;
    private final BrazeNotificationPayload notificationPayload;

    public BrazePushEvent(BrazePushEventType eventType, BrazeNotificationPayload notificationPayload) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        Intrinsics.checkNotNullParameter(notificationPayload, "notificationPayload");
        this.eventType = eventType;
        this.notificationPayload = notificationPayload;
    }

    public static /* synthetic */ BrazePushEvent copy$default(BrazePushEvent brazePushEvent, BrazePushEventType brazePushEventType, BrazeNotificationPayload brazeNotificationPayload, int i, Object obj) {
        if ((i & 1) != 0) {
            brazePushEventType = brazePushEvent.eventType;
        }
        if ((i & 2) != 0) {
            brazeNotificationPayload = brazePushEvent.notificationPayload;
        }
        return brazePushEvent.copy(brazePushEventType, brazeNotificationPayload);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final BrazePushEventType getEventType() {
        return this.eventType;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final BrazeNotificationPayload getNotificationPayload() {
        return this.notificationPayload;
    }

    public final BrazePushEvent copy(BrazePushEventType eventType, BrazeNotificationPayload notificationPayload) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        Intrinsics.checkNotNullParameter(notificationPayload, "notificationPayload");
        return new BrazePushEvent(eventType, notificationPayload);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BrazePushEvent)) {
            return false;
        }
        BrazePushEvent brazePushEvent = (BrazePushEvent) other;
        return this.eventType == brazePushEvent.eventType && Intrinsics.areEqual(this.notificationPayload, brazePushEvent.notificationPayload);
    }

    public final BrazePushEventType getEventType() {
        return this.eventType;
    }

    public final BrazeNotificationPayload getNotificationPayload() {
        return this.notificationPayload;
    }

    public int hashCode() {
        return this.notificationPayload.hashCode() + (this.eventType.hashCode() * 31);
    }

    public String toString() {
        return "BrazePushEvent(eventType=" + this.eventType + ", notificationPayload=" + this.notificationPayload + ')';
    }
}
