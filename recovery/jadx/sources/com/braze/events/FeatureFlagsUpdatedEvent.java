package com.braze.events;

import com.braze.models.FeatureFlag;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0007\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0011\u001a\u00020\u0012J\b\u0010\u0013\u001a\u00020\u0012H\u0016R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\t\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b\t\u0010\u000bR\u0011\u0010\f\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0015"}, d2 = {"Lcom/braze/events/FeatureFlagsUpdatedEvent;", "", "featureFlags", "", "Lcom/braze/models/FeatureFlag;", "<init>", "(Ljava/util/List;)V", "getFeatureFlags", "()Ljava/util/List;", "isEmpty", "", "()Z", "flagCount", "", "getFlagCount", "()I", "getFeatureFlag", "id", "", "toString", "Companion", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class FeatureFlagsUpdatedEvent {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final List<FeatureFlag> featureFlags;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u00058FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0006\u0010\u0003\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/braze/events/FeatureFlagsUpdatedEvent$Companion;", "", "<init>", "()V", "emptyUpdate", "Lcom/braze/events/FeatureFlagsUpdatedEvent;", "getEmptyUpdate$annotations", "getEmptyUpdate", "()Lcom/braze/events/FeatureFlagsUpdatedEvent;", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public static /* synthetic */ void getEmptyUpdate$annotations() {
        }

        public final FeatureFlagsUpdatedEvent getEmptyUpdate() {
            return new FeatureFlagsUpdatedEvent(CollectionsKt.emptyList());
        }

        private Companion() {
        }
    }

    public FeatureFlagsUpdatedEvent(List<FeatureFlag> featureFlags) {
        Intrinsics.checkNotNullParameter(featureFlags, "featureFlags");
        this.featureFlags = featureFlags;
    }

    public static final FeatureFlagsUpdatedEvent getEmptyUpdate() {
        return INSTANCE.getEmptyUpdate();
    }

    public final FeatureFlag getFeatureFlag(String id) {
        Object next;
        Intrinsics.checkNotNullParameter(id, "id");
        Iterator<T> it = this.featureFlags.iterator();
        while (it.hasNext()) {
            next = it.next();
            if (Intrinsics.areEqual(((FeatureFlag) next).getId(), id)) {
                return (FeatureFlag) next;
            }
        }
        next = null;
        return (FeatureFlag) next;
    }

    public final List<FeatureFlag> getFeatureFlags() {
        return this.featureFlags;
    }

    public final int getFlagCount() {
        return this.featureFlags.size();
    }

    public final boolean isEmpty() {
        return this.featureFlags.isEmpty();
    }

    public String toString() {
        return "FeatureFlagsUpdatedEvent{flag count=" + this.featureFlags.size() + '}';
    }
}
