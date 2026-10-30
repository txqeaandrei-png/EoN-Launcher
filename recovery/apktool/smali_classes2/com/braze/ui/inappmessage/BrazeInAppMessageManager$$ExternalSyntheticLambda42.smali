.class public final synthetic Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$$ExternalSyntheticLambda42;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$$ExternalSyntheticLambda42;->f$0:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;

    iput-object p2, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$$ExternalSyntheticLambda42;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$$ExternalSyntheticLambda42;->f$0:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;

    iget-object v1, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$$ExternalSyntheticLambda42;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/braze/models/inappmessage/IInAppMessage;

    invoke-static {v0, v1, p1}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->$r8$lambda$Au5qn9i2yh4v8rG3VNJXco_9QiI(Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;Ljava/lang/String;Lcom/braze/models/inappmessage/IInAppMessage;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
