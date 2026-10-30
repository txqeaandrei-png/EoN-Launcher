.class public final synthetic Lcom/braze/Braze$$ExternalSyntheticLambda139;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/braze/Braze;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/braze/Braze;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/Braze$$ExternalSyntheticLambda139;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/braze/Braze$$ExternalSyntheticLambda139;->f$1:Lcom/braze/Braze;

    iput-boolean p3, p0, Lcom/braze/Braze$$ExternalSyntheticLambda139;->f$2:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/braze/Braze$$ExternalSyntheticLambda139;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/braze/Braze$$ExternalSyntheticLambda139;->f$1:Lcom/braze/Braze;

    iget-boolean v2, p0, Lcom/braze/Braze$$ExternalSyntheticLambda139;->f$2:Z

    invoke-static {v0, v1, v2}, Lcom/braze/Braze;->$r8$lambda$-uPY0pBGzA8klQcGmrIy_hwEeHU(Ljava/lang/String;Lcom/braze/Braze;Z)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
