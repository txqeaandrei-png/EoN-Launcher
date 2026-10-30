.class public final synthetic Lcom/braze/location/BrazeInternalLocationApi$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/braze/location/BrazeInternalLocationApi;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/braze/location/BrazeInternalLocationApi;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/location/BrazeInternalLocationApi$$ExternalSyntheticLambda5;->f$0:Lcom/braze/location/BrazeInternalLocationApi;

    iput-object p2, p0, Lcom/braze/location/BrazeInternalLocationApi$$ExternalSyntheticLambda5;->f$1:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/braze/location/BrazeInternalLocationApi$$ExternalSyntheticLambda5;->f$0:Lcom/braze/location/BrazeInternalLocationApi;

    iget-object v1, p0, Lcom/braze/location/BrazeInternalLocationApi$$ExternalSyntheticLambda5;->f$1:Lkotlin/jvm/functions/Function1;

    check-cast p1, Landroid/location/Location;

    invoke-static {v0, v1, p1}, Lcom/braze/location/BrazeInternalLocationApi;->$r8$lambda$4QGFqMwnWJmByk1IkVqEKucJi6M(Lcom/braze/location/BrazeInternalLocationApi;Lkotlin/jvm/functions/Function1;Landroid/location/Location;)V

    return-void
.end method
