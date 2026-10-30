.class public final synthetic Lcom/braze/Braze$$ExternalSyntheticLambda113;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:D

.field public final synthetic f$1:D


# direct methods
.method public synthetic constructor <init>(DD)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/braze/Braze$$ExternalSyntheticLambda113;->f$0:D

    iput-wide p3, p0, Lcom/braze/Braze$$ExternalSyntheticLambda113;->f$1:D

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 0
    iget-wide v0, p0, Lcom/braze/Braze$$ExternalSyntheticLambda113;->f$0:D

    iget-wide v2, p0, Lcom/braze/Braze$$ExternalSyntheticLambda113;->f$1:D

    invoke-static {v0, v1, v2, v3}, Lcom/braze/Braze;->$r8$lambda$W3Sebcgb374Wid93_neJFDEpXP0(DD)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
