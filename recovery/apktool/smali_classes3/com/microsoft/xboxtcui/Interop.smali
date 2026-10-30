.class public Lcom/microsoft/xboxtcui/Interop;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "Interop"

.field public static final detachedCallback:Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$DetachedCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/microsoft/xboxtcui/Interop$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/microsoft/xboxtcui/Interop$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/microsoft/xboxtcui/Interop;->detachedCallback:Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$DetachedCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ShowAddFriends(Landroid/content/Context;)V
    .locals 2

    .line 91
    const-string v0, "Interop"

    const-string v1, "Deeplink - ShowAddFriends"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static {p0}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->showAddFriends(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 93
    invoke-static {p0}, Lcom/microsoft/xboxtcui/Interop;->tcui_completed_callback(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 95
    invoke-static {p0}, Lcom/microsoft/xboxtcui/Interop;->tcui_completed_callback(I)V

    :goto_0
    return-void
.end method

.method public static ShowProfileCardUI(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TCUI- ShowProfileCardUI: meXuid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Interop"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "TCUI- ShowProfileCardUI: targeProfileXuid:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "TCUI- ShowProfileCardUI: privileges:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {}, Lcom/microsoft/xboxtcui/Interop;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 38
    :cond_0
    new-instance v1, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    invoke-direct {v1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;-><init>()V

    .line 39
    invoke-virtual {v1, p1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->putMeXuid(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1, p2}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->putSelectedProfile(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1, p3}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->putPrivileges(Ljava/lang/String;)V

    .line 42
    new-instance p1, Lcom/microsoft/xboxtcui/Interop$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0, v1}, Lcom/microsoft/xboxtcui/Interop$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static ShowTitleAchievements(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 73
    const-string v0, "Interop"

    const-string v1, "Deeplink - ShowTitleAchievements"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {p0, p1}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->showTitleAchievements(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 75
    invoke-static {p0}, Lcom/microsoft/xboxtcui/Interop;->tcui_completed_callback(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 77
    invoke-static {p0}, Lcom/microsoft/xboxtcui/Interop;->tcui_completed_callback(I)V

    :goto_0
    return-void
.end method

.method public static ShowTitleHub(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 64
    const-string v0, "Interop"

    const-string v1, "Deeplink - ShowTitleHub"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {p0, p1}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->showTitleHub(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 66
    invoke-static {p0}, Lcom/microsoft/xboxtcui/Interop;->tcui_completed_callback(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 68
    invoke-static {p0}, Lcom/microsoft/xboxtcui/Interop;->tcui_completed_callback(I)V

    :goto_0
    return-void
.end method

.method public static ShowUserProfile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 55
    const-string v0, "Interop"

    const-string v1, "Deeplink - ShowUserProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {p0, p1}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->showUserProfile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 57
    invoke-static {p0}, Lcom/microsoft/xboxtcui/Interop;->tcui_completed_callback(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 59
    invoke-static {p0}, Lcom/microsoft/xboxtcui/Interop;->tcui_completed_callback(I)V

    :goto_0
    return-void
.end method

.method public static ShowUserSettings(Landroid/content/Context;)V
    .locals 2

    .line 82
    const-string v0, "Interop"

    const-string v1, "Deeplink - ShowUserSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static {p0}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->showUserSettings(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 84
    invoke-static {p0}, Lcom/microsoft/xboxtcui/Interop;->tcui_completed_callback(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 86
    invoke-static {p0}, Lcom/microsoft/xboxtcui/Interop;->tcui_completed_callback(I)V

    :goto_0
    return-void
.end method

.method private static getForegroundActivity()Landroid/app/Activity;
    .locals 6

    const/4 v0, 0x0

    .line 102
    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 103
    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 104
    const-string v3, "mActivities"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x1

    .line 105
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 107
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 108
    const-string v5, "paused"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 109
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 110
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 111
    const-string v1, "activity"

    invoke-virtual {v4, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 112
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 117
    const-string v2, "Interop"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method static synthetic lambda$ShowProfileCardUI$1(Landroid/app/Activity;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    .locals 2

    .line 44
    :try_start_0
    new-instance v0, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;

    const-class v1, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreen;

    invoke-direct {v0, p0, v1, p1}, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;-><init>(Landroid/app/Activity;Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    .line 45
    sget-object p0, Lcom/microsoft/xboxtcui/Interop;->detachedCallback:Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$DetachedCallback;

    invoke-virtual {v0, p0}, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->setDetachedCallback(Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$DetachedCallback;)V

    .line 46
    invoke-virtual {v0}, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 48
    const-string p1, "Interop"

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 49
    invoke-static {p0}, Lcom/microsoft/xboxtcui/Interop;->tcui_completed_callback(I)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$static$0()V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-static {v0}, Lcom/microsoft/xboxtcui/Interop;->tcui_completed_callback(I)V

    return-void
.end method

.method public static native tcui_completed_callback(I)V
.end method
