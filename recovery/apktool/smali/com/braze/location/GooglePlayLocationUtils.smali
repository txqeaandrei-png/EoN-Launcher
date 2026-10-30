.class public final Lcom/braze/location/GooglePlayLocationUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGooglePlayLocationUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GooglePlayLocationUtils.kt\ncom/braze/location/GooglePlayLocationUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,287:1\n1202#2,2:288\n1230#2,4:290\n774#2:294\n865#2:295\n2632#2,3:296\n866#2:299\n1557#2:300\n1628#2,3:301\n1557#2:304\n1628#2,3:305\n*S KotlinDebug\n*F\n+ 1 GooglePlayLocationUtils.kt\ncom/braze/location/GooglePlayLocationUtils\n*L\n56#1:288,2\n56#1:290,4\n65#1:294\n65#1:295\n66#1:296,3\n65#1:299\n69#1:300\n69#1:301,3\n152#1:304\n152#1:305,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J^\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\r\u001a\u00020\u000e2\u001a\u0008\u0002\u0010\u000f\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u000b\u0012\u0004\u0012\u00020\u00070\u00102\u001a\u0008\u0002\u0010\u0011\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u0004\u0012\u00020\u00070\u0010H\u0007J\u0018\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J\u0010\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0007J&\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0002J#\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000bH\u0001\u00a2\u0006\u0002\u0008\u001aJ\u0015\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0008\u001a\u00020\tH\u0001\u00a2\u0006\u0002\u0008\u001dJ#\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0001\u00a2\u0006\u0002\u0008\u001fJ\u001e\u0010 \u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000bH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/braze/location/GooglePlayLocationUtils;",
        "",
        "<init>",
        "()V",
        "REGISTERED_GEOFENCE_SHARED_PREFS_LOCATION",
        "",
        "registerGeofencesWithGooglePlayIfNecessary",
        "",
        "context",
        "Landroid/content/Context;",
        "desiredGeofencesToRegister",
        "",
        "Lcom/braze/models/BrazeGeofence;",
        "geofenceRequestIntent",
        "Landroid/app/PendingIntent;",
        "removalFunction",
        "Lkotlin/Function1;",
        "registerFunction",
        "requestSingleLocationUpdateFromGooglePlay",
        "resultListener",
        "Lcom/braze/managers/IBrazeGeofenceLocationUpdateListener;",
        "deleteRegisteredGeofenceCache",
        "registerGeofencesWithGeofencingClient",
        "newGeofencesToRegister",
        "removeGeofencesRegisteredWithGeofencingClient",
        "obsoleteGeofenceIds",
        "removeGeofencesRegisteredWithGeofencingClient$android_sdk_location_release",
        "getRegisteredGeofenceSharedPrefs",
        "Landroid/content/SharedPreferences;",
        "getRegisteredGeofenceSharedPrefs$android_sdk_location_release",
        "storeGeofencesToSharedPrefs",
        "storeGeofencesToSharedPrefs$android_sdk_location_release",
        "removeGeofencesFromSharedPrefs",
        "android-sdk-location_release"
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
.field public static final INSTANCE:Lcom/braze/location/GooglePlayLocationUtils;

.field private static final REGISTERED_GEOFENCE_SHARED_PREFS_LOCATION:Ljava/lang/String; = "com.appboy.support.geofences"


