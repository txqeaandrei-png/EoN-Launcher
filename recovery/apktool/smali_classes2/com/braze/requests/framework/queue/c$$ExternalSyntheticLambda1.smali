.class public final synthetic Lcom/braze/requests/framework/queue/c$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/braze/requests/framework/h;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lcom/braze/requests/framework/h;


# direct methods
.method public synthetic constructor <init>(Lcom/braze/requests/framework/h;JLcom/braze/requests/framework/h;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/requests/framework/queue/c$$ExternalSyntheticLambda1;->f$0:Lcom/braze/requests/framework/h;

    iput-wide p2, p0, Lcom/braze/requests/framework/queue/c$$ExternalSyntheticLambda1;->f$1:J

    iput-object p4, p0, Lcom/braze/requests/framework/queue/c$$ExternalSyntheticLambda1;->f$2:Lcom/braze/requests/framework/h;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/braze/requests/framework/queue/c$$ExternalSyntheticLambda1;->f$0:Lcom/braze/requests/framework/h;

    iget-wide v1, p0, Lcom/braze/requests/framework/queue/c$$ExternalSyntheticLambda1;->f$1:J

    iget-object v3, p0, Lcom/braze/requests/framework/queue/c$$ExternalSyntheticLambda1;->f$2:Lcom/braze/requests/framework/h;

    invoke-static {v0, v1, v2, v3}, Lcom/braze/requests/framework/queue/c;->a(Lcom/braze/requests/framework/h;JLcom/braze/requests/framework/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
