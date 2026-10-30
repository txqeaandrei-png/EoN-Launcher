.class public final synthetic Lcom/braze/ui/actions/brazeactions/steps/RemoveFromCustomAttributeArrayStep$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/braze/ui/actions/brazeactions/steps/StepData;


# direct methods
.method public synthetic constructor <init>(Lcom/braze/ui/actions/brazeactions/steps/StepData;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/ui/actions/brazeactions/steps/RemoveFromCustomAttributeArrayStep$$ExternalSyntheticLambda0;->f$0:Lcom/braze/ui/actions/brazeactions/steps/StepData;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/braze/ui/actions/brazeactions/steps/RemoveFromCustomAttributeArrayStep$$ExternalSyntheticLambda0;->f$0:Lcom/braze/ui/actions/brazeactions/steps/StepData;

    check-cast p1, Lcom/braze/BrazeUser;

    invoke-static {v0, p1}, Lcom/braze/ui/actions/brazeactions/steps/RemoveFromCustomAttributeArrayStep;->$r8$lambda$UfUlcAEQVfzReWsalwlsasEtB1U(Lcom/braze/ui/actions/brazeactions/steps/StepData;Lcom/braze/BrazeUser;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
