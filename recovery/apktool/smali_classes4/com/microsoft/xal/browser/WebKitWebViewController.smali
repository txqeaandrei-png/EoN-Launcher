.class public final Lcom/microsoft/xal/browser/WebKitWebViewController;
.super Landroidx/appcompat/app/AppCompatActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xal/browser/WebKitWebViewController$Companion;,
        Lcom/microsoft/xal/browser/WebKitWebViewController$XalWebViewClient;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebKitWebViewController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebKitWebViewController.kt\ncom/microsoft/xal/browser/WebKitWebViewController\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,224:1\n1#2:225\n731#3,9:226\n731#3,9:237\n37#4,2:235\n37#4,2:246\n*S KotlinDebug\n*F\n+ 1 WebKitWebViewController.kt\ncom/microsoft/xal/browser/WebKitWebViewController\n*L\n111#1:226,9\n115#1:237,9\n113#1:235,2\n117#1:246,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000e\u000fB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u0012\u0010\u000b\u001a\u00020\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0017R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/microsoft/xal/browser/WebKitWebViewController;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "mWebView",
        "Landroid/webkit/WebView;",
        "deleteCookies",
        "",
        "domain",
        "",
        "useHttps",
        "",
        "onCreate",
        "bundle",
        "Landroid/os/Bundle;",
        "Companion",
        "XalWebViewClient",
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
.field public static final Companion:Lcom/microsoft/xal/browser/WebKitWebViewController$Companion;

.field public static final END_URL:Ljava/lang/String; = "END_URL"

.field public static final REQUEST_HEADER_KEYS:Ljava/lang/String; = "REQUEST_HEADER_KEYS"

.field public static final REQUEST_HEADER_VALUES:Ljava/lang/String; = "REQUEST_HEADER_VALUES"

.field public static final RESPONSE_KEY:Ljava/lang/String; = "RESPONSE"

.field public static final RESULT_FAILED:I = 0x1f74

.field public static final SHOW_TYPE:Ljava/lang/String; = "SHOW_TYPE"

.field public static final START_URL:Ljava/lang/String; = "START_URL"


