.class public final Lcom/braze/managers/u0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/braze/managers/h0;


# instance fields
.field public final A:Lcom/braze/managers/h;

.field public final B:Lcom/braze/storage/x;

.field public final C:Lcom/braze/storage/p;

.field public final D:Lcom/braze/requests/h;

.field public final E:Lcom/braze/requests/framework/g;

.field public final F:Lcom/braze/triggers/managers/f;

.field public final a:Landroid/content/Context;

.field public final b:Lcom/braze/configuration/BrazeConfigurationProvider;

.field public final c:Lcom/braze/managers/e0;

.field public final d:Lcom/braze/managers/i0;

.field public final e:Lcom/braze/managers/d0;

.field public final f:Z

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Lcom/braze/storage/a0;

.field public final j:Lcom/braze/storage/h0;

.field public final k:Lcom/braze/storage/r;

.field public final l:Lcom/braze/events/d;

.field public final m:Lcom/braze/storage/e0;

.field public final n:Lcom/braze/managers/y;

.field public final o:Lcom/braze/events/a;

.field public final p:Lcom/braze/dispatch/f;

.field public final q:Lcom/braze/managers/r;

.field public final r:Lcom/braze/managers/z;

.field public final s:Lcom/braze/managers/k0;

.field public final t:Lcom/braze/storage/z;

.field public final u:Lcom/braze/storage/y;

.field public final v:Lcom/braze/storage/b0;

.field public final w:Lcom/braze/managers/m;

.field public final x:Lcom/braze/managers/BrazeGeofenceManager;

.field public final y:Lcom/braze/managers/k;

