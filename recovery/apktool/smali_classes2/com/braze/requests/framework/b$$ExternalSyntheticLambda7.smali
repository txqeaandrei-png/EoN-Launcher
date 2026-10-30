.class public final synthetic Lcom/braze/requests/framework/b$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/braze/requests/framework/b;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/braze/requests/framework/b;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/requests/framework/b$$ExternalSyntheticLambda7;->f$0:Lcom/braze/requests/framework/b;

    iput-wide p2, p0, Lcom/braze/requests/framework/b$$ExternalSyntheticLambda7;->f$1:J

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/braze/requests/framework/b$$ExternalSyntheticLambda7;->f$0:Lcom/braze/requests/framework/b;

    iget-wide v1, p0, Lcom/braze/requests/framework/b$$ExternalSyntheticLambda7;->f$1:J

    invoke-static {v0, v1, v2}, Lcom/braze/requests/framework/b;->c(Lcom/braze/requests/framework/b;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
