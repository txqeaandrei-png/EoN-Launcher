.class public Lcom/microsoft/xbox/toolkit/SoundManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/toolkit/SoundManager$SoundManagerHolder;
    }
.end annotation


# static fields
.field private static final MAX_STREAM_SIZE:I = 0xe

.field private static final NO_LOOP:I


# instance fields
.field private final audioManager:Landroid/media/AudioManager;

.field private final context:Landroid/content/Context;

.field private isEnabled:Z

.field private final recentlyPlayedResourceIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final resourceSoundIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final soundPool:Landroid/media/SoundPool;


# direct methods
.method private constructor <init>()V
    .locals 5

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->resourceSoundIdMap:Ljava/util/HashMap;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->recentlyPlayedResourceIds:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->isEnabled:Z

    .line 34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sget-object v2, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "You must access sound manager on UI thread."

    invoke-static {v2, v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Ljava/lang/String;Z)V

    .line 35
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->context:Landroid/content/Context;

    .line 36
    new-instance v2, Landroid/media/SoundPool;

    const/16 v3, 0xe

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4, v0}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v2, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->soundPool:Landroid/media/SoundPool;

    .line 37
    const-string v0, "audio"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->audioManager:Landroid/media/AudioManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/microsoft/xbox/toolkit/SoundManager-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/SoundManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/microsoft/xbox/toolkit/SoundManager;
    .locals 1

    .line 41
    sget-object v0, Lcom/microsoft/xbox/toolkit/SoundManager$SoundManagerHolder;->instance:Lcom/microsoft/xbox/toolkit/SoundManager;

    return-object v0
.end method


# virtual methods
.method public clearMostRecentlyPlayedResourceIds()V
    .locals 0

    return-void
.end method

.method public getMostRecentlyPlayedResourceIds()[Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    .line 48
    new-array v0, v0, [Ljava/lang/Integer;

    return-object v0
.end method

.method public loadSound(I)V
    .locals 5

    .line 58
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->resourceSoundIdMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->resourceSoundIdMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->soundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->context:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p1, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public playSound(I)V
    .locals 8

    .line 65
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->isEnabled:Z

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->resourceSoundIdMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->soundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    .line 68
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->resourceSoundIdMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->resourceSoundIdMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    move v2, v0

    .line 73
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->audioManager:Landroid/media/AudioManager;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-float v0, v0

    div-float v4, p1, v0

    .line 74
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->soundPool:Landroid/media/SoundPool;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    move v3, v4

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->isEnabled:Z

    if-eq v0, p1, :cond_0

    .line 53
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->isEnabled:Z

    :cond_0
    return-void
.end method
