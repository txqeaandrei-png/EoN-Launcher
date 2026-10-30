.class public final Lcom/braze/triggers/events/g;
.super Lcom/braze/triggers/events/i;


# instance fields
.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/braze/models/outgoing/event/push/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/braze/triggers/events/i;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/braze/triggers/events/i;->c:Lcom/braze/models/i;

    .line 3
    invoke-static {p1}, Lcom/braze/triggers/events/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/triggers/events/g;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "push_click"

    return-object v0
.end method
