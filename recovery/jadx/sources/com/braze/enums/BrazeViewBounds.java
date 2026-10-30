package com.braze.enums;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u000f\b\u0087\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011¨\u0006\u0012"}, d2 = {"Lcom/braze/enums/BrazeViewBounds;", "", "widthDp", "", "heightDp", "<init>", "(Ljava/lang/String;III)V", "getWidthDp", "()I", "getHeightDp", "NOTIFICATION_EXPANDED_IMAGE", "NOTIFICATION_INLINE_PUSH_IMAGE", "NOTIFICATION_LARGE_ICON", "NOTIFICATION_ONE_IMAGE_STORY", "BASE_CARD_VIEW", "IN_APP_MESSAGE_MODAL", "IN_APP_MESSAGE_SLIDEUP", "NO_BOUNDS", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public enum BrazeViewBounds {
    NOTIFICATION_EXPANDED_IMAGE(478, 256),
    NOTIFICATION_INLINE_PUSH_IMAGE(384, 256),
    NOTIFICATION_LARGE_ICON(64, 64),
    NOTIFICATION_ONE_IMAGE_STORY(256, 128),
    BASE_CARD_VIEW(512, 512),
    IN_APP_MESSAGE_MODAL(580, 580),
    IN_APP_MESSAGE_SLIDEUP(100, 100),
    NO_BOUNDS(0, 0);

    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());
    private final int heightDp;
    private final int widthDp;

    BrazeViewBounds(int i, int i2) {
        this.widthDp = i;
        this.heightDp = i2;
    }

    public static EnumEntries<BrazeViewBounds> getEntries() {
        return $ENTRIES;
    }

    public final int getHeightDp() {
        return this.heightDp;
    }

    public final int getWidthDp() {
        return this.widthDp;
    }
}
