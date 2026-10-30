.class public final synthetic Lcom/braze/Braze$$ExternalSyntheticLambda144;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Lcom/braze/Braze;

.field public final synthetic f$2:Lcom/braze/events/IValueCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/braze/Braze;Lcom/braze/events/IValueCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/Braze$$ExternalSyntheticLambda144;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/braze/Braze$$ExternalSyntheticLambda144;->f$1:Lcom/braze/Braze;

    iput-object p3, p0, Lcom/braze/Braze$$ExternalSyntheticLambda144;->f$2:Lcom/braze/events/IValueCallback;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/braze/Braze$$ExternalSyntheticLambda144;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/braze/Braze$$ExternalSyntheticLambda144;->f$1:Lcom/braze/Braze;

    iget-object v2, p0, Lcom/braze/Braze$$ExternalSyntheticLambda144;->f$2:Lcom/braze/events/IValueCallback;

    invoke-static {v0, v1, v2}, Lcom/braze/Braze;->$r8$lambda$LJPWqXffAVFmgDcfZT7d5wIf5lQ(Ljava/util/List;Lcom/braze/Braze;Lcom/braze/events/IValueCallback;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
