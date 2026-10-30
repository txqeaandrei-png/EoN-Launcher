.class public abstract Lcom/braze/requests/framework/b;
.super Ljava/lang/Object;


# static fields
.field public static final j:Ljava/lang/String;


# instance fields
.field public final a:Lcom/braze/requests/m;

.field public final b:Lcom/braze/dispatch/h;

.field public c:J

.field public d:J

.field public final e:Ljava/util/ArrayList;

.field public f:J

.field public final g:J

.field public final h:Lcom/braze/requests/util/b;

.field public i:Lcom/braze/requests/util/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/braze/requests/framework/b;

    invoke-static {v0}, Lcom/braze/support/BrazeLogger;->getBrazeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/braze/requests/framework/b;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/braze/requests/m;Lcom/braze/dispatch/h;)V
    .locals 2

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatchDataProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/braze/requests/framework/b;->a:Lcom/braze/requests/m;

    .line 3
    iput-object p2, p0, Lcom/braze/requests/framework/b;->b:Lcom/braze/dispatch/h;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/braze/requests/framework/b;->e:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x4b

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x19

    .line 6
    :goto_0
    iput-wide v0, p0, Lcom/braze/requests/framework/b;->g:J

    .line 7
    iget-object p1, p2, Lcom/braze/dispatch/h;->a:Lcom/braze/managers/u0;

    .line 8
    iget-object p1, p1, Lcom/braze/managers/u0;->m:Lcom/braze/storage/e0;

    .line 9
    invoke-virtual {p1}, Lcom/braze/storage/e0;->k()I

    move-result p1

    .line 10
    iget-object v0, p2, Lcom/braze/dispatch/h;->a:Lcom/braze/managers/u0;

    .line 11
    iget-object v0, v0, Lcom/braze/managers/u0;->m:Lcom/braze/storage/e0;

    .line 12
    invoke-virtual {v0}, Lcom/braze/storage/e0;->j()I

    move-result v0

    .line 13
    iget-object p2, p2, Lcom/braze/dispatch/h;->a:Lcom/braze/managers/u0;

    .line 14
    iget-object p2, p2, Lcom/braze/managers/u0;->m:Lcom/braze/storage/e0;

    .line 15
    invoke-virtual {p2}, Lcom/braze/storage/e0;->l()I

    move-result p2

    .line 16
    new-instance v1, Lcom/braze/requests/util/b;

    invoke-direct {v1, v0, p1, p2}, Lcom/braze/requests/util/b;-><init>(III)V

    iput-object v1, p0, Lcom/braze/requests/framework/b;->h:Lcom/braze/requests/util/b;

    return-void
.end method

