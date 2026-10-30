.class public final Lcom/microsoft/xboxtcui/XboxTcuiSdk;
.super Ljava/lang/Object;


# static fields
.field private static activity:Landroid/app/Activity;

.field private static applicationContext:Landroid/content/Context;

.field private static assetManager:Landroid/content/res/AssetManager;

.field private static contentResolver:Landroid/content/ContentResolver;

.field private static resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivity()Landroid/app/Activity;
    .locals 1

    .line 32
    sget-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 33
    sget-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 37
    sget-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 38
    sget-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 39
    sget-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->applicationContext:Landroid/content/Context;

    .line 41
    :cond_0
    sget-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getAssetManager()Landroid/content/res/AssetManager;
    .locals 1

    .line 66
    sget-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 67
    sget-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->assetManager:Landroid/content/res/AssetManager;

    if-nez v0, :cond_0

    .line 68
    sget-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->assetManager:Landroid/content/res/AssetManager;

    .line 70
    :cond_0
    sget-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->assetManager:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public static getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .line 58
    sget-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 59
    sget-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->contentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    .line 60
    sget-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->contentResolver:Landroid/content/ContentResolver;

    .line 62
    :cond_0
    sget-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->contentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public static getIsTablet()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getResources()Landroid/content/res/Resources;
    .locals 1

    .line 45
    sget-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 46
    sget-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->resources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 47
    sget-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->resources:Landroid/content/res/Resources;

    .line 49
    :cond_0
    sget-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->resources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public static getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 53
    sget-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 54
    sget-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized sdkInitialize(Landroid/app/Activity;)V
    .locals 2

    const-class v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;

    monitor-enter v0

    .line 25
    :try_start_0
    const-class v1, Lcom/microsoft/xboxtcui/XboxTcuiSdk;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    :try_start_1
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 27
    sput-object p0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->activity:Landroid/app/Activity;

    .line 28
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 28
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method
