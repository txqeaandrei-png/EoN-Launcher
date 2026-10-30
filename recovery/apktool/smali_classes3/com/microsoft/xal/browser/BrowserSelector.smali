.class public final Lcom/microsoft/xal/browser/BrowserSelector;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005H\u0003J\u0010\u0010\u000c\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000eH\u0003J\u0018\u0010\u000f\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005H\u0003J\u0010\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0008H\u0007J\u0010\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\nH\u0002R*\u0010\u0003\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/microsoft/xal/browser/BrowserSelector;",
        "",
        "()V",
        "customTabsAllowedBrowsers",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
        "browserAllowedForCustomTabs",
        "",
        "context",
        "Landroid/content/Context;",
        "packageName",
        "browserInfoImpliesNoUserDefault",
        "browserInfo",
        "Lcom/microsoft/xal/browser/BrowserInfo;",
        "browserSupportsCustomTabs",
        "hashFromSignature",
        "signature",
        "Landroid/content/pm/Signature;",
        "selectBrowser",
        "Lcom/microsoft/xal/browser/BrowserSelectionResult;",
        "useInProcBrowser",
        "userDefaultBrowserInfo",
        "xal_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/microsoft/xal/browser/BrowserSelector;

.field private static final customTabsAllowedBrowsers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/microsoft/xal/browser/BrowserSelector;

    invoke-direct {v0}, Lcom/microsoft/xal/browser/BrowserSelector;-><init>()V

    sput-object v0, Lcom/microsoft/xal/browser/BrowserSelector;->INSTANCE:Lcom/microsoft/xal/browser/BrowserSelector;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/microsoft/xal/browser/BrowserSelector;->customTabsAllowedBrowsers:Ljava/util/HashMap;

    .line 43
    const-string v1, "com.android.chrome"

    const-string v2, "OJGKRT0HGZNU+LGa8F7GViztV4g="

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v1, "org.mozilla.firefox"

    const-string v2, "kg9Idqale0pqL0zK9l99Kc4m/yw="

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v1, "com.microsoft.emmx"

    const-string v2, "P2QOJ59jvOpxCCrn6MfvotoBTK0="

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v1, "com.sec.android.app.sbrowser"

    const-string v2, "nKUXDzgZGd/gRG/NqxixmhQ7MWM="

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final browserAllowedForCustomTabs(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .line 123
    const-string v0, "BlazeLauncher"

    .line 0
    const-string v1, "No package info found for package: "

    .line 123
    sget-object v2, Lcom/microsoft/xal/browser/BrowserSelector;->customTabsAllowedBrowsers:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 125
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v4, 0x40

    invoke-virtual {p1, p2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-nez p1, :cond_1

    .line 127
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 130
    :cond_1
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const-string p2, "signatures"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p2, p1

    move v1, v3

    :goto_0
    if-ge v1, p2, :cond_3

    aget-object v4, p1, v1

    .line 131
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v4}, Lcom/microsoft/xal/browser/BrowserSelector;->hashFromSignature(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 138
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "browserAllowedForCustomTabs() Error in hashFromSignature(): "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception p1

    .line 136
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "browserAllowedForCustomTabs() Error in getPackageInfo(): "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return v3
.end method

.method private final browserInfoImpliesNoUserDefault(Lcom/microsoft/xal/browser/BrowserInfo;)Z
    .locals 1

    .line 118
    iget v0, p1, Lcom/microsoft/xal/browser/BrowserInfo;->versionCode:I

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/microsoft/xal/browser/BrowserInfo;->versionName:Ljava/lang/String;

    const-string v0, "none"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final browserSupportsCustomTabs(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 147
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private final hashFromSignature(Landroid/content/pm/Signature;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 156
    const-string v0, "SHA"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 157
    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 158
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    const-string v0, "encodeToString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static final selectBrowser(Landroid/content/Context;Z)Lcom/microsoft/xal/browser/BrowserSelectionResult;
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/microsoft/xal/browser/BrowserSelector;->INSTANCE:Lcom/microsoft/xal/browser/BrowserSelector;

    invoke-direct {v0, p0}, Lcom/microsoft/xal/browser/BrowserSelector;->userDefaultBrowserInfo(Landroid/content/Context;)Lcom/microsoft/xal/browser/BrowserInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 56
    const-string p0, "inProcRequested"

    goto :goto_0

    .line 57
    :cond_0
    invoke-direct {v0, v1}, Lcom/microsoft/xal/browser/BrowserSelector;->browserInfoImpliesNoUserDefault(Lcom/microsoft/xal/browser/BrowserInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 58
    const-string p0, "noDefault"

    goto :goto_0

    .line 60
    :cond_1
    iget-object p1, v1, Lcom/microsoft/xal/browser/BrowserInfo;->packageName:Ljava/lang/String;

    .line 61
    invoke-direct {v0, p0, p1}, Lcom/microsoft/xal/browser/BrowserSelector;->browserSupportsCustomTabs(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    const-string v4, "BlazeLauncher"

    if-nez v3, :cond_2

    .line 62
    const-string p0, "selectBrowser() Default browser does not support custom tabs."

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string p0, "CTNotSupported"

    goto :goto_0

    .line 64
    :cond_2
    invoke-direct {v0, p0, p1}, Lcom/microsoft/xal/browser/BrowserSelector;->browserAllowedForCustomTabs(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 67
    const-string p0, "selectBrowser() Default browser supports custom tabs, but is not allowed."

    .line 65
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string p0, "CTSupportedButNotAllowed"

    goto :goto_0

    .line 73
    :cond_3
    const-string p0, "selectBrowser() Default browser supports custom tabs and is allowed."

    .line 71
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string p0, "CTSupportedAndAllowed"

    const/4 v2, 0x1

    .line 79
    :goto_0
    new-instance p1, Lcom/microsoft/xal/browser/BrowserSelectionResult;

    invoke-direct {p1, v1, p0, v2}, Lcom/microsoft/xal/browser/BrowserSelectionResult;-><init>(Lcom/microsoft/xal/browser/BrowserInfo;Ljava/lang/String;Z)V

    return-object p1
.end method

.method private final userDefaultBrowserInfo(Landroid/content/Context;)Lcom/microsoft/xal/browser/BrowserInfo;
    .locals 6

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string v1, "https://microsoft.com"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 87
    const-string v2, "none"

    const-string v3, "BlazeLauncher"

    if-nez v0, :cond_1

    .line 88
    const-string/jumbo p1, "userDefaultBrowserInfo() No default browser resolved."

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance p1, Lcom/microsoft/xal/browser/BrowserInfo;

    invoke-direct {p1, v2, v1, v2}, Lcom/microsoft/xal/browser/BrowserInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    .line 92
    :cond_1
    const-string v4, "android"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 93
    const-string/jumbo p1, "userDefaultBrowserInfo() System resolved as default browser."

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance p1, Lcom/microsoft/xal/browser/BrowserInfo;

    invoke-direct {p1, v4, v1, v2}, Lcom/microsoft/xal/browser/BrowserInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    :cond_2
    const/4 v2, -0x1

    .line 100
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 101
    iget v2, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 102
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string/jumbo v1, "versionName"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "userDefaultBrowserInfo() Error in getPackageInfo(): "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string/jumbo p1, "unknown"

    .line 109
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "userDefaultBrowserInfo() Found "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " as user\'s default browser."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v1, Lcom/microsoft/xal/browser/BrowserInfo;

    invoke-direct {v1, v0, v2, p1}, Lcom/microsoft/xal/browser/BrowserInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object p1, v1

    :goto_2
    return-object p1
.end method
