.class public final synthetic Lcom/braze/requests/framework/g$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lcom/braze/requests/framework/h;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(ZLcom/braze/requests/framework/h;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/braze/requests/framework/g$$ExternalSyntheticLambda8;->f$0:Z

    iput-object p2, p0, Lcom/braze/requests/framework/g$$ExternalSyntheticLambda8;->f$1:Lcom/braze/requests/framework/h;

    iput-wide p3, p0, Lcom/braze/requests/framework/g$$ExternalSyntheticLambda8;->f$2:J

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 0
    iget-boolean v0, p0, Lcom/braze/requests/framework/g$$ExternalSyntheticLambda8;->f$0:Z

    iget-object v1, p0, Lcom/braze/requests/framework/g$$ExternalSyntheticLambda8;->f$1:Lcom/braze/requests/framework/h;

    iget-wide v2, p0, Lcom/braze/requests/framework/g$$ExternalSyntheticLambda8;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lcom/braze/requests/framework/g;->a(ZLcom/braze/requests/framework/h;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
