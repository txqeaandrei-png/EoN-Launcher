package com.braze.storage;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\bg\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH&J\u0010\u0010\n\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH&J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH&J\u0010\u0010\f\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH&R\u0012\u0010\u0003\u001a\u00028\u0000X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\rÀ\u0006\u0001"}, d2 = {"Lcom/braze/storage/ICardStorageProvider;", "T", "", "cachedCardsAsEvent", "getCachedCardsAsEvent", "()Ljava/lang/Object;", "markCardAsVisuallyRead", "", "cardId", "", "markCardAsViewed", "markCardAsDismissed", "markCardAsClicked", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface ICardStorageProvider<T> {
    T getCachedCardsAsEvent();

    void markCardAsClicked(String cardId);

    void markCardAsDismissed(String cardId);

    void markCardAsViewed(String cardId);

    void markCardAsVisuallyRead(String cardId);
}