.field public final z:Lcom/braze/managers/a0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/braze/configuration/e;Lcom/braze/configuration/BrazeConfigurationProvider;Lcom/braze/events/e;Lcom/braze/managers/e0;Lcom/braze/managers/g0;Lcom/braze/managers/i0;ZZLcom/braze/managers/d0;Z)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v15, p3

    move-object/from16 v2, p5

    move-object/from16 v14, p7

    move/from16 v13, p9

    move-object/from16 v3, p10

    move/from16 v12, p11

    const-string v4, "applicationContext"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "offlineUserStorageProvider"

    move-object/from16 v5, p2

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "configurationProvider"

    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "externalEventPublisher"

    move-object/from16 v11, p4

    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "deviceIdProvider"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "registrationDataProvider"

    move-object/from16 v10, p6

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "pushDeliveryManager"

    invoke-static {v14, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "deviceDataProvider"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object v0, v1, Lcom/braze/managers/u0;->a:Landroid/content/Context;

    .line 4
    iput-object v15, v1, Lcom/braze/managers/u0;->b:Lcom/braze/configuration/BrazeConfigurationProvider;

    .line 6
    iput-object v2, v1, Lcom/braze/managers/u0;->c:Lcom/braze/managers/e0;

    .line 8
    iput-object v14, v1, Lcom/braze/managers/u0;->d:Lcom/braze/managers/i0;

    .line 11
    iput-object v3, v1, Lcom/braze/managers/u0;->e:Lcom/braze/managers/d0;

    .line 12
    iput-boolean v12, v1, Lcom/braze/managers/u0;->f:Z

    .line 15
    invoke-virtual/range {p2 .. p2}, Lcom/braze/configuration/e;->a()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/braze/managers/u0;->g:Ljava/lang/String;

    .line 16
    invoke-virtual/range {p3 .. p3}, Lcom/braze/configuration/BrazeConfigurationProvider;->getBrazeApiKey()Lcom/braze/models/outgoing/b;

    move-result-object v2

    .line 17
    iget-object v8, v2, Lcom/braze/models/outgoing/b;->a:Ljava/lang/String;

    .line 18
    iput-object v8, v1, Lcom/braze/managers/u0;->h:Ljava/lang/String;

    .line 19
    new-instance v7, Lcom/braze/storage/a0;

    invoke-direct {v7, v0}, Lcom/braze/storage/a0;-><init>(Landroid/content/Context;)V

    iput-object v7, v1, Lcom/braze/managers/u0;->i:Lcom/braze/storage/a0;

    .line 20
    new-instance v6, Lcom/braze/requests/util/a;

    invoke-direct {v6, v0}, Lcom/braze/requests/util/a;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v5, Lcom/braze/events/d;

    const/4 v2, 0x1

    invoke-direct {v5, v7, v2}, Lcom/braze/events/d;-><init>(Lcom/braze/storage/a0;Z)V

    iput-object v5, v1, Lcom/braze/managers/u0;->l:Lcom/braze/events/d;

    .line 26
    new-instance v4, Lcom/braze/storage/e0;

    invoke-direct {v4, v0, v8, v5}, Lcom/braze/storage/e0;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/braze/events/d;)V

    iput-object v4, v1, Lcom/braze/managers/u0;->m:Lcom/braze/storage/e0;

    .line 28
    new-instance v3, Lcom/braze/managers/y;

    move-object v2, v3

    move-object v10, v3

    move-object v3, v4

    move-object v15, v4

    move-object v4, v5

    move-object v14, v5

    move-object/from16 v5, p1

    move-object/from16 v16, v6

    move-object v6, v9

    move-object/from16 v17, v7

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/braze/managers/y;-><init>(Lcom/braze/storage/e0;Lcom/braze/events/d;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, v1, Lcom/braze/managers/u0;->n:Lcom/braze/managers/y;

    .line 35
    new-instance v2, Lcom/braze/managers/s0;

    invoke-direct {v2, v15, v14, v0}, Lcom/braze/managers/s0;-><init>(Lcom/braze/storage/e0;Lcom/braze/events/d;Landroid/content/Context;)V

    .line 42
    new-instance v2, Lcom/braze/storage/g0;

    invoke-direct {v2, v0, v9, v8}, Lcom/braze/storage/g0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v4, Lcom/braze/storage/s;

    invoke-direct {v4, v2, v14}, Lcom/braze/storage/s;-><init>(Lcom/braze/storage/g0;Lcom/braze/events/d;)V

    .line 46
    new-instance v10, Lcom/braze/dispatch/f;

    .line 49
    new-instance v2, Lcom/braze/dispatch/a;

    invoke-direct {v2, v0}, Lcom/braze/dispatch/a;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-direct {v10, v0, v14, v2}, Lcom/braze/dispatch/f;-><init>(Landroid/content/Context;Lcom/braze/events/d;Lcom/braze/dispatch/a;)V

    iput-object v10, v1, Lcom/braze/managers/u0;->p:Lcom/braze/dispatch/f;

    .line 56
    new-instance v7, Lcom/braze/managers/r;

    .line 61
    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.app.AlarmManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v18, v2

    check-cast v18, Landroid/app/AlarmManager;

    .line 62
    invoke-virtual/range {p3 .. p3}, Lcom/braze/configuration/BrazeConfigurationProvider;->getSessionTimeoutSeconds()I

    move-result v19

    .line 63
    invoke-virtual/range {p3 .. p3}, Lcom/braze/configuration/BrazeConfigurationProvider;->isSessionStartBasedTimeoutEnabled()Z

    move-result v20

    move-object v2, v7

    move-object/from16 v3, p1

    move-object v5, v14

    move-object/from16 v6, p4

    move-object v11, v7

    move-object/from16 v7, v18

    move-object v13, v8

    move/from16 v8, v19

    move-object v12, v9

    move/from16 v9, v20

    .line 64
    invoke-direct/range {v2 .. v9}, Lcom/braze/managers/r;-><init>(Landroid/content/Context;Lcom/braze/storage/s;Lcom/braze/events/d;Lcom/braze/events/e;Landroid/app/AlarmManager;IZ)V

    iput-object v11, v1, Lcom/braze/managers/u0;->q:Lcom/braze/managers/r;

    .line 75
    new-instance v2, Lcom/braze/storage/f0;

    invoke-direct {v2, v0, v12, v13}, Lcom/braze/storage/f0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v3, Lcom/braze/storage/v;

    invoke-direct {v3, v2, v14}, Lcom/braze/storage/v;-><init>(Lcom/braze/storage/f0;Lcom/braze/events/d;)V

    .line 78
    new-instance v9, Lcom/braze/managers/z;

    invoke-direct {v9, v3}, Lcom/braze/managers/z;-><init>(Lcom/braze/storage/v;)V

    iput-object v9, v1, Lcom/braze/managers/u0;->r:Lcom/braze/managers/z;

    .line 80
    new-instance v8, Lcom/braze/managers/k0;

    move-object v2, v8

    move-object/from16 v3, p1

    move-object v4, v13

    move-object v5, v12

    move-object v6, v14

    move-object v7, v15

    invoke-direct/range {v2 .. v7}, Lcom/braze/managers/k0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/braze/events/d;Lcom/braze/storage/e0;)V

    iput-object v8, v1, Lcom/braze/managers/u0;->s:Lcom/braze/managers/k0;

    .line 88
    new-instance v2, Lcom/braze/storage/z;

    invoke-direct {v2, v0, v12, v13}, Lcom/braze/storage/z;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/braze/managers/u0;->t:Lcom/braze/storage/z;

    .line 94
    new-instance v7, Lcom/braze/managers/n;

    invoke-direct {v7, v0, v14, v15}, Lcom/braze/managers/n;-><init>(Landroid/content/Context;Lcom/braze/events/d;Lcom/braze/storage/e0;)V

    .line 99
    new-instance v6, Lcom/braze/storage/y;

    invoke-direct {v6, v0, v13, v12}, Lcom/braze/storage/y;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, v1, Lcom/braze/managers/u0;->u:Lcom/braze/storage/y;

    .line 104
    new-instance v5, Lcom/braze/storage/b0;

    invoke-direct {v5, v0, v12, v13}, Lcom/braze/storage/b0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, v1, Lcom/braze/managers/u0;->v:Lcom/braze/storage/b0;

    .line 106
    new-instance v4, Lcom/braze/managers/m;

    move-object v2, v4

    move-object v0, v4

    move-object v4, v12

    move-object/from16 v18, v5

    move-object v5, v13

    move-object/from16 v19, v6

    move-object v6, v11

    move-object v11, v7

    move-object v7, v14

    move-object/from16 v20, v8

    move-object/from16 v8, p3

    move-object/from16 v21, v9

    move-object v9, v15

    move-object/from16 v22, v10

    move-object/from16 v10, v21

    move-object/from16 p2, v12

    move-object/from16 v12, v17

    move-object/from16 p5, v13

    move-object/from16 v13, v20

    move-object/from16 p10, v14

    move-object/from16 v14, p7

    move-object/from16 v20, v15

    move-object/from16 v15, v19

    .line 108
    invoke-direct/range {v2 .. v15}, Lcom/braze/managers/m;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/braze/managers/r;Lcom/braze/events/d;Lcom/braze/configuration/BrazeConfigurationProvider;Lcom/braze/storage/e0;Lcom/braze/managers/z;Lcom/braze/managers/n;Lcom/braze/storage/a0;Lcom/braze/managers/k0;Lcom/braze/managers/i0;Lcom/braze/storage/y;)V

    iput-object v0, v1, Lcom/braze/managers/u0;->w:Lcom/braze/managers/m;

    .line 125
    new-instance v14, Lcom/braze/managers/BrazeGeofenceManager;

    move-object v2, v14

    move-object/from16 v4, p5

    move-object v5, v0

    move-object/from16 v6, p3

    move-object/from16 v7, v20

    move-object/from16 v8, p10

    .line 127
    invoke-direct/range {v2 .. v8}, Lcom/braze/managers/BrazeGeofenceManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/braze/managers/c0;Lcom/braze/configuration/BrazeConfigurationProvider;Lcom/braze/storage/e0;Lcom/braze/events/e;)V

    iput-object v14, v1, Lcom/braze/managers/u0;->x:Lcom/braze/managers/BrazeGeofenceManager;

    .line 136
    new-instance v15, Lcom/braze/managers/k;

    move-object/from16 v13, p3

    move-object v12, v0

    move-object/from16 v0, p1

    .line 138
    invoke-direct {v15, v0, v12, v13}, Lcom/braze/managers/k;-><init>(Landroid/content/Context;Lcom/braze/managers/m;Lcom/braze/configuration/BrazeConfigurationProvider;)V

    iput-object v15, v1, Lcom/braze/managers/u0;->y:Lcom/braze/managers/k;

    .line 144
    new-instance v11, Lcom/braze/managers/a0;

    move-object v2, v11

    move-object/from16 v5, p2

    move-object/from16 v6, p10

    move-object/from16 v7, p4

    move-object/from16 v8, v20

    move-object v9, v12

    invoke-direct/range {v2 .. v9}, Lcom/braze/managers/a0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/braze/events/e;Lcom/braze/events/e;Lcom/braze/storage/e0;Lcom/braze/managers/m;)V

    iput-object v11, v1, Lcom/braze/managers/u0;->z:Lcom/braze/managers/a0;

    .line 154
    new-instance v10, Lcom/braze/managers/h;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/braze/managers/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/braze/events/e;Lcom/braze/events/e;Lcom/braze/storage/e0;Lcom/braze/managers/m;)V

    iput-object v10, v1, Lcom/braze/managers/u0;->A:Lcom/braze/managers/h;

    .line 164
    new-instance v9, Lcom/braze/storage/x;

    move-object/from16 v8, p2

    invoke-direct {v9, v0, v8, v12}, Lcom/braze/storage/x;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/braze/managers/m;)V

    iput-object v9, v1, Lcom/braze/managers/u0;->B:Lcom/braze/storage/x;

    .line 166
    new-instance v7, Lcom/braze/storage/p;

    .line 167
    const-string v19, "36.0.0"

    move-object v2, v7

    move-object v4, v8

    move-object/from16 v5, p5

    move-object v6, v12

    move-object/from16 p2, v14

    move-object v14, v7

    move-object/from16 v7, v19

    .line 168
    invoke-direct/range {v2 .. v7}, Lcom/braze/storage/p;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/braze/managers/m;Ljava/lang/String;)V

    .line 169
    iput-object v14, v1, Lcom/braze/managers/u0;->C:Lcom/braze/storage/p;

    .line 171
    new-instance v2, Lcom/braze/requests/u;

    .line 172
    sget v3, Lcom/braze/communication/c;->a:I

    .line 173
    new-instance v6, Lcom/braze/communication/e;

    new-instance v3, Lcom/braze/communication/b;

    sget v4, Lcom/braze/communication/c;->a:I

    invoke-direct {v3, v4}, Lcom/braze/communication/b;-><init>(I)V

    invoke-direct {v6, v3}, Lcom/braze/communication/e;-><init>(Lcom/braze/communication/b;)V

    move-object v5, v2

    move-object/from16 v7, p10

    move-object v4, v8

    move-object/from16 v8, p4

    move-object/from16 v23, v10

    move-object/from16 v10, v20

    move-object/from16 v19, v11

    move-object v11, v14

    move-object v3, v12

    move-object/from16 v13, v16

    .line 174
    invoke-direct/range {v5 .. v13}, Lcom/braze/requests/u;-><init>(Lcom/braze/communication/e;Lcom/braze/events/e;Lcom/braze/events/e;Lcom/braze/storage/x;Lcom/braze/storage/e0;Lcom/braze/storage/p;Lcom/braze/managers/m;Lcom/braze/requests/util/a;)V

    .line 185
    new-instance v5, Lcom/braze/requests/h;

    move-object/from16 v11, p10

    invoke-direct {v5, v11, v3}, Lcom/braze/requests/h;-><init>(Lcom/braze/events/e;Lcom/braze/managers/m;)V

    iput-object v5, v1, Lcom/braze/managers/u0;->D:Lcom/braze/requests/h;

    .line 186
    new-instance v5, Lcom/braze/dispatch/h;

    invoke-direct {v5, v1}, Lcom/braze/dispatch/h;-><init>(Lcom/braze/managers/u0;)V

    .line 187
    new-instance v10, Lcom/braze/requests/framework/g;

    move/from16 v6, p8

    move/from16 v7, p11

    .line 192
    invoke-direct {v10, v5, v2, v6, v7}, Lcom/braze/requests/framework/g;-><init>(Lcom/braze/dispatch/h;Lcom/braze/requests/u;ZZ)V

    iput-object v10, v1, Lcom/braze/managers/u0;->E:Lcom/braze/requests/framework/g;

    .line 199
    new-instance v12, Lcom/braze/triggers/managers/f;

    move-object v2, v12

    move-object v13, v3

    move-object/from16 v3, p1

    move-object v9, v4

    move-object v4, v13

    move-object v5, v11

    move-object/from16 v6, p4

    move-object/from16 v7, p3

    move-object v8, v9

    move-object/from16 v16, v14

    move-object v14, v9

    move-object/from16 v9, p5

    .line 205
    invoke-direct/range {v2 .. v10}, Lcom/braze/triggers/managers/f;-><init>(Landroid/content/Context;Lcom/braze/managers/m;Lcom/braze/events/e;Lcom/braze/events/e;Lcom/braze/configuration/BrazeConfigurationProvider;Ljava/lang/String;Ljava/lang/String;Lcom/braze/requests/framework/g;)V

    iput-object v12, v1, Lcom/braze/managers/u0;->F:Lcom/braze/triggers/managers/f;

    .line 207
    const-string v2, ""

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    .line 208
    new-instance v9, Lcom/braze/storage/h0;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v9

    move-object/from16 v3, p1

    move-object/from16 v4, p6

    move-object/from16 v5, v17

    .line 211
    invoke-direct/range {v2 .. v7}, Lcom/braze/storage/h0;-><init>(Landroid/content/Context;Lcom/braze/managers/g0;Lcom/braze/storage/a0;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v2, "<set-?>"

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    iput-object v9, v1, Lcom/braze/managers/u0;->j:Lcom/braze/storage/h0;

    .line 273
    new-instance v2, Lcom/braze/storage/r;

    .line 275
    invoke-direct {v2, v0, v8, v8}, Lcom/braze/storage/r;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v3, "<set-?>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    iput-object v2, v1, Lcom/braze/managers/u0;->k:Lcom/braze/storage/r;

    goto :goto_0

    .line 338
    :cond_0
    new-instance v9, Lcom/braze/storage/h0;

    move-object v2, v9

    move-object/from16 v3, p1

    move-object/from16 v4, p6

    move-object/from16 v5, v17

    move-object v6, v14

    move-object/from16 v7, p5

    .line 343
    invoke-direct/range {v2 .. v7}, Lcom/braze/storage/h0;-><init>(Landroid/content/Context;Lcom/braze/managers/g0;Lcom/braze/storage/a0;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v2, "<set-?>"

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    iput-object v9, v1, Lcom/braze/managers/u0;->j:Lcom/braze/storage/h0;

    .line 405
    new-instance v2, Lcom/braze/storage/r;

    move-object/from16 v3, p5

    .line 409
    invoke-direct {v2, v0, v14, v3}, Lcom/braze/storage/r;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v3, "<set-?>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 471
    iput-object v2, v1, Lcom/braze/managers/u0;->k:Lcom/braze/storage/r;

    :goto_0
    move-object/from16 v2, v22

    .line 472
    monitor-enter v2

    move/from16 v3, p9

    .line 473
    :try_start_0
    iput-boolean v3, v2, Lcom/braze/dispatch/f;->l:Z

    .line 474
    invoke-virtual {v2}, Lcom/braze/dispatch/f;->b()V

    if-eqz v3, :cond_1

    .line 476
    invoke-virtual {v2}, Lcom/braze/dispatch/f;->f()V

    goto :goto_1

    .line 478
    :cond_1
    invoke-virtual {v2}, Lcom/braze/dispatch/f;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v2

    .line 479
    new-instance v14, Lcom/braze/events/a;

    .line 482
    invoke-virtual/range {p0 .. p0}, Lcom/braze/managers/u0;->a()Lcom/braze/storage/h0;

    move-result-object v7

    .line 483
    iget-object v2, v1, Lcom/braze/managers/u0;->k:Lcom/braze/storage/r;

    if-eqz v2, :cond_2

    move-object v8, v2

    goto :goto_2

    :cond_2
    const-string v2, "deviceCache"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 484
    :goto_2
    iget-object v10, v12, Lcom/braze/triggers/managers/f;->h:Lcom/braze/triggers/managers/g;

    move-object v2, v14

    move-object/from16 v3, p1

    move-object v4, v15

    move-object v5, v11

    move-object v6, v13

    move-object v9, v12

    move-object/from16 v11, v21

    move-object/from16 v12, p2

    move-object/from16 v13, p4

    move-object v15, v14

    move-object/from16 v0, v16

    move-object/from16 v14, p3

    move-object/from16 v24, v15

    move-object v15, v0

    move-object/from16 v16, v18

    move-object/from16 v17, v20

    move-object/from16 v18, v19

    move-object/from16 v19, p7

    move-object/from16 v20, v23

    .line 488
    invoke-direct/range {v2 .. v20}, Lcom/braze/events/a;-><init>(Landroid/content/Context;Lcom/braze/managers/k;Lcom/braze/events/e;Lcom/braze/managers/m;Lcom/braze/storage/h0;Lcom/braze/storage/r;Lcom/braze/triggers/managers/f;Lcom/braze/triggers/managers/g;Lcom/braze/managers/z;Lcom/braze/managers/BrazeGeofenceManager;Lcom/braze/events/e;Lcom/braze/configuration/BrazeConfigurationProvider;Lcom/braze/storage/p;Lcom/braze/storage/b0;Lcom/braze/storage/e0;Lcom/braze/managers/a0;Lcom/braze/managers/i0;Lcom/braze/managers/h;)V

    move-object/from16 v0, v24

    iput-object v0, v1, Lcom/braze/managers/u0;->o:Lcom/braze/events/a;

    return-void

    :catchall_0
    move-exception v0

    .line 489
    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public final a()Lcom/braze/storage/h0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/managers/u0;->j:Lcom/braze/storage/h0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "userCache"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
