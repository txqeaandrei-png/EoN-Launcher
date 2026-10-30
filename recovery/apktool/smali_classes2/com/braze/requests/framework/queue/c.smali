.class public final Lcom/braze/requests/framework/queue/c;
.super Lcom/braze/requests/framework/b;


# static fields
.field public static final k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/braze/requests/framework/queue/c;

    invoke-static {v0}, Lcom/braze/support/BrazeLogger;->getBrazeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/braze/requests/framework/queue/c;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/braze/dispatch/h;)V
    .locals 1

    const-string v0, "dispatchDataProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/braze/requests/m;->f:Lcom/braze/requests/m;

    invoke-direct {p0, v0, p1}, Lcom/braze/requests/framework/b;-><init>(Lcom/braze/requests/m;Lcom/braze/dispatch/h;)V

    return-void
.end method

.method public static final a(Lcom/braze/requests/f;Lcom/braze/requests/framework/h;)Ljava/lang/String;
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not merge other request: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " into parent: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lcom/braze/requests/framework/h;JLcom/braze/requests/framework/h;)Ljava/lang/String;
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Batched request "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/braze/requests/framework/h;->a(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " and combined into "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p3, p1, p2}, Lcom/braze/requests/framework/h;->a(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(J)V
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/braze/requests/framework/b;->e:Ljava/util/ArrayList;

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/braze/requests/framework/h;

    .line 66
    iget-object v3, v3, Lcom/braze/requests/framework/h;->d:Lcom/braze/requests/framework/i;

    .line 67
    invoke-virtual {v3}, Lcom/braze/requests/framework/i;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    :cond_1
    new-instance v0, Lcom/braze/requests/framework/queue/b;

    invoke-direct {v0}, Lcom/braze/requests/framework/queue/b;-><init>()V

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 115
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    return-void

    .line 117
    :cond_2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/braze/requests/framework/h;

    const/4 v3, 0x1

    .line 118
    invoke-interface {v0, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 119
    invoke-virtual {p0, p1, p2, v2, v0}, Lcom/braze/requests/framework/queue/c;->a(JLcom/braze/requests/framework/h;Ljava/util/List;)V

    return-void
.end method

.method public final a(JLcom/braze/requests/framework/h;Ljava/util/List;)V
    .locals 20

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1
    iget-object v4, v2, Lcom/braze/requests/framework/h;->a:Lcom/braze/requests/n;

    goto :goto_0

    :cond_0
    move-object v4, v3

    .line 2
    :goto_0
    instance-of v5, v4, Lcom/braze/requests/f;

    if-eqz v5, :cond_1

    check-cast v4, Lcom/braze/requests/f;

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    if-nez v4, :cond_2

    return-void

    .line 30
    :cond_2
    invoke-interface/range {p4 .. p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/braze/requests/framework/h;

    .line 31
    iget-object v7, v6, Lcom/braze/requests/framework/h;->a:Lcom/braze/requests/n;

    .line 32
    instance-of v8, v7, Lcom/braze/requests/f;

    if-eqz v8, :cond_3

    check-cast v7, Lcom/braze/requests/f;

    goto :goto_3

    :cond_3
    move-object v7, v3

    :goto_3
    if-nez v7, :cond_4

    goto :goto_4

    .line 33
    :cond_4
    iget-object v8, v4, Lcom/braze/requests/f;->l:Lcom/braze/models/outgoing/l;

    if-eqz v8, :cond_5

    iget-object v8, v7, Lcom/braze/requests/f;->l:Lcom/braze/models/outgoing/l;

    if-eqz v8, :cond_5

    goto :goto_4

    .line 37
    :cond_5
    iget-object v8, v4, Lcom/braze/requests/f;->m:Lcom/braze/models/b;

    if-eqz v8, :cond_6

    .line 38
    iget-boolean v8, v8, Lcom/braze/models/b;->b:Z

    if-nez v8, :cond_6

    goto :goto_4

    .line 39
    :cond_6
    iget-object v8, v7, Lcom/braze/requests/f;->m:Lcom/braze/models/b;

    if-eqz v8, :cond_7

    .line 40
    iget-boolean v8, v8, Lcom/braze/models/b;->b:Z

    if-nez v8, :cond_7

    .line 41
    :goto_4
    sget-object v9, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v14, Lcom/braze/requests/framework/queue/c$$ExternalSyntheticLambda0;

    invoke-direct {v14, v7, v2}, Lcom/braze/requests/framework/queue/c$$ExternalSyntheticLambda0;-><init>(Lcom/braze/requests/f;Lcom/braze/requests/framework/h;)V

    const/4 v15, 0x7

    const/16 v16, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v10, p0

    invoke-static/range {v9 .. v16}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_2

    .line 42
    :cond_7
    iget-object v7, v7, Lcom/braze/requests/f;->j:Lcom/braze/models/outgoing/k;

    .line 43
    iget-object v8, v4, Lcom/braze/requests/f;->j:Lcom/braze/models/outgoing/k;

    .line 44
    iget-object v9, v8, Lcom/braze/models/outgoing/k;->b:Ljava/lang/Boolean;

    if-eqz v9, :cond_8

    goto :goto_5

    .line 45
    :cond_8
    iget-object v9, v7, Lcom/braze/models/outgoing/k;->b:Ljava/lang/Boolean;

    if-eqz v9, :cond_9

    .line 46
    :goto_5
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_6

    :cond_9
    move-object v9, v3

    .line 47
    :goto_6
    invoke-virtual {v8}, Lcom/braze/models/outgoing/k;->b()Z

    move-result v8

    if-nez v8, :cond_b

    invoke-virtual {v7}, Lcom/braze/models/outgoing/k;->b()Z

    move-result v8

    if-eqz v8, :cond_a

    goto :goto_7

    :cond_a
    move-object v8, v3

    goto :goto_8

    .line 48
    :cond_b
    :goto_7
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 49
    :goto_8
    iget-object v10, v4, Lcom/braze/requests/f;->j:Lcom/braze/models/outgoing/k;

    .line 50
    iget-object v10, v10, Lcom/braze/models/outgoing/k;->d:Lcom/braze/models/outgoing/i;

    const-string v11, "outboundConfigParams"

    if-eqz v10, :cond_c

    .line 51
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    :cond_c
    move-object v10, v3

    .line 52
    :goto_9
    iget-object v12, v7, Lcom/braze/models/outgoing/k;->d:Lcom/braze/models/outgoing/i;

    if-eqz v12, :cond_d

    .line 53
    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v12

    .line 54
    :cond_d
    iget-object v11, v4, Lcom/braze/requests/f;->j:Lcom/braze/models/outgoing/k;

    .line 55
    iget-object v11, v11, Lcom/braze/models/outgoing/k;->a:Ljava/lang/String;

    if-eqz v11, :cond_e

    goto :goto_a

    :cond_e
    move-object v11, v3

    .line 56
    :goto_a
    iget-object v7, v7, Lcom/braze/models/outgoing/k;->a:Ljava/lang/String;

    if-eqz v7, :cond_f

    move-object v11, v7

    .line 57
    :cond_f
    new-instance v7, Lcom/braze/models/outgoing/k;

    invoke-direct {v7, v11, v9, v8, v10}, Lcom/braze/models/outgoing/k;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/braze/models/outgoing/i;)V

    .line 58
    iput-object v7, v4, Lcom/braze/requests/f;->j:Lcom/braze/models/outgoing/k;

    .line 59
    sget-object v12, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v13, Lcom/braze/requests/framework/queue/c;->k:Ljava/lang/String;

    new-instance v7, Lcom/braze/requests/framework/queue/c$$ExternalSyntheticLambda1;

    invoke-direct {v7, v6, v0, v1, v2}, Lcom/braze/requests/framework/queue/c$$ExternalSyntheticLambda1;-><init>(Lcom/braze/requests/framework/h;JLcom/braze/requests/framework/h;)V

    const/16 v18, 0xe

    const/16 v19, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v17, v7

    invoke-static/range {v12 .. v19}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 62
    sget-object v7, Lcom/braze/requests/framework/i;->d:Lcom/braze/requests/framework/i;

    invoke-virtual {v6, v0, v1, v7}, Lcom/braze/requests/framework/h;->a(JLcom/braze/requests/framework/i;)V

    goto/16 :goto_2

    :cond_10
    return-void
.end method
