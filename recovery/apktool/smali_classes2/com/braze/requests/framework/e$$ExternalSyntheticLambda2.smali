.class public final synthetic Lcom/braze/requests/framework/e$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/braze/requests/framework/g;

.field public final synthetic f$1:Lcom/braze/requests/framework/h;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/braze/requests/framework/g;Lcom/braze/requests/framework/h;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/requests/framework/e$$ExternalSyntheticLambda2;->f$0:Lcom/braze/requests/framework/g;

    iput-object p2, p0, Lcom/braze/requests/framework/e$$ExternalSyntheticLambda2;->f$1:Lcom/braze/requests/framework/h;

    iput-wide p3, p0, Lcom/braze/requests/framework/e$$ExternalSyntheticLambda2;->f$2:J

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/braze/requests/framework/e$$ExternalSyntheticLambda2;->f$0:Lcom/braze/requests/framework/g;

    iget-object v1, p0, Lcom/braze/requests/framework/e$$ExternalSyntheticLambda2;->f$1:Lcom/braze/requests/framework/h;

    iget-wide v2, p0, Lcom/braze/requests/framework/e$$ExternalSyntheticLambda2;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lcom/braze/requests/framework/e;->a(Lcom/braze/requests/framework/g;Lcom/braze/requests/framework/h;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
