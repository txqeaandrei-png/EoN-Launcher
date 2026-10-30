.class Lcom/xbox/httpclient/HttpClientRequest$1;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xbox/httpclient/HttpClientRequest;->doRequestAsync(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xbox/httpclient/HttpClientRequest;

.field final synthetic val$j:J


# direct methods
.method constructor <init>(Lcom/xbox/httpclient/HttpClientRequest;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/xbox/httpclient/HttpClientRequest$1;->this$0:Lcom/xbox/httpclient/HttpClientRequest;

    iput-wide p2, p0, Lcom/xbox/httpclient/HttpClientRequest$1;->val$j:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3

    .line 56
    iget-object p1, p0, Lcom/xbox/httpclient/HttpClientRequest$1;->this$0:Lcom/xbox/httpclient/HttpClientRequest;

    iget-wide v0, p0, Lcom/xbox/httpclient/HttpClientRequest$1;->val$j:J

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    instance-of p2, p2, Ljava/net/UnknownHostException;

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/xbox/httpclient/HttpClientRequest;->OnRequestFailed(JLjava/lang/String;Z)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 5

    .line 61
    iget-object p1, p0, Lcom/xbox/httpclient/HttpClientRequest$1;->this$0:Lcom/xbox/httpclient/HttpClientRequest;

    .line 62
    iget-wide v0, p0, Lcom/xbox/httpclient/HttpClientRequest$1;->val$j:J

    new-instance v2, Lcom/xbox/httpclient/HttpClientResponse;

    iget-wide v3, p0, Lcom/xbox/httpclient/HttpClientRequest$1;->val$j:J

    invoke-direct {v2, v3, v4, p2}, Lcom/xbox/httpclient/HttpClientResponse;-><init>(JLokhttp3/Response;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/xbox/httpclient/HttpClientRequest;->OnRequestCompleted(JLcom/xbox/httpclient/HttpClientResponse;)V

    return-void
.end method
