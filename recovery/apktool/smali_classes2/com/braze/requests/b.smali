.class public abstract Lcom/braze/requests/b;
.super Lcom/braze/requests/s;

# interfaces
.implements Lcom/braze/requests/n;


# instance fields
.field public b:Ljava/lang/String;

.field public final c:Lcom/braze/storage/e0;

.field public d:Ljava/lang/Long;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Lcom/braze/models/outgoing/h;

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/braze/requests/util/c;Ljava/lang/String;Lcom/braze/storage/e0;)V
    .locals 1

    const-string v0, "requestTarget"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverConfigStorageProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/braze/requests/s;-><init>(Lcom/braze/requests/util/c;)V

    .line 2
    iput-object p2, p0, Lcom/braze/requests/b;->b:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/braze/requests/b;->c:Lcom/braze/storage/e0;

    return-void
.end method

.method public static final a(Lcom/braze/requests/b;)Ljava/lang/String;
    .locals 2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ">> Request Uri: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/braze/requests/b;->e()Lcom/braze/requests/util/c;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Error occurred while executing Braze request: "

    invoke-static {v0, p0}, Lcom/braze/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lcom/braze/requests/b;)Ljava/lang/String;
    .locals 2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ">> API key    : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    iget-object p0, p0, Lcom/braze/requests/b;->f:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lcom/braze/requests/b;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/braze/requests/n;->c()Lcom/braze/requests/m;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " executed successfully."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final d()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Experienced JSONException while retrieving parameters. Returning null."

    return-object v0
.end method

.method public static final f()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "******************************************************************"

    return-object v0
.end method

.method public static final g()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "******************************************************************"

    return-object v0
.end method

.method public static final h()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "**                        !! WARNING !!                         **"

    return-object v0
.end method

.method public static final i()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "**  The current API key/endpoint combination is invalid. This   **"

    return-object v0
.end method

.method public static final j()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "** is potentially an integration error. Please ensure that your **"

    return-object v0
.end method

.method public static final k()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "**     API key AND custom endpoint information are correct.     **"

    return-object v0
.end method