# instance fields
.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/microsoft/xal/browser/WebKitWebViewController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/microsoft/xal/browser/WebKitWebViewController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/microsoft/xal/browser/WebKitWebViewController;->Companion:Lcom/microsoft/xal/browser/WebKitWebViewController$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private final deleteCookies(Ljava/lang/String;Z)V
    .locals 11

    .line 103
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 105
    const-string p2, "https://"

    goto :goto_0

    .line 107
    :cond_0
    const-string p2, "http://"

    .line 108
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 109
    invoke-virtual {v0, p2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 111
    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Lkotlin/text/Regex;

    const-string v3, ";"

    invoke-direct {v2, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v1

    .line 226
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 227
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 228
    :goto_1
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 229
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 112
    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 230
    :cond_1
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/util/ListIterator;->nextIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    goto :goto_2

    .line 234
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_2
    check-cast v1, Ljava/util/Collection;

    .line 236
    new-array v2, v3, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 113
    check-cast v1, [Ljava/lang/String;

    .line 114
    array-length v2, v1

    move v4, v3

    :goto_3
    if-ge v4, v2, :cond_7

    aget-object v5, v1, v4

    .line 115
    check-cast v5, Ljava/lang/CharSequence;

    new-instance v6, Lkotlin/text/Regex;

    const-string v7, "="

    invoke-direct {v6, v7}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5, v3}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v5

    .line 237
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 238
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v6

    .line 239
    :goto_4
    invoke-interface {v6}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 240
    invoke-interface {v6}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 116
    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_3

    goto :goto_4

    .line 241
    :cond_3
    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/util/ListIterator;->nextIndex()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v5

    goto :goto_5

    .line 245
    :cond_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    :goto_5
    check-cast v5, Ljava/util/Collection;

    .line 247
    new-array v6, v3, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 117
    aget-object v5, v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 118
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 119
    const-string v7, "__Secure-"

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v5, v7, v3, v8, v9}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    const-string v10, ";Path=/"

    if-eqz v7, :cond_5

    .line 120
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Secure;Domain="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 124
    :cond_5
    const-string v7, "__Host-"

    invoke-static {v5, v7, v3, v8, v9}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 125
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Secure;Path=/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 127
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Domain="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 122
    :goto_6
    invoke-virtual {v0, p2, v5}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 134
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "deleteCookies() Found no cookies for "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 137
    :cond_8
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 39
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/microsoft/xal/browser/WebKitWebViewController;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/16 v0, 0x1f74

    if-nez p1, :cond_0

    .line 42
    invoke-virtual {p0, v0}, Lcom/microsoft/xal/browser/WebKitWebViewController;->setResult(I)V

    .line 43
    invoke-virtual {p0}, Lcom/microsoft/xal/browser/WebKitWebViewController;->finish()V

    return-void

    .line 46
    :cond_0
    const-string v1, "START_URL"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    const-string v3, "END_URL"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 49
    :goto_0
    invoke-virtual {p0, v0}, Lcom/microsoft/xal/browser/WebKitWebViewController;->setResult(I)V

    .line 50
    invoke-virtual {p0}, Lcom/microsoft/xal/browser/WebKitWebViewController;->finish()V

    return-void

    .line 53
    :cond_2
    const-string v3, "REQUEST_HEADER_KEYS"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 54
    const-string v4, "REQUEST_HEADER_VALUES"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_9

    .line 55
    array-length v5, v3

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v4, :cond_9

    array-length v5, v4

    if-nez v5, :cond_4

    goto :goto_3

    .line 56
    :cond_4
    array-length v5, v3

    array-length v6, v4

    if-eq v5, v6, :cond_5

    .line 57
    invoke-virtual {p0, v0}, Lcom/microsoft/xal/browser/WebKitWebViewController;->setResult(I)V

    .line 58
    invoke-virtual {p0}, Lcom/microsoft/xal/browser/WebKitWebViewController;->finish()V

    return-void

    .line 61
    :cond_5
    new-instance v5, Ljava/util/HashMap;

    array-length v6, v3

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    check-cast v5, Ljava/util/Map;

    .line 62
    array-length v6, v3

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_9

    .line 63
    aget-object v8, v3, v7

    if-eqz v8, :cond_8

    .line 64
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_6

    goto :goto_2

    :cond_6
    aget-object v8, v4, v7

    if-eqz v8, :cond_8

    .line 65
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_7

    goto :goto_2

    .line 71
    :cond_7
    aget-object v8, v3, v7

    aget-object v9, v4, v7

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 67
    :cond_8
    :goto_2
    invoke-virtual {p0, v0}, Lcom/microsoft/xal/browser/WebKitWebViewController;->setResult(I)V

    .line 68
    invoke-virtual {p0}, Lcom/microsoft/xal/browser/WebKitWebViewController;->finish()V

    return-void

    .line 74
    :cond_9
    :goto_3
    const-string v0, "SHOW_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xal/browser/ShowUrlType;

    .line 75
    sget-object v0, Lcom/microsoft/xal/browser/ShowUrlType;->CookieRemoval:Lcom/microsoft/xal/browser/ShowUrlType;

    const/4 v3, 0x1

    if-eq p1, v0, :cond_b

    sget-object v0, Lcom/microsoft/xal/browser/ShowUrlType;->CookieRemovalSkipIfSharedCredentials:Lcom/microsoft/xal/browser/ShowUrlType;

    if-ne p1, v0, :cond_a

    goto :goto_4

    .line 87
    :cond_a
    new-instance p1, Landroid/webkit/WebView;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 88
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/microsoft/xal/browser/WebKitWebViewController;->setContentView(Landroid/view/View;)V

    .line 90
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 91
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 92
    new-instance v0, Lcom/microsoft/xal/browser/WebKitWebViewController$onCreate$2$1;

    invoke-direct {v0, p0}, Lcom/microsoft/xal/browser/WebKitWebViewController$onCreate$2$1;-><init>(Lcom/microsoft/xal/browser/WebKitWebViewController;)V

    check-cast v0, Landroid/webkit/WebChromeClient;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 97
    new-instance v0, Lcom/microsoft/xal/browser/WebKitWebViewController$XalWebViewClient;

    move-object v3, p0

    check-cast v3, Landroid/app/Activity;

    invoke-direct {v0, p0, v3, v2}, Lcom/microsoft/xal/browser/WebKitWebViewController$XalWebViewClient;-><init>(Lcom/microsoft/xal/browser/WebKitWebViewController;Landroid/app/Activity;Ljava/lang/String;)V

    check-cast v0, Landroid/webkit/WebViewClient;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 98
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 99
    iput-object p1, p0, Lcom/microsoft/xal/browser/WebKitWebViewController;->mWebView:Landroid/webkit/WebView;

    return-void

    .line 76
    :cond_b
    :goto_4
    const-string p1, "login.live.com"

    invoke-direct {p0, p1, v3}, Lcom/microsoft/xal/browser/WebKitWebViewController;->deleteCookies(Ljava/lang/String;Z)V

    .line 77
    const-string p1, "account.live.com"

    invoke-direct {p0, p1, v3}, Lcom/microsoft/xal/browser/WebKitWebViewController;->deleteCookies(Ljava/lang/String;Z)V

    .line 78
    const-string p1, "live.com"

    invoke-direct {p0, p1, v3}, Lcom/microsoft/xal/browser/WebKitWebViewController;->deleteCookies(Ljava/lang/String;Z)V

    .line 79
    const-string/jumbo p1, "xboxlive.com"

    invoke-direct {p0, p1, v3}, Lcom/microsoft/xal/browser/WebKitWebViewController;->deleteCookies(Ljava/lang/String;Z)V

    .line 80
    const-string p1, "sisu.xboxlive.com"

    invoke-direct {p0, p1, v3}, Lcom/microsoft/xal/browser/WebKitWebViewController;->deleteCookies(Ljava/lang/String;Z)V

    .line 81
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 82
    const-string v0, "RESPONSE"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v0, -0x1

    .line 81
    invoke-virtual {p0, v0, p1}, Lcom/microsoft/xal/browser/WebKitWebViewController;->setResult(ILandroid/content/Intent;)V

    .line 84
    invoke-virtual {p0}, Lcom/microsoft/xal/browser/WebKitWebViewController;->finish()V

    return-void
.end method
