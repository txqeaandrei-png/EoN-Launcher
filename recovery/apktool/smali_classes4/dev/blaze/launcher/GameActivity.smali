.class public final Ldev/blaze/launcher/GameActivity;
.super Ldev/blaze/launcher/AdActivity;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGameActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameActivity.kt\ndev/blaze/launcher/GameActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,105:1\n1755#2,3:106\n*S KotlinDebug\n*F\n+ 1 GameActivity.kt\ndev/blaze/launcher/GameActivity\n*L\n39#1:106,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0002J\u0008\u0010\t\u001a\u00020\nH\u0002J\u0012\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\u000e\u001a\u00020\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0017J\u0008\u0010\u0011\u001a\u00020\u000cH\u0017J\u0010\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\nH\u0002J\u0008\u0010\u0014\u001a\u00020\u000cH\u0002\u00a8\u0006\u0015"
    }
    d2 = {
        "Ldev/blaze/launcher/GameActivity;",
        "Ldev/blaze/launcher/AdActivity;",
        "()V",
        "fromHtml",
        "Landroid/text/Spanned;",
        "source",
        "",
        "getPreferences",
        "Landroid/content/SharedPreferences;",
        "isAgreePrivacyPolice",
        "",
        "launchUri",
        "",
        "uri",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onResume",
        "setAgreePrivacyPolice",
        "mode",
        "showAgreeDialog",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$4WThFY03dhmflaU9hXUOqVD17Bs(Ldev/blaze/launcher/GameActivity;Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ldev/blaze/launcher/GameActivity;->showAgreeDialog$lambda$3$lambda$1(Ldev/blaze/launcher/GameActivity;Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$M9InG8jugcurMUmB9Ulin3fcIMo(Ldev/blaze/launcher/GameActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Ldev/blaze/launcher/GameActivity;->showAgreeDialog$lambda$3$lambda$2(Ldev/blaze/launcher/GameActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ldev/blaze/launcher/AdActivity;-><init>()V

    return-void
.end method

.method private final fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-static {p1, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    .line 98
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method private final getPreferences()Landroid/content/SharedPreferences;
    .locals 2

    .line 84
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getDefaultSharedPreferences(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final isAgreePrivacyPolice()Z
    .locals 3

    .line 88
    invoke-direct {p0}, Ldev/blaze/launcher/GameActivity;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "privacyAcc"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private final setAgreePrivacyPolice(Z)V
    .locals 2

    .line 92
    invoke-direct {p0}, Ldev/blaze/launcher/GameActivity;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 93
    const-string v1, "privacyAcc"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 94
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private final showAgreeDialog()V
    .locals 3

    .line 56
    invoke-direct {p0}, Ldev/blaze/launcher/GameActivity;->isAgreePrivacyPolice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 58
    const-string v1, "BlazeLauncher Privacy Policy"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 67
    const-string v1, "<p>Xbox Privacy Policy</p><p>BlazeLauncher collects account information to allow autocompleting Xbox Login details,and the information is only used to login Xbox.</p><p>The Xbox Login functionality\'s privacy policy can be found at <a href=\"https://privacy.microsoft.com/en-us/privacystatement\">https://privacy.microsoft.com/en-us/privacystatement</a></p><br><p>MinecraftPE Privacy Policy</p><p>Some anonymous information is collected and sent to Mojang to improve MinecraftPE.</p><p>Mojang\'s Privacy Policy can be found at <a href=\"https://account.mojang.com/terms#privacy\">https://account.mojang.com/terms#privacy</a></p></body>"

    .line 60
    invoke-direct {p0, v1}, Ldev/blaze/launcher/GameActivity;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 59
    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const/4 v1, 0x0

    .line 70
    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 71
    const-string v1, "Privacy Policy"

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Ldev/blaze/launcher/GameActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Ldev/blaze/launcher/GameActivity$$ExternalSyntheticLambda0;-><init>(Ldev/blaze/launcher/GameActivity;Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 75
    const-string v1, "Agree"

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Ldev/blaze/launcher/GameActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Ldev/blaze/launcher/GameActivity$$ExternalSyntheticLambda1;-><init>(Ldev/blaze/launcher/GameActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 79
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private static final showAgreeDialog$lambda$3$lambda$1(Ldev/blaze/launcher/GameActivity;Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$this_apply"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "<anonymous parameter 0>"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    new-instance p2, Landroid/content/Intent;

    const-string p3, "https://account.mojang.com/terms#privacy"

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p2}, Ldev/blaze/launcher/GameActivity;->startActivity(Landroid/content/Intent;)V

    .line 73
    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private static final showAgreeDialog$lambda$3$lambda$2(Ldev/blaze/launcher/GameActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "dialogInterface"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 76
    invoke-direct {p0, p2}, Ldev/blaze/launcher/GameActivity;->setAgreePrivacyPolice(Z)V

    .line 77
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method


# virtual methods
.method public launchUri(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 38
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 39
    sget-object v0, Ldev/blaze/launcher/App;->Companion:Ldev/blaze/launcher/App$Companion;

    invoke-virtual {v0}, Ldev/blaze/launcher/App$Companion;->getREDIRECT_MINECRAFT_URLS()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 106
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 39
    invoke-static {v1, p1, v4, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    const-string p1, "https://t.me/blazelauncher"

    invoke-super {p0, p1}, Ldev/blaze/launcher/AdActivity;->launchUri(Ljava/lang/String;)V

    return-void

    .line 44
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Ldev/blaze/launcher/AdActivity;->launchUri(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "BlazeLauncherStartup"
    const-string v1, "STAGE GameActivity.onCreate ENTER"
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-super {p0, p1}, Ldev/blaze/launcher/AdActivity;->onCreate(Landroid/os/Bundle;)V
    const-string v0, "BlazeLauncherStartup"
    const-string v1, "STAGE inherited MainActivity/GameActivity super.onCreate COMPLETE"
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catch_super

    invoke-direct {p0}, Ldev/blaze/launcher/GameActivity;->showAgreeDialog()V
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    move-result-object p1
    const-string v0, "blaze_native_overlay_disabled"
    const/4 v1, 0x1
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    move-result p1
    if-eqz p1, :native_enabled
    const-string v0, "BlazeLauncherStartup"
    const-string v1, "STAGE DIAGNOSTIC native overlay disabled"
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    return-void

    :native_enabled
    :try_start_1
    const-string v0, "BlazeLauncherStartup"
    const-string v1, "STAGE System.loadLibrary(blaze) ENTER"
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    const-string v1, "blaze"
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    const-string v0, "BlazeLauncherStartup"
    const-string v1, "STAGE System.loadLibrary(blaze) COMPLETE"
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    move-object v1, p0
    check-cast v1, Landroid/content/Context;
    invoke-static {v1}, Ldev/blaze/launcher/Start;->_Start(Landroid/content/Context;)V
    invoke-static {p0}, Ldev/blaze/launcher/Start;->__Start(Landroid/app/Activity;)V
    const-string v0, "BlazeLauncherStartup"
    const-string v1, "STAGE Start._Start and Start.__Start COMPLETE"
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catch_native
    return-void

    :catch_super
    move-exception p1
    const-string v0, "BlazeLauncherStartup"
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v1
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    return-void

    :catch_native
    move-exception p1
    const-string v0, "BlazeLauncherStartup"
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v1
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 49
    invoke-super {p0}, Ldev/blaze/launcher/AdActivity;->onResume()V

    return-void
.end method
