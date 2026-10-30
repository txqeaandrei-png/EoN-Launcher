.class public final Lcom/braze/support/PermissionUtils;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u001a\u0014\u0010\u0004\u001a\u00020\u0005*\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0001\u001a\u000c\u0010\u0008\u001a\u00020\t*\u0004\u0018\u00010\n\u001a\u000c\u0010\u000b\u001a\u00020\u0005*\u0004\u0018\u00010\n\u001a\u0016\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0001\u001a\u0016\u0010\u000f\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0001\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u0003\u001a\u00020\u00018\u0002X\u0083T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "TAG",
        "",
        "PERMISSION_STORAGE_PREFS_FILE",
        "NOTIFICATION_PERMISSION",
        "hasPermission",
        "",
        "Landroid/content/Context;",
        "permission",
        "requestPushPermissionPrompt",
        "",
        "Landroid/app/Activity;",
        "wouldPushPermissionPromptDisplay",
        "getPermissionRequestCount",
        "",
        "context",
        "incrementPermissionRequestCount",
        "android-sdk-base_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final NOTIFICATION_PERMISSION:Ljava/lang/String; = "android.permission.POST_NOTIFICATIONS"

.field private static final PERMISSION_STORAGE_PREFS_FILE:Ljava/lang/String; = "com.braze.support.permission_util.requested_perms"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$0OyDyRxH-f9VxLg_dWmpWMJcIdY()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/support/PermissionUtils;->requestPushPermissionPrompt$lambda$1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$0UjXLsYLP1VmT8AcX4na2-mEcWY(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/support/PermissionUtils;->wouldPushPermissionPromptDisplay$lambda$7(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$F_1hWxPM4thVydui1smQDIyetbc()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/support/PermissionUtils;->wouldPushPermissionPromptDisplay$lambda$8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$JYLpztStj2qpnS9roblOq3TF9qE(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/support/PermissionUtils;->incrementPermissionRequestCount$lambda$11(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Mo-Jg2Lf6y92Yb4SyAXDmAYofuA()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/support/PermissionUtils;->requestPushPermissionPrompt$lambda$2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$TnGcDhg8HI_odE7jLRkqrPWah9w(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/support/PermissionUtils;->wouldPushPermissionPromptDisplay$lambda$9(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XMCK2X-RNMFa4Ge29eGaF2Ln-2Q()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/support/PermissionUtils;->wouldPushPermissionPromptDisplay$lambda$6()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$dZXrqy_dOAYS9PGDcFpPsyq2mFU(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/support/PermissionUtils;->hasPermission$lambda$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eBKMbUtEz9b64pfeC1hMDB8oxqM()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/support/PermissionUtils;->wouldPushPermissionPromptDisplay$lambda$5()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$mu6J4Yd9XJP2687am3_xsruOrj4()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/support/PermissionUtils;->requestPushPermissionPrompt$lambda$3()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$q3L18xX0I8OAJoJjOUPKZvr7fhg()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/support/PermissionUtils;->requestPushPermissionPrompt$lambda$4()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$sG7tNlVxdA6pDvKH1U78bldkLLw()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/support/PermissionUtils;->wouldPushPermissionPromptDisplay$lambda$10()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    const-string v1, "PermissionUtils"

    invoke-virtual {v0, v1}, Lcom/braze/support/BrazeLogger;->getBrazeLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/braze/support/PermissionUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final getPermissionRequestCount(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "com.braze.support.permission_util.requested_perms"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static final hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9

    const-string v0, "permission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v4

    .line 3
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/PermissionUtils;->TAG:Ljava/lang/String;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/support/PermissionUtils$$ExternalSyntheticLambda0;

    invoke-direct {v6, p1}, Lcom/braze/support/PermissionUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_0
    :goto_0
    return v0
.end method

.method private static final hasPermission$lambda$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failure checking permission "

    invoke-static {v0, p0}, Lcom/braze/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final incrementPermissionRequestCount(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "com.braze.support.permission_util.requested_perms"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 3
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 4
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/PermissionUtils;->TAG:Ljava/lang/String;

    new-instance v6, Lcom/braze/support/PermissionUtils$$ExternalSyntheticLambda3;

    invoke-direct {v6, v0}, Lcom/braze/support/PermissionUtils$$ExternalSyntheticLambda3;-><init>(I)V

    const/16 v7, 0xe

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 5
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 6
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 7
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static final incrementPermissionRequestCount$lambda$11(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Incrementing permission request counter to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final requestPushPermissionPrompt(Landroid/app/Activity;)V
    .locals 12

    .line 1
    sget-object v8, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v9, Lcom/braze/support/PermissionUtils;->TAG:Ljava/lang/String;

    sget-object v10, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/support/PermissionUtils$$ExternalSyntheticLambda4;

    invoke-direct {v5}, Lcom/braze/support/PermissionUtils$$ExternalSyntheticLambda4;-><init>()V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v1, v9

    move-object v2, v10

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    if-nez p0, :cond_0

    .line 3
    new-instance v5, Lcom/braze/support/PermissionUtils$$ExternalSyntheticLambda5;

    invoke-direct {v5}, Lcom/braze/support/PermissionUtils$$ExternalSyntheticLambda5;-><init>()V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v1, v9

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    .line 8
    :cond_0
    invoke-static {p0}, Lcom/braze/support/PermissionUtils;->wouldPushPermissionPromptDisplay(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    const-string v11, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p0, v11}, Lcom/braze/support/PermissionUtils;->incrementPermissionRequestCount(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    new-instance v5, Lcom/braze/support/PermissionUtils$$ExternalSyntheticLambda6;

    invoke-direct {v5}, Lcom/braze/support/PermissionUtils$$ExternalSyntheticLambda6;-><init>()V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v1, v9

    move-object v2, v10

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    const/4 v0, 0x1

    .line 15
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v11, v0, v1

    invoke-static {}, Lcom/braze/support/IntentUtils;->getRequestCode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 16
    :cond_2
    :goto_0
    new-instance v5, Lcom/braze/support/PermissionUtils$$ExternalSyntheticLambda7;

    invoke-direct {v5}, Lcom/braze/support/PermissionUtils$$ExternalSyntheticLambda7;-><init>()V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v1, v9

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method private static final requestPushPermissionPrompt$lambda$1()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Attempting to execute requestPushPermissionPrompt()"

    return-object v0
.end method

.method private static final requestPushPermissionPrompt$lambda$2()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Cannot request push permission with null Activity."

    return-object v0
.end method

.method private static final requestPushPermissionPrompt$lambda$3()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Permission prompt would not display, not attempting to request push permission prompt."

    return-object v0
.end method

.method private static final requestPushPermissionPrompt$lambda$4()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Requesting push permission from system."

    return-object v0
.end method

.method public static final wouldPushPermissionPromptDisplay(Landroid/app/Activity;)Z
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/PermissionUtils;->TAG:Ljava/lang/String;

    new-instance v6, Lcom/braze/support/PermissionUtils$$ExternalSyntheticLambda8;

    invoke-direct {v6}, Lcom/braze/support/PermissionUtils$$ExternalSyntheticLambda8;-><init>()V

    const/16 v7, 0xe

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v0

    .line 4
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-ge v1, v2, :cond_1

    .line 5
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/support/PermissionUtils;->TAG:Ljava/lang/String;

    sget-object v5, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v8, Lcom/braze/support/PermissionUtils$$ExternalSyntheticLambda9;

    invoke-direct {v8}, Lcom/braze/support/PermissionUtils$$ExternalSyntheticLambda9;-><init>()V

    const/16 v9, 0xc

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v0

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v1, v2, :cond_2

    .line 10
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/support/PermissionUtils;->TAG:Ljava/lang/String;

    sget-object v5, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v8, Lcom/braze/support/PermissionUtils$$ExternalSyntheticLambda10;

    invoke-direct {v8, v1}, Lcom/braze/support/PermissionUtils$$ExternalSyntheticLambda10;-><init>(I)V

    const/16 v9, 0xc

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v0

    .line 13
    :cond_2
    const-string v1, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p0, v1}, Lcom/braze/support/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 14
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/support/PermissionUtils;->TAG:Ljava/lang/String;

    sget-object v5, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v8, Lcom/braze/support/PermissionUtils$$ExternalSyntheticLambda11;

    invoke-direct {v8}, Lcom/braze/support/PermissionUtils$$ExternalSyntheticLambda11;-><init>()V

    const/16 v9, 0xc

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v0

    .line 29
    :cond_3
    invoke-static {p0, v1}, Lcom/braze/support/PermissionUtils;->getPermissionRequestCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_4

    .line 31
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/support/PermissionUtils;->TAG:Ljava/lang/String;

    sget-object v5, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v8, Lcom/braze/support/PermissionUtils$$ExternalSyntheticLambda1;

    invoke-direct {v8, v0}, Lcom/braze/support/PermissionUtils$$ExternalSyntheticLambda1;-><init>(I)V

    const/16 v9, 0xc

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 35
    invoke-virtual {p0, v1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 38
    :cond_4
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/support/PermissionUtils;->TAG:Ljava/lang/String;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/support/PermissionUtils$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lcom/braze/support/PermissionUtils$$ExternalSyntheticLambda2;-><init>()V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static final wouldPushPermissionPromptDisplay$lambda$10()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Push Prompt can be shown on this device, within a reasonable confidence."

    return-object v0
.end method

.method private static final wouldPushPermissionPromptDisplay$lambda$5()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Cannot request push permission with null Activity."

    return-object v0
.end method

.method private static final wouldPushPermissionPromptDisplay$lambda$6()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Device API version of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is too low to display push permission prompt."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final wouldPushPermissionPromptDisplay$lambda$7(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "App Target API version of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " is too low to display push permission prompt."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final wouldPushPermissionPromptDisplay$lambda$8()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Notification permission already granted, doing nothing."

    return-object v0
.end method

.method private static final wouldPushPermissionPromptDisplay$lambda$9(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Notification permission request count is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ". Returning value of \'shouldShowRequestPermissionRationale(NOTIFICATION_PERMISSION)\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
