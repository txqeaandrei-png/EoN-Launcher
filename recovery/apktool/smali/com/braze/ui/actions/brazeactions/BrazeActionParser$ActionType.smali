.class public final enum Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/braze/ui/actions/brazeactions/BrazeActionParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBrazeActionParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BrazeActionParser.kt\ncom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,191:1\n8641#2,2:192\n8901#2,4:194\n*S KotlinDebug\n*F\n+ 1 BrazeActionParser.kt\ncom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType\n*L\n50#1:192,2\n50#1:194,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0015\u0008\u0080\u0081\u0002\u0018\u0000 \u00192\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0019B\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;",
        "",
        "key",
        "",
        "impl",
        "Lcom/braze/ui/actions/brazeactions/steps/IBrazeActionStep;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;Lcom/braze/ui/actions/brazeactions/steps/IBrazeActionStep;)V",
        "getKey",
        "()Ljava/lang/String;",
        "getImpl",
        "()Lcom/braze/ui/actions/brazeactions/steps/IBrazeActionStep;",
        "CONTAINER",
        "LOG_CUSTOM_EVENT",
        "SET_CUSTOM_ATTRIBUTE",
        "REQUEST_PUSH_PERMISSION",
        "ADD_TO_SUBSCRIPTION_GROUP",
        "REMOVE_FROM_SUBSCRIPTION_GROUP",
        "ADD_TO_CUSTOM_ATTRIBUTE_ARRAY",
        "REMOVE_FROM_CUSTOM_ATTRIBUTE_ARRAY",
        "SET_EMAIL_SUBSCRIPTION",
        "SET_PUSH_NOTIFICATION_SUBSCRIPTION",
        "OPEN_LINK_IN_WEBVIEW",
        "OPEN_LINK_EXTERNALLY",
        "INVALID",
        "Companion",
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


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

.field public static final enum ADD_TO_CUSTOM_ATTRIBUTE_ARRAY:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

.field public static final enum ADD_TO_SUBSCRIPTION_GROUP:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

.field public static final enum CONTAINER:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

.field public static final Companion:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType$Companion;

.field public static final enum INVALID:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

.field public static final enum LOG_CUSTOM_EVENT:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

.field public static final enum OPEN_LINK_EXTERNALLY:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

.field public static final enum OPEN_LINK_IN_WEBVIEW:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

.field public static final enum REMOVE_FROM_CUSTOM_ATTRIBUTE_ARRAY:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

.field public static final enum REMOVE_FROM_SUBSCRIPTION_GROUP:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

.field public static final enum REQUEST_PUSH_PERMISSION:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

.field public static final enum SET_CUSTOM_ATTRIBUTE:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

.field public static final enum SET_EMAIL_SUBSCRIPTION:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

.field public static final enum SET_PUSH_NOTIFICATION_SUBSCRIPTION:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

.field private static final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final impl:Lcom/braze/ui/actions/brazeactions/steps/IBrazeActionStep;

