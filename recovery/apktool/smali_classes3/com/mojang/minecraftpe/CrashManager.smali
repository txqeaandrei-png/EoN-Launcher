.class public Lcom/mojang/minecraftpe/CrashManager;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeNotifyUncaughtException()Ljava/lang/String;
.end method

.method private uploadCrashFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getCrashUploadURI()Ljava/lang/String;
    .locals 1

    .line 16
    const-string v0, "http://localhost:1234/"

    return-object v0
.end method

.method public getExceptionUploadURI()Ljava/lang/String;
    .locals 1

    .line 20
    const-string v0, "http://localhost:1234/"

    return-object v0
.end method

.method public installGlobalExceptionHandler()V
    .locals 0

    return-void
.end method
