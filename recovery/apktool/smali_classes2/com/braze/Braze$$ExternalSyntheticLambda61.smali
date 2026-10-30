.class public final synthetic Lcom/braze/Braze$$ExternalSyntheticLambda61;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/braze/events/IFireOnceEventSubscriber;


# instance fields
.field public final synthetic f$0:Lcom/braze/events/IValueCallback;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f$2:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f$3:Lcom/braze/Braze;


# direct methods
.method public synthetic constructor <init>(Lcom/braze/events/IValueCallback;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/braze/Braze;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/Braze$$ExternalSyntheticLambda61;->f$0:Lcom/braze/events/IValueCallback;

    iput-object p2, p0, Lcom/braze/Braze$$ExternalSyntheticLambda61;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/braze/Braze$$ExternalSyntheticLambda61;->f$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcom/braze/Braze$$ExternalSyntheticLambda61;->f$3:Lcom/braze/Braze;

    return-void
.end method


# virtual methods
.method public final trigger(Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/braze/Braze$$ExternalSyntheticLambda61;->f$0:Lcom/braze/events/IValueCallback;

    iget-object v1, p0, Lcom/braze/Braze$$ExternalSyntheticLambda61;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lcom/braze/Braze$$ExternalSyntheticLambda61;->f$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lcom/braze/Braze$$ExternalSyntheticLambda61;->f$3:Lcom/braze/Braze;

    check-cast p1, Lcom/braze/events/internal/b;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/braze/Braze;->$r8$lambda$cf-fibKKRtQlHClmzQ2PiJwg2SY(Lcom/braze/events/IValueCallback;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/braze/Braze;Lcom/braze/events/internal/b;)V

    return-void
.end method
