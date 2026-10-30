.class public final synthetic Lcom/braze/triggers/utils/c$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/triggers/utils/c$$ExternalSyntheticLambda8;->f$0:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/braze/triggers/utils/c$$ExternalSyntheticLambda8;->f$0:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/braze/triggers/utils/c;->b(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
