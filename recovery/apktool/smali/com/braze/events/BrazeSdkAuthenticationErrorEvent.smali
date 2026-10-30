.class public final Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0008\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u0002H\u00c2\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001a\u0010\u000b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\u000e\u001a\u00020\rH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0014R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\nR\u0011\u0010\u0018\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u000fR\u0013\u0010\u001c\u001a\u0004\u0018\u00010\u00198F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001bR\u0013\u0010\u001e\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\nR\u0013\u0010 \u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\n\u00a8\u0006!"
    }
    d2 = {
        "Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;",
        "",
        "Lcom/braze/models/response/h;",
        "sdkAuthError",
        "<init>",
        "(Lcom/braze/models/response/h;)V",
        "component1",
        "()Lcom/braze/models/response/h;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "copy",
        "(Lcom/braze/models/response/h;)Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;",
        "",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Lcom/braze/models/response/h;",
        "getErrorReason",
        "errorReason",
        "getErrorCode",
        "errorCode",
        "",
        "getRequestInitiationTime",
        "()Ljava/lang/Long;",
        "requestInitiationTime",
        "getSignature",
        "signature",
        "getUserId",
        "userId",
        "android-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final sdkAuthError:Lcom/braze/models/response/h;


# direct methods
.method public constructor <init>(Lcom/braze/models/response/h;)V
    .locals 1

    const-string v0, "sdkAuthError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;->sdkAuthError:Lcom/braze/models/response/h;

    return-void
.end method

.method private final component1()Lcom/braze/models/response/h;
    .locals 1

    iget-object v0, p0, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;->sdkAuthError:Lcom/braze/models/response/h;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;Lcom/braze/models/response/h;ILjava/lang/Object;)Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;->sdkAuthError:Lcom/braze/models/response/h;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;->copy(Lcom/braze/models/response/h;)Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/braze/models/response/h;)Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;
    .locals 1

    const-string v0, "sdkAuthError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;

    invoke-direct {v0, p1}, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;-><init>(Lcom/braze/models/response/h;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;

    iget-object v1, p0, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;->sdkAuthError:Lcom/braze/models/response/h;

    iget-object p1, p1, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;->sdkAuthError:Lcom/braze/models/response/h;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getErrorCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;->sdkAuthError:Lcom/braze/models/response/h;

    .line 2
    iget v0, v0, Lcom/braze/models/response/h;->b:I

    return v0
.end method

.method public final getErrorReason()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;->sdkAuthError:Lcom/braze/models/response/h;

    .line 2
    iget-object v0, v0, Lcom/braze/models/response/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestInitiationTime()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;->sdkAuthError:Lcom/braze/models/response/h;

    .line 2
    iget-object v0, v0, Lcom/braze/models/response/h;->a:Lcom/braze/requests/n;

    .line 3
    check-cast v0, Lcom/braze/requests/b;

    .line 4
    iget-object v0, v0, Lcom/braze/requests/b;->d:Ljava/lang/Long;

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;->sdkAuthError:Lcom/braze/models/response/h;

    .line 2
    iget-object v0, v0, Lcom/braze/models/response/h;->a:Lcom/braze/requests/n;

    .line 3
    check-cast v0, Lcom/braze/requests/b;

    .line 4
    iget-object v0, v0, Lcom/braze/requests/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;->sdkAuthError:Lcom/braze/models/response/h;

    .line 2
    iget-object v0, v0, Lcom/braze/models/response/h;->a:Lcom/braze/requests/n;

    .line 3
    check-cast v0, Lcom/braze/requests/b;

    .line 4
    iget-object v0, v0, Lcom/braze/requests/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;->sdkAuthError:Lcom/braze/models/response/h;

    invoke-virtual {v0}, Lcom/braze/models/response/h;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;->sdkAuthError:Lcom/braze/models/response/h;

    invoke-virtual {v0}, Lcom/braze/models/response/h;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
