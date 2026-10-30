.class public final synthetic Lcom/braze/support/BrazeImageUtils$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/net/URL;


# direct methods
.method public synthetic constructor <init>(ILjava/net/URL;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/braze/support/BrazeImageUtils$$ExternalSyntheticLambda9;->f$0:I

    iput-object p2, p0, Lcom/braze/support/BrazeImageUtils$$ExternalSyntheticLambda9;->f$1:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget v0, p0, Lcom/braze/support/BrazeImageUtils$$ExternalSyntheticLambda9;->f$0:I

    iget-object v1, p0, Lcom/braze/support/BrazeImageUtils$$ExternalSyntheticLambda9;->f$1:Ljava/net/URL;

    invoke-static {v0, v1}, Lcom/braze/support/BrazeImageUtils;->$r8$lambda$48hloay7bTBpBStfpIAV4THEVbU(ILjava/net/URL;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
