.class public final synthetic Lcom/braze/models/g$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Lorg/json/JSONArray;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lorg/json/JSONArray;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/models/g$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/braze/models/g$$ExternalSyntheticLambda0;->f$1:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/braze/models/g$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iget-object v1, p0, Lcom/braze/models/g$$ExternalSyntheticLambda0;->f$1:Lorg/json/JSONArray;

    invoke-static {v0, v1}, Lcom/braze/models/g;->a(Ljava/lang/Object;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
