.class public Lcom/braze/ui/inappmessage/InAppMessageManagerBase;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braze/ui/inappmessage/InAppMessageManagerBase$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000b\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010B\u001a\u0004\u0018\u00010\"2\u0006\u0010C\u001a\u00020DH\u0016J\u0012\u0010E\u001a\u0004\u0018\u00010\"2\u0006\u0010C\u001a\u00020DH\u0016J\u0010\u0010F\u001a\u00020G2\u0006\u0010H\u001a\u00020\u0005H\u0016J\u0010\u0010I\u001a\u00020G2\u0006\u0010J\u001a\u00020\u0005H\u0016J\u0012\u0010K\u001a\u00020G2\u0008\u00103\u001a\u0004\u0018\u00010*H\u0016J\u0012\u0010L\u001a\u00020G2\u0008\u00103\u001a\u0004\u0018\u00010*H\u0016J\u0012\u0010M\u001a\u00020G2\u0008\u00108\u001a\u0004\u0018\u00010 H\u0016J\u0012\u0010N\u001a\u00020G2\u0008\u0010>\u001a\u0004\u0018\u00010(H\u0016J\u0012\u0010O\u001a\u00020G2\u0008\u0010P\u001a\u0004\u0018\u00010\"H\u0016J\u0012\u0010Q\u001a\u00020G2\u0008\u0010;\u001a\u0004\u0018\u00010,H\u0016R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005@VX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0007R\u000e\u0010\u0010\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0013\u0010\u0003R\u001a\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0016\u0010\u0003R\u0016\u0010\u0017\u001a\u0004\u0018\u00010\u00128VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001a\u001a\u0004\u0018\u00010\u00158VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020(X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020*X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020,X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010-\u001a\u0004\u0018\u00010\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010.\u001a\u0004\u0018\u00010(X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010/\u001a\u0004\u0018\u00010*X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00100\u001a\u0004\u0018\u00010,X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00101\u001a\u0004\u0018\u00010 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00102\u001a\u0004\u0018\u00010*X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00103\u001a\u00020*8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00084\u00105R\u0014\u00106\u001a\u00020*8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00087\u00105R\u0014\u00108\u001a\u00020 8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00089\u0010:R\u0014\u0010;\u001a\u00020,8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008<\u0010=R\u0014\u0010>\u001a\u00020(8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008?\u0010@R\u0014\u0010A\u001a\u00020\u00058WX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008A\u0010\u0007\u00a8\u0006R"
    }
    d2 = {
        "Lcom/braze/ui/inappmessage/InAppMessageManagerBase;",
        "",
        "<init>",
        "()V",
        "doesClickOutsideModalViewDismissInAppMessageView",
        "",
        "getDoesClickOutsideModalViewDismissInAppMessageView",
        "()Z",
        "doesClickOutsideModalViewDismissInAppMessageViewField",
        "shouldSkip",
        "shouldNextUnregisterBeSkipped",
        "getShouldNextUnregisterBeSkipped",
        "setShouldNextUnregisterBeSkipped",
        "(Z)V",
        "doesBackButtonDismissInAppMessageView",
        "getDoesBackButtonDismissInAppMessageView",
        "doesBackButtonDismissInAppMessageViewField",
        "mActivity",
        "Landroid/app/Activity;",
        "getMActivity$annotations",
        "mApplicationContext",
        "Landroid/content/Context;",
        "getMApplicationContext$annotations",
        "activity",
        "getActivity",
        "()Landroid/app/Activity;",
        "applicationContext",
        "getApplicationContext",
        "()Landroid/content/Context;",
        "inAppMessageWebViewClientListener",
        "Lcom/braze/ui/inappmessage/listeners/IInAppMessageWebViewClientListener;",
        "defaultHtmlInAppMessageActionListener",
        "Lcom/braze/ui/inappmessage/listeners/IHtmlInAppMessageActionListener;",
        "inAppMessageSlideupViewFactory",
        "Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;",
        "inAppMessageModalViewFactory",
        "inAppMessageFullViewFactory",
        "inAppMessageHtmlFullViewFactory",
        "inAppMessageHtmlViewFactory",
        "inAppMessageAnimationFactoryField",
        "Lcom/braze/ui/inappmessage/IInAppMessageAnimationFactory;",
        "defaultInAppMessageManagerListener",
        "Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;",
        "defaultInAppMessageViewWrapperFactory",
        "Lcom/braze/ui/inappmessage/IInAppMessageViewWrapperFactory;",
        "customInAppMessageViewFactory",
        "customInAppMessageAnimationFactory",
        "customInAppMessageManagerListener",
        "customInAppMessageViewWrapperFactory",
        "customHtmlInAppMessageActionListener",
        "customControlInAppMessageManagerListener",
        "inAppMessageManagerListener",
        "getInAppMessageManagerListener",
        "()Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;",
        "controlInAppMessageManagerListener",
        "getControlInAppMessageManagerListener",
        "htmlInAppMessageActionListener",
        "getHtmlInAppMessageActionListener",
        "()Lcom/braze/ui/inappmessage/listeners/IHtmlInAppMessageActionListener;",
        "inAppMessageViewWrapperFactory",
        "getInAppMessageViewWrapperFactory",
        "()Lcom/braze/ui/inappmessage/IInAppMessageViewWrapperFactory;",
        "inAppMessageAnimationFactory",
        "getInAppMessageAnimationFactory",
        "()Lcom/braze/ui/inappmessage/IInAppMessageAnimationFactory;",
        "isActivitySet",
        "getDefaultInAppMessageViewFactory",
        "inAppMessage",
        "Lcom/braze/models/inappmessage/IInAppMessage;",
        "getInAppMessageViewFactory",
        "setBackButtonDismissesInAppMessageView",
        "",
        "backButtonDismissesInAppMessageView",
        "setClickOutsideModalViewDismissInAppMessageView",
        "doesDismiss",
        "setCustomInAppMessageManagerListener",
        "setCustomControlInAppMessageManagerListener",
        "setCustomHtmlInAppMessageActionListener",
        "setCustomInAppMessageAnimationFactory",
        "setCustomInAppMessageViewFactory",
        "inAppMessageViewFactory",
        "setCustomInAppMessageViewWrapperFactory",
        "android-sdk-ui_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private customControlInAppMessageManagerListener:Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;

.field private customHtmlInAppMessageActionListener:Lcom/braze/ui/inappmessage/listeners/IHtmlInAppMessageActionListener;

.field private customInAppMessageAnimationFactory:Lcom/braze/ui/inappmessage/IInAppMessageAnimationFactory;

.field private customInAppMessageManagerListener:Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;

.field private customInAppMessageViewFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

.field private customInAppMessageViewWrapperFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewWrapperFactory;

.field private final defaultHtmlInAppMessageActionListener:Lcom/braze/ui/inappmessage/listeners/IHtmlInAppMessageActionListener;

.field private final defaultInAppMessageManagerListener:Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;

.field private final defaultInAppMessageViewWrapperFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewWrapperFactory;

.field private doesBackButtonDismissInAppMessageViewField:Z

.field private doesClickOutsideModalViewDismissInAppMessageViewField:Z

.field private final inAppMessageAnimationFactoryField:Lcom/braze/ui/inappmessage/IInAppMessageAnimationFactory;

.field private final inAppMessageFullViewFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

.field private final inAppMessageHtmlFullViewFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

.field private final inAppMessageHtmlViewFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

.field private final inAppMessageModalViewFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

.field private final inAppMessageSlideupViewFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

.field private final inAppMessageWebViewClientListener:Lcom/braze/ui/inappmessage/listeners/IInAppMessageWebViewClientListener;

.field protected mActivity:Landroid/app/Activity;

.field protected mApplicationContext:Landroid/content/Context;

.field private shouldNextUnregisterBeSkipped:Z


# direct methods
.method public static synthetic $r8$lambda$HL2Zw07NQHzT7KZAz6ybZOwbbCE(Lcom/braze/models/inappmessage/IInAppMessage;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->getDefaultInAppMessageViewFactory$lambda$1(Lcom/braze/models/inappmessage/IInAppMessage;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NVLDlulEcxicZtP-v1pFn1yBN3A()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->setCustomHtmlInAppMessageActionListener$lambda$6()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$PJQftMwjOWE22Zd-KUSxtDvUfPA()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->setCustomControlInAppMessageManagerListener$lambda$5()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$RyzXYzXkMUhoWWno9sTFFxwM93E()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->setCustomInAppMessageViewFactory$lambda$8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$SdLB8He51_fnZHUESctgYSoqgpg(Z)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->_set_shouldNextUnregisterBeSkipped_$lambda$0(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eEW2VQFS52eo5HqBqlhmzc1RSwc()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->setCustomInAppMessageViewWrapperFactory$lambda$9()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$pH8XrJVKvwnFpY4OT8PDj3gnx1E()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->setCustomInAppMessageManagerListener$lambda$4()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$pmAqf93BULvHiIxsjdEVmR3zi4s()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->setCustomInAppMessageAnimationFactory$lambda$7()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$qXMA6kYuMCgBLzZUfMy-gHumuM0(Z)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->setClickOutsideModalViewDismissInAppMessageView$lambda$3(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tTpMucbnsVPBRVUMdPoWhYDhMcA(Z)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->setBackButtonDismissesInAppMessageView$lambda$2(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->doesBackButtonDismissInAppMessageViewField:Z

    .line 73
    new-instance v0, Lcom/braze/ui/inappmessage/listeners/DefaultInAppMessageWebViewClientListener;

    invoke-direct {v0}, Lcom/braze/ui/inappmessage/listeners/DefaultInAppMessageWebViewClientListener;-><init>()V

    check-cast v0, Lcom/braze/ui/inappmessage/listeners/IInAppMessageWebViewClientListener;

    iput-object v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->inAppMessageWebViewClientListener:Lcom/braze/ui/inappmessage/listeners/IInAppMessageWebViewClientListener;

    .line 77
    new-instance v1, Lcom/braze/ui/inappmessage/listeners/DefaultHtmlInAppMessageActionListener;

    invoke-direct {v1}, Lcom/braze/ui/inappmessage/listeners/DefaultHtmlInAppMessageActionListener;-><init>()V

    check-cast v1, Lcom/braze/ui/inappmessage/listeners/IHtmlInAppMessageActionListener;

    iput-object v1, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->defaultHtmlInAppMessageActionListener:Lcom/braze/ui/inappmessage/listeners/IHtmlInAppMessageActionListener;

    .line 81
    new-instance v1, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageSlideupViewFactory;

    invoke-direct {v1}, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageSlideupViewFactory;-><init>()V

    check-cast v1, Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

    iput-object v1, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->inAppMessageSlideupViewFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

    .line 83
    new-instance v1, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageModalViewFactory;

    invoke-direct {v1}, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageModalViewFactory;-><init>()V

    check-cast v1, Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

    iput-object v1, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->inAppMessageModalViewFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

    .line 85
    new-instance v1, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageFullViewFactory;

    invoke-direct {v1}, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageFullViewFactory;-><init>()V

    check-cast v1, Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

    iput-object v1, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->inAppMessageFullViewFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

    .line 87
    new-instance v1, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageHtmlFullViewFactory;

    invoke-direct {v1, v0}, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageHtmlFullViewFactory;-><init>(Lcom/braze/ui/inappmessage/listeners/IInAppMessageWebViewClientListener;)V

    check-cast v1, Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

    iput-object v1, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->inAppMessageHtmlFullViewFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

    .line 89
    new-instance v1, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageHtmlViewFactory;

    invoke-direct {v1, v0}, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageHtmlViewFactory;-><init>(Lcom/braze/ui/inappmessage/listeners/IInAppMessageWebViewClientListener;)V

    check-cast v1, Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

    iput-object v1, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->inAppMessageHtmlViewFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

    .line 93
    new-instance v0, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageAnimationFactory;

    invoke-direct {v0}, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageAnimationFactory;-><init>()V

    check-cast v0, Lcom/braze/ui/inappmessage/IInAppMessageAnimationFactory;

    iput-object v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->inAppMessageAnimationFactoryField:Lcom/braze/ui/inappmessage/IInAppMessageAnimationFactory;

    .line 97
    new-instance v0, Lcom/braze/ui/inappmessage/listeners/DefaultInAppMessageManagerListener;

    invoke-direct {v0}, Lcom/braze/ui/inappmessage/listeners/DefaultInAppMessageManagerListener;-><init>()V

    check-cast v0, Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;

    iput-object v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->defaultInAppMessageManagerListener:Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;

    .line 101
    new-instance v0, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageViewWrapperFactory;

    invoke-direct {v0}, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageViewWrapperFactory;-><init>()V

    check-cast v0, Lcom/braze/ui/inappmessage/IInAppMessageViewWrapperFactory;

    iput-object v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->defaultInAppMessageViewWrapperFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewWrapperFactory;

    return-void
.end method

.method private static final _set_shouldNextUnregisterBeSkipped_$lambda$0(Z)Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting setShouldNextUnregisterBeSkipped to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final getDefaultInAppMessageViewFactory$lambda$1(Lcom/braze/models/inappmessage/IInAppMessage;)Ljava/lang/String;
    .locals 2

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to find view factory for in-app message with type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/braze/models/inappmessage/IInAppMessage;->getMessageType()Lcom/braze/enums/inappmessage/MessageType;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static synthetic getMActivity$annotations()V
    .locals 0

    return-void
.end method

.method protected static synthetic getMApplicationContext$annotations()V
    .locals 0

    return-void
.end method

.method private static final setBackButtonDismissesInAppMessageView$lambda$2(Z)Ljava/lang/String;
    .locals 2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "In-App Message back button dismissal set to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final setClickOutsideModalViewDismissInAppMessageView$lambda$3(Z)Ljava/lang/String;
    .locals 2

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Modal In-App Message outside tap dismissal set to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final setCustomControlInAppMessageManagerListener$lambda$5()Ljava/lang/String;
    .locals 1

    .line 207
    const-string v0, "Custom ControlInAppMessageManagerListener set. This listener will only be used for control in-app messages."

    return-object v0
.end method

.method private static final setCustomHtmlInAppMessageActionListener$lambda$6()Ljava/lang/String;
    .locals 1

    .line 219
    const-string v0, "Custom htmlInAppMessageActionListener set"

    return-object v0
.end method

.method private static final setCustomInAppMessageAnimationFactory$lambda$7()Ljava/lang/String;
    .locals 1

    .line 231
    const-string v0, "Custom InAppMessageAnimationFactory set"

    return-object v0
.end method

.method private static final setCustomInAppMessageManagerListener$lambda$4()Ljava/lang/String;
    .locals 1

    .line 194
    const-string v0, "Custom InAppMessageManagerListener set"

    return-object v0
.end method

.method private static final setCustomInAppMessageViewFactory$lambda$8()Ljava/lang/String;
    .locals 1

    .line 243
    const-string v0, "Custom InAppMessageViewFactory set"

    return-object v0
.end method

.method private static final setCustomInAppMessageViewWrapperFactory$lambda$9()Ljava/lang/String;
    .locals 1

    .line 252
    const-string v0, "Custom IInAppMessageViewWrapperFactory set"

    return-object v0
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getControlInAppMessageManagerListener()Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->customControlInAppMessageManagerListener:Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->defaultInAppMessageManagerListener:Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;

    :cond_0
    return-object v0
.end method

.method public getDefaultInAppMessageViewFactory(Lcom/braze/models/inappmessage/IInAppMessage;)Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;
    .locals 10

    const-string v0, "inAppMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-interface {p1}, Lcom/braze/models/inappmessage/IInAppMessage;->getMessageType()Lcom/braze/enums/inappmessage/MessageType;

    move-result-object v0

    sget-object v1, Lcom/braze/ui/inappmessage/InAppMessageManagerBase$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/braze/enums/inappmessage/MessageType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 153
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v7, Lcom/braze/ui/inappmessage/InAppMessageManagerBase$$ExternalSyntheticLambda2;

    invoke-direct {v7, p1}, Lcom/braze/ui/inappmessage/InAppMessageManagerBase$$ExternalSyntheticLambda2;-><init>(Lcom/braze/models/inappmessage/IInAppMessage;)V

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    const/4 p1, 0x0

    goto :goto_0

    .line 151
    :cond_0
    iget-object p1, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->inAppMessageHtmlViewFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

    goto :goto_0

    .line 150
    :cond_1
    iget-object p1, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->inAppMessageHtmlFullViewFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

    goto :goto_0

    .line 149
    :cond_2
    iget-object p1, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->inAppMessageFullViewFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

    goto :goto_0

    .line 148
    :cond_3
    iget-object p1, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->inAppMessageModalViewFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

    goto :goto_0

    .line 147
    :cond_4
    iget-object p1, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->inAppMessageSlideupViewFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

    :goto_0
    return-object p1
.end method

.method public getDoesBackButtonDismissInAppMessageView()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->doesBackButtonDismissInAppMessageViewField:Z

    return v0
.end method

.method public getDoesClickOutsideModalViewDismissInAppMessageView()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->doesClickOutsideModalViewDismissInAppMessageViewField:Z

    return v0
.end method

.method public getHtmlInAppMessageActionListener()Lcom/braze/ui/inappmessage/listeners/IHtmlInAppMessageActionListener;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->customHtmlInAppMessageActionListener:Lcom/braze/ui/inappmessage/listeners/IHtmlInAppMessageActionListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->defaultHtmlInAppMessageActionListener:Lcom/braze/ui/inappmessage/listeners/IHtmlInAppMessageActionListener;

    :cond_0
    return-object v0
.end method

.method public getInAppMessageAnimationFactory()Lcom/braze/ui/inappmessage/IInAppMessageAnimationFactory;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->customInAppMessageAnimationFactory:Lcom/braze/ui/inappmessage/IInAppMessageAnimationFactory;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->inAppMessageAnimationFactoryField:Lcom/braze/ui/inappmessage/IInAppMessageAnimationFactory;

    :cond_0
    return-object v0
.end method

.method public getInAppMessageManagerListener()Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->customInAppMessageManagerListener:Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->defaultInAppMessageManagerListener:Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;

    :cond_0
    return-object v0
.end method

.method public getInAppMessageViewFactory(Lcom/braze/models/inappmessage/IInAppMessage;)Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;
    .locals 1

    const-string v0, "inAppMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->customInAppMessageViewFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->getDefaultInAppMessageViewFactory(Lcom/braze/models/inappmessage/IInAppMessage;)Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getInAppMessageViewWrapperFactory()Lcom/braze/ui/inappmessage/IInAppMessageViewWrapperFactory;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->customInAppMessageViewWrapperFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewWrapperFactory;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->defaultInAppMessageViewWrapperFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewWrapperFactory;

    :cond_0
    return-object v0
.end method

.method public getShouldNextUnregisterBeSkipped()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->shouldNextUnregisterBeSkipped:Z

    return v0
.end method

.method public isActivitySet()Z
    .locals 1

    .line 137
    invoke-virtual {p0}, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBackButtonDismissesInAppMessageView(Z)V
    .locals 8

    .line 170
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v5, Lcom/braze/ui/inappmessage/InAppMessageManagerBase$$ExternalSyntheticLambda7;

    invoke-direct {v5, p1}, Lcom/braze/ui/inappmessage/InAppMessageManagerBase$$ExternalSyntheticLambda7;-><init>(Z)V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 171
    iput-boolean p1, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->doesBackButtonDismissInAppMessageViewField:Z

    return-void
.end method

.method public setClickOutsideModalViewDismissInAppMessageView(Z)V
    .locals 8

    .line 179
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v5, Lcom/braze/ui/inappmessage/InAppMessageManagerBase$$ExternalSyntheticLambda5;

    invoke-direct {v5, p1}, Lcom/braze/ui/inappmessage/InAppMessageManagerBase$$ExternalSyntheticLambda5;-><init>(Z)V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 180
    iput-boolean p1, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->doesClickOutsideModalViewDismissInAppMessageViewField:Z

    return-void
.end method

.method public setCustomControlInAppMessageManagerListener(Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;)V
    .locals 8

    .line 206
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v5, Lcom/braze/ui/inappmessage/InAppMessageManagerBase$$ExternalSyntheticLambda4;

    invoke-direct {v5}, Lcom/braze/ui/inappmessage/InAppMessageManagerBase$$ExternalSyntheticLambda4;-><init>()V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 209
    iput-object p1, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->customControlInAppMessageManagerListener:Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;

    return-void
.end method

.method public setCustomHtmlInAppMessageActionListener(Lcom/braze/ui/inappmessage/listeners/IHtmlInAppMessageActionListener;)V
    .locals 8

    .line 219
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v5, Lcom/braze/ui/inappmessage/InAppMessageManagerBase$$ExternalSyntheticLambda6;

    invoke-direct {v5}, Lcom/braze/ui/inappmessage/InAppMessageManagerBase$$ExternalSyntheticLambda6;-><init>()V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 220
    iput-object p1, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->customHtmlInAppMessageActionListener:Lcom/braze/ui/inappmessage/listeners/IHtmlInAppMessageActionListener;

    return-void
.end method

.method public setCustomInAppMessageAnimationFactory(Lcom/braze/ui/inappmessage/IInAppMessageAnimationFactory;)V
    .locals 8

    .line 231
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v5, Lcom/braze/ui/inappmessage/InAppMessageManagerBase$$ExternalSyntheticLambda8;

    invoke-direct {v5}, Lcom/braze/ui/inappmessage/InAppMessageManagerBase$$ExternalSyntheticLambda8;-><init>()V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 232
    iput-object p1, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->customInAppMessageAnimationFactory:Lcom/braze/ui/inappmessage/IInAppMessageAnimationFactory;

    return-void
.end method

.method public setCustomInAppMessageManagerListener(Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;)V
    .locals 8

    .line 194
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v5, Lcom/braze/ui/inappmessage/InAppMessageManagerBase$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/braze/ui/inappmessage/InAppMessageManagerBase$$ExternalSyntheticLambda1;-><init>()V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 195
    iput-object p1, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->customInAppMessageManagerListener:Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;

    return-void
.end method

.method public setCustomInAppMessageViewFactory(Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;)V
    .locals 8

    .line 243
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v5, Lcom/braze/ui/inappmessage/InAppMessageManagerBase$$ExternalSyntheticLambda9;

    invoke-direct {v5}, Lcom/braze/ui/inappmessage/InAppMessageManagerBase$$ExternalSyntheticLambda9;-><init>()V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 244
    iput-object p1, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->customInAppMessageViewFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

    return-void
.end method

.method public setCustomInAppMessageViewWrapperFactory(Lcom/braze/ui/inappmessage/IInAppMessageViewWrapperFactory;)V
    .locals 8

    .line 252
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v5, Lcom/braze/ui/inappmessage/InAppMessageManagerBase$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Lcom/braze/ui/inappmessage/InAppMessageManagerBase$$ExternalSyntheticLambda3;-><init>()V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 253
    iput-object p1, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->customInAppMessageViewWrapperFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewWrapperFactory;

    return-void
.end method

.method public setShouldNextUnregisterBeSkipped(Z)V
    .locals 8

    .line 37
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v5, Lcom/braze/ui/inappmessage/InAppMessageManagerBase$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1}, Lcom/braze/ui/inappmessage/InAppMessageManagerBase$$ExternalSyntheticLambda0;-><init>(Z)V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 38
    iput-boolean p1, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->shouldNextUnregisterBeSkipped:Z

    return-void
.end method