# virtual methods
.method public a(Lcom/braze/events/d;)V
    .locals 2

    const-string v0, "internalPublisher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    new-instance v0, Lcom/braze/events/internal/r;

    invoke-direct {v0, p0}, Lcom/braze/events/internal/r;-><init>(Lcom/braze/requests/b;)V

    .line 155
    const-class v1, Lcom/braze/events/internal/r;

    invoke-virtual {p1, v0, v1}, Lcom/braze/events/d;->b(Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method

.method public a(Lcom/braze/events/e;)V
    .locals 2

    const-string v0, "internalPublisher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    new-instance v0, Lcom/braze/events/internal/q;

    invoke-direct {v0, p0}, Lcom/braze/events/internal/q;-><init>(Lcom/braze/requests/b;)V

    .line 157
    check-cast p1, Lcom/braze/events/d;

    const-class v1, Lcom/braze/events/internal/q;

    invoke-virtual {p1, v0, v1}, Lcom/braze/events/d;->b(Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method

.method public a(Lcom/braze/events/e;Lcom/braze/events/e;Lcom/braze/models/response/d;)V
    .locals 11

    const-string v0, "internalPublisher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "externalPublisher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseError"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-interface {p3}, Lcom/braze/models/response/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 134
    sget-object v9, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v10, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/requests/b$$ExternalSyntheticLambda3;

    invoke-direct {v6, v0}, Lcom/braze/requests/b$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v3, v10

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 135
    instance-of v0, p3, Lcom/braze/models/response/e;

    if-eqz v0, :cond_0

    .line 137
    check-cast p1, Lcom/braze/events/d;

    const-class v0, Lcom/braze/models/response/e;

    invoke-virtual {p1, p3, v0}, Lcom/braze/events/d;->b(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 139
    new-instance v6, Lcom/braze/requests/b$$ExternalSyntheticLambda4;

    invoke-direct {v6}, Lcom/braze/requests/b$$ExternalSyntheticLambda4;-><init>()V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v3, v10

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 140
    new-instance v6, Lcom/braze/requests/b$$ExternalSyntheticLambda5;

    invoke-direct {v6}, Lcom/braze/requests/b$$ExternalSyntheticLambda5;-><init>()V

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 141
    new-instance v6, Lcom/braze/requests/b$$ExternalSyntheticLambda6;

    invoke-direct {v6}, Lcom/braze/requests/b$$ExternalSyntheticLambda6;-><init>()V

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 142
    new-instance v6, Lcom/braze/requests/b$$ExternalSyntheticLambda7;

    invoke-direct {v6}, Lcom/braze/requests/b$$ExternalSyntheticLambda7;-><init>()V

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 143
    new-instance v6, Lcom/braze/requests/b$$ExternalSyntheticLambda8;

    invoke-direct {v6}, Lcom/braze/requests/b$$ExternalSyntheticLambda8;-><init>()V

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 144
    new-instance v6, Lcom/braze/requests/b$$ExternalSyntheticLambda9;

    invoke-direct {v6, p0}, Lcom/braze/requests/b$$ExternalSyntheticLambda9;-><init>(Lcom/braze/requests/b;)V

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 145
    new-instance v6, Lcom/braze/requests/b$$ExternalSyntheticLambda10;

    invoke-direct {v6, p0}, Lcom/braze/requests/b$$ExternalSyntheticLambda10;-><init>(Lcom/braze/requests/b;)V

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 146
    new-instance v6, Lcom/braze/requests/b$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/braze/requests/b$$ExternalSyntheticLambda1;-><init>()V

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 148
    :cond_0
    instance-of p1, p3, Lcom/braze/models/response/h;

    if-eqz p1, :cond_1

    .line 151
    new-instance p1, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;

    check-cast p3, Lcom/braze/models/response/h;

    invoke-direct {p1, p3}, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;-><init>(Lcom/braze/models/response/h;)V

    .line 152
    check-cast p2, Lcom/braze/events/d;

    const-class p3, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;

    invoke-virtual {p2, p1, p3}, Lcom/braze/events/d;->b(Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/braze/events/e;Lcom/braze/events/e;Lcom/braze/models/response/g;)V
    .locals 8

    const-string v0, "internalPublisher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "externalPublisher"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "apiResponse"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object p1, p3, Lcom/braze/models/response/g;->e:Lcom/braze/models/response/i;

    if-eqz p1, :cond_0

    .line 120
    new-instance p3, Lcom/braze/models/response/h;

    .line 121
    iget-object v0, p1, Lcom/braze/models/response/i;->a:Lcom/braze/requests/n;

    .line 122
    iget v1, p1, Lcom/braze/models/response/i;->b:I

    .line 123
    iget-object p1, p1, Lcom/braze/models/response/i;->c:Ljava/lang/String;

    const/4 v2, 0x0

    .line 124
    invoke-direct {p3, v0, v1, p1, v2}, Lcom/braze/models/response/h;-><init>(Lcom/braze/requests/n;ILjava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance p1, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;

    invoke-direct {p1, p3}, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;-><init>(Lcom/braze/models/response/h;)V

    .line 126
    check-cast p2, Lcom/braze/events/d;

    const-class p3, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;

    invoke-virtual {p2, p1, p3}, Lcom/braze/events/d;->b(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 131
    :cond_0
    invoke-interface {p0}, Lcom/braze/requests/n;->c()Lcom/braze/requests/m;

    move-result-object p1

    sget-object p2, Lcom/braze/requests/m;->n:Lcom/braze/requests/m;

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    move v4, p1

    .line 132
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v5, Lcom/braze/requests/b$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/braze/requests/b$$ExternalSyntheticLambda0;-><init>(Lcom/braze/requests/b;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 2

    const-string v0, "existingHeaders"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    const-string v0, "X-Braze-Api-Key"

    .line 159
    iget-object v1, p0, Lcom/braze/requests/b;->f:Ljava/lang/String;

    .line 160
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lcom/braze/requests/b;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    const-string v0, "X-Braze-Auth-Signature"

    .line 164
    iget-object v1, p0, Lcom/braze/requests/b;->i:Ljava/lang/String;

    .line 165
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .locals 9

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/braze/requests/b;->h:Lcom/braze/models/outgoing/h;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/braze/models/outgoing/h;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    const-string v2, "device"

    invoke-virtual {v1}, Lcom/braze/models/outgoing/h;->forJsonPut()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/braze/requests/b;->e:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 6
    const-string v2, "device_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/braze/requests/b;->d:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 8
    const-string v2, "time"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/braze/requests/b;->f:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 10
    const-string v2, "api_key"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/braze/requests/b;->g:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 12
    const-string v2, "sdk_version"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object v0

    :catch_0
    move-exception v0

    move-object v4, v0

    .line 16
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/requests/b$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lcom/braze/requests/b$$ExternalSyntheticLambda2;-><init>()V

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Lcom/braze/requests/util/c;
    .locals 3

    .line 1
    new-instance v0, Lcom/braze/requests/util/c;

    sget-object v1, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    iget-object v2, p0, Lcom/braze/requests/s;->a:Lcom/braze/requests/util/c;

    .line 2
    iget-object v2, v2, Lcom/braze/requests/util/c;->b:Landroid/net/Uri;

    .line 3
    invoke-virtual {v1, v2}, Lcom/braze/Braze$Companion;->getApiEndpoint(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/braze/requests/util/c;-><init>(Landroid/net/Uri;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/braze/requests/b;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/braze/support/JsonUtils;->getPrettyPrintedString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nto target: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/braze/requests/b;->e()Lcom/braze/requests/util/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
