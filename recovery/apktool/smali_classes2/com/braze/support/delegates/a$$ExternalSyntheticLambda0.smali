.class public final synthetic Lcom/braze/support/delegates/a$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Lkotlin/reflect/KProperty;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/reflect/KProperty;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/support/delegates/a$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/braze/support/delegates/a$$ExternalSyntheticLambda0;->f$1:Lkotlin/reflect/KProperty;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/braze/support/delegates/a$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iget-object v1, p0, Lcom/braze/support/delegates/a$$ExternalSyntheticLambda0;->f$1:Lkotlin/reflect/KProperty;

    invoke-static {v0, v1}, Lcom/braze/support/delegates/a;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
