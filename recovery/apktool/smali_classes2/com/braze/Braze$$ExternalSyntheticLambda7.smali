.class public final synthetic Lcom/braze/Braze$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/util/Set;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/Set;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/Braze$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/braze/Braze$$ExternalSyntheticLambda7;->f$1:Ljava/util/Set;

    iput-boolean p3, p0, Lcom/braze/Braze$$ExternalSyntheticLambda7;->f$2:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/braze/Braze$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/braze/Braze$$ExternalSyntheticLambda7;->f$1:Ljava/util/Set;

    iget-boolean v2, p0, Lcom/braze/Braze$$ExternalSyntheticLambda7;->f$2:Z

    invoke-static {v0, v1, v2}, Lcom/braze/Braze;->$r8$lambda$7_BjHV0tfCfNZqmLc7SgHUBbjc4(Ljava/lang/String;Ljava/util/Set;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
