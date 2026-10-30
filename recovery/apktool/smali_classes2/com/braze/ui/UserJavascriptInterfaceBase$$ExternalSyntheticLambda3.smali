.class public final synthetic Lcom/braze/ui/UserJavascriptInterfaceBase$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/lang/Integer;

.field public final synthetic f$1:Lcom/braze/enums/Month;

.field public final synthetic f$2:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Integer;Lcom/braze/enums/Month;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/ui/UserJavascriptInterfaceBase$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/braze/ui/UserJavascriptInterfaceBase$$ExternalSyntheticLambda3;->f$1:Lcom/braze/enums/Month;

    iput-object p3, p0, Lcom/braze/ui/UserJavascriptInterfaceBase$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/braze/ui/UserJavascriptInterfaceBase$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/braze/ui/UserJavascriptInterfaceBase$$ExternalSyntheticLambda3;->f$1:Lcom/braze/enums/Month;

    iget-object v2, p0, Lcom/braze/ui/UserJavascriptInterfaceBase$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Integer;

    check-cast p1, Lcom/braze/BrazeUser;

    invoke-static {v0, v1, v2, p1}, Lcom/braze/ui/UserJavascriptInterfaceBase;->$r8$lambda$BOk_458vc2JhJkDQoP_nu6aChx4(Ljava/lang/Integer;Lcom/braze/enums/Month;Ljava/lang/Integer;Lcom/braze/BrazeUser;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