.field private final key:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;
    .locals 13

    sget-object v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->CONTAINER:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    sget-object v1, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->LOG_CUSTOM_EVENT:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    sget-object v2, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->SET_CUSTOM_ATTRIBUTE:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    sget-object v3, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->REQUEST_PUSH_PERMISSION:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    sget-object v4, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->ADD_TO_SUBSCRIPTION_GROUP:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    sget-object v5, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->REMOVE_FROM_SUBSCRIPTION_GROUP:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    sget-object v6, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->ADD_TO_CUSTOM_ATTRIBUTE_ARRAY:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    sget-object v7, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->REMOVE_FROM_CUSTOM_ATTRIBUTE_ARRAY:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    sget-object v8, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->SET_EMAIL_SUBSCRIPTION:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    sget-object v9, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->SET_PUSH_NOTIFICATION_SUBSCRIPTION:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    sget-object v10, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->OPEN_LINK_IN_WEBVIEW:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    sget-object v11, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->OPEN_LINK_EXTERNALLY:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    sget-object v12, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->INVALID:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    filled-new-array/range {v0 .. v12}, [Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 35
    new-instance v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    sget-object v1, Lcom/braze/ui/actions/brazeactions/steps/ContainerStep;->INSTANCE:Lcom/braze/ui/actions/brazeactions/steps/ContainerStep;

    check-cast v1, Lcom/braze/ui/actions/brazeactions/steps/IBrazeActionStep;

    const-string v2, "CONTAINER"

    const/4 v3, 0x0

    const-string v4, "container"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/braze/ui/actions/brazeactions/steps/IBrazeActionStep;)V

    sput-object v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->CONTAINER:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    .line 36
    new-instance v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    sget-object v1, Lcom/braze/ui/actions/brazeactions/steps/LogCustomEventStep;->INSTANCE:Lcom/braze/ui/actions/brazeactions/steps/LogCustomEventStep;

    check-cast v1, Lcom/braze/ui/actions/brazeactions/steps/IBrazeActionStep;

    const-string v2, "LOG_CUSTOM_EVENT"

    const/4 v4, 0x1

    const-string v5, "logCustomEvent"

    invoke-direct {v0, v2, v4, v5, v1}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/braze/ui/actions/brazeactions/steps/IBrazeActionStep;)V

    sput-object v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->LOG_CUSTOM_EVENT:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    .line 37
    new-instance v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    sget-object v1, Lcom/braze/ui/actions/brazeactions/steps/SetCustomUserAttributeStep;->INSTANCE:Lcom/braze/ui/actions/brazeactions/steps/SetCustomUserAttributeStep;

    check-cast v1, Lcom/braze/ui/actions/brazeactions/steps/IBrazeActionStep;

    const-string v2, "SET_CUSTOM_ATTRIBUTE"

    const/4 v4, 0x2

    const-string v5, "setCustomUserAttribute"

    invoke-direct {v0, v2, v4, v5, v1}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/braze/ui/actions/brazeactions/steps/IBrazeActionStep;)V

    sput-object v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->SET_CUSTOM_ATTRIBUTE:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    .line 38
    new-instance v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    sget-object v1, Lcom/braze/ui/actions/brazeactions/steps/RequestPushPermissionStep;->INSTANCE:Lcom/braze/ui/actions/brazeactions/steps/RequestPushPermissionStep;

    check-cast v1, Lcom/braze/ui/actions/brazeactions/steps/IBrazeActionStep;

    const-string v2, "REQUEST_PUSH_PERMISSION"

    const/4 v4, 0x3

    const-string v5, "requestPushPermission"

    invoke-direct {v0, v2, v4, v5, v1}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/braze/ui/actions/brazeactions/steps/IBrazeActionStep;)V

    sput-object v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->REQUEST_PUSH_PERMISSION:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    .line 39
    new-instance v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    sget-object v1, Lcom/braze/ui/actions/brazeactions/steps/AddToSubscriptionGroupStep;->INSTANCE:Lcom/braze/ui/actions/brazeactions/steps/AddToSubscriptionGroupStep;

    check-cast v1, Lcom/braze/ui/actions/brazeactions/steps/IBrazeActionStep;

    const-string v2, "ADD_TO_SUBSCRIPTION_GROUP"

    const/4 v4, 0x4

    const-string v5, "addToSubscriptionGroup"

    invoke-direct {v0, v2, v4, v5, v1}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/braze/ui/actions/brazeactions/steps/IBrazeActionStep;)V

    sput-object v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->ADD_TO_SUBSCRIPTION_GROUP:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    .line 40
    new-instance v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    sget-object v1, Lcom/braze/ui/actions/brazeactions/steps/RemoveFromSubscriptionGroupStep;->INSTANCE:Lcom/braze/ui/actions/brazeactions/steps/RemoveFromSubscriptionGroupStep;

    check-cast v1, Lcom/braze/ui/actions/brazeactions/steps/IBrazeActionStep;

    const-string v2, "REMOVE_FROM_SUBSCRIPTION_GROUP"

    const/4 v4, 0x5

    const-string v5, "removeFromSubscriptionGroup"

    invoke-direct {v0, v2, v4, v5, v1}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/braze/ui/actions/brazeactions/steps/IBrazeActionStep;)V

    sput-object v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->REMOVE_FROM_SUBSCRIPTION_GROUP:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    .line 41
    new-instance v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    sget-object v1, Lcom/braze/ui/actions/brazeactions/steps/AddToCustomAttributeArrayStep;->INSTANCE:Lcom/braze/ui/actions/brazeactions/steps/AddToCustomAttributeArrayStep;

    check-cast v1, Lcom/braze/ui/actions/brazeactions/steps/IBrazeActionStep;

    const-string v2, "ADD_TO_CUSTOM_ATTRIBUTE_ARRAY"

    const/4 v4, 0x6

    const-string v5, "addToCustomAttributeArray"

    invoke-direct {v0, v2, v4, v5, v1}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/braze/ui/actions/brazeactions/steps/IBrazeActionStep;)V

    sput-object v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->ADD_TO_CUSTOM_ATTRIBUTE_ARRAY:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    .line 42
    new-instance v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    sget-object v1, Lcom/braze/ui/actions/brazeactions/steps/RemoveFromCustomAttributeArrayStep;->INSTANCE:Lcom/braze/ui/actions/brazeactions/steps/RemoveFromCustomAttributeArrayStep;

    check-cast v1, Lcom/braze/ui/actions/brazeactions/steps/IBrazeActionStep;

    const-string v2, "REMOVE_FROM_CUSTOM_ATTRIBUTE_ARRAY"

    const/4 v4, 0x7

    const-string v5, "removeFromCustomAttributeArray"

    invoke-direct {v0, v2, v4, v5, v1}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/braze/ui/actions/brazeactions/steps/IBrazeActionStep;)V

    sput-object v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->REMOVE_FROM_CUSTOM_ATTRIBUTE_ARRAY:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    .line 43
    new-instance v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    sget-object v1, Lcom/braze/ui/actions/brazeactions/steps/SetEmailSubscriptionStep;->INSTANCE:Lcom/braze/ui/actions/brazeactions/steps/SetEmailSubscriptionStep;

    check-cast v1, Lcom/braze/ui/actions/brazeactions/steps/IBrazeActionStep;

    const-string v2, "SET_EMAIL_SUBSCRIPTION"

    const/16 v4, 0x8

    const-string v5, "setEmailNotificationSubscriptionType"

    invoke-direct {v0, v2, v4, v5, v1}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/braze/ui/actions/brazeactions/steps/IBrazeActionStep;)V

    sput-object v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->SET_EMAIL_SUBSCRIPTION:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    .line 44
    new-instance v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    sget-object v1, Lcom/braze/ui/actions/brazeactions/steps/SetPushNotificationSubscriptionStep;->INSTANCE:Lcom/braze/ui/actions/brazeactions/steps/SetPushNotificationSubscriptionStep;

    check-cast v1, Lcom/braze/ui/actions/brazeactions/steps/IBrazeActionStep;

    const-string v2, "SET_PUSH_NOTIFICATION_SUBSCRIPTION"

    const/16 v4, 0x9

    const-string v5, "setPushNotificationSubscriptionType"

    invoke-direct {v0, v2, v4, v5, v1}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/braze/ui/actions/brazeactions/steps/IBrazeActionStep;)V

    sput-object v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->SET_PUSH_NOTIFICATION_SUBSCRIPTION:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    .line 45
    new-instance v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    sget-object v1, Lcom/braze/ui/actions/brazeactions/steps/OpenLinkInWebViewStep;->INSTANCE:Lcom/braze/ui/actions/brazeactions/steps/OpenLinkInWebViewStep;

    check-cast v1, Lcom/braze/ui/actions/brazeactions/steps/IBrazeActionStep;

    const-string v2, "OPEN_LINK_IN_WEBVIEW"

    const/16 v4, 0xa

    const-string v5, "openLinkInWebview"

    invoke-direct {v0, v2, v4, v5, v1}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/braze/ui/actions/brazeactions/steps/IBrazeActionStep;)V

    sput-object v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->OPEN_LINK_IN_WEBVIEW:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    .line 46
    new-instance v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    sget-object v1, Lcom/braze/ui/actions/brazeactions/steps/OpenLinkExternallyStep;->INSTANCE:Lcom/braze/ui/actions/brazeactions/steps/OpenLinkExternallyStep;

    check-cast v1, Lcom/braze/ui/actions/brazeactions/steps/IBrazeActionStep;

    const-string v2, "OPEN_LINK_EXTERNALLY"

    const/16 v4, 0xb

    const-string v5, "openLink"

    invoke-direct {v0, v2, v4, v5, v1}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/braze/ui/actions/brazeactions/steps/IBrazeActionStep;)V

    sput-object v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->OPEN_LINK_EXTERNALLY:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    .line 47
    new-instance v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    sget-object v1, Lcom/braze/ui/actions/brazeactions/steps/NoOpStep;->INSTANCE:Lcom/braze/ui/actions/brazeactions/steps/NoOpStep;

    check-cast v1, Lcom/braze/ui/actions/brazeactions/steps/IBrazeActionStep;

    const-string v2, "INVALID"

    const/16 v4, 0xc

    const-string v5, ""

    invoke-direct {v0, v2, v4, v5, v1}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/braze/ui/actions/brazeactions/steps/IBrazeActionStep;)V

    sput-object v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->INVALID:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    invoke-static {}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->$values()[Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    move-result-object v0

    sput-object v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->$VALUES:[Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->Companion:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType$Companion;

    .line 50
    invoke-static {}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->values()[Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    move-result-object v0

    .line 192
    array-length v1, v0

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 193
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    .line 194
    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 50
    iget-object v5, v4, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->key:Ljava/lang/String;

    .line 195
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 50
    :cond_0
    sput-object v2, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->map:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/braze/ui/actions/brazeactions/steps/IBrazeActionStep;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/braze/ui/actions/brazeactions/steps/IBrazeActionStep;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->key:Ljava/lang/String;

    iput-object p4, p0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->impl:Lcom/braze/ui/actions/brazeactions/steps/IBrazeActionStep;

    return-void
.end method

.method public static final synthetic access$getMap$cp()Ljava/util/Map;
    .locals 1

    .line 34
    sget-object v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->map:Ljava/util/Map;

    return-object v0
.end method

.method public static final fromValue(Ljava/lang/String;)Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->Companion:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType$Companion;

    invoke-virtual {v0, p0}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType$Companion;->fromValue(Ljava/lang/String;)Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;
    .locals 1

    const-class v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 55
    check-cast p0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    return-object p0
.end method

.method public static values()[Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;
    .locals 1

    sget-object v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->$VALUES:[Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 55
    check-cast v0, [Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    return-object v0
.end method


# virtual methods
.method public final getImpl()Lcom/braze/ui/actions/brazeactions/steps/IBrazeActionStep;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->impl:Lcom/braze/ui/actions/brazeactions/steps/IBrazeActionStep;

    return-object v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->key:Ljava/lang/String;

    return-object v0
.end method