# direct methods
.method public static synthetic $r8$lambda$0mYY4hXrDOVwxWy4nn901EqEU-4(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/location/GooglePlayLocationUtils;->registerGeofencesWithGeofencingClient$lambda$31$lambda$26(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$10O5oIU-O4rV0hV5Dzo02ga-Apk(Lcom/braze/managers/IBrazeGeofenceLocationUpdateListener;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/location/GooglePlayLocationUtils;->requestSingleLocationUpdateFromGooglePlay$lambda$18(Lcom/braze/managers/IBrazeGeofenceLocationUpdateListener;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2EQg3a05V_6bn5ZERcaOyW5v0g0(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/location/GooglePlayLocationUtils;->removeGeofencesRegisteredWithGeofencingClient$lambda$41$lambda$35(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$3CZb2Ao6fgL629DOitIGjW_Z1l4(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0}, Lcom/braze/location/GooglePlayLocationUtils;->registerGeofencesWithGeofencingClient$lambda$31(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3as_JYXGcNkV4fEz04nIZ5zXEJs()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/location/GooglePlayLocationUtils;->registerGeofencesWithGooglePlayIfNecessary$lambda$11()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$4HfRuEop7OakdnASbxrcYJapTgg()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/location/GooglePlayLocationUtils;->requestSingleLocationUpdateFromGooglePlay$lambda$18$lambda$17()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$8_7O8hf4rRFzknT0cRMzkbw1hyI()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/location/GooglePlayLocationUtils;->removeGeofencesRegisteredWithGeofencingClient$lambda$41$lambda$38()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$AFElbr8k4vBxtaSUWy-GXkGTcA0(Lcom/braze/models/BrazeGeofence;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/location/GooglePlayLocationUtils;->registerGeofencesWithGooglePlayIfNecessary$lambda$7(Lcom/braze/models/BrazeGeofence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Deyqko2jBw8xCO21fVnlkqSEqEc()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/location/GooglePlayLocationUtils;->removeGeofencesRegisteredWithGeofencingClient$lambda$33$lambda$32()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$Ht-A_6uIGDWy2ej84WmLAkfPcqU(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/location/GooglePlayLocationUtils;->removeGeofencesRegisteredWithGeofencingClient$lambda$41$lambda$37(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Igjlgrgscs12n69oX9_f5pU2dxo(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/braze/location/GooglePlayLocationUtils;->registerGeofencesWithGooglePlayIfNecessary$lambda$1(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KAvGtDXycCpfwe_8FFzV8BFs1dE()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/location/GooglePlayLocationUtils;->deleteRegisteredGeofenceCache$lambda$20()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$Kwr_Vd2i0lZEoNENTih4T1pqqy4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/location/GooglePlayLocationUtils;->registerGeofencesWithGeofencingClient$lambda$24(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N_-ZRFoWAwcJsU_yCtYeWnAEpFM(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/location/GooglePlayLocationUtils;->removeGeofencesRegisteredWithGeofencingClient$lambda$41$lambda$39(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$O1gUKeXpVfNrAOQWoOKTocw7nLk()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/location/GooglePlayLocationUtils;->registerGeofencesWithGeofencingClient$lambda$31$lambda$30()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$P0P6kMPEu2LAWU72z2a5uYFaBpU(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/location/GooglePlayLocationUtils;->removeGeofencesFromSharedPrefs$lambda$43(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Pr_fxgVK1V4_958K5Zjep55Ttmg(Ljava/util/List;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/location/GooglePlayLocationUtils;->registerGeofencesWithGooglePlayIfNecessary$lambda$2(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Q4lOOCGYXe0GacugZ1aIXLcI8h8(Lcom/braze/managers/IBrazeGeofenceLocationUpdateListener;Landroid/location/Location;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/location/GooglePlayLocationUtils;->requestSingleLocationUpdateFromGooglePlay$lambda$15(Lcom/braze/managers/IBrazeGeofenceLocationUpdateListener;Landroid/location/Location;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Qweh1m9j1FlqVYMAuhHbDVLZc6Y()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/location/GooglePlayLocationUtils;->requestSingleLocationUpdateFromGooglePlay$lambda$15$lambda$14()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$S1fuq3xfG9eSLq9g_b-ms-iWCe0(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0}, Lcom/braze/location/GooglePlayLocationUtils;->removeGeofencesRegisteredWithGeofencingClient$lambda$41(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SX1WQGS0GYQ6zPnRUziGEqmb3bk(Lcom/braze/models/BrazeGeofence;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/location/GooglePlayLocationUtils;->storeGeofencesToSharedPrefs$lambda$42(Lcom/braze/models/BrazeGeofence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WC2W1Q5mGyJpPhyVgiUhgsqAPXs()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/location/GooglePlayLocationUtils;->registerGeofencesWithGooglePlayIfNecessary$lambda$9()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$X3vkeojyVV6esTTX2ZrHEgaKp5U()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/location/GooglePlayLocationUtils;->registerGeofencesWithGeofencingClient$lambda$23$lambda$22()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$ZV2ECVRsw0Huyk3n-CSosRNoO3M()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/location/GooglePlayLocationUtils;->registerGeofencesWithGooglePlayIfNecessary$lambda$12()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$_3_j_6LWs4lUf0xSJ00bg1ymvi8(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/location/GooglePlayLocationUtils;->registerGeofencesWithGeofencingClient$lambda$31$lambda$27(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$a9qJ00qmd1vql-IJIzS8PY8pSnI(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/location/GooglePlayLocationUtils;->removeGeofencesRegisteredWithGeofencingClient$lambda$34(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aaQtR9rCjlP-VRZwSxWRfWPuue8(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/location/GooglePlayLocationUtils;->removeGeofencesRegisteredWithGeofencingClient$lambda$41$lambda$36(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bzXwnU2vKDEafKsQBKzF9g3QdZo(Landroid/content/Context;Ljava/util/List;Ljava/lang/Void;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/braze/location/GooglePlayLocationUtils;->removeGeofencesRegisteredWithGeofencingClient$lambda$33(Landroid/content/Context;Ljava/util/List;Ljava/lang/Void;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$f8YAtatmhHDL_raZ0U2HEt0Dhqo(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/location/GooglePlayLocationUtils;->registerGeofencesWithGeofencingClient$lambda$31$lambda$25(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$h-BCmy1v8MzmWU1-TPJpFDWs848(Ljava/util/List;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/location/GooglePlayLocationUtils;->registerGeofencesWithGooglePlayIfNecessary$lambda$10(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iq385sJui11RiEktnFfhCUg-yJU()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/location/GooglePlayLocationUtils;->requestSingleLocationUpdateFromGooglePlay$lambda$19()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$jEgXt5zb-XU4rq4k2_V0KywvbbM(Landroid/content/Context;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/location/GooglePlayLocationUtils;->registerGeofencesWithGooglePlayIfNecessary$lambda$0(Landroid/content/Context;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kC_E6WkU0LrNeL7NGpT2s90Drbo(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/location/GooglePlayLocationUtils;->registerGeofencesWithGeofencingClient$lambda$31$lambda$29(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$l7oq7_gcXxJIQ5umCm-wRuf8T1o()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/location/GooglePlayLocationUtils;->registerGeofencesWithGeofencingClient$lambda$31$lambda$28()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$nn1ys2somEIhxeOgkYM9QxbsXLw(Landroid/content/Context;Ljava/util/List;Ljava/lang/Void;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/braze/location/GooglePlayLocationUtils;->registerGeofencesWithGeofencingClient$lambda$23(Landroid/content/Context;Ljava/util/List;Ljava/lang/Void;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ou7VwTVJ5UQWYV_CXd2T1Ny6pvs(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/location/GooglePlayLocationUtils;->requestSingleLocationUpdateFromGooglePlay$lambda$16(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qqd9a4EA3KiJcCXR_t0XwSmO9Tg()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/location/GooglePlayLocationUtils;->removeGeofencesRegisteredWithGeofencingClient$lambda$41$lambda$40()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$rMx0e4kMurelugaqGEg8RTDn4Y0(Ljava/util/List;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/location/GooglePlayLocationUtils;->registerGeofencesWithGooglePlayIfNecessary$lambda$8(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sHeMVFnpC8PqY-YKJPDeKU6MlSY()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/location/GooglePlayLocationUtils;->requestSingleLocationUpdateFromGooglePlay$lambda$13()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/braze/location/GooglePlayLocationUtils;

    invoke-direct {v0}, Lcom/braze/location/GooglePlayLocationUtils;-><init>()V

    sput-object v0, Lcom/braze/location/GooglePlayLocationUtils;->INSTANCE:Lcom/braze/location/GooglePlayLocationUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final deleteRegisteredGeofenceCache(Landroid/content/Context;)V
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v0, Lcom/braze/location/GooglePlayLocationUtils;->INSTANCE:Lcom/braze/location/GooglePlayLocationUtils;

    new-instance v6, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda17;

    invoke-direct {v6}, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda17;-><init>()V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 136
    invoke-virtual {v0, p0}, Lcom/braze/location/GooglePlayLocationUtils;->getRegisteredGeofenceSharedPrefs$android_sdk_location_release(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static final deleteRegisteredGeofenceCache$lambda$20()Ljava/lang/String;
    .locals 1

    .line 135
    const-string v0, "Deleting registered geofence cache."

    return-object v0
.end method

.method private final registerGeofencesWithGeofencingClient(Landroid/content/Context;Ljava/util/List;Landroid/app/PendingIntent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/braze/models/BrazeGeofence;",
            ">;",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    .line 152
    move-object v0, p2

    check-cast v0, Ljava/lang/Iterable;

    .line 304
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 305
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 306
    check-cast v2, Lcom/braze/models/BrazeGeofence;

    .line 152
    invoke-static {v2}, Lcom/braze/location/GooglePlayLocationUtilsKt;->toGeofence(Lcom/braze/models/BrazeGeofence;)Lcom/google/android/gms/location/Geofence;

    move-result-object v2

    .line 306
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 307
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 153
    new-instance v0, Lcom/google/android/gms/location/GeofencingRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/location/GeofencingRequest$Builder;-><init>()V

    .line 154
    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/GeofencingRequest$Builder;->addGeofences(Ljava/util/List;)Lcom/google/android/gms/location/GeofencingRequest$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 155
    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/GeofencingRequest$Builder;->setInitialTrigger(I)Lcom/google/android/gms/location/GeofencingRequest$Builder;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lcom/google/android/gms/location/GeofencingRequest$Builder;->build()Lcom/google/android/gms/location/GeofencingRequest;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    invoke-static {p1}, Lcom/google/android/gms/location/LocationServices;->getGeofencingClient(Landroid/content/Context;)Lcom/google/android/gms/location/GeofencingClient;

    move-result-object v1

    invoke-interface {v1, v0, p3}, Lcom/google/android/gms/location/GeofencingClient;->addGeofences(Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p3

    .line 158
    new-instance v0, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;Ljava/util/List;)V

    new-instance p1, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda4;

    invoke-direct {p1, v0}, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p3, p1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 162
    new-instance p2, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda5;

    invoke-direct {p2}, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private static final registerGeofencesWithGeofencingClient$lambda$23(Landroid/content/Context;Ljava/util/List;Ljava/lang/Void;)Lkotlin/Unit;
    .locals 8

    .line 159
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object p2, Lcom/braze/location/GooglePlayLocationUtils;->INSTANCE:Lcom/braze/location/GooglePlayLocationUtils;

    new-instance v5, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda18;

    invoke-direct {v5}, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda18;-><init>()V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 160
    invoke-virtual {p2, p0, p1}, Lcom/braze/location/GooglePlayLocationUtils;->storeGeofencesToSharedPrefs$android_sdk_location_release(Landroid/content/Context;Ljava/util/List;)V

    .line 161
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final registerGeofencesWithGeofencingClient$lambda$23$lambda$22()Ljava/lang/String;
    .locals 1

    .line 159
    const-string v0, "Geofences successfully registered with Google Play Services."

    return-object v0
.end method

.method private static final registerGeofencesWithGeofencingClient$lambda$24(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    .line 158
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final registerGeofencesWithGeofencingClient$lambda$31(Ljava/lang/Exception;)V
    .locals 17

    move-object/from16 v0, p0

    .line 163
    instance-of v1, v0, Lcom/google/android/gms/common/api/ApiException;

    if-eqz v1, :cond_1

    .line 164
    check-cast v0, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result v0

    if-eqz v0, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 180
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/location/GooglePlayLocationUtils;->INSTANCE:Lcom/braze/location/GooglePlayLocationUtils;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda33;

    invoke-direct {v6, v0}, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda33;-><init>(I)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_0

    .line 168
    :pswitch_0
    sget-object v9, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v10, Lcom/braze/location/GooglePlayLocationUtils;->INSTANCE:Lcom/braze/location/GooglePlayLocationUtils;

    sget-object v11, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v14, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda11;

    invoke-direct {v14, v0}, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda11;-><init>(I)V

    const/4 v15, 0x6

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v9 .. v16}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_0

    .line 165
    :pswitch_1
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/location/GooglePlayLocationUtils;->INSTANCE:Lcom/braze/location/GooglePlayLocationUtils;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda0;-><init>(I)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v8

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_0

    .line 171
    :pswitch_2
    sget-object v9, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v10, Lcom/braze/location/GooglePlayLocationUtils;->INSTANCE:Lcom/braze/location/GooglePlayLocationUtils;

    sget-object v11, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v14, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda22;

    invoke-direct {v14, v0}, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda22;-><init>(I)V

    const/4 v15, 0x6

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v9 .. v16}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_0

    .line 177
    :cond_0
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/location/GooglePlayLocationUtils;->INSTANCE:Lcom/braze/location/GooglePlayLocationUtils;

    new-instance v5, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda32;

    invoke-direct {v5}, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda32;-><init>()V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_0

    .line 183
    :cond_1
    sget-object v8, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v9, Lcom/braze/location/GooglePlayLocationUtils;->INSTANCE:Lcom/braze/location/GooglePlayLocationUtils;

    sget-object v10, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    move-object v11, v0

    check-cast v11, Ljava/lang/Throwable;

    new-instance v13, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda34;

    invoke-direct {v13}, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda34;-><init>()V

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v12, 0x0

    invoke-static/range {v8 .. v15}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final registerGeofencesWithGeofencingClient$lambda$31$lambda$25(I)Ljava/lang/String;
    .locals 2

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Geofences not registered with Google Play Services due to GEOFENCE_TOO_MANY_GEOFENCES: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final registerGeofencesWithGeofencingClient$lambda$31$lambda$26(I)Ljava/lang/String;
    .locals 2

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Geofences not registered with Google Play Services due to GEOFENCE_TOO_MANY_PENDING_INTENTS: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final registerGeofencesWithGeofencingClient$lambda$31$lambda$27(I)Ljava/lang/String;
    .locals 2

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Geofences not registered with Google Play Services due to GEOFENCE_NOT_AVAILABLE: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final registerGeofencesWithGeofencingClient$lambda$31$lambda$28()Ljava/lang/String;
    .locals 1

    .line 178
    const-string v0, "Received Geofence registration success code in failure block with Google Play Services."

    return-object v0
.end method

.method private static final registerGeofencesWithGeofencingClient$lambda$31$lambda$29(I)Ljava/lang/String;
    .locals 2

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Geofence pending result returned unknown status code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final registerGeofencesWithGeofencingClient$lambda$31$lambda$30()Ljava/lang/String;
    .locals 1

    .line 183
    const-string v0, "Geofence exception encountered while adding geofences."

    return-object v0
.end method

.method public static final registerGeofencesWithGooglePlayIfNecessary(Landroid/content/Context;Ljava/util/List;Landroid/app/PendingIntent;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/braze/models/BrazeGeofence;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/braze/models/BrazeGeofence;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "desiredGeofencesToRegister"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "geofenceRequestIntent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "removalFunction"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "registerFunction"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object p2, Lcom/braze/location/GooglePlayLocationUtils;->INSTANCE:Lcom/braze/location/GooglePlayLocationUtils;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda24;

    invoke-direct {v5, p1}, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda24;-><init>(Ljava/util/List;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 54
    :try_start_0
    invoke-virtual {p2, p0}, Lcom/braze/location/GooglePlayLocationUtils;->getRegisteredGeofenceSharedPrefs$android_sdk_location_release(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 55
    sget-object p2, Lcom/braze/managers/BrazeGeofenceManager;->Companion:Lcom/braze/managers/BrazeGeofenceManager$Companion;

    invoke-virtual {p2, p0}, Lcom/braze/managers/BrazeGeofenceManager$Companion;->retrieveBrazeGeofencesFromLocalStorage(Landroid/content/SharedPreferences;)Ljava/util/List;

    move-result-object p0

    .line 56
    move-object p2, p0

    check-cast p2, Ljava/lang/Iterable;

    const/16 v0, 0xa

    .line 288
    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 289
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    .line 290
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 291
    move-object v3, v1

    check-cast v3, Lcom/braze/models/BrazeGeofence;

    .line 56
    invoke-virtual {v3}, Lcom/braze/models/BrazeGeofence;->getId()Ljava/lang/String;

    move-result-object v3

    .line 291
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 65
    :cond_0
    check-cast p0, Ljava/lang/Iterable;

    .line 294
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/Collection;

    .line 295
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/braze/models/BrazeGeofence;

    .line 66
    move-object v4, p1

    check-cast v4, Ljava/lang/Iterable;

    .line 296
    instance-of v5, v4, Ljava/util/Collection;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    .line 297
    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/braze/models/BrazeGeofence;

    .line 67
    invoke-virtual {v5}, Lcom/braze/models/BrazeGeofence;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/braze/models/BrazeGeofence;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 295
    :cond_3
    :goto_2
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 299
    :cond_4
    check-cast p2, Ljava/util/List;

    .line 294
    check-cast p2, Ljava/lang/Iterable;

    .line 300
    new-instance p0, Ljava/util/ArrayList;

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p0, Ljava/util/Collection;

    .line 301
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 302
    check-cast v0, Lcom/braze/models/BrazeGeofence;

    .line 69
    invoke-virtual {v0}, Lcom/braze/models/BrazeGeofence;->getId()Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 303
    :cond_5
    check-cast p0, Ljava/util/List;

    .line 73
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    .line 74
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/braze/models/BrazeGeofence;

    .line 75
    invoke-virtual {v0}, Lcom/braze/models/BrazeGeofence;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/braze/models/BrazeGeofence;

    if-eqz v1, :cond_7

    .line 76
    invoke-virtual {v0, v1}, Lcom/braze/models/BrazeGeofence;->equivalentServerData(Lcom/braze/models/BrazeGeofence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 77
    :cond_7
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/location/GooglePlayLocationUtils;->INSTANCE:Lcom/braze/location/GooglePlayLocationUtils;

    new-instance v8, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda25;

    invoke-direct {v8, v0}, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda25;-><init>(Lcom/braze/models/BrazeGeofence;)V

    const/4 v9, 0x7

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 78
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 82
    :cond_8
    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_9

    .line 83
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/location/GooglePlayLocationUtils;->INSTANCE:Lcom/braze/location/GooglePlayLocationUtils;

    new-instance v5, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda26;

    invoke-direct {v5, p0}, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda26;-><init>(Ljava/util/List;)V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 84
    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 86
    :cond_9
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/location/GooglePlayLocationUtils;->INSTANCE:Lcom/braze/location/GooglePlayLocationUtils;

    new-instance v5, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda27;

    invoke-direct {v5}, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda27;-><init>()V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 88
    :goto_5
    move-object p0, p2

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_a

    .line 89
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/location/GooglePlayLocationUtils;->INSTANCE:Lcom/braze/location/GooglePlayLocationUtils;

    new-instance v5, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda28;

    invoke-direct {v5, p2}, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda28;-><init>(Ljava/util/List;)V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 90
    invoke-interface {p4, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 92
    :cond_a
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/location/GooglePlayLocationUtils;->INSTANCE:Lcom/braze/location/GooglePlayLocationUtils;

    new-instance v5, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda29;

    invoke-direct {v5}, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda29;-><init>()V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p0

    .line 95
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/location/GooglePlayLocationUtils;->INSTANCE:Lcom/braze/location/GooglePlayLocationUtils;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    move-object v3, p0

    check-cast v3, Ljava/lang/Throwable;

    new-instance v5, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda30;

    invoke-direct {v5}, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda30;-><init>()V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_6
    return-void
.end method

.method public static synthetic registerGeofencesWithGooglePlayIfNecessary$default(Landroid/content/Context;Ljava/util/List;Landroid/app/PendingIntent;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x8

    if-eqz p6, :cond_0

    .line 47
    new-instance p3, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda7;

    invoke-direct {p3, p0}, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda7;-><init>(Landroid/content/Context;)V

    :cond_0
    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_1

    .line 48
    new-instance p4, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda8;

    invoke-direct {p4, p0, p2}, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda8;-><init>(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 42
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/braze/location/GooglePlayLocationUtils;->registerGeofencesWithGooglePlayIfNecessary(Landroid/content/Context;Ljava/util/List;Landroid/app/PendingIntent;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final registerGeofencesWithGooglePlayIfNecessary$lambda$0(Landroid/content/Context;Ljava/util/List;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/braze/location/GooglePlayLocationUtils;->INSTANCE:Lcom/braze/location/GooglePlayLocationUtils;

    invoke-virtual {v0, p0, p1}, Lcom/braze/location/GooglePlayLocationUtils;->removeGeofencesRegisteredWithGeofencingClient$android_sdk_location_release(Landroid/content/Context;Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final registerGeofencesWithGooglePlayIfNecessary$lambda$1(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/util/List;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/braze/location/GooglePlayLocationUtils;->INSTANCE:Lcom/braze/location/GooglePlayLocationUtils;

    invoke-direct {v0, p0, p2, p1}, Lcom/braze/location/GooglePlayLocationUtils;->registerGeofencesWithGeofencingClient(Landroid/content/Context;Ljava/util/List;Landroid/app/PendingIntent;)V

    .line 50
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final registerGeofencesWithGooglePlayIfNecessary$lambda$10(Ljava/util/List;)Ljava/lang/String;
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Registering "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " new geofences with Google Play Services."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final registerGeofencesWithGooglePlayIfNecessary$lambda$11()Ljava/lang/String;
    .locals 1

    .line 92
    const-string v0, "No new geofences need to be registered with Google Play Services."

    return-object v0
.end method

.method private static final registerGeofencesWithGooglePlayIfNecessary$lambda$12()Ljava/lang/String;
    .locals 1

    .line 95
    const-string v0, "Exception while adding geofences."

    return-object v0
.end method

.method private static final registerGeofencesWithGooglePlayIfNecessary$lambda$2(Ljava/util/List;)Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "registerGeofencesWithGooglePlayIfNecessary called with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final registerGeofencesWithGooglePlayIfNecessary$lambda$7(Lcom/braze/models/BrazeGeofence;)Ljava/lang/String;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Geofence with id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/braze/models/BrazeGeofence;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " is new or has been updated."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final registerGeofencesWithGooglePlayIfNecessary$lambda$8(Ljava/util/List;)Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Un-registering "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " obsolete geofences from Google Play Services."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final registerGeofencesWithGooglePlayIfNecessary$lambda$9()Ljava/lang/String;
    .locals 1

    .line 86
    const-string v0, "No obsolete geofences need to be unregistered from Google Play Services."

    return-object v0
.end method

.method private final removeGeofencesFromSharedPrefs(Landroid/content/Context;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 257
    invoke-virtual {p0, p1}, Lcom/braze/location/GooglePlayLocationUtils;->getRegisteredGeofenceSharedPrefs$android_sdk_location_release(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 258
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 259
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 260
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda31;

    invoke-direct {v6, v0}, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda31;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_0

    .line 262
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static final removeGeofencesFromSharedPrefs$lambda$43(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Geofence with id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " removed from shared preferences."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final removeGeofencesRegisteredWithGeofencingClient$lambda$33(Landroid/content/Context;Ljava/util/List;Ljava/lang/Void;)Lkotlin/Unit;
    .locals 8

    .line 198
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object p2, Lcom/braze/location/GooglePlayLocationUtils;->INSTANCE:Lcom/braze/location/GooglePlayLocationUtils;

    new-instance v5, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda9;

    invoke-direct {v5}, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda9;-><init>()V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 199
    invoke-direct {p2, p0, p1}, Lcom/braze/location/GooglePlayLocationUtils;->removeGeofencesFromSharedPrefs(Landroid/content/Context;Ljava/util/List;)V

    .line 200
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final removeGeofencesRegisteredWithGeofencingClient$lambda$33$lambda$32()Ljava/lang/String;
    .locals 1

    .line 198
    const-string v0, "Geofences successfully un-registered with Google Play Services."

    return-object v0
.end method

.method private static final removeGeofencesRegisteredWithGeofencingClient$lambda$34(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    .line 197
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final removeGeofencesRegisteredWithGeofencingClient$lambda$41(Ljava/lang/Exception;)V
    .locals 17

    move-object/from16 v0, p0

    .line 202
    instance-of v1, v0, Lcom/google/android/gms/common/api/ApiException;

    if-eqz v1, :cond_1

    .line 203
    check-cast v0, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result v0

    if-eqz v0, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 219
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/location/GooglePlayLocationUtils;->INSTANCE:Lcom/braze/location/GooglePlayLocationUtils;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0}, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda1;-><init>(I)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_0

    .line 207
    :pswitch_0
    sget-object v9, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v10, Lcom/braze/location/GooglePlayLocationUtils;->INSTANCE:Lcom/braze/location/GooglePlayLocationUtils;

    sget-object v11, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v14, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda36;

    invoke-direct {v14, v0}, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda36;-><init>(I)V

    const/4 v15, 0x6

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v9 .. v16}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_0

    .line 204
    :pswitch_1
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/location/GooglePlayLocationUtils;->INSTANCE:Lcom/braze/location/GooglePlayLocationUtils;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda35;

    invoke-direct {v5, v0}, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda35;-><init>(I)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v8

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_0

    .line 210
    :pswitch_2
    sget-object v9, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v10, Lcom/braze/location/GooglePlayLocationUtils;->INSTANCE:Lcom/braze/location/GooglePlayLocationUtils;

    sget-object v11, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v14, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda37;

    invoke-direct {v14, v0}, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda37;-><init>(I)V

    const/4 v15, 0x6

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v9 .. v16}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_0

    .line 216
    :cond_0
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/location/GooglePlayLocationUtils;->INSTANCE:Lcom/braze/location/GooglePlayLocationUtils;

    new-instance v5, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda38;

    invoke-direct {v5}, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda38;-><init>()V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_0

    .line 222
    :cond_1
    sget-object v8, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v9, Lcom/braze/location/GooglePlayLocationUtils;->INSTANCE:Lcom/braze/location/GooglePlayLocationUtils;

    sget-object v10, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    move-object v11, v0

    check-cast v11, Ljava/lang/Throwable;

    new-instance v13, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda2;

    invoke-direct {v13}, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda2;-><init>()V

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v12, 0x0

    invoke-static/range {v8 .. v15}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final removeGeofencesRegisteredWithGeofencingClient$lambda$41$lambda$35(I)Ljava/lang/String;
    .locals 2

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Geofences cannot be un-registered with Google Play Services due to GEOFENCE_TOO_MANY_GEOFENCES: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final removeGeofencesRegisteredWithGeofencingClient$lambda$41$lambda$36(I)Ljava/lang/String;
    .locals 2

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Geofences cannot be un-registered with Google Play Services due to GEOFENCE_TOO_MANY_PENDING_INTENTS: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final removeGeofencesRegisteredWithGeofencingClient$lambda$41$lambda$37(I)Ljava/lang/String;
    .locals 2

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Geofences cannot be un-registered with Google Play Services due to GEOFENCE_NOT_AVAILABLE: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final removeGeofencesRegisteredWithGeofencingClient$lambda$41$lambda$38()Ljava/lang/String;
    .locals 1

    .line 217
    const-string v0, "Received Geofence un-registration success code in failure block with Google Play Services."

    return-object v0
.end method

.method private static final removeGeofencesRegisteredWithGeofencingClient$lambda$41$lambda$39(I)Ljava/lang/String;
    .locals 2

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Geofence pending result returned unknown status code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final removeGeofencesRegisteredWithGeofencingClient$lambda$41$lambda$40()Ljava/lang/String;
    .locals 1

    .line 222
    const-string v0, "Geofence exception encountered while removing geofences."

    return-object v0
.end method

.method public static final requestSingleLocationUpdateFromGooglePlay(Landroid/content/Context;Lcom/braze/managers/IBrazeGeofenceLocationUpdateListener;)V
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    :try_start_0
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/location/GooglePlayLocationUtils;->INSTANCE:Lcom/braze/location/GooglePlayLocationUtils;

    new-instance v6, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda10;

    invoke-direct {v6}, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda10;-><init>()V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 113
    invoke-static {p0}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object p0

    const/16 v0, 0x64

    const/4 v1, 0x0

    .line 114
    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->getCurrentLocation(ILcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    .line 115
    new-instance v0, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1}, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda12;-><init>(Lcom/braze/managers/IBrazeGeofenceLocationUpdateListener;)V

    new-instance v1, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda13;

    invoke-direct {v1, v0}, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda13;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    .line 119
    new-instance v0, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1}, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda14;-><init>(Lcom/braze/managers/IBrazeGeofenceLocationUpdateListener;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 124
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/location/GooglePlayLocationUtils;->INSTANCE:Lcom/braze/location/GooglePlayLocationUtils;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    move-object v3, p0

    check-cast v3, Ljava/lang/Throwable;

    new-instance v5, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda15;

    invoke-direct {v5}, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda15;-><init>()V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static final requestSingleLocationUpdateFromGooglePlay$lambda$13()Ljava/lang/String;
    .locals 1

    .line 112
    const-string v0, "Requesting single location update from Google Play Services."

    return-object v0
.end method

.method private static final requestSingleLocationUpdateFromGooglePlay$lambda$15(Lcom/braze/managers/IBrazeGeofenceLocationUpdateListener;Landroid/location/Location;)Lkotlin/Unit;
    .locals 8

    .line 116
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/location/GooglePlayLocationUtils;->INSTANCE:Lcom/braze/location/GooglePlayLocationUtils;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda6;

    invoke-direct {v5}, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda6;-><init>()V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 117
    new-instance v0, Lcom/braze/models/outgoing/BrazeLocation;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p1}, Lcom/braze/models/outgoing/BrazeLocation;-><init>(Landroid/location/Location;)V

    check-cast v0, Lcom/braze/models/IBrazeLocation;

    invoke-interface {p0, v0}, Lcom/braze/managers/IBrazeGeofenceLocationUpdateListener;->onLocationRequestComplete(Lcom/braze/models/IBrazeLocation;)V

    .line 118
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final requestSingleLocationUpdateFromGooglePlay$lambda$15$lambda$14()Ljava/lang/String;
    .locals 1

    .line 116
    const-string v0, "Single location request from Google Play services was successful."

    return-object v0
.end method

.method private static final requestSingleLocationUpdateFromGooglePlay$lambda$16(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    .line 115
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final requestSingleLocationUpdateFromGooglePlay$lambda$18(Lcom/braze/managers/IBrazeGeofenceLocationUpdateListener;Ljava/lang/Exception;)V
    .locals 8

    .line 120
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/location/GooglePlayLocationUtils;->INSTANCE:Lcom/braze/location/GooglePlayLocationUtils;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    move-object v3, p1

    check-cast v3, Ljava/lang/Throwable;

    new-instance v5, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda16;

    invoke-direct {v5}, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda16;-><init>()V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    const/4 p1, 0x0

    .line 121
    invoke-interface {p0, p1}, Lcom/braze/managers/IBrazeGeofenceLocationUpdateListener;->onLocationRequestComplete(Lcom/braze/models/IBrazeLocation;)V

    return-void
.end method

.method private static final requestSingleLocationUpdateFromGooglePlay$lambda$18$lambda$17()Ljava/lang/String;
    .locals 1

    .line 120
    const-string v0, "Failed to get single location update from Google Play services."

    return-object v0
.end method

.method private static final requestSingleLocationUpdateFromGooglePlay$lambda$19()Ljava/lang/String;
    .locals 1

    .line 124
    const-string v0, "Failed to request location update due to exception."

    return-object v0
.end method

.method private static final storeGeofencesToSharedPrefs$lambda$42(Lcom/braze/models/BrazeGeofence;)Ljava/lang/String;
    .locals 2

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Geofence with id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/braze/models/BrazeGeofence;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " added to shared preferences."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getRegisteredGeofenceSharedPrefs$android_sdk_location_release(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    const-string v0, "com.appboy.support.geofences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "getSharedPreferences(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final removeGeofencesRegisteredWithGeofencingClient$android_sdk_location_release(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "obsoleteGeofenceIds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-static {p1}, Lcom/google/android/gms/location/LocationServices;->getGeofencingClient(Landroid/content/Context;)Lcom/google/android/gms/location/GeofencingClient;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/android/gms/location/GeofencingClient;->removeGeofences(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 197
    new-instance v1, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda19;

    invoke-direct {v1, p1, p2}, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda19;-><init>(Landroid/content/Context;Ljava/util/List;)V

    new-instance p1, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda20;

    invoke-direct {p1, v1}, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda20;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 201
    new-instance p2, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda21;

    invoke-direct {p2}, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda21;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final storeGeofencesToSharedPrefs$android_sdk_location_release(Landroid/content/Context;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/braze/models/BrazeGeofence;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newGeofencesToRegister"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0, p1}, Lcom/braze/location/GooglePlayLocationUtils;->getRegisteredGeofenceSharedPrefs$android_sdk_location_release(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 243
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/braze/models/BrazeGeofence;

    .line 244
    invoke-virtual {v0}, Lcom/braze/models/BrazeGeofence;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/braze/models/BrazeGeofence;->forJsonPut()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 245
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v5, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v8, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda23;

    invoke-direct {v8, v0}, Lcom/braze/location/GooglePlayLocationUtils$$ExternalSyntheticLambda23;-><init>(Lcom/braze/models/BrazeGeofence;)V

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    invoke-static/range {v3 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_0

    .line 247
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
