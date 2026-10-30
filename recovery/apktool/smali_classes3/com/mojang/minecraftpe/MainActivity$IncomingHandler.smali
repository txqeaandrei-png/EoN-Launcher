.class Lcom/mojang/minecraftpe/MainActivity$IncomingHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mojang/minecraftpe/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/minecraftpe/MainActivity;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/MainActivity;)V
    .locals 0

    .line 1877
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$IncomingHandler;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 1880
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x345

    if-ne v0, v1, :cond_2

    .line 1881
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$IncomingHandler;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1882
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$IncomingHandler;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v1}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1883
    const-string v2, ""

    const-string v3, "deviceId"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1885
    :try_start_0
    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity$IncomingHandler;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v2}, Lcom/mojang/minecraftpe/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-wide v6, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 1886
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1887
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "sessionId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1888
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    cmp-long p1, v6, v9

    if-lez p1, :cond_0

    .line 1890
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1891
    iget-object v5, p0, Lcom/mojang/minecraftpe/MainActivity$IncomingHandler;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual/range {v5 .. v11}, Lcom/mojang/minecraftpe/MainActivity;->nativeDeviceCorrelation(JLjava/lang/String;JLjava/lang/String;)V

    .line 1893
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1894
    const-string v0, "correlationAttempts"

    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1895
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1896
    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$IncomingHandler;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object p1, p1, Lcom/mojang/minecraftpe/MainActivity;->mBound:Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;

    sget-object v0, Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;->CONNECTED:Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;

    if-eq p1, v0, :cond_1

    return-void

    .line 1899
    :cond_1
    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$IncomingHandler;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {p1}, Lcom/mojang/minecraftpe/MainActivity;->-$$Nest$fgetmConnection(Lcom/mojang/minecraftpe/MainActivity;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mojang/minecraftpe/MainActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 1905
    :cond_2
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
