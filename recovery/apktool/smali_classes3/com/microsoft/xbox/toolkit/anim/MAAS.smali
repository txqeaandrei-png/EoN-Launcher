.class public Lcom/microsoft/xbox/toolkit/anim/MAAS;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;
    }
.end annotation


# static fields
.field private static final instance:Lcom/microsoft/xbox/toolkit/anim/MAAS;


# instance fields
.field private final ASSET_FILENAME:Ljava/lang/String;

.field private final SDCARD_FILENAME:Ljava/lang/String;

.field private final maasFileCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private final usingSdcard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/MAAS;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/anim/MAAS;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/toolkit/anim/MAAS;->instance:Lcom/microsoft/xbox/toolkit/anim/MAAS;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "animation/%sAnimation.xml"

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/MAAS;->ASSET_FILENAME:Ljava/lang/String;

    .line 22
    const-string v0, "/sdcard/bishop/maas/%sAnimation.xml"

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/MAAS;->SDCARD_FILENAME:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/MAAS;->maasFileCache:Ljava/util/Hashtable;

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/anim/MAAS;->usingSdcard:Z

    return-void
.end method

.method public static getInstance()Lcom/microsoft/xbox/toolkit/anim/MAAS;
    .locals 1

    .line 27
    sget-object v0, Lcom/microsoft/xbox/toolkit/anim/MAAS;->instance:Lcom/microsoft/xbox/toolkit/anim/MAAS;

    return-object v0
.end method

.method private getMAASFile(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/MAAS;->maasFileCache:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/toolkit/anim/MAAS;->loadMAASFile(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/anim/MAAS;->maasFileCache:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/MAAS;->maasFileCache:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;

    return-object p1
.end method

.method private loadMAASFile(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;
    .locals 2

    .line 48
    :try_start_0
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getAssetManager()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "animation/%sAnimation.xml"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 53
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XMLHelper;->instance()Lcom/microsoft/xbox/toolkit/XMLHelper;

    move-result-object v0

    const-class v1, Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;

    invoke-virtual {v0, p1, v1}, Lcom/microsoft/xbox/toolkit/XMLHelper;->load(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getAnimation(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;
    .locals 0

    if-eqz p1, :cond_0

    .line 32
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/toolkit/anim/MAAS;->getMAASFile(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;

    move-result-object p1

    return-object p1

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
