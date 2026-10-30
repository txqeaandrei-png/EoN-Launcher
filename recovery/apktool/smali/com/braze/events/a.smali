.class public final Lcom/braze/events/a;
.super Ljava/lang/Object;


# instance fields
.field public final A:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final B:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final a:Landroid/content/Context;

.field public final b:Lcom/braze/managers/k;

.field public final c:Lcom/braze/events/e;

.field public final d:Lcom/braze/managers/m;

.field public final e:Lcom/braze/storage/h0;

.field public final f:Lcom/braze/storage/r;

.field public final g:Lcom/braze/triggers/managers/f;

.field public final h:Lcom/braze/triggers/managers/g;

.field public final i:Lcom/braze/managers/z;

.field public final j:Lcom/braze/managers/BrazeGeofenceManager;

.field public final k:Lcom/braze/events/e;

.field public final l:Lcom/braze/configuration/BrazeConfigurationProvider;

.field public final m:Lcom/braze/storage/p;

.field public final n:Lcom/braze/storage/b0;

.field public final o:Lcom/braze/storage/e0;

.field public final p:Lcom/braze/managers/a0;

.field public final q:Lcom/braze/managers/i0;

.field public final r:Lcom/braze/managers/h;

.field public final s:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final t:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public u:Lcom/braze/events/internal/e0;

.field public final v:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final w:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final x:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final y:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final z:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/braze/managers/k;Lcom/braze/events/e;Lcom/braze/managers/m;Lcom/braze/storage/h0;Lcom/braze/storage/r;Lcom/braze/triggers/managers/f;Lcom/braze/triggers/managers/g;Lcom/braze/managers/z;Lcom/braze/managers/BrazeGeofenceManager;Lcom/braze/events/e;Lcom/braze/configuration/BrazeConfigurationProvider;Lcom/braze/storage/p;Lcom/braze/storage/b0;Lcom/braze/storage/e0;Lcom/braze/managers/a0;Lcom/braze/managers/i0;Lcom/braze/managers/h;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v0, p16

    const-string v0, "applicationContext"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locationManager"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "internalEventPublisher"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "brazeManager"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userCache"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceCache"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "triggerManager"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "triggerReEligibilityManager"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventStorageManager"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "geofenceManager"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "externalEventPublisher"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationProvider"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentCardsStorageProvider"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkMetadataCache"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverConfigStorageProvider"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureFlagsManager"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pushDeliveryManager"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bannersManager"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v15, p16

    .line 2
    iput-object v1, v0, Lcom/braze/events/a;->a:Landroid/content/Context;

    .line 3
    iput-object v2, v0, Lcom/braze/events/a;->b:Lcom/braze/managers/k;

    .line 4
    iput-object v3, v0, Lcom/braze/events/a;->c:Lcom/braze/events/e;

    .line 5
    iput-object v4, v0, Lcom/braze/events/a;->d:Lcom/braze/managers/m;

    .line 6
    iput-object v5, v0, Lcom/braze/events/a;->e:Lcom/braze/storage/h0;

    .line 7
    iput-object v6, v0, Lcom/braze/events/a;->f:Lcom/braze/storage/r;

    .line 8
    iput-object v7, v0, Lcom/braze/events/a;->g:Lcom/braze/triggers/managers/f;

    .line 9
    iput-object v8, v0, Lcom/braze/events/a;->h:Lcom/braze/triggers/managers/g;

    .line 10
    iput-object v9, v0, Lcom/braze/events/a;->i:Lcom/braze/managers/z;

    .line 11
    iput-object v10, v0, Lcom/braze/events/a;->j:Lcom/braze/managers/BrazeGeofenceManager;

    .line 12
    iput-object v11, v0, Lcom/braze/events/a;->k:Lcom/braze/events/e;

    .line 13
    iput-object v12, v0, Lcom/braze/events/a;->l:Lcom/braze/configuration/BrazeConfigurationProvider;

    .line 14
    iput-object v13, v0, Lcom/braze/events/a;->m:Lcom/braze/storage/p;

    .line 15
    iput-object v14, v0, Lcom/braze/events/a;->n:Lcom/braze/storage/b0;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/braze/events/a;->o:Lcom/braze/storage/e0;

    .line 17
    iput-object v15, v0, Lcom/braze/events/a;->p:Lcom/braze/managers/a0;

    move-object/from16 v1, p17

    move-object/from16 v2, p18

    .line 18
    iput-object v1, v0, Lcom/braze/events/a;->q:Lcom/braze/managers/i0;

    .line 19
    iput-object v2, v0, Lcom/braze/events/a;->r:Lcom/braze/managers/h;

    .line 20
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v0, Lcom/braze/events/a;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v0, Lcom/braze/events/a;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v0, Lcom/braze/events/a;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v0, Lcom/braze/events/a;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v0, Lcom/braze/events/a;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v0, Lcom/braze/events/a;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v0, Lcom/braze/events/a;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v0, Lcom/braze/events/a;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v0, Lcom/braze/events/a;->B:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final J()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Requesting Banners refresh on session created event due to configuration."

    return-object v0
.end method

.method public static final K()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Banners already initialized. Not retrieving."

    return-object v0
.end method

.method public static final M()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Requesting Content Card refresh on session created event due to configuration."

    return-object v0
.end method

.method public static final N()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Content Cards already initialized. Not retrieving."

    return-object v0
.end method

.method public static final P()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Starting DUST subscription due to configuration."

    return-object v0
.end method

.method public static final Q()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "DUST initial subscription already started. Not starting again."

    return-object v0
.end method

.method public static final S()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Requesting Feature Flags refresh on session created event due to configuration."

    return-object v0
.end method

.method public static final T()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Feature Flags already initialized. Not retrieving."

    return-object v0
.end method

.method public static final V()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Requesting Push Max request on session created event due to configuration."

    return-object v0
.end method

.method public static final W()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Push Max already requested for this session. Not requesting again."

    return-object v0
.end method

.method public static final Y()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Doing Debugger Handshake."

    return-object v0
.end method

.method public static final Z()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Debugger Initialization already attempted. Not doing Debugger initialization again."

    return-object v0
.end method

.method public static final a()Ljava/lang/String;
    .locals 1

    .line 588
    const-string v0, "Content cards have moved to disabled. Clearing content card data."

    return-object v0
.end method

