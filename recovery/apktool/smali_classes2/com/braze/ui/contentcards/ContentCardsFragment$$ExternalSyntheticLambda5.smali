.class public final synthetic Lcom/braze/ui/contentcards/ContentCardsFragment$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/braze/events/IEventSubscriber;


# instance fields
.field public final synthetic f$0:Lcom/braze/ui/contentcards/ContentCardsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/braze/ui/contentcards/ContentCardsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/ui/contentcards/ContentCardsFragment$$ExternalSyntheticLambda5;->f$0:Lcom/braze/ui/contentcards/ContentCardsFragment;

    return-void
.end method


# virtual methods
.method public final trigger(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/braze/ui/contentcards/ContentCardsFragment$$ExternalSyntheticLambda5;->f$0:Lcom/braze/ui/contentcards/ContentCardsFragment;

    check-cast p1, Lcom/braze/events/SdkDataWipeEvent;

    invoke-static {v0, p1}, Lcom/braze/ui/contentcards/ContentCardsFragment;->$r8$lambda$QOeiRMDgQ8InorYSjl29WHDetbc(Lcom/braze/ui/contentcards/ContentCardsFragment;Lcom/braze/events/SdkDataWipeEvent;)V

    return-void
.end method
