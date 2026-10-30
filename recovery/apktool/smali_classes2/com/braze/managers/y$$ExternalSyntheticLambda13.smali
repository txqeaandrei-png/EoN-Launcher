.class public final synthetic Lcom/braze/managers/y$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/braze/events/internal/o;


# direct methods
.method public synthetic constructor <init>(Lcom/braze/events/internal/o;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/managers/y$$ExternalSyntheticLambda13;->f$0:Lcom/braze/events/internal/o;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/braze/managers/y$$ExternalSyntheticLambda13;->f$0:Lcom/braze/events/internal/o;

    invoke-static {v0}, Lcom/braze/managers/y;->a(Lcom/braze/events/internal/o;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
