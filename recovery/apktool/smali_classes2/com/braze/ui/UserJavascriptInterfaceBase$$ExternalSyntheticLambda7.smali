.class public final synthetic Lcom/braze/ui/UserJavascriptInterfaceBase$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/Double;

.field public final synthetic f$2:Ljava/lang/Double;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/ui/UserJavascriptInterfaceBase$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/braze/ui/UserJavascriptInterfaceBase$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Double;

    iput-object p3, p0, Lcom/braze/ui/UserJavascriptInterfaceBase$$ExternalSyntheticLambda7;->f$2:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/braze/ui/UserJavascriptInterfaceBase$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/braze/ui/UserJavascriptInterfaceBase$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Double;

    iget-object v2, p0, Lcom/braze/ui/UserJavascriptInterfaceBase$$ExternalSyntheticLambda7;->f$2:Ljava/lang/Double;

    check-cast p1, Lcom/braze/BrazeUser;

    invoke-static {v0, v1, v2, p1}, Lcom/braze/ui/UserJavascriptInterfaceBase;->$r8$lambda$LzOCGxyknk7WI9HNXJ-OXoE8jnE(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Lcom/braze/BrazeUser;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
