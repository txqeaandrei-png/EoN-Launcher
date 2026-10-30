.class public final synthetic Lcom/braze/Braze$$ExternalSyntheticLambda48;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/braze/events/InAppMessageEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/braze/events/InAppMessageEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/Braze$$ExternalSyntheticLambda48;->f$0:Lcom/braze/events/InAppMessageEvent;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/braze/Braze$$ExternalSyntheticLambda48;->f$0:Lcom/braze/events/InAppMessageEvent;

    invoke-static {v0}, Lcom/braze/Braze;->$r8$lambda$VxJlUXh6nXakiUaYF_tpkqViXz4(Lcom/braze/events/InAppMessageEvent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