.method public static final a(Lcom/braze/requests/framework/b;J)Ljava/lang/String;
    .locals 2

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Added request now to queue "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/braze/requests/framework/b;->d(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lcom/braze/requests/framework/h;)Ljava/lang/String;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "About to batch request "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lcom/braze/requests/framework/h;J)Ljava/lang/String;
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Marking request as framework complete \n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/braze/requests/framework/h;->a(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lcom/braze/requests/framework/h;JI)Ljava/lang/String;
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Set retry count for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/braze/requests/framework/h;->a(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lcom/braze/requests/framework/h;JJLcom/braze/requests/util/d;)Ljava/lang/String;
    .locals 6

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Delaying next request after \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/braze/requests/framework/h;->a(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\' until next token is available in "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 25
    const-string v0, "ms - \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    add-long v0, p1, p3

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 27
    invoke-static/range {v0 .. v5}, Lcom/braze/support/DateTimeUtils;->formatDateFromMillis$default(JLcom/braze/enums/BrazeDateFormat;Ljava/util/TimeZone;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 29
    const-string p1, "\'\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final b(JLcom/braze/requests/framework/h;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1615
    invoke-virtual {p2, p0, p1}, Lcom/braze/requests/framework/h;->a(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lcom/braze/requests/framework/b;J)Ljava/lang/String;
    .locals 0

    .line 1614
    invoke-virtual {p0, p1, p2}, Lcom/braze/requests/framework/b;->d(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lcom/braze/requests/framework/b;J)Ljava/lang/String;
    .locals 2

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "New state after request error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/braze/requests/framework/b;->d(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lcom/braze/requests/framework/b;J)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "New state after request success\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/braze/requests/framework/b;->d(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Lcom/braze/requests/util/b;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/braze/requests/framework/b;->h:Lcom/braze/requests/util/b;

    return-object v0
.end method

.method public abstract a(J)V
.end method

.method public final a(JLcom/braze/requests/framework/h;)V
    .locals 17

    move-wide/from16 v7, p1

    const-string v0, "requestInfo"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/braze/requests/framework/b;->b()Lcom/braze/requests/util/d;

    move-result-object v6

    if-nez v6, :cond_0

    return-void

    .line 18
    :cond_0
    invoke-virtual {v6}, Lcom/braze/requests/util/d;->a()V

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/braze/requests/framework/b;->b()Lcom/braze/requests/util/d;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {v0, v7, v8}, Lcom/braze/requests/util/d;->a(J)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_2

    goto :goto_0

    .line 21
    :cond_2
    invoke-virtual {v6}, Lcom/braze/requests/util/d;->b()J

    move-result-wide v4

    .line 22
    sget-object v9, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    invoke-virtual/range {p0 .. p0}, Lcom/braze/requests/framework/b;->c()Z

    move-result v13

    new-instance v14, Lcom/braze/requests/framework/b$$ExternalSyntheticLambda3;

    move-object v0, v14

    move-object/from16 v1, p3

    move-wide/from16 v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/braze/requests/framework/b$$ExternalSyntheticLambda3;-><init>(Lcom/braze/requests/framework/h;JJLcom/braze/requests/util/d;)V

    const/4 v15, 0x3

    const/16 v16, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v10, p0

    invoke-static/range {v9 .. v16}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 23
    :goto_0
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v5, Lcom/braze/requests/framework/b$$ExternalSyntheticLambda4;

    move-object/from16 v9, p0

    invoke-direct {v5, v9, v7, v8}, Lcom/braze/requests/framework/b$$ExternalSyntheticLambda4;-><init>(Lcom/braze/requests/framework/b;J)V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public a(JLcom/braze/requests/framework/h;Lcom/braze/models/response/a;)V
    .locals 8

    const-string v0, "requestInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "apiResponse"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    instance-of p3, p4, Lcom/braze/models/response/g;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move-object p3, p4

    check-cast p3, Lcom/braze/models/response/g;

    goto :goto_0

    :cond_0
    move-object p3, v0

    :goto_0
    if-eqz p3, :cond_1

    .line 32
    iget-object v0, p3, Lcom/braze/models/response/g;->d:Lcom/braze/models/response/d;

    .line 33
    :cond_1
    iget-object p3, p4, Lcom/braze/models/response/a;->b:Ljava/lang/Long;

    if-eqz p3, :cond_2

    .line 34
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    goto :goto_1

    :cond_2
    const-wide/16 p3, 0x0

    .line 36
    :goto_1
    iput-wide p1, p0, Lcom/braze/requests/framework/b;->c:J

    .line 37
    instance-of v0, v0, Lcom/braze/models/response/h;

    if-nez v0, :cond_3

    add-long/2addr p3, p1

    .line 40
    invoke-virtual {p0}, Lcom/braze/requests/framework/b;->a()Lcom/braze/requests/util/b;

    move-result-object v0

    .line 41
    iget v1, v0, Lcom/braze/requests/util/b;->b:I

    .line 42
    invoke-virtual {v0, v1}, Lcom/braze/requests/util/b;->a(I)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr p3, v0

    .line 43
    iput-wide p3, p0, Lcom/braze/requests/framework/b;->f:J

    .line 44
    :cond_3
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/requests/framework/b;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/braze/requests/framework/b;->c()Z

    move-result v4

    new-instance v5, Lcom/braze/requests/framework/b$$ExternalSyntheticLambda7;

    invoke-direct {v5, p0, p1, p2}, Lcom/braze/requests/framework/b$$ExternalSyntheticLambda7;-><init>(Lcom/braze/requests/framework/b;J)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public a(JLcom/braze/requests/framework/h;Lcom/braze/models/response/g;)V
    .locals 8

    const-string v0, "requestInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "apiResponse"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/braze/requests/framework/b;->a()Lcom/braze/requests/util/b;

    move-result-object p3

    const/4 p4, 0x0

    .line 46
    iput p4, p3, Lcom/braze/requests/util/b;->f:I

    .line 47
    iput-wide p1, p0, Lcom/braze/requests/framework/b;->d:J

    .line 48
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/requests/framework/b;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/braze/requests/framework/b;->c()Z

    move-result v4

    new-instance v5, Lcom/braze/requests/framework/b$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0, p1, p2}, Lcom/braze/requests/framework/b$$ExternalSyntheticLambda5;-><init>(Lcom/braze/requests/framework/b;J)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final a(JLcom/braze/requests/n;)V
    .locals 9

    const-string v0, "request"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/braze/requests/framework/b;->b:Lcom/braze/dispatch/h;

    .line 2
    iget-object v0, v0, Lcom/braze/dispatch/h;->a:Lcom/braze/managers/u0;

    .line 3
    iget-object v0, v0, Lcom/braze/managers/u0;->l:Lcom/braze/events/d;

    .line 4
    invoke-interface {p3, v0}, Lcom/braze/requests/o;->a(Lcom/braze/events/d;)V

    .line 5
    iget-wide v0, p0, Lcom/braze/requests/framework/b;->g:J

    add-long v4, p1, v0

    .line 6
    new-instance v0, Lcom/braze/requests/framework/h;

    move-object v2, v0

    move-object v3, p3

    move-wide v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/braze/requests/framework/h;-><init>(Lcom/braze/requests/n;JJ)V

    .line 11
    iget-object p3, p0, Lcom/braze/requests/framework/b;->e:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    invoke-virtual {p0}, Lcom/braze/requests/framework/b;->c()Z

    move-result v5

    new-instance v6, Lcom/braze/requests/framework/b$$ExternalSyntheticLambda8;

    invoke-direct {v6, p0, p1, p2}, Lcom/braze/requests/framework/b$$ExternalSyntheticLambda8;-><init>(Lcom/braze/requests/framework/b;J)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final b()Lcom/braze/requests/util/d;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/braze/requests/framework/b;->b:Lcom/braze/dispatch/h;

    .line 2
    iget-object v0, v0, Lcom/braze/dispatch/h;->a:Lcom/braze/managers/u0;

    .line 3
    iget-object v0, v0, Lcom/braze/managers/u0;->m:Lcom/braze/storage/e0;

    .line 4
    iget-object v1, v0, Lcom/braze/storage/e0;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    :try_start_0
    iget-object v2, v0, Lcom/braze/storage/e0;->e:Lcom/braze/models/response/m;

    if-eqz v2, :cond_0

    .line 7
    iget-object v2, v2, Lcom/braze/models/response/m;->E:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/braze/storage/e0;->w()Ljava/util/LinkedHashMap;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 10
    iget-object v0, p0, Lcom/braze/requests/framework/b;->a:Lcom/braze/requests/m;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/braze/models/response/j;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/braze/requests/framework/b;->i:Lcom/braze/requests/util/d;

    return-object v0

    .line 16
    :cond_2
    iget-object v1, p0, Lcom/braze/requests/framework/b;->i:Lcom/braze/requests/util/d;

    .line 17
    iget v2, v0, Lcom/braze/models/response/j;->b:I

    .line 18
    iget v0, v0, Lcom/braze/models/response/j;->a:I

    if-nez v1, :cond_3

    .line 19
    new-instance v1, Lcom/braze/requests/util/d;

    .line 23
    iget-object v3, p0, Lcom/braze/requests/framework/b;->b:Lcom/braze/dispatch/h;

    .line 25
    iget-object v4, p0, Lcom/braze/requests/framework/b;->a:Lcom/braze/requests/m;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 26
    const-string v5, "dispatchDataProvider"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "filePrefix"

    const-string v6, "com.braze.endpointqueue.tokenbucket"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "specificName"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v3, v3, Lcom/braze/dispatch/h;->a:Lcom/braze/managers/u0;

    .line 28
    iget-object v5, v3, Lcom/braze/managers/u0;->a:Landroid/content/Context;

    .line 29
    iget-object v6, v3, Lcom/braze/managers/u0;->g:Ljava/lang/String;

    .line 30
    iget-object v3, v3, Lcom/braze/managers/u0;->h:Ljava/lang/String;

    .line 31
    invoke-static {v5, v6, v3}, Lcom/braze/support/StringUtils;->getCacheFileSuffix(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 32
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "com.braze.endpointqueue.tokenbucket."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 33
    invoke-virtual {v5, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "getSharedPreferences(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {v1, v0, v2, v3}, Lcom/braze/requests/util/d;-><init>(IILandroid/content/SharedPreferences;)V

    goto :goto_0

    .line 44
    :cond_3
    invoke-virtual {v1, v0, v2}, Lcom/braze/requests/util/d;->a(II)V

    .line 46
    :goto_0
    iput-object v1, p0, Lcom/braze/requests/framework/b;->i:Lcom/braze/requests/util/d;

    return-object v1

    :catchall_0
    move-exception v0

    .line 47
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final b(J)V
    .locals 11

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/braze/requests/framework/b;->a(J)V

    .line 53
    iget-object v0, p0, Lcom/braze/requests/framework/b;->e:Ljava/util/ArrayList;

    .line 223
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 224
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

    .line 225
    iget-object v3, v3, Lcom/braze/requests/framework/h;->d:Lcom/braze/requests/framework/i;

    .line 226
    sget-object v4, Lcom/braze/requests/framework/i;->d:Lcom/braze/requests/framework/i;

    if-ne v3, v4, :cond_0

    .line 397
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 398
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 399
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/braze/requests/framework/h;

    .line 400
    iget v1, v1, Lcom/braze/requests/framework/h;->h:I

    .line 401
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/braze/requests/framework/h;

    .line 402
    iget v2, v2, Lcom/braze/requests/framework/h;->h:I

    if-ge v1, v2, :cond_2

    move v1, v2

    goto :goto_1

    .line 403
    :cond_3
    iget-object v0, p0, Lcom/braze/requests/framework/b;->e:Ljava/util/ArrayList;

    .line 574
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 575
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/braze/requests/framework/h;

    .line 576
    iget-object v4, v4, Lcom/braze/requests/framework/h;->d:Lcom/braze/requests/framework/i;

    .line 577
    invoke-virtual {v4}, Lcom/braze/requests/framework/i;->a()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 748
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 750
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/braze/requests/framework/h;

    .line 751
    iput v1, v2, Lcom/braze/requests/framework/h;->h:I

    .line 752
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    invoke-virtual {p0}, Lcom/braze/requests/framework/b;->c()Z

    move-result v7

    new-instance v8, Lcom/braze/requests/framework/b$$ExternalSyntheticLambda1;

    invoke-direct {v8, v2, p1, p2, v1}, Lcom/braze/requests/framework/b$$ExternalSyntheticLambda1;-><init>(Lcom/braze/requests/framework/h;JI)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p0

    invoke-static/range {v3 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_3

    .line 753
    :cond_6
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    .line 762
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 765
    iget-object v1, p0, Lcom/braze/requests/framework/b;->e:Ljava/util/ArrayList;

    .line 930
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 931
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/braze/requests/framework/h;

    .line 932
    iget-object v4, v4, Lcom/braze/requests/framework/h;->d:Lcom/braze/requests/framework/i;

    .line 933
    sget-object v5, Lcom/braze/requests/framework/i;->d:Lcom/braze/requests/framework/i;

    if-eq v4, v5, :cond_9

    sget-object v5, Lcom/braze/requests/framework/i;->e:Lcom/braze/requests/framework/i;

    if-ne v4, v5, :cond_8

    .line 1099
    :cond_9
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1100
    :cond_a
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1104
    iget-object v1, p0, Lcom/braze/requests/framework/b;->e:Ljava/util/ArrayList;

    .line 1268
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1269
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/braze/requests/framework/h;

    .line 1270
    iget v5, v4, Lcom/braze/requests/framework/h;->h:I

    const/16 v6, 0xf

    if-lt v5, v6, :cond_b

    .line 1271
    iget-object v4, v4, Lcom/braze/requests/framework/h;->d:Lcom/braze/requests/framework/i;

    .line 1272
    invoke-virtual {v4}, Lcom/braze/requests/framework/i;->a()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1436
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1437
    :cond_c
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1605
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/braze/requests/framework/h;

    .line 1606
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/requests/framework/b;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/braze/requests/framework/b;->c()Z

    move-result v7

    new-instance v8, Lcom/braze/requests/framework/b$$ExternalSyntheticLambda2;

    invoke-direct {v8, v2, p1, p2}, Lcom/braze/requests/framework/b$$ExternalSyntheticLambda2;-><init>(Lcom/braze/requests/framework/h;J)V

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 1607
    iget-object v2, v2, Lcom/braze/requests/framework/h;->a:Lcom/braze/requests/n;

    .line 1608
    iget-object v3, p0, Lcom/braze/requests/framework/b;->b:Lcom/braze/dispatch/h;

    .line 1609
    iget-object v3, v3, Lcom/braze/dispatch/h;->a:Lcom/braze/managers/u0;

    .line 1610
    iget-object v3, v3, Lcom/braze/managers/u0;->l:Lcom/braze/events/d;

    .line 1611
    invoke-interface {v2, v3}, Lcom/braze/requests/o;->a(Lcom/braze/events/e;)V

    goto :goto_6

    .line 1613
    :cond_d
    iget-object p1, p0, Lcom/braze/requests/framework/b;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final c(J)V
    .locals 12

    .line 2
    iget-object v0, p0, Lcom/braze/requests/framework/b;->e:Ljava/util/ArrayList;

    .line 117
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 118
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

    .line 119
    iget-object v3, v3, Lcom/braze/requests/framework/h;->d:Lcom/braze/requests/framework/i;

    .line 120
    invoke-virtual {v3}, Lcom/braze/requests/framework/i;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 235
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 237
    :cond_1
    new-instance v0, Lcom/braze/requests/framework/a;

    invoke-direct {v0}, Lcom/braze/requests/framework/a;-><init>()V

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 238
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    .line 241
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    :goto_1
    if-ge v2, v1, :cond_2

    .line 242
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/braze/requests/framework/h;

    .line 243
    sget-object v4, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v5, Lcom/braze/requests/framework/b;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/braze/requests/framework/b;->c()Z

    move-result v8

    new-instance v9, Lcom/braze/requests/framework/b$$ExternalSyntheticLambda0;

    invoke-direct {v9, v3}, Lcom/braze/requests/framework/b$$ExternalSyntheticLambda0;-><init>(Lcom/braze/requests/framework/h;)V

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v11}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 244
    sget-object v4, Lcom/braze/requests/framework/i;->d:Lcom/braze/requests/framework/i;

    invoke-virtual {v3, p1, p2, v4}, Lcom/braze/requests/framework/h;->a(JLcom/braze/requests/framework/i;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d(J)Ljava/lang/String;
    .locals 9

    .line 2
    iget-object v0, p0, Lcom/braze/requests/framework/b;->e:Ljava/util/ArrayList;

    new-instance v6, Lcom/braze/requests/framework/b$$ExternalSyntheticLambda6;

    invoke-direct {v6, p1, p2}, Lcom/braze/requests/framework/b$$ExternalSyntheticLambda6;-><init>(J)V

    const/16 v7, 0x1e

    const/4 v8, 0x0

    const-string v1, "\n\n"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n            |EndpointQueue: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Lcom/braze/requests/framework/b;->a:Lcom/braze/requests/m;

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6
    const-string v2, "\n            |   lastFailureAt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8
    iget-wide v2, p0, Lcom/braze/requests/framework/b;->c:J

    sub-long/2addr v2, p1

    .line 9
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10
    const-string v2, "\n            |   lastSuccessAt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 13
    iget-wide v2, p0, Lcom/braze/requests/framework/b;->d:J

    sub-long/2addr v2, p1

    .line 14
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 15
    const-string v2, "\n            |   failureBackoffUntil = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 19
    iget-wide v2, p0, Lcom/braze/requests/framework/b;->f:J

    sub-long/2addr v2, p1

    .line 20
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 21
    const-string p2, "\n            |   pendingWaitDuration = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 22
    iget-wide v1, p0, Lcom/braze/requests/framework/b;->g:J

    .line 23
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 24
    const-string p2, "\n            |   endpointRateLimiter = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 30
    iget-object p2, p0, Lcom/braze/requests/framework/b;->i:Lcom/braze/requests/util/d;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/braze/requests/util/d;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    :cond_0
    const-string p2, "unset"

    .line 31
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 32
    const-string p2, "\n            |   requestInfoQueue: \n            |"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 33
    const-string p2, "\n        "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 42
    invoke-static {p1, v0, p2, v0}, Lkotlin/text/StringsKt;->trimMargin$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
