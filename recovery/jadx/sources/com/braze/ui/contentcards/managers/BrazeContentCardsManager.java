package com.braze.ui.contentcards.managers;

import com.braze.ui.contentcards.listeners.DefaultContentCardsActionListener;
import com.braze.ui.contentcards.listeners.IContentCardsActionListener;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0016\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003R(\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/braze/ui/contentcards/managers/BrazeContentCardsManager;", "", "<init>", "()V", "value", "Lcom/braze/ui/contentcards/listeners/IContentCardsActionListener;", "contentCardsActionListener", "getContentCardsActionListener", "()Lcom/braze/ui/contentcards/listeners/IContentCardsActionListener;", "setContentCardsActionListener", "(Lcom/braze/ui/contentcards/listeners/IContentCardsActionListener;)V", "Companion", "android-sdk-ui_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class BrazeContentCardsManager {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Lazy<BrazeContentCardsManager> instance$delegate = LazyKt.lazy(new Function0() { // from class: com.braze.ui.contentcards.managers.BrazeContentCardsManager$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return BrazeContentCardsManager.instance_delegate$lambda$0();
        }
    });
    private IContentCardsActionListener contentCardsActionListener = new DefaultContentCardsActionListener();

    public static final BrazeContentCardsManager getInstance() {
        return INSTANCE.getInstance();
    }

    public final IContentCardsActionListener getContentCardsActionListener() {
        return this.contentCardsActionListener;
    }

    public final void setContentCardsActionListener(IContentCardsActionListener iContentCardsActionListener) {
        if (iContentCardsActionListener == null) {
            iContentCardsActionListener = new DefaultContentCardsActionListener();
        }
        this.contentCardsActionListener = iContentCardsActionListener;
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R!\u0010\u0004\u001a\u00020\u00058FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\b\t\u0010\n\u0012\u0004\b\u0006\u0010\u0003\u001a\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/braze/ui/contentcards/managers/BrazeContentCardsManager$Companion;", "", "<init>", "()V", "instance", "Lcom/braze/ui/contentcards/managers/BrazeContentCardsManager;", "getInstance$annotations", "getInstance", "()Lcom/braze/ui/contentcards/managers/BrazeContentCardsManager;", "instance$delegate", "Lkotlin/Lazy;", "android-sdk-ui_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public static /* synthetic */ void getInstance$annotations() {
        }

        private Companion() {
        }

        public final BrazeContentCardsManager getInstance() {
            return (BrazeContentCardsManager) BrazeContentCardsManager.instance$delegate.getValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BrazeContentCardsManager instance_delegate$lambda$0() {
        return new BrazeContentCardsManager();
    }
}
