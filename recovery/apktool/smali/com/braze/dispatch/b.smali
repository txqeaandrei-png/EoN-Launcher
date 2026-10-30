.class public final Lcom/braze/dispatch/b;
.super Landroid/net/ConnectivityManager$NetworkCallback;


# instance fields
.field public final synthetic a:Lcom/braze/dispatch/f;


# direct methods
.method public constructor <init>(Lcom/braze/dispatch/f;)V
    .locals 0

    iput-object p1, p0, Lcom/braze/dispatch/b;->a:Lcom/braze/dispatch/f;

    .line 1
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkCapabilities"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 2
    iget-object p1, p0, Lcom/braze/dispatch/b;->a:Lcom/braze/dispatch/f;

    .line 3
    invoke-virtual {p1, p2}, Lcom/braze/dispatch/f;->a(Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 2

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 2
    iget-object p1, p0, Lcom/braze/dispatch/b;->a:Lcom/braze/dispatch/f;

    .line 3
    iget-object p1, p1, Lcom/braze/dispatch/f;->i:Landroid/net/ConnectivityManager;

    .line 4
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/braze/dispatch/b;->a:Lcom/braze/dispatch/f;

    .line 6
    iget-object v1, v0, Lcom/braze/dispatch/f;->i:Landroid/net/ConnectivityManager;

    .line 7
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    .line 8
    invoke-virtual {v0, p1}, Lcom/braze/dispatch/f;->a(Landroid/net/NetworkCapabilities;)V

    return-void
.end method