.method public static final a(Lcom/braze/events/e;)Ljava/lang/String;
    .locals 2

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Subscribing to events with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lcom/braze/triggers/actions/a;)Ljava/lang/String;
    .locals 2

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not publish in-app message with trigger action id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p0, Lcom/braze/triggers/actions/g;

    .line 291
    iget-object p0, p0, Lcom/braze/triggers/actions/g;->a:Ljava/lang/String;

    .line 292
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lcom/braze/events/a;Lcom/braze/events/internal/a0;)V
    .locals 9

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    sget-object p1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v6, Lcom/braze/events/a$$ExternalSyntheticLambda20;

    invoke-direct {v6}, Lcom/braze/events/a$$ExternalSyntheticLambda20;-><init>()V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 229
    iget-object v0, p0, Lcom/braze/events/a;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 230
    iget-object v0, p0, Lcom/braze/events/a;->o:Lcom/braze/storage/e0;

    invoke-virtual {v0}, Lcom/braze/storage/e0;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/braze/events/a;->L()V

    goto :goto_0

    .line 233
    :cond_0
    new-instance v6, Lcom/braze/events/a$$ExternalSyntheticLambda21;

    invoke-direct {v6}, Lcom/braze/events/a$$ExternalSyntheticLambda21;-><init>()V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 238
    :goto_0
    iget-object v0, p0, Lcom/braze/events/a;->o:Lcom/braze/storage/e0;

    invoke-virtual {v0}, Lcom/braze/storage/e0;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {p0}, Lcom/braze/events/a;->R()V

    goto :goto_1

    .line 241
    :cond_1
    new-instance v6, Lcom/braze/events/a$$ExternalSyntheticLambda23;

    invoke-direct {v6}, Lcom/braze/events/a$$ExternalSyntheticLambda23;-><init>()V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 246
    :goto_1
    iget-object v0, p0, Lcom/braze/events/a;->o:Lcom/braze/storage/e0;

    invoke-virtual {v0}, Lcom/braze/storage/e0;->K()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    invoke-virtual {p0}, Lcom/braze/events/a;->U()V

    goto :goto_2

    .line 249
    :cond_2
    new-instance v6, Lcom/braze/events/a$$ExternalSyntheticLambda24;

    invoke-direct {v6}, Lcom/braze/events/a$$ExternalSyntheticLambda24;-><init>()V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 254
    :goto_2
    iget-object v0, p0, Lcom/braze/events/a;->o:Lcom/braze/storage/e0;

    invoke-virtual {v0}, Lcom/braze/storage/e0;->E()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 255
    invoke-virtual {p0}, Lcom/braze/events/a;->O()V

    goto :goto_3

    .line 257
    :cond_3
    new-instance v6, Lcom/braze/events/a$$ExternalSyntheticLambda25;

    invoke-direct {v6}, Lcom/braze/events/a$$ExternalSyntheticLambda25;-><init>()V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 262
    :goto_3
    iget-object v0, p0, Lcom/braze/events/a;->o:Lcom/braze/storage/e0;

    invoke-virtual {v0}, Lcom/braze/storage/e0;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 263
    invoke-virtual {p0}, Lcom/braze/events/a;->I()V

    goto :goto_4

    .line 265
    :cond_4
    new-instance v6, Lcom/braze/events/a$$ExternalSyntheticLambda26;

    invoke-direct {v6}, Lcom/braze/events/a$$ExternalSyntheticLambda26;-><init>()V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 270
    :goto_4
    iget-object v0, p0, Lcom/braze/events/a;->o:Lcom/braze/storage/e0;

    invoke-virtual {v0}, Lcom/braze/storage/e0;->L()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 271
    invoke-virtual {p0}, Lcom/braze/events/a;->X()V

    goto :goto_5

    .line 273
    :cond_5
    new-instance v6, Lcom/braze/events/a$$ExternalSyntheticLambda27;

    invoke-direct {v6}, Lcom/braze/events/a$$ExternalSyntheticLambda27;-><init>()V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_5
    return-void
.end method

