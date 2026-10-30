.class public Lcom/xbox/httpclient/HttpClientRequest;
.super Ljava/lang/Object;


# static fields
.field private static final NO_BODY:[B

.field private static final OK_CLIENT:Lokhttp3/OkHttpClient;


# instance fields
.field private requestBuilder:Lokhttp3/Request$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 24
    new-array v1, v0, [B

    sput-object v1, Lcom/xbox/httpclient/HttpClientRequest;->NO_BODY:[B

    .line 25
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/xbox/httpclient/HttpClientRequest;->OK_CLIENT:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iput-object v0, p0, Lcom/xbox/httpclient/HttpClientRequest;->requestBuilder:Lokhttp3/Request$Builder;

    return-void
.end method


# virtual methods
.method public native OnRequestCompleted(JLcom/xbox/httpclient/HttpClientResponse;)V
.end method

.method public native OnRequestFailed(JLjava/lang/String;Z)V
.end method

.method public doRequestAsync(J)V
    .locals 2

    .line 53
    sget-object v0, Lcom/xbox/httpclient/HttpClientRequest;->OK_CLIENT:Lokhttp3/OkHttpClient;

    iget-object v1, p0, Lcom/xbox/httpclient/HttpClientRequest;->requestBuilder:Lokhttp3/Request$Builder;

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/xbox/httpclient/HttpClientRequest$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/xbox/httpclient/HttpClientRequest$1;-><init>(Lcom/xbox/httpclient/HttpClientRequest;J)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public setHttpHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/xbox/httpclient/HttpClientRequest;->requestBuilder:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/xbox/httpclient/HttpClientRequest;->requestBuilder:Lokhttp3/Request$Builder;

    return-void
.end method

.method public setHttpMethodAndBody(Ljava/lang/String;JLjava/lang/String;J)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-nez v0, :cond_2

    .line 39
    const-string p2, "POST"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    const-string p2, "PUT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 40
    :cond_0
    sget-object p2, Lcom/xbox/httpclient/HttpClientRequest;->NO_BODY:[B

    if-eqz p4, :cond_1

    invoke-static {p4}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p3

    :cond_1
    invoke-static {p2, p3}, Lokhttp3/RequestBody;->create([BLokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p3

    goto :goto_0

    .line 43
    :cond_2
    new-instance v6, Lcom/xbox/httpclient/HttpClientRequestBody;

    move-object v0, v6

    move-wide v1, p2

    move-object v3, p4

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/xbox/httpclient/HttpClientRequestBody;-><init>(JLjava/lang/String;J)V

    move-object p3, v6

    .line 45
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/xbox/httpclient/HttpClientRequest;->requestBuilder:Lokhttp3/Request$Builder;

    invoke-virtual {p2, p1, p3}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    return-void
.end method

.method public setHttpUrl(Ljava/lang/String;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/xbox/httpclient/HttpClientRequest;->requestBuilder:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/xbox/httpclient/HttpClientRequest;->requestBuilder:Lokhttp3/Request$Builder;

    return-void
.end method
