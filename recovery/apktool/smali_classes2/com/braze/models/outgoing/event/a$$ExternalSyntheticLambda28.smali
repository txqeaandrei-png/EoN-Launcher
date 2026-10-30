.class public final synthetic Lcom/braze/models/outgoing/event/a$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/braze/models/outgoing/BrazeProperties;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/math/BigDecimal;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/braze/models/outgoing/BrazeProperties;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/models/outgoing/event/a$$ExternalSyntheticLambda28;->f$0:Lcom/braze/models/outgoing/BrazeProperties;

    iput-object p2, p0, Lcom/braze/models/outgoing/event/a$$ExternalSyntheticLambda28;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/braze/models/outgoing/event/a$$ExternalSyntheticLambda28;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/braze/models/outgoing/event/a$$ExternalSyntheticLambda28;->f$3:Ljava/math/BigDecimal;

    iput p5, p0, Lcom/braze/models/outgoing/event/a$$ExternalSyntheticLambda28;->f$4:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/braze/models/outgoing/event/a$$ExternalSyntheticLambda28;->f$0:Lcom/braze/models/outgoing/BrazeProperties;

    iget-object v1, p0, Lcom/braze/models/outgoing/event/a$$ExternalSyntheticLambda28;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/braze/models/outgoing/event/a$$ExternalSyntheticLambda28;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/braze/models/outgoing/event/a$$ExternalSyntheticLambda28;->f$3:Ljava/math/BigDecimal;

    iget v4, p0, Lcom/braze/models/outgoing/event/a$$ExternalSyntheticLambda28;->f$4:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/braze/models/outgoing/event/a;->a(Lcom/braze/models/outgoing/BrazeProperties;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;I)Lcom/braze/models/i;

    move-result-object v0

    return-object v0
.end method
