.class public Ldev/blaze/launcher/ProxyPackageManager;
.super Landroid/content/pm/PackageManager;


# static fields
.field private static final short:[S


# instance fields
.field private final mLibDir:Ljava/lang/String;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 52

    const v0, 0x15

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Ldev/blaze/launcher/ProxyPackageManager;->short:[S

    return-void

    nop

    :array_0
    .array-data 2
        0x591s
        0x5acs
        0x5a7s
        0x5a3s
        0x5a9s
        0x5bbs
        0x85es
        0x875s
        0x867s
        0x830s
        0x840s
        0x85ds
        0x830s
        0x873s
        0x862s
        0x875s
        0x871s
        0x864s
        0x875s
        0x874s
        0x831s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 53

    move-object/from16 v4, p2

    move-object/from16 v3, p1

    move-object/from16 v2, p0

    invoke-direct {v2}, Landroid/content/pm/PackageManager;-><init>()V

    invoke-static/range {}, Ldev/blaze/launcher/ProxyPackageManager;->۟ۦۥۥۨ()[S

    move-result-object v24

    const v27, 0x5c2

    const v25, 0x0

    const v26, 0x6

    invoke-static/range {v24 .. v27}, Lcom/bea/xml/stream/util/۟ۦۤۨۡ;->ۣۢۢۢ([SIII)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static/range {}, Ldev/blaze/launcher/ProxyPackageManager;->۟ۦۥۥۨ()[S

    move-result-object v28

    const v31, 0x810

    const v29, 0x6

    const v30, 0xf

    invoke-static/range {v28 .. v31}, Lorg/spongycastle/operator/۟ۡۤۡ۠;->ۤۥ۟ۦ([SIII)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v1, v28

    iput-object v3, v2, Ldev/blaze/launcher/ProxyPackageManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object v4, v2, Ldev/blaze/launcher/ProxyPackageManager;->mLibDir:Ljava/lang/String;

    return-void
.end method

.method public static ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;
    .locals 2

    invoke-static {}, Lorg/spongycastle/x509/util/۟ۧۡ۠۠;->۠ۤۦۣ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ProxyPackageManager;

    iget-object v1, p0, Ldev/blaze/launcher/ProxyPackageManager;->mPackageManager:Landroid/content/pm/PackageManager;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۟ۢۢ۠ۦ(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/google/firebase/platforminfo/ۣۣۤۥ;->۟ۤ۠ۧۨ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ProxyPackageManager;

    iget-object v1, p0, Ldev/blaze/launcher/ProxyPackageManager;->mLibDir:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۟ۦۥۥۨ()[S
    .locals 1

    invoke-static {}, Landroidx/browser/trusted/splashscreens/۠ۨ۟ۢ;->ۢۡۥۥ()I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Ldev/blaze/launcher/ProxyPackageManager;->short:[S

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addPackageToPreferred(Ljava/lang/String;)V
    .locals 52

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/firebase/messaging/ktx/ۣۣ۟۠۠;->ۣ۠ۢۥ(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public addPermission(Landroid/content/pm/PermissionInfo;)Z
    .locals 52

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2}, Landroidx/lifecycle/livedata/core/ۣۢۥۦ;->ۣ۟ۢۦۤ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z
    .locals 52

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/spongycastle/asn1/mozilla/۟ۤ۟ۧۤ;->ۣ۟ۡۤ۟(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 52

    move-object/from16 v5, p4

    move-object/from16 v4, p3

    move/from16 v3, p2

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2, v3, v4, v5}, Lorg/spongycastle/pqc/jcajce/provider/gmss/۟ۧۧ۠ۤ;->ۡۡۢۦ(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public canRequestPackageInstalls()Z
    .locals 52

    move-object/from16 v1, p0

    const/4 v0, 0x0

    return v0
.end method

.method public canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 52

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/ۤۢ۟ۨ;->ۣۡۡ۠(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    .locals 52

    move-object/from16 v3, p2

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lkotlin/jvm/internal/ۣ۠ۧۡ;->ۣۢۢۥ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    return v2
.end method

.method public checkSignatures(II)I
    .locals 52

    move/from16 v3, p2

    move/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/google/android/material/chip/ۧۨۤۡ;->ۡۢۨۡ(Ljava/lang/Object;II)I

    move-result v2

    return v2
.end method

.method public checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    .locals 52

    move-object/from16 v3, p2

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lkotlin/jvm/internal/ۣ۠ۧۡ;->ۣۢۢۥ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    return v2
.end method

.method public clearInstantAppCookie()V
    .locals 51

    move-object/from16 v0, p0

    return-void
.end method

.method public clearPackagePreferredActivities(Ljava/lang/String;)V
    .locals 52

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/spongycastle/jce/۠ۡۧۦ;->۟ۧۡۦۡ(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 52

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/apache/commons/codec/language/۟ۢۦۤ۟;->ۤ۟۟ۡ(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public extendVerificationTimeout(IIJ)V
    .locals 52

    move-wide/from16 v4, p3

    move/from16 v3, p2

    move/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/mojang/android/۟۟ۤۥۡ;->۟۟ۡۦۣ(Ljava/lang/Object;IIJ)V

    return-void
.end method

.method public getActivityBanner(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 51
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    const/4 v1, 0x0

    return-object v1
.end method

.method public getActivityBanner(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 51
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    const/4 v1, 0x0

    return-object v1
.end method

.method public getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 52
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/material/canvas/ۧۧ۠ۦ;->ۢۥ(Ljava/lang/Object;Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method public getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 52
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/braze/triggers/conditions/ۦۤ۟ۡ;->۟ۦۡ۠ۡ(Ljava/lang/Object;Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method public getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 52
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    move/from16 v3, p2

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2, v3}, Landroidx/browser/trusted/sharing/۟ۡۧ۟ۥ;->ۣ۟ۡۢۨ(Ljava/lang/Object;Ljava/lang/Object;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/dvcs/ۥۨ۠۟;->ۣ۟ۡ۠ۤ(Ljava/lang/Object;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->۟ۢۢ۠ۦ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    return-object v2
.end method

.method public getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 52
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/spongycastle/pqc/crypto/rainbow/ۣۧۨۨ;->۟ۡۡۤۤ(Ljava/lang/Object;Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method public getActivityLogo(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 52
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/ranges/ۣ۟۟ۢ۠;->۠ۡۦ(Ljava/lang/Object;Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method public getAllPermissionGroups(I)Ljava/util/List;
    .locals 52
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    move/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/spongycastle/asn1/x509/ۣۡۡۤ;->۟ۦۡۤۦ(Ljava/lang/Object;I)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getApplicationBanner(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 51

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    const/4 v1, 0x0

    return-object v1
.end method

.method public getApplicationBanner(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 51
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    const/4 v1, 0x0

    return-object v1
.end method

.method public getApplicationEnabledSetting(Ljava/lang/String;)I
    .locals 52

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/braze/ui/inappmessage/utils/ۣ۟۟ۧ۟;->۟ۧۡۨۡ(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    return v2
.end method

.method public getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 52

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2}, Landroidx/activity/ktx/۠ۥۤۨ;->ۣ۟ۥۦۨ(Ljava/lang/Object;Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method public getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 52
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2}, Landroidx/core/net/ۧۢ۠ۦ;->ۣۣ۟ۡ(Ljava/lang/Object;Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method public getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 52
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    move/from16 v3, p2

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lkotlin/annotation/ۡۨۡ۠;->ۥۧ۟(Ljava/lang/Object;Ljava/lang/Object;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    return-object v2
.end method

.method public getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 52

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/material/circularreveal/cardview/۟ۤۢ۠ۨ;->۟۠ۧۢۢ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method public getApplicationLogo(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 52

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2}, Ldev/blaze/launcher/Server/ۦۥۤۢ;->۟۠ۦۡۢ(Ljava/lang/Object;Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method public getApplicationLogo(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 52
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/firebase/dynamicloading/ۡ۟ۧۥ;->ۣۣ۠ۧ(Ljava/lang/Object;Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method public getChangedPackages(I)Landroid/content/pm/ChangedPackages;
    .locals 51

    move/from16 v1, p1

    move-object/from16 v0, p0

    const/4 v1, 0x0

    return-object v1
.end method

.method public getComponentEnabledSetting(Landroid/content/ComponentName;)I
    .locals 52

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/braze/models/outgoing/event/push/ۣۧۧ۠;->ۣ۟ۧۤ(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    return v2
.end method

.method public getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 52

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Landroidx/profileinstaller/ۣ۟;->ۣۣ۠ۨ(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 52

    move-object/from16 v4, p3

    move/from16 v3, p2

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/material/bottomappbar/ۦۥۨۨ;->ۣۧ۟ۨ(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method public getInstalledApplications(I)Ljava/util/List;
    .locals 52
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    move/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/braze/requests/framework/queue/۟ۥۦۦۦ;->ۣۤۧۢ(Ljava/lang/Object;I)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getInstalledPackages(I)Ljava/util/List;
    .locals 52
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    move/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2}, Landroidx/appcompat/view/menu/۟ۥ۠ۨۡ;->ۡ۟ۦۣ(Ljava/lang/Object;I)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 52

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/spongycastle/crypto/parsers/ۢۢۤۥ;->ۡ۠ۥۦ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getInstantAppCookie()[B
    .locals 52

    move-object/from16 v1, p0

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public getInstantAppCookieMaxBytes()I
    .locals 52

    move-object/from16 v1, p0

    const/4 v0, 0x0

    return v0
.end method

.method public getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    .locals 52
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    move/from16 v3, p2

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lorg/apache/http/impl/conn/ۤۥۣۨ;->۟ۢۥۦۨ(Ljava/lang/Object;Ljava/lang/Object;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v2

    return-object v2
.end method

.method public getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    .locals 52

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/firebase/platforminfo/ۣۣۤۥ;->ۦ۠ۥۤ(Ljava/lang/Object;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v2

    return-object v2
.end method

.method public getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    .locals 52

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2}, Landroidx/vectordrawable/animated/۟۠ۧۥ;->ۨ۟ۡۤ(Ljava/lang/Object;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v2

    return-object v2
.end method

.method public getNameForUid(I)Ljava/lang/String;
    .locals 52

    move/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/۟ۧ۟ۦ۟;->ۣ۟ۢۥ۠(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getPackageGids(Ljava/lang/String;)[I
    .locals 52
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/ranges/ۣ۟۟ۦۥ;->ۣ۠۠ۤ(Ljava/lang/Object;Ljava/lang/Object;)[I

    move-result-object v2

    return-object v2
.end method

.method public getPackageGids(Ljava/lang/String;I)[I
    .locals 51
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    move/from16 v2, p2

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    const/4 v1, 0x0

    new-array v1, v1, [I

    return-object v1
.end method

.method public getPackageInfo(Landroid/content/pm/VersionedPackage;I)Landroid/content/pm/PackageInfo;
    .locals 51
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    move/from16 v2, p2

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    const/4 v1, 0x0

    return-object v1
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 52
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    move/from16 v3, p2

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lkotlin/internal/jdk8/۟ۡ۠۠ۦ;->۟ۢۢۢۨ(Ljava/lang/Object;Ljava/lang/Object;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    return-object v2
.end method

.method public getPackageInstaller()Landroid/content/pm/PackageInstaller;
    .locals 52

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/internal/ۤ۠ۥۨ;->۟ۢۦۢۨ(Ljava/lang/Object;)Landroid/content/pm/PackageInstaller;

    move-result-object v0

    return-object v0
.end method

.method public getPackageUid(Ljava/lang/String;I)I
    .locals 51
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    move/from16 v2, p2

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    const/4 v1, 0x0

    return v1
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .locals 52

    move/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/apache/http/io/ۨۨۨۢ;->ۣ۟ۡۥۡ(Ljava/lang/Object;I)[Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;
    .locals 51
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    move/from16 v2, p2

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    const/4 v1, 0x0

    return-object v1
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 52
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    move/from16 v3, p2

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2, v3}, Landroid/support/v4/graphics/drawable/ۣۣ۟۠۟;->ۣۢۥۧ(Ljava/lang/Object;Ljava/lang/Object;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v2

    return-object v2
.end method

.method public getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .locals 52
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    move/from16 v3, p2

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2, v3}, Landroidx/localbroadcastmanager/ۤۢ۟ۨ;->۟ۢۦ۠ۨ(Ljava/lang/Object;Ljava/lang/Object;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    return-object v2
.end method

.method public getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    .locals 52
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    move-object/from16 v4, p3

    move-object/from16 v3, p2

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2, v3, v4}, Lorg/spongycastle/jcajce/provider/keystore/ۣ۟ۨۨ;->۟ۢ۟ۦۧ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    return v2
.end method

.method public getPreferredPackages(I)Ljava/util/List;
    .locals 52
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    move/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/material/carousel/۟ۡ۠ۨ۟;->ۤۥۥۥ(Ljava/lang/Object;I)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    .locals 52
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    move/from16 v3, p2

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/google/firebase/ktx/ۥۨۡۨ;->ۣۤۤۡ(Ljava/lang/Object;Ljava/lang/Object;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    return-object v2
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 52
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    move/from16 v3, p2

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lorg/apache/http/conn/۟ۨ۟ۥ;->۟ۦ۠ۤ(Ljava/lang/Object;Ljava/lang/Object;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    return-object v2
.end method

.method public getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;
    .locals 52
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2}, Landroidx/core/database/sqlite/ۢۢ۟ۡ;->۟ۥۡ۟ۢ(Ljava/lang/Object;Ljava/lang/Object;)Landroid/content/res/Resources;

    move-result-object v2

    return-object v2
.end method

.method public getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    .locals 52
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/spongycastle/crypto/io/ۣ۟ۨ۟;->ۢۦۦ۠(Ljava/lang/Object;Ljava/lang/Object;)Landroid/content/res/Resources;

    move-result-object v2

    return-object v2
.end method

.method public getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 52
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/material/canvas/ۣۨۧ۠;->ۡۡۥۦ(Ljava/lang/Object;Ljava/lang/Object;)Landroid/content/res/Resources;

    move-result-object v2

    return-object v2
.end method

.method public getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .locals 52
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    move/from16 v3, p2

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2, v3}, Landroidx/core/internal/view/۟ۥۧۧۨ;->۟ۧۤۢۡ(Ljava/lang/Object;Ljava/lang/Object;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    return-object v2
.end method

.method public getSharedLibraries(I)Ljava/util/List;
    .locals 51
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    move/from16 v1, p1

    move-object/from16 v0, p0

    invoke-static {}, Lcom/microsoft/xal/browser/۟ۥۢۢۦ;->۟ۥۧۨ۟()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;
    .locals 52

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/idp/util/ۣۣ۟۟;->۟ۦۦ۠ۥ(Ljava/lang/Object;)[Landroid/content/pm/FeatureInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSystemSharedLibraryNames()[Ljava/lang/String;
    .locals 52

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/impl/io/ۣ۟ۢۡ۟;->۟۟ۨۢۤ(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 52

    move-object/from16 v4, p3

    move/from16 v3, p2

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2, v3, v4}, Lorg/spongycastle/pkcs/bc/۟ۢۧۦ;->ۣۧۡ۟(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method public getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;
    .locals 51

    move/from16 v4, p4

    move-object/from16 v3, p3

    move-object/from16 v2, p2

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    const/4 v1, 0x0

    return-object v1
.end method

.method public getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 51

    move-object/from16 v2, p2

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    const/4 v1, 0x0

    return-object v1
.end method

.method public getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;
    .locals 51

    move-object/from16 v2, p2

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    const/4 v1, 0x0

    return-object v1
.end method

.method public getXml(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/content/res/XmlResourceParser;
    .locals 52

    move-object/from16 v4, p3

    move/from16 v3, p2

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2, v3, v4}, Lorg/spongycastle/asn1/eac/ۣ۟۠۟ۥ;->ۡۦۧ۠(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    return-object v2
.end method

.method public hasSystemFeature(Ljava/lang/String;)Z
    .locals 52

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/material/canvas/ۧۧ۠ۦ;->۟ۦۣۦۦ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public hasSystemFeature(Ljava/lang/String;I)Z
    .locals 51

    move/from16 v2, p2

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    const/4 v1, 0x0

    return v1
.end method

.method public isInstantApp()Z
    .locals 52

    move-object/from16 v1, p0

    const/4 v0, 0x0

    return v0
.end method

.method public isInstantApp(Ljava/lang/String;)Z
    .locals 51

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    const/4 v1, 0x0

    return v1
.end method

.method public isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 51

    move-object/from16 v2, p2

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    const/4 v1, 0x0

    return v1
.end method

.method public isSafeMode()Z
    .locals 52

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/impl/ۣۥۤۢ;->ۤۨۤ(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .locals 52
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    move/from16 v3, p2

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/google/android/material/bottomsheet/ۥۣۧ۟;->۟۟۠ۨ(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public queryContentProviders(Ljava/lang/String;II)Ljava/util/List;
    .locals 52
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    move/from16 v4, p3

    move/from16 v3, p2

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2, v3, v4}, Landroidx/core/text/ۡ۟ۤ۠;->ۢ۟ۧۥ(Ljava/lang/Object;Ljava/lang/Object;II)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;
    .locals 52
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/InstrumentationInfo;",
            ">;"
        }
    .end annotation

    move/from16 v3, p2

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/google/firebase/ktx/ۥۨۡۨ;->ۥۣ۟ۦ(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .locals 52
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    move/from16 v3, p2

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2, v3}, Landroidx/startup/ۢۥۣۣ;->ۡۡۦۤ(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;
    .locals 52
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "[",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    move/from16 v5, p4

    move-object/from16 v4, p3

    move-object/from16 v3, p2

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2, v3, v4, v5}, Lorg/spongycastle/pqc/jcajce/provider/gmss/ۦۧۥۢ;->۟ۧۥۣۨ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;
    .locals 52
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    move/from16 v3, p2

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/cloudmessaging/۟۠ۦۣ۟;->ۡۨ۠(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    .locals 52
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    move/from16 v3, p2

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/google/firebase/installations/interop/ۦۥۤۢ;->۟ۥۧۡ(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .locals 52
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    move/from16 v3, p2

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2, v3}, Landroidx/lifecycle/extensions/ۢ۟ۢ;->ۡۦۣۦ(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public removePackageFromPreferred(Ljava/lang/String;)V
    .locals 52

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/spongycastle/cert/selector/jcajce/۟ۧۦۤۤ;->ۢۧۧۤ(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public removePermission(Ljava/lang/String;)V
    .locals 52

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/ranges/ۣ۟۟ۦۥ;->ۧۢۤ۟(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 52

    move/from16 v3, p2

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/braze/ui/contentcards/view/۟ۦۢ۟ۨ;->۟۟ۥۦ(Ljava/lang/Object;Ljava/lang/Object;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    return-object v2
.end method

.method public resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    .locals 52

    move/from16 v3, p2

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/braze/ui/support/ۧۦۡ۠;->۟ۢۢۡۦ(Ljava/lang/Object;Ljava/lang/Object;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    return-object v2
.end method

.method public resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 52

    move/from16 v3, p2

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2, v3}, Landroidx/versionedparcelable/۟ۥۣۡۤ;->ۡۦۢۤ(Ljava/lang/Object;Ljava/lang/Object;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    return-object v2
.end method

.method public setApplicationCategoryHint(Ljava/lang/String;I)V
    .locals 51

    move/from16 v2, p2

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    return-void
.end method

.method public setApplicationEnabledSetting(Ljava/lang/String;II)V
    .locals 52

    move/from16 v4, p3

    move/from16 v3, p2

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2, v3, v4}, Lcom/braze/enums/ۣۧۨۧ;->ۣۧۨ۠(Ljava/lang/Object;Ljava/lang/Object;II)V

    return-void
.end method

.method public setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    .locals 52

    move/from16 v4, p3

    move/from16 v3, p2

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/datatransport/runtime/logging/ۣۤۧۢ;->۠ۧۡۢ(Ljava/lang/Object;Ljava/lang/Object;II)V

    return-void
.end method

.method public setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 52

    move-object/from16 v3, p2

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lkotlin/io/encoding/ۤۦۣۦ;->ۣۡۢ۠(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public updateInstantAppCookie([B)V
    .locals 51

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    return-void
.end method

.method public verifyPendingInstall(II)V
    .locals 52

    move/from16 v3, p2

    move/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Ldev/blaze/launcher/ProxyPackageManager;->ۣ۟۟ۨۡ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/bea/xml/stream/samples/۟ۧ۟ۥۧ;->ۣۣۢ۟(Ljava/lang/Object;II)V

    return-void
.end method
