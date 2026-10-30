.class public final synthetic Lcom/braze/models/g$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/braze/enums/CardKey$Provider;

.field public final synthetic f$1:Lcom/braze/managers/c0;

.field public final synthetic f$2:Lcom/braze/storage/ICardStorageProvider;

.field public final synthetic f$3:Lcom/braze/analytics/c;

.field public final synthetic f$4:Lorg/json/JSONArray;


# direct methods
.method public synthetic constructor <init>(Lcom/braze/enums/CardKey$Provider;Lcom/braze/managers/c0;Lcom/braze/storage/ICardStorageProvider;Lcom/braze/analytics/c;Lorg/json/JSONArray;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/models/g$$ExternalSyntheticLambda1;->f$0:Lcom/braze/enums/CardKey$Provider;

    iput-object p2, p0, Lcom/braze/models/g$$ExternalSyntheticLambda1;->f$1:Lcom/braze/managers/c0;

    iput-object p3, p0, Lcom/braze/models/g$$ExternalSyntheticLambda1;->f$2:Lcom/braze/storage/ICardStorageProvider;

    iput-object p4, p0, Lcom/braze/models/g$$ExternalSyntheticLambda1;->f$3:Lcom/braze/analytics/c;

    iput-object p5, p0, Lcom/braze/models/g$$ExternalSyntheticLambda1;->f$4:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/braze/models/g$$ExternalSyntheticLambda1;->f$0:Lcom/braze/enums/CardKey$Provider;

    iget-object v1, p0, Lcom/braze/models/g$$ExternalSyntheticLambda1;->f$1:Lcom/braze/managers/c0;

    iget-object v2, p0, Lcom/braze/models/g$$ExternalSyntheticLambda1;->f$2:Lcom/braze/storage/ICardStorageProvider;

    iget-object v3, p0, Lcom/braze/models/g$$ExternalSyntheticLambda1;->f$3:Lcom/braze/analytics/c;

    iget-object v4, p0, Lcom/braze/models/g$$ExternalSyntheticLambda1;->f$4:Lorg/json/JSONArray;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/braze/models/g;->a(Lcom/braze/enums/CardKey$Provider;Lcom/braze/managers/c0;Lcom/braze/storage/ICardStorageProvider;Lcom/braze/analytics/c;Lorg/json/JSONArray;Ljava/lang/Object;)Lcom/braze/models/cards/Card;

    move-result-object p1

    return-object p1
.end method
