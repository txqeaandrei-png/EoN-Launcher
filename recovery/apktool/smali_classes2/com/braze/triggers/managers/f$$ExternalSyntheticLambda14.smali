.class public final synthetic Lcom/braze/triggers/managers/f$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/braze/triggers/events/b;


# direct methods
.method public synthetic constructor <init>(Lcom/braze/triggers/events/b;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/triggers/managers/f$$ExternalSyntheticLambda14;->f$0:Lcom/braze/triggers/events/b;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/braze/triggers/managers/f$$ExternalSyntheticLambda14;->f$0:Lcom/braze/triggers/events/b;

    invoke-static {v0}, Lcom/braze/triggers/managers/f;->b(Lcom/braze/triggers/events/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
