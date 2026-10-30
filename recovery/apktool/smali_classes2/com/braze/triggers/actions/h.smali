.class public abstract Lcom/braze/triggers/actions/h;
.super Lcom/braze/triggers/actions/g;


# instance fields
.field public f:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/braze/triggers/actions/g;-><init>(Lorg/json/JSONObject;)V

    .line 2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/braze/triggers/actions/h;->f:Ljava/util/HashMap;

    return-void
.end method
