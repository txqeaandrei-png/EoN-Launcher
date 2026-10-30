.class public final synthetic Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/app/PendingIntent;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/app/PendingIntent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda8;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda8;->f$1:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda8;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda8;->f$1:Landroid/app/PendingIntent;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/braze/location/GooglePlayLocationUtils;->$r8$lambda$Igjlgrgscs12n69oX9_f5pU2dxo(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
