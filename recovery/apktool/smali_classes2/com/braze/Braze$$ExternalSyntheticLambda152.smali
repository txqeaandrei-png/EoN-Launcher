.class public final synthetic Lcom/braze/Braze$$ExternalSyntheticLambda152;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(JJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/braze/Braze$$ExternalSyntheticLambda152;->f$0:J

    iput-wide p3, p0, Lcom/braze/Braze$$ExternalSyntheticLambda152;->f$1:J

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 0
    iget-wide v0, p0, Lcom/braze/Braze$$ExternalSyntheticLambda152;->f$0:J

    iget-wide v2, p0, Lcom/braze/Braze$$ExternalSyntheticLambda152;->f$1:J

    invoke-static {v0, v1, v2, v3}, Lcom/braze/Braze;->$r8$lambda$I4XVzheeVATTOJreATqOnbYI0WA(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
