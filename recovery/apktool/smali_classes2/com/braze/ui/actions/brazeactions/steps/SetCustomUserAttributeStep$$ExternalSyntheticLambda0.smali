.class public final synthetic Lcom/braze/ui/actions/brazeactions/steps/SetCustomUserAttributeStep$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/braze/ui/actions/brazeactions/steps/StepData;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/braze/ui/actions/brazeactions/steps/StepData;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/ui/actions/brazeactions/steps/SetCustomUserAttributeStep$$ExternalSyntheticLambda0;->f$0:Lcom/braze/ui/actions/brazeactions/steps/StepData;

    iput-object p2, p0, Lcom/braze/ui/actions/brazeactions/steps/SetCustomUserAttributeStep$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/braze/ui/actions/brazeactions/steps/SetCustomUserAttributeStep$$ExternalSyntheticLambda0;->f$0:Lcom/braze/ui/actions/brazeactions/steps/StepData;

    iget-object v1, p0, Lcom/braze/ui/actions/brazeactions/steps/SetCustomUserAttributeStep$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p1, Lcom/braze/BrazeUser;

    invoke-static {v0, v1, p1}, Lcom/braze/ui/actions/brazeactions/steps/SetCustomUserAttributeStep;->$r8$lambda$YaWuSC4ti07gHgcASOHQNOUlH2s(Lcom/braze/ui/actions/brazeactions/steps/StepData;Ljava/lang/Object;Lcom/braze/BrazeUser;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
