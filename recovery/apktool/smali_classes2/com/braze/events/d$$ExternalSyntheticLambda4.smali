.class public final synthetic Lcom/braze/events/d$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Ljava/lang/Class;

.field public final synthetic f$1:Lcom/braze/events/d;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Lcom/braze/events/d;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/events/d$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Class;

    iput-object p2, p0, Lcom/braze/events/d$$ExternalSyntheticLambda4;->f$1:Lcom/braze/events/d;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/braze/events/d$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Class;

    iget-object v1, p0, Lcom/braze/events/d$$ExternalSyntheticLambda4;->f$1:Lcom/braze/events/d;

    invoke-static {v0, v1}, Lcom/braze/events/d;->a(Ljava/lang/Class;Lcom/braze/events/d;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
