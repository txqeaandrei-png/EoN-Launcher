.class public final synthetic Lcom/braze/support/JsonUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lorg/json/JSONArray;


# direct methods
.method public synthetic constructor <init>(ILorg/json/JSONArray;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/braze/support/JsonUtils$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Lcom/braze/support/JsonUtils$$ExternalSyntheticLambda0;->f$1:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget v0, p0, Lcom/braze/support/JsonUtils$$ExternalSyntheticLambda0;->f$0:I

    iget-object v1, p0, Lcom/braze/support/JsonUtils$$ExternalSyntheticLambda0;->f$1:Lorg/json/JSONArray;

    invoke-static {v0, v1}, Lcom/braze/support/JsonUtils;->$r8$lambda$MLTBp3vvOy7bLqkZvneHrp1FyGk(ILorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