.method public static final a(Lcom/braze/events/a;Lcom/braze/events/internal/a;)V
    .locals 1

    const-string v0, "<destruct>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Lcom/braze/events/internal/a;->a:Lorg/json/JSONObject;

    .line 2
    iget-object v0, p0, Lcom/braze/events/a;->r:Lcom/braze/managers/h;

    invoke-virtual {v0, p1}, Lcom/braze/managers/h;->a(Lorg/json/JSONObject;)Lcom/braze/events/BannersUpdatedEvent;

    move-result-object p1

    .line 3
    iget-object p0, p0, Lcom/braze/events/a;->k:Lcom/braze/events/e;

    check-cast p0, Lcom/braze/events/d;

    const-class v0, Lcom/braze/events/BannersUpdatedEvent;

    invoke-virtual {p0, p1, v0}, Lcom/braze/events/d;->b(Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method

.method public static final a(Lcom/braze/events/a;Lcom/braze/events/internal/d;)V
    .locals 8

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    iget-object v0, p1, Lcom/braze/events/internal/d;->a:Lcom/braze/models/response/m;

    .line 184
    iget-boolean v0, v0, Lcom/braze/models/response/m;->j:Z

    if-eqz v0, :cond_0

    .line 185
    iget-object p1, p1, Lcom/braze/events/internal/d;->b:Lcom/braze/models/response/m;

    .line 186
    iget-boolean p1, p1, Lcom/braze/models/response/m;->j:Z

    if-nez p1, :cond_0

    .line 187
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v5, Lcom/braze/events/a$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Lcom/braze/events/a$$ExternalSyntheticLambda3;-><init>()V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 188
    iget-object p0, p0, Lcom/braze/events/a;->m:Lcom/braze/storage/p;

    invoke-virtual {p0}, Lcom/braze/storage/p;->a()V

    :cond_0
    return-void
.end method

.method public static final a(Lcom/braze/events/a;Lcom/braze/events/internal/e0;)V
    .locals 10

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/braze/events/a;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 285
    iput-object p1, p0, Lcom/braze/events/a;->u:Lcom/braze/events/internal/e0;

    .line 286
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v7, Lcom/braze/events/a$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Lcom/braze/events/a$$ExternalSyntheticLambda2;-><init>()V

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 287
    iget-object p0, p0, Lcom/braze/events/a;->d:Lcom/braze/managers/m;

    new-instance p1, Lcom/braze/models/outgoing/j;

    invoke-direct {p1}, Lcom/braze/models/outgoing/j;-><init>()V

    .line 288
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/braze/models/outgoing/j;->c:Ljava/lang/Boolean;

    .line 289
    invoke-virtual {p0, p1}, Lcom/braze/managers/m;->a(Lcom/braze/models/outgoing/j;)V

    return-void
.end method

.method public static final a(Lcom/braze/events/a;Lcom/braze/events/internal/e;)V
    .locals 8

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 582
    :try_start_0
    iget-object v1, p0, Lcom/braze/events/a;->d:Lcom/braze/managers/m;

    .line 583
    iget-object p1, p0, Lcom/braze/events/a;->m:Lcom/braze/storage/p;

    .line 584
    iget-wide v2, p1, Lcom/braze/storage/p;->c:J

    .line 585
    iget-wide v4, p1, Lcom/braze/storage/p;->d:J

    const/4 v6, 0x0

    .line 586
    invoke-virtual/range {v1 .. v6}, Lcom/braze/managers/m;->a(JJI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v3, p1

    .line 587
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/events/a$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/braze/events/a$$ExternalSyntheticLambda0;-><init>()V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final a(Lcom/braze/events/a;Lcom/braze/events/internal/f0;)V
    .locals 1

    const-string v0, "<destruct>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iget-object p1, p1, Lcom/braze/events/internal/f0;->a:Lcom/braze/triggers/events/d;

    .line 161
    iget-object p0, p0, Lcom/braze/events/a;->g:Lcom/braze/triggers/managers/f;

    invoke-virtual {p0, p1}, Lcom/braze/triggers/managers/f;->a(Lcom/braze/triggers/events/i;)V

    return-void
.end method

.method public static final a(Lcom/braze/events/a;Lcom/braze/events/internal/f;)V
    .locals 10

    const-string v0, "<destruct>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p1, p1, Lcom/braze/events/internal/f;->a:Lcom/braze/requests/n;

    .line 5
    move-object v0, p1

    check-cast v0, Lcom/braze/requests/b;

    .line 6
    iget-object v0, v0, Lcom/braze/requests/b;->h:Lcom/braze/models/outgoing/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7
    iget-object v2, p0, Lcom/braze/events/a;->f:Lcom/braze/storage/r;

    invoke-virtual {v2, v0, v1}, Lcom/braze/storage/b;->a(Ljava/lang/Object;Z)V

    .line 9
    :cond_0
    instance-of v0, p1, Lcom/braze/requests/f;

    if-eqz v0, :cond_6

    .line 10
    move-object v0, p1

    check-cast v0, Lcom/braze/requests/f;

    .line 11
    iget-object v2, v0, Lcom/braze/requests/f;->j:Lcom/braze/models/outgoing/k;

    .line 12
    invoke-virtual {v2}, Lcom/braze/models/outgoing/k;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 13
    iget-object v2, p0, Lcom/braze/events/a;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    .line 14
    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 15
    iget-object v2, p0, Lcom/braze/events/a;->g:Lcom/braze/triggers/managers/f;

    new-instance v4, Lcom/braze/triggers/events/e;

    invoke-direct {v4}, Lcom/braze/triggers/events/e;-><init>()V

    invoke-virtual {v2, v4}, Lcom/braze/triggers/managers/f;->a(Lcom/braze/triggers/events/i;)V

    .line 16
    :cond_1
    iget-object v2, p0, Lcom/braze/events/a;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 17
    iget-object v2, p0, Lcom/braze/events/a;->u:Lcom/braze/events/internal/e0;

    if-eqz v2, :cond_2

    .line 18
    iget-object v4, p0, Lcom/braze/events/a;->g:Lcom/braze/triggers/managers/f;

    .line 19
    new-instance v5, Lcom/braze/triggers/events/g;

    .line 20
    iget-object v6, v2, Lcom/braze/events/internal/e0;->a:Ljava/lang/String;

    .line 21
    iget-object v2, v2, Lcom/braze/events/internal/e0;->b:Lcom/braze/models/outgoing/event/push/b;

    .line 22
    invoke-direct {v5, v6, v2}, Lcom/braze/triggers/events/g;-><init>(Ljava/lang/String;Lcom/braze/models/outgoing/event/push/b;)V

    .line 23
    invoke-virtual {v4, v5}, Lcom/braze/triggers/managers/f;->a(Lcom/braze/triggers/events/i;)V

    const/4 v2, 0x0

    .line 29
    iput-object v2, p0, Lcom/braze/events/a;->u:Lcom/braze/events/internal/e0;

    .line 30
    :cond_2
    iget-object v2, p0, Lcom/braze/events/a;->d:Lcom/braze/managers/m;

    invoke-virtual {v2, v3}, Lcom/braze/managers/m;->b(Z)V

    .line 31
    :cond_3
    iget-object v2, v0, Lcom/braze/requests/f;->l:Lcom/braze/models/outgoing/l;

    if-eqz v2, :cond_4

    .line 32
    iget-object v3, p0, Lcom/braze/events/a;->e:Lcom/braze/storage/h0;

    invoke-virtual {v3, v2, v1}, Lcom/braze/storage/b;->a(Ljava/lang/Object;Z)V

    .line 33
    iget-object v1, v2, Lcom/braze/models/outgoing/l;->a:Lorg/json/JSONObject;

    .line 34
    const-string v2, "push_token"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 35
    iget-object v1, p0, Lcom/braze/events/a;->e:Lcom/braze/storage/h0;

    invoke-virtual {v1}, Lcom/braze/storage/h0;->j()V

    .line 38
    iget-object v1, p0, Lcom/braze/events/a;->f:Lcom/braze/storage/r;

    invoke-virtual {v1}, Lcom/braze/storage/r;->e()V

    .line 39
    :cond_4
    iget-object v1, v0, Lcom/braze/requests/f;->m:Lcom/braze/models/b;

    if-eqz v1, :cond_5

    .line 40
    iget-object v1, v1, Lcom/braze/models/b;->a:Ljava/util/LinkedHashSet;

    .line 41
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/braze/models/i;

    .line 42
    iget-object v3, p0, Lcom/braze/events/a;->c:Lcom/braze/events/e;

    .line 43
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 44
    const-string v2, "events"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    new-instance v2, Lcom/braze/events/internal/dispatchmanager/c;

    .line 77
    sget-object v5, Lcom/braze/events/internal/dispatchmanager/b;->b:Lcom/braze/events/internal/dispatchmanager/b;

    const/4 v8, 0x0

    const/16 v9, 0xc

    const/4 v7, 0x0

    move-object v4, v2

    .line 78
    invoke-direct/range {v4 .. v9}, Lcom/braze/events/internal/dispatchmanager/c;-><init>(Lcom/braze/events/internal/dispatchmanager/b;Ljava/util/List;Lcom/braze/models/o;Lcom/braze/requests/b;I)V

    .line 79
    check-cast v3, Lcom/braze/events/d;

    const-class v4, Lcom/braze/events/internal/dispatchmanager/c;

    invoke-virtual {v3, v2, v4}, Lcom/braze/events/d;->b(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_0

    .line 80
    :cond_5
    iget-object v0, v0, Lcom/braze/requests/f;->j:Lcom/braze/models/outgoing/k;

    .line 81
    iget-object v0, v0, Lcom/braze/models/outgoing/k;->d:Lcom/braze/models/outgoing/i;

    if-eqz v0, :cond_6

    .line 82
    iget-object v0, p0, Lcom/braze/events/a;->o:Lcom/braze/storage/e0;

    invoke-virtual {v0}, Lcom/braze/storage/e0;->M()V

    .line 85
    :cond_6
    instance-of v0, p1, Lcom/braze/requests/q;

    if-eqz v0, :cond_7

    .line 86
    iget-object p0, p0, Lcom/braze/events/a;->q:Lcom/braze/managers/i0;

    check-cast p1, Lcom/braze/requests/q;

    .line 87
    iget-object p1, p1, Lcom/braze/requests/q;->j:Ljava/util/ArrayList;

    .line 88
    invoke-virtual {p0, p1}, Lcom/braze/managers/i0;->b(Ljava/util/ArrayList;)V

    :cond_7
    return-void
.end method

.method public static final a(Lcom/braze/events/a;Lcom/braze/events/internal/g0;)V
    .locals 1

    const-string v0, "<destruct>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-object v0, p1, Lcom/braze/events/internal/g0;->a:Lcom/braze/triggers/events/b;

    .line 163
    iget-object p1, p1, Lcom/braze/events/internal/g0;->b:Lcom/braze/triggers/actions/a;

    .line 164
    iget-object p0, p0, Lcom/braze/events/a;->g:Lcom/braze/triggers/managers/f;

    invoke-virtual {p0, v0, p1}, Lcom/braze/triggers/managers/f;->a(Lcom/braze/triggers/events/b;Lcom/braze/triggers/actions/a;)V

    return-void
.end method

.method public static final a(Lcom/braze/events/a;Lcom/braze/events/internal/g;)V
    .locals 4

    const-string v0, "<destruct>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object p1, p1, Lcom/braze/events/internal/g;->a:Lcom/braze/requests/n;

    .line 90
    move-object v0, p1

    check-cast v0, Lcom/braze/requests/b;

    .line 91
    iget-object v0, v0, Lcom/braze/requests/b;->h:Lcom/braze/models/outgoing/h;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 92
    iget-object v2, p0, Lcom/braze/events/a;->f:Lcom/braze/storage/r;

    invoke-virtual {v2, v0, v1}, Lcom/braze/storage/b;->a(Ljava/lang/Object;Z)V

    .line 95
    :cond_0
    instance-of v0, p1, Lcom/braze/requests/f;

    if-eqz v0, :cond_5

    .line 97
    move-object v0, p1

    check-cast v0, Lcom/braze/requests/f;

    .line 98
    iget-object v2, v0, Lcom/braze/requests/f;->l:Lcom/braze/models/outgoing/l;

    if-eqz v2, :cond_1

    .line 99
    iget-object v3, p0, Lcom/braze/events/a;->e:Lcom/braze/storage/h0;

    invoke-virtual {v3, v2, v1}, Lcom/braze/storage/b;->a(Ljava/lang/Object;Z)V

    .line 100
    :cond_1
    iget-object v1, v0, Lcom/braze/requests/f;->m:Lcom/braze/models/b;

    if-eqz v1, :cond_2

    .line 101
    iget-object v2, p0, Lcom/braze/events/a;->i:Lcom/braze/managers/z;

    .line 102
    iget-object v1, v1, Lcom/braze/models/b;->a:Ljava/util/LinkedHashSet;

    .line 103
    invoke-virtual {v2, v1}, Lcom/braze/managers/z;->a(Ljava/util/LinkedHashSet;)V

    .line 104
    :cond_2
    iget-object v1, v0, Lcom/braze/requests/f;->j:Lcom/braze/models/outgoing/k;

    .line 105
    invoke-virtual {v1}, Lcom/braze/models/outgoing/k;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 106
    iget-object v1, p0, Lcom/braze/events/a;->d:Lcom/braze/managers/m;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/braze/managers/m;->b(Z)V

    .line 107
    :cond_3
    iget-object v1, v0, Lcom/braze/requests/f;->n:Ljava/util/EnumSet;

    if-eqz v1, :cond_4

    .line 108
    iget-object v2, p0, Lcom/braze/events/a;->n:Lcom/braze/storage/b0;

    invoke-virtual {v2, v1}, Lcom/braze/storage/b0;->a(Ljava/util/EnumSet;)V

    .line 109
    :cond_4
    iget-object v0, v0, Lcom/braze/requests/f;->j:Lcom/braze/models/outgoing/k;

    .line 110
    iget-object v0, v0, Lcom/braze/models/outgoing/k;->d:Lcom/braze/models/outgoing/i;

    if-eqz v0, :cond_5

    .line 111
    iget-object v0, p0, Lcom/braze/events/a;->o:Lcom/braze/storage/e0;

    invoke-virtual {v0}, Lcom/braze/storage/e0;->M()V

    .line 114
    :cond_5
    instance-of v0, p1, Lcom/braze/requests/q;

    if-eqz v0, :cond_6

    .line 115
    iget-object p0, p0, Lcom/braze/events/a;->q:Lcom/braze/managers/i0;

    check-cast p1, Lcom/braze/requests/q;

    .line 116
    iget-object p1, p1, Lcom/braze/requests/q;->j:Ljava/util/ArrayList;

    .line 117
    invoke-virtual {p0, p1}, Lcom/braze/managers/i0;->a(Ljava/util/ArrayList;)V

    :cond_6
    return-void
.end method

.method public static final a(Lcom/braze/events/a;Lcom/braze/events/internal/h0;)V
    .locals 3

    const-string v0, "<destruct>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object p1, p1, Lcom/braze/events/internal/h0;->a:Ljava/util/List;

    .line 166
    iget-object v0, p0, Lcom/braze/events/a;->g:Lcom/braze/triggers/managers/f;

    invoke-virtual {v0, p1}, Lcom/braze/triggers/managers/f;->a(Ljava/util/List;)V

    .line 167
    iget-object p1, p0, Lcom/braze/events/a;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 168
    iget-object p1, p0, Lcom/braze/events/a;->g:Lcom/braze/triggers/managers/f;

    new-instance v2, Lcom/braze/triggers/events/e;

    invoke-direct {v2}, Lcom/braze/triggers/events/e;-><init>()V

    invoke-virtual {p1, v2}, Lcom/braze/triggers/managers/f;->a(Lcom/braze/triggers/events/i;)V

    .line 169
    :cond_0
    iget-object p1, p0, Lcom/braze/events/a;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 170
    iget-object p1, p0, Lcom/braze/events/a;->u:Lcom/braze/events/internal/e0;

    if-eqz p1, :cond_1

    .line 171
    iget-object v0, p0, Lcom/braze/events/a;->g:Lcom/braze/triggers/managers/f;

    .line 172
    new-instance v1, Lcom/braze/triggers/events/g;

    .line 173
    iget-object v2, p1, Lcom/braze/events/internal/e0;->a:Ljava/lang/String;

    .line 174
    iget-object p1, p1, Lcom/braze/events/internal/e0;->b:Lcom/braze/models/outgoing/event/push/b;

    .line 175
    invoke-direct {v1, v2, p1}, Lcom/braze/triggers/events/g;-><init>(Ljava/lang/String;Lcom/braze/models/outgoing/event/push/b;)V

    .line 176
    invoke-virtual {v0, v1}, Lcom/braze/triggers/managers/f;->a(Lcom/braze/triggers/events/i;)V

    const/4 p1, 0x0

    .line 182
    iput-object p1, p0, Lcom/braze/events/a;->u:Lcom/braze/events/internal/e0;

    :cond_1
    return-void
.end method

.method public static final a(Lcom/braze/events/a;Lcom/braze/events/internal/i;)V
    .locals 1

    const-string v0, "<destruct>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget-object p1, p1, Lcom/braze/events/internal/i;->a:Lorg/json/JSONArray;

    .line 119
    iget-object v0, p0, Lcom/braze/events/a;->p:Lcom/braze/managers/a0;

    invoke-virtual {v0, p1}, Lcom/braze/managers/a0;->a(Lorg/json/JSONArray;)Lcom/braze/events/FeatureFlagsUpdatedEvent;

    move-result-object p1

    .line 120
    iget-object p0, p0, Lcom/braze/events/a;->k:Lcom/braze/events/e;

    check-cast p0, Lcom/braze/events/d;

    const-class v0, Lcom/braze/events/FeatureFlagsUpdatedEvent;

    invoke-virtual {p0, p1, v0}, Lcom/braze/events/d;->b(Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method

.method public static final a(Lcom/braze/events/a;Lcom/braze/events/internal/l;)V
    .locals 1

    const-string v0, "<destruct>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object p1, p1, Lcom/braze/events/internal/l;->a:Ljava/util/List;

    .line 122
    iget-object p0, p0, Lcom/braze/events/a;->j:Lcom/braze/managers/BrazeGeofenceManager;

    invoke-virtual {p0, p1}, Lcom/braze/managers/BrazeGeofenceManager;->registerGeofences(Ljava/util/List;)V

    return-void
.end method

.method public static final a(Lcom/braze/events/a;Lcom/braze/events/internal/m;)V
    .locals 12

    const-string v0, "<destruct>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v0, p1, Lcom/braze/events/internal/m;->a:Lcom/braze/triggers/events/b;

    .line 124
    iget-object v1, p1, Lcom/braze/events/internal/m;->b:Lcom/braze/triggers/actions/h;

    .line 125
    iget-object v2, p1, Lcom/braze/events/internal/m;->c:Lcom/braze/models/inappmessage/IInAppMessage;

    .line 126
    iget-object p1, p1, Lcom/braze/events/internal/m;->d:Ljava/lang/String;

    .line 127
    iget-object v3, p0, Lcom/braze/events/a;->h:Lcom/braze/triggers/managers/g;

    monitor-enter v3

    .line 128
    :try_start_0
    iget-object v4, p0, Lcom/braze/events/a;->h:Lcom/braze/triggers/managers/g;

    invoke-virtual {v4, v1}, Lcom/braze/triggers/managers/g;->a(Lcom/braze/triggers/actions/g;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 129
    iget-object v4, p0, Lcom/braze/events/a;->k:Lcom/braze/events/e;

    .line 130
    new-instance v5, Lcom/braze/events/InAppMessageEvent;

    invoke-direct {v5, v0, v1, v2, p1}, Lcom/braze/events/InAppMessageEvent;-><init>(Lcom/braze/triggers/events/b;Lcom/braze/triggers/actions/a;Lcom/braze/models/inappmessage/IInAppMessage;Ljava/lang/String;)V

    .line 131
    const-class p1, Lcom/braze/events/InAppMessageEvent;

    .line 132
    check-cast v4, Lcom/braze/events/d;

    invoke-virtual {v4, v5, p1}, Lcom/braze/events/d;->b(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 136
    iget-object p1, p0, Lcom/braze/events/a;->h:Lcom/braze/triggers/managers/g;

    invoke-static {}, Lcom/braze/support/DateTimeUtils;->nowInSeconds()J

    move-result-wide v4

    invoke-virtual {p1, v1, v4, v5}, Lcom/braze/triggers/managers/g;->a(Lcom/braze/triggers/actions/h;J)V

    .line 137
    iget-object p0, p0, Lcom/braze/events/a;->g:Lcom/braze/triggers/managers/f;

    invoke-static {}, Lcom/braze/support/DateTimeUtils;->nowInSeconds()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/braze/triggers/managers/f;->b(J)V

    goto :goto_0

    .line 139
    :cond_0
    sget-object v4, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v9, Lcom/braze/events/a$$ExternalSyntheticLambda9;

    invoke-direct {v9, v1}, Lcom/braze/events/a$$ExternalSyntheticLambda9;-><init>(Lcom/braze/triggers/actions/a;)V

    const/4 v10, 0x7

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p0

    invoke-static/range {v4 .. v11}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 141
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    .line 143
    monitor-exit v3

    throw p0
.end method

.method public static final a(Lcom/braze/events/a;Lcom/braze/events/internal/n;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    iget-object p1, p0, Lcom/braze/events/a;->d:Lcom/braze/managers/m;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/braze/managers/m;->b(Z)V

    .line 275
    invoke-virtual {p0}, Lcom/braze/events/a;->c0()V

    return-void
.end method

.method public static final a(Lcom/braze/events/a;Lcom/braze/events/internal/w;)V
    .locals 1

    const-string v0, "<destruct>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iget-object p1, p1, Lcom/braze/events/internal/w;->a:Lcom/braze/models/response/m;

    .line 145
    iget-object v0, p0, Lcom/braze/events/a;->j:Lcom/braze/managers/BrazeGeofenceManager;

    invoke-virtual {v0, p1}, Lcom/braze/managers/BrazeGeofenceManager;->configureFromServerConfig(Lcom/braze/models/response/m;)V

    .line 147
    iget-object v0, p0, Lcom/braze/events/a;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 148
    iget-boolean v0, p1, Lcom/braze/models/response/m;->j:Z

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/braze/events/a;->L()V

    .line 150
    :cond_0
    iget-boolean v0, p1, Lcom/braze/models/response/m;->m:Z

    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {p0}, Lcom/braze/events/a;->R()V

    .line 152
    :cond_1
    iget-boolean v0, p1, Lcom/braze/models/response/m;->o:Z

    if-eqz v0, :cond_2

    .line 153
    invoke-virtual {p0}, Lcom/braze/events/a;->U()V

    .line 154
    :cond_2
    iget-boolean v0, p1, Lcom/braze/models/response/m;->t:Z

    if-eqz v0, :cond_3

    .line 155
    invoke-virtual {p0}, Lcom/braze/events/a;->O()V

    .line 156
    :cond_3
    iget-boolean v0, p1, Lcom/braze/models/response/m;->F:Z

    if-eqz v0, :cond_4

    .line 157
    invoke-virtual {p0}, Lcom/braze/events/a;->I()V

    .line 158
    :cond_4
    iget-boolean p1, p1, Lcom/braze/models/response/m;->y:Z

    if-eqz p1, :cond_5

    .line 159
    invoke-virtual {p0}, Lcom/braze/events/a;->X()V

    :cond_5
    return-void
.end method

.method public static final a(Lcom/braze/events/a;Lcom/braze/events/internal/y;)V
    .locals 10

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v6, Lcom/braze/events/a$$ExternalSyntheticLambda33;

    invoke-direct {v6}, Lcom/braze/events/a$$ExternalSyntheticLambda33;-><init>()V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 192
    iget-object v1, p0, Lcom/braze/events/a;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 193
    iget-object v1, p0, Lcom/braze/events/a;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 194
    iget-object v1, p0, Lcom/braze/events/a;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 195
    iget-object v1, p0, Lcom/braze/events/a;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 196
    iget-object v1, p0, Lcom/braze/events/a;->B:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 198
    iget-object v1, p0, Lcom/braze/events/a;->b:Lcom/braze/managers/k;

    invoke-virtual {v1}, Lcom/braze/managers/k;->g()Z

    .line 199
    sget-object v1, Lcom/braze/models/outgoing/event/b;->g:Lcom/braze/models/outgoing/event/a;

    .line 200
    iget-object v2, p1, Lcom/braze/events/internal/y;->a:Lcom/braze/models/l;

    .line 201
    iget-object v2, v2, Lcom/braze/models/n;->a:Lcom/braze/models/o;

    .line 202
    invoke-virtual {v1, v2}, Lcom/braze/models/outgoing/event/a;->a(Lcom/braze/models/o;)Lcom/braze/models/i;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 203
    iget-object p1, p1, Lcom/braze/events/internal/y;->a:Lcom/braze/models/l;

    .line 204
    iget-object p1, p1, Lcom/braze/models/n;->a:Lcom/braze/models/o;

    .line 205
    move-object v2, v1

    check-cast v2, Lcom/braze/models/outgoing/event/b;

    invoke-virtual {v2, p1}, Lcom/braze/models/outgoing/event/b;->a(Lcom/braze/models/o;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 206
    iget-object p1, p0, Lcom/braze/events/a;->d:Lcom/braze/managers/m;

    invoke-virtual {p1, v1}, Lcom/braze/managers/m;->a(Lcom/braze/models/i;)Z

    .line 207
    :cond_1
    iget-object p1, p0, Lcom/braze/events/a;->d:Lcom/braze/managers/m;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/braze/managers/m;->b(Z)V

    .line 208
    iget-object p1, p0, Lcom/braze/events/a;->d:Lcom/braze/managers/m;

    invoke-virtual {p1, v1}, Lcom/braze/managers/m;->a(Z)V

    .line 209
    iget-object p1, p0, Lcom/braze/events/a;->e:Lcom/braze/storage/h0;

    invoke-virtual {p1}, Lcom/braze/storage/h0;->j()V

    .line 210
    iget-object p1, p0, Lcom/braze/events/a;->f:Lcom/braze/storage/r;

    invoke-virtual {p1}, Lcom/braze/storage/r;->e()V

    .line 211
    invoke-virtual {p0}, Lcom/braze/events/a;->a0()V

    .line 212
    iget-object p1, p0, Lcom/braze/events/a;->l:Lcom/braze/configuration/BrazeConfigurationProvider;

    invoke-virtual {p1}, Lcom/braze/configuration/BrazeConfigurationProvider;->isAutomaticGeofenceRequestsEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 213
    new-instance v6, Lcom/braze/events/a$$ExternalSyntheticLambda44;

    invoke-direct {v6}, Lcom/braze/events/a$$ExternalSyntheticLambda44;-><init>()V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 216
    iget-object p1, p0, Lcom/braze/events/a;->a:Landroid/content/Context;

    invoke-static {p1, v9}, Lcom/braze/BrazeInternal;->requestGeofenceRefresh(Landroid/content/Context;Z)V

    goto :goto_0

    .line 218
    :cond_2
    new-instance v6, Lcom/braze/events/a$$ExternalSyntheticLambda46;

    invoke-direct {v6}, Lcom/braze/events/a$$ExternalSyntheticLambda46;-><init>()V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 222
    :goto_0
    iget-object p1, p0, Lcom/braze/events/a;->p:Lcom/braze/managers/a0;

    invoke-virtual {p1}, Lcom/braze/managers/a0;->g()V

    .line 223
    iget-object p1, p0, Lcom/braze/events/a;->r:Lcom/braze/managers/h;

    invoke-virtual {p1}, Lcom/braze/managers/h;->j()V

    .line 227
    invoke-virtual {p0}, Lcom/braze/events/a;->c0()V

    return-void
.end method

.method public static final a(Lcom/braze/events/a;Lcom/braze/events/internal/z;)V
    .locals 3

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    iget-object p1, p1, Lcom/braze/events/internal/z;->a:Lcom/braze/models/n;

    .line 278
    sget-object v0, Lcom/braze/models/outgoing/event/b;->g:Lcom/braze/models/outgoing/event/a;

    invoke-virtual {p1}, Lcom/braze/models/n;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/braze/models/outgoing/event/a;->a(J)Lcom/braze/models/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    iget-object p1, p1, Lcom/braze/models/n;->a:Lcom/braze/models/o;

    .line 280
    move-object v1, v0

    check-cast v1, Lcom/braze/models/outgoing/event/b;

    invoke-virtual {v1, p1}, Lcom/braze/models/outgoing/event/b;->a(Lcom/braze/models/o;)V

    .line 281
    iget-object p1, p0, Lcom/braze/events/a;->d:Lcom/braze/managers/m;

    invoke-virtual {p1, v0}, Lcom/braze/managers/m;->a(Lcom/braze/models/i;)Z

    .line 282
    :cond_0
    sget-object p1, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    iget-object v0, p0, Lcom/braze/events/a;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object p1

    invoke-virtual {p1}, Lcom/braze/Braze;->requestImmediateDataFlush()V

    .line 283
    invoke-virtual {p0}, Lcom/braze/events/a;->a0()V

    return-void
.end method

.method public static final a(Lcom/braze/events/a;Lcom/braze/exceptions/b;)V
    .locals 8

    const-string v0, "storageException"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/braze/events/a;->d:Lcom/braze/managers/m;

    .line 294
    const-string v1, "throwable"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 580
    invoke-virtual {v0, p1, v1}, Lcom/braze/managers/m;->a(Ljava/lang/Throwable;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v3, p1

    .line 581
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/events/a$$ExternalSyntheticLambda17;

    invoke-direct {v5}, Lcom/braze/events/a$$ExternalSyntheticLambda17;-><init>()V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final a(Lcom/braze/events/a;Ljava/util/concurrent/Semaphore;Ljava/lang/Throwable;)V
    .locals 8

    if-eqz p2, :cond_1

    .line 661
    :try_start_0
    iget-object v0, p0, Lcom/braze/events/a;->d:Lcom/braze/managers/m;

    .line 662
    const-string v1, "throwable"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 944
    invoke-virtual {v0, p2, v1}, Lcom/braze/managers/m;->a(Ljava/lang/Throwable;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p2

    move-object v3, p2

    .line 945
    :try_start_1
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/events/a$$ExternalSyntheticLambda14;

    invoke-direct {v5}, Lcom/braze/events/a$$ExternalSyntheticLambda14;-><init>()V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_2

    :goto_0
    if-eqz p1, :cond_0

    .line 948
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_0
    throw p0

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 947
    :goto_2
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_2
    return-void
.end method

.method public static final b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to request a content card refresh."

    return-object v0
.end method

.method public static final b0()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Performing push delivery event flush"

    return-object v0
.end method

.method public static final c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Requesting Braze Geofence refresh on session created event due to configuration."

    return-object v0
.end method

.method public static final d()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Not automatically requesting Braze Geofence refresh on session created event due to configuration."

    return-object v0
.end method

.method public static final d0()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Requesting feed refresh in next sync"

    return-object v0
.end method

.method public static final e()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Session created event for new session received."

    return-object v0
.end method

.method public static final e0()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Requesting trigger refresh in next sync"

    return-object v0
.end method

.method public static final f()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Session start event for new session received."

    return-object v0
.end method

.method public static final g()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Not automatically requesting Content Card refresh on session created event due to server configuration."

    return-object v0
.end method

.method public static final h()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Not automatically requesting Feature Flags refresh on session created event due to server configuration."

    return-object v0
.end method

.method public static final i()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Not automatically requesting Push Max on session created event due to server configuration."

    return-object v0
.end method

.method public static final j()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Not automatically starting DUST subscription on session created event due to server configuration."

    return-object v0
.end method

.method public static final k()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Not automatically requesting Banners refresh on session created event due to server configuration."

    return-object v0
.end method

.method public static final l()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Not automatically starting SDK Debugger on session created event due to server configuration."

    return-object v0
.end method

.method public static final m()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to log the storage exception."

    return-object v0
.end method

.method public static final n()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Requesting trigger update due to trigger-eligible push click event"

    return-object v0
.end method

.method public static final u()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to log error."

    return-object v0
.end method


# virtual methods
.method public final A()Lcom/braze/events/IEventSubscriber;
    .locals 1

    .line 1
    new-instance v0, Lcom/braze/events/a$$ExternalSyntheticLambda42;

    invoke-direct {v0, p0}, Lcom/braze/events/a$$ExternalSyntheticLambda42;-><init>(Lcom/braze/events/a;)V

    return-object v0
.end method

.method public final B()Lcom/braze/events/IEventSubscriber;
    .locals 1

    .line 1
    new-instance v0, Lcom/braze/events/a$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/braze/events/a$$ExternalSyntheticLambda7;-><init>(Lcom/braze/events/a;)V

    return-object v0
.end method

.method public final C()Lcom/braze/events/IEventSubscriber;
    .locals 1

    .line 1
    new-instance v0, Lcom/braze/events/a$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0}, Lcom/braze/events/a$$ExternalSyntheticLambda28;-><init>(Lcom/braze/events/a;)V

    return-object v0
.end method

.method public final D()Lcom/braze/events/IEventSubscriber;
    .locals 1

    .line 1
    new-instance v0, Lcom/braze/events/a$$ExternalSyntheticLambda47;

    invoke-direct {v0, p0}, Lcom/braze/events/a$$ExternalSyntheticLambda47;-><init>(Lcom/braze/events/a;)V

    return-object v0
.end method

.method public final E()Lcom/braze/events/IEventSubscriber;
    .locals 1

    .line 1
    new-instance v0, Lcom/braze/events/a$$ExternalSyntheticLambda41;

    invoke-direct {v0, p0}, Lcom/braze/events/a$$ExternalSyntheticLambda41;-><init>(Lcom/braze/events/a;)V

    return-object v0
.end method

.method public final F()Lcom/braze/events/IEventSubscriber;
    .locals 1

    .line 1
    new-instance v0, Lcom/braze/events/a$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0}, Lcom/braze/events/a$$ExternalSyntheticLambda32;-><init>(Lcom/braze/events/a;)V

    return-object v0
.end method

.method public final G()Lcom/braze/events/IEventSubscriber;
    .locals 1

    .line 1
    new-instance v0, Lcom/braze/events/a$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/braze/events/a$$ExternalSyntheticLambda10;-><init>(Lcom/braze/events/a;)V

    return-object v0
.end method

.method public final H()Lcom/braze/events/IEventSubscriber;
    .locals 1

    .line 1
    new-instance v0, Lcom/braze/events/a$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/braze/events/a$$ExternalSyntheticLambda8;-><init>(Lcom/braze/events/a;)V

    return-object v0
.end method

.method public final I()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/braze/events/a;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v8, Lcom/braze/events/a$$ExternalSyntheticLambda35;

    invoke-direct {v8}, Lcom/braze/events/a$$ExternalSyntheticLambda35;-><init>()V

    const/4 v9, 0x7

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    invoke-static/range {v3 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/braze/events/a;->r:Lcom/braze/managers/h;

    sget-object v1, Lcom/braze/managers/h;->k:Lcom/braze/managers/g;

    .line 6
    invoke-virtual {v0, v2}, Lcom/braze/managers/h;->a(Z)V

    goto :goto_0

    .line 7
    :cond_0
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v8, Lcom/braze/events/a$$ExternalSyntheticLambda36;

    invoke-direct {v8}, Lcom/braze/events/a$$ExternalSyntheticLambda36;-><init>()V

    const/4 v9, 0x7

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    invoke-static/range {v3 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final L()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/braze/events/a;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v6, Lcom/braze/events/a$$ExternalSyntheticLambda12;

    invoke-direct {v6}, Lcom/braze/events/a$$ExternalSyntheticLambda12;-><init>()V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 5
    iget-object v9, p0, Lcom/braze/events/a;->d:Lcom/braze/managers/m;

    .line 6
    iget-object v0, p0, Lcom/braze/events/a;->m:Lcom/braze/storage/p;

    .line 7
    iget-wide v10, v0, Lcom/braze/storage/p;->c:J

    .line 8
    iget-wide v12, v0, Lcom/braze/storage/p;->d:J

    const/4 v14, 0x0

    .line 9
    invoke-virtual/range {v9 .. v14}, Lcom/braze/managers/m;->a(JJI)V

    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v5, Lcom/braze/events/a$$ExternalSyntheticLambda13;

    invoke-direct {v5}, Lcom/braze/events/a$$ExternalSyntheticLambda13;-><init>()V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final O()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/braze/events/a;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v6, Lcom/braze/events/a$$ExternalSyntheticLambda37;

    invoke-direct {v6}, Lcom/braze/events/a$$ExternalSyntheticLambda37;-><init>()V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/braze/events/a;->d:Lcom/braze/managers/m;

    invoke-virtual {v0}, Lcom/braze/managers/m;->z()V

    goto :goto_0

    .line 7
    :cond_0
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v6, Lcom/braze/events/a$$ExternalSyntheticLambda38;

    invoke-direct {v6}, Lcom/braze/events/a$$ExternalSyntheticLambda38;-><init>()V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final R()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/braze/events/a;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v6, Lcom/braze/events/a$$ExternalSyntheticLambda29;

    invoke-direct {v6}, Lcom/braze/events/a$$ExternalSyntheticLambda29;-><init>()V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/braze/events/a;->p:Lcom/braze/managers/a0;

    .line 6
    iget-object v0, v0, Lcom/braze/managers/a0;->d:Lcom/braze/managers/m;

    .line 7
    invoke-virtual {v0}, Lcom/braze/managers/m;->w()V

    goto :goto_0

    .line 8
    :cond_0
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v6, Lcom/braze/events/a$$ExternalSyntheticLambda30;

    invoke-direct {v6}, Lcom/braze/events/a$$ExternalSyntheticLambda30;-><init>()V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final U()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/braze/events/a;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v6, Lcom/braze/events/a$$ExternalSyntheticLambda48;

    invoke-direct {v6}, Lcom/braze/events/a$$ExternalSyntheticLambda48;-><init>()V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/braze/events/a;->d:Lcom/braze/managers/m;

    invoke-virtual {v0}, Lcom/braze/managers/m;->C()V

    goto :goto_0

    .line 7
    :cond_0
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v6, Lcom/braze/events/a$$ExternalSyntheticLambda49;

    invoke-direct {v6}, Lcom/braze/events/a$$ExternalSyntheticLambda49;-><init>()V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final X()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/braze/events/a;->B:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v6, Lcom/braze/events/a$$ExternalSyntheticLambda39;

    invoke-direct {v6}, Lcom/braze/events/a$$ExternalSyntheticLambda39;-><init>()V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/braze/events/a;->c:Lcom/braze/events/e;

    new-instance v1, Lcom/braze/events/internal/u;

    invoke-direct {v1}, Lcom/braze/events/internal/u;-><init>()V

    check-cast v0, Lcom/braze/events/d;

    const-class v2, Lcom/braze/events/internal/u;

    invoke-virtual {v0, v1, v2}, Lcom/braze/events/d;->b(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_0

    .line 7
    :cond_0
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v8, Lcom/braze/events/a$$ExternalSyntheticLambda40;

    invoke-direct {v8}, Lcom/braze/events/a$$ExternalSyntheticLambda40;-><init>()V

    const/4 v9, 0x7

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    invoke-static/range {v3 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final a(Lcom/braze/events/d;)V
    .locals 9

    const-string v0, "eventMessenger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 589
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v6, Lcom/braze/events/a$$ExternalSyntheticLambda22;

    invoke-direct {v6, p1}, Lcom/braze/events/a$$ExternalSyntheticLambda22;-><init>(Lcom/braze/events/e;)V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 590
    invoke-virtual {p0}, Lcom/braze/events/a;->r()Lcom/braze/events/IEventSubscriber;

    move-result-object v0

    const-class v1, Lcom/braze/events/internal/f;

    invoke-virtual {p1, v1, v0}, Lcom/braze/events/d;->c(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)Z

    .line 593
    invoke-virtual {p0}, Lcom/braze/events/a;->s()Lcom/braze/events/IEventSubscriber;

    move-result-object v0

    .line 594
    const-class v1, Lcom/braze/events/internal/g;

    invoke-virtual {p1, v1, v0}, Lcom/braze/events/d;->c(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)Z

    .line 598
    invoke-virtual {p0}, Lcom/braze/events/a;->A()Lcom/braze/events/IEventSubscriber;

    move-result-object v0

    const-class v1, Lcom/braze/events/internal/y;

    invoke-virtual {p1, v1, v0}, Lcom/braze/events/d;->c(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)Z

    .line 599
    invoke-virtual {p0}, Lcom/braze/events/a;->C()Lcom/braze/events/IEventSubscriber;

    move-result-object v0

    const-class v1, Lcom/braze/events/internal/a0;

    invoke-virtual {p1, v1, v0}, Lcom/braze/events/d;->c(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)Z

    .line 600
    invoke-virtual {p0}, Lcom/braze/events/a;->B()Lcom/braze/events/IEventSubscriber;

    move-result-object v0

    const-class v1, Lcom/braze/events/internal/z;

    invoke-virtual {p1, v1, v0}, Lcom/braze/events/d;->c(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)Z

    .line 603
    invoke-virtual {p0}, Lcom/braze/events/a;->E()Lcom/braze/events/IEventSubscriber;

    move-result-object v0

    .line 604
    const-class v1, Lcom/braze/events/internal/e0;

    invoke-virtual {p1, v1, v0}, Lcom/braze/events/d;->c(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)Z

    .line 610
    invoke-virtual {p0}, Lcom/braze/events/a;->z()Lcom/braze/events/IEventSubscriber;

    move-result-object v0

    .line 611
    const-class v1, Lcom/braze/events/internal/w;

    invoke-virtual {p1, v1, v0}, Lcom/braze/events/d;->c(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)Z

    .line 615
    invoke-virtual {p0}, Lcom/braze/events/a;->t()Lcom/braze/events/IEventSubscriber;

    move-result-object v0

    const-class v1, Ljava/lang/Throwable;

    invoke-virtual {p1, v1, v0}, Lcom/braze/events/d;->c(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)Z

    .line 616
    invoke-virtual {p0}, Lcom/braze/events/a;->D()Lcom/braze/events/IEventSubscriber;

    move-result-object v0

    const-class v1, Lcom/braze/exceptions/b;

    invoke-virtual {p1, v1, v0}, Lcom/braze/events/d;->c(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)Z

    .line 619
    invoke-virtual {p0}, Lcom/braze/events/a;->H()Lcom/braze/events/IEventSubscriber;

    move-result-object v0

    .line 620
    const-class v1, Lcom/braze/events/internal/h0;

    invoke-virtual {p1, v1, v0}, Lcom/braze/events/d;->c(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)Z

    .line 626
    invoke-virtual {p0}, Lcom/braze/events/a;->y()Lcom/braze/events/IEventSubscriber;

    move-result-object v0

    .line 627
    const-class v1, Lcom/braze/events/internal/n;

    invoke-virtual {p1, v1, v0}, Lcom/braze/events/d;->c(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)Z

    .line 631
    invoke-virtual {p0}, Lcom/braze/events/a;->w()Lcom/braze/events/IEventSubscriber;

    move-result-object v0

    const-class v1, Lcom/braze/events/internal/l;

    invoke-virtual {p1, v1, v0}, Lcom/braze/events/d;->c(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)Z

    .line 632
    invoke-virtual {p0}, Lcom/braze/events/a;->v()Lcom/braze/events/IEventSubscriber;

    move-result-object v0

    const-class v1, Lcom/braze/events/internal/i;

    invoke-virtual {p1, v1, v0}, Lcom/braze/events/d;->c(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)Z

    .line 633
    invoke-virtual {p0}, Lcom/braze/events/a;->o()Lcom/braze/events/IEventSubscriber;

    move-result-object v0

    const-class v1, Lcom/braze/events/internal/a;

    invoke-virtual {p1, v1, v0}, Lcom/braze/events/d;->c(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)Z

    .line 634
    invoke-virtual {p0}, Lcom/braze/events/a;->F()Lcom/braze/events/IEventSubscriber;

    move-result-object v0

    const-class v1, Lcom/braze/events/internal/f0;

    invoke-virtual {p1, v1, v0}, Lcom/braze/events/d;->c(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)Z

    .line 637
    invoke-virtual {p0}, Lcom/braze/events/a;->x()Lcom/braze/events/IEventSubscriber;

    move-result-object v0

    .line 638
    const-class v1, Lcom/braze/events/internal/m;

    invoke-virtual {p1, v1, v0}, Lcom/braze/events/d;->c(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)Z

    .line 644
    invoke-virtual {p0}, Lcom/braze/events/a;->G()Lcom/braze/events/IEventSubscriber;

    move-result-object v0

    .line 645
    const-class v1, Lcom/braze/events/internal/g0;

    invoke-virtual {p1, v1, v0}, Lcom/braze/events/d;->c(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)Z

    .line 651
    invoke-virtual {p0}, Lcom/braze/events/a;->q()Lcom/braze/events/IEventSubscriber;

    move-result-object v0

    .line 652
    const-class v1, Lcom/braze/events/internal/e;

    invoke-virtual {p1, v1, v0}, Lcom/braze/events/d;->c(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)Z

    .line 658
    invoke-virtual {p0}, Lcom/braze/events/a;->p()Lcom/braze/events/IEventSubscriber;

    move-result-object v0

    .line 659
    const-class v1, Lcom/braze/events/internal/d;

    invoke-virtual {p1, v1, v0}, Lcom/braze/events/d;->c(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)Z

    return-void
.end method

.method public final a0()V
    .locals 8

    .line 1
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v5, Lcom/braze/events/a$$ExternalSyntheticLambda19;

    invoke-direct {v5}, Lcom/braze/events/a$$ExternalSyntheticLambda19;-><init>()V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/braze/events/a;->d:Lcom/braze/managers/m;

    const-wide/16 v1, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/braze/managers/m;->a(J)V

    return-void
.end method

.method public final c0()V
    .locals 12

    .line 1
    new-instance v0, Lcom/braze/models/outgoing/j;

    invoke-direct {v0}, Lcom/braze/models/outgoing/j;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/braze/events/a;->d:Lcom/braze/managers/m;

    .line 3
    iget-object v1, v1, Lcom/braze/managers/m;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v8, Lcom/braze/events/a$$ExternalSyntheticLambda4;

    invoke-direct {v8}, Lcom/braze/events/a$$ExternalSyntheticLambda4;-><init>()V

    const/4 v9, 0x7

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    invoke-static/range {v3 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 6
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/braze/models/outgoing/j;->b:Ljava/lang/Boolean;

    .line 7
    iget-object v1, p0, Lcom/braze/events/a;->d:Lcom/braze/managers/m;

    invoke-virtual {v1, v2}, Lcom/braze/managers/m;->a(Z)V

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/braze/events/a;->d:Lcom/braze/managers/m;

    .line 10
    iget-object v1, v1, Lcom/braze/managers/m;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    iget-object v1, p0, Lcom/braze/events/a;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    sget-object v4, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v9, Lcom/braze/events/a$$ExternalSyntheticLambda5;

    invoke-direct {v9}, Lcom/braze/events/a$$ExternalSyntheticLambda5;-><init>()V

    const/4 v10, 0x7

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p0

    invoke-static/range {v4 .. v11}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 14
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/braze/models/outgoing/j;->c:Ljava/lang/Boolean;

    .line 15
    iget-object v1, p0, Lcom/braze/events/a;->d:Lcom/braze/managers/m;

    invoke-virtual {v1, v2}, Lcom/braze/managers/m;->b(Z)V

    .line 16
    :cond_1
    iget-object v1, v0, Lcom/braze/models/outgoing/j;->c:Ljava/lang/Boolean;

    .line 17
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 18
    iget-object v1, v0, Lcom/braze/models/outgoing/j;->b:Ljava/lang/Boolean;

    .line 19
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/braze/events/a;->d:Lcom/braze/managers/m;

    invoke-virtual {v1, v0}, Lcom/braze/managers/m;->a(Lcom/braze/models/outgoing/j;)V

    :cond_3
    return-void
.end method

.method public final o()Lcom/braze/events/IEventSubscriber;
    .locals 1

    .line 1
    new-instance v0, Lcom/braze/events/a$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/braze/events/a$$ExternalSyntheticLambda11;-><init>(Lcom/braze/events/a;)V

    return-object v0
.end method

.method public final p()Lcom/braze/events/IEventSubscriber;
    .locals 1

    .line 1
    new-instance v0, Lcom/braze/events/a$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/braze/events/a$$ExternalSyntheticLambda1;-><init>(Lcom/braze/events/a;)V

    return-object v0
.end method

.method public final q()Lcom/braze/events/IEventSubscriber;
    .locals 1

    .line 1
    new-instance v0, Lcom/braze/events/a$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/braze/events/a$$ExternalSyntheticLambda6;-><init>(Lcom/braze/events/a;)V

    return-object v0
.end method

.method public final r()Lcom/braze/events/IEventSubscriber;
    .locals 1

    .line 1
    new-instance v0, Lcom/braze/events/a$$ExternalSyntheticLambda50;

    invoke-direct {v0, p0}, Lcom/braze/events/a$$ExternalSyntheticLambda50;-><init>(Lcom/braze/events/a;)V

    return-object v0
.end method

.method public final s()Lcom/braze/events/IEventSubscriber;
    .locals 1

    .line 1
    new-instance v0, Lcom/braze/events/a$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lcom/braze/events/a$$ExternalSyntheticLambda16;-><init>(Lcom/braze/events/a;)V

    return-object v0
.end method

.method public final t()Lcom/braze/events/IEventSubscriber;
    .locals 2

    .line 1
    new-instance v0, Lcom/braze/events/a$$ExternalSyntheticLambda18;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/braze/events/a$$ExternalSyntheticLambda18;-><init>(Lcom/braze/events/a;Ljava/util/concurrent/Semaphore;)V

    return-object v0
.end method

.method public final v()Lcom/braze/events/IEventSubscriber;
    .locals 1

    .line 1
    new-instance v0, Lcom/braze/events/a$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lcom/braze/events/a$$ExternalSyntheticLambda15;-><init>(Lcom/braze/events/a;)V

    return-object v0
.end method

.method public final w()Lcom/braze/events/IEventSubscriber;
    .locals 1

    .line 1
    new-instance v0, Lcom/braze/events/a$$ExternalSyntheticLambda34;

    invoke-direct {v0, p0}, Lcom/braze/events/a$$ExternalSyntheticLambda34;-><init>(Lcom/braze/events/a;)V

    return-object v0
.end method

.method public final x()Lcom/braze/events/IEventSubscriber;
    .locals 1

    .line 1
    new-instance v0, Lcom/braze/events/a$$ExternalSyntheticLambda43;

    invoke-direct {v0, p0}, Lcom/braze/events/a$$ExternalSyntheticLambda43;-><init>(Lcom/braze/events/a;)V

    return-object v0
.end method

.method public final y()Lcom/braze/events/IEventSubscriber;
    .locals 1

    .line 1
    new-instance v0, Lcom/braze/events/a$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0}, Lcom/braze/events/a$$ExternalSyntheticLambda31;-><init>(Lcom/braze/events/a;)V

    return-object v0
.end method

.method public final z()Lcom/braze/events/IEventSubscriber;
    .locals 1

    .line 1
    new-instance v0, Lcom/braze/events/a$$ExternalSyntheticLambda45;

    invoke-direct {v0, p0}, Lcom/braze/events/a$$ExternalSyntheticLambda45;-><init>(Lcom/braze/events/a;)V

    return-object v0
.end method
