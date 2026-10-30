.class public final Ldev/blaze/launcher/App;
.super Landroid/app/Application;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/blaze/launcher/App$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nApp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 App.kt\ndev/blaze/launcher/App\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,90:1\n1863#2,2:91\n*S KotlinDebug\n*F\n+ 1 App.kt\ndev/blaze/launcher/App\n*L\n63#1:91,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014J\u0008\u0010\u0007\u001a\u00020\u0004H\u0002J\u0008\u0010\u0008\u001a\u00020\u0004H\u0016J\u0008\u0010\t\u001a\u00020\u0004H\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "Ldev/blaze/launcher/App;",
        "Landroid/app/Application;",
        "()V",
        "attachBaseContext",
        "",
        "base",
        "Landroid/content/Context;",
        "loadLibraries",
        "onCreate",
        "patchNativeLibraryDir",
        "Companion",
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


# static fields
.field public static final AD_UNIT_ID:Ljava/lang/String;

.field public static final AD_UNIT_INTERSTITIAL_ID:Ljava/lang/String;

.field public static final Companion:Ldev/blaze/launcher/App$Companion;

.field public static final FIRST_SHOW_AD_TIME:J = 0x3a98L

.field public static final PRIVACY_POLICE_MINECRAFT:Ljava/lang/String;

.field public static final PRIVACY_POLICE_XBOX:Ljava/lang/String;

.field private static final REDIRECT_MINECRAFT_URLS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final REDIRECT_URL:Ljava/lang/String;

.field public static final SHOW_AD_TIME:J = 0x2bf20L

.field private static final short:[S


# direct methods
.method static constructor <clinit>()V
    .locals 54

    const v0, 0x21c

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Ldev/blaze/launcher/App;->short:[S

    invoke-static/range {}, Ldev/blaze/launcher/App;->۟۠ۥۧۥ()[S

    move-result-object v14

    const v17, 0xb6d

    const v15, 0x0

    const v16, 0x24

    invoke-static/range {v14 .. v17}, Lcom/google/android/material/drawable/ۨۦۢۨ;->ۣ۟ۡ۟ۦ([SIII)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v14

    sput-object v0, Ldev/blaze/launcher/App;->AD_UNIT_ID:Ljava/lang/String;

    invoke-static/range {}, Ldev/blaze/launcher/App;->۟۠ۥۧۥ()[S

    move-result-object v21

    const v24, 0x60b

    const v22, 0x24

    const v23, 0x24

    invoke-static/range {v21 .. v24}, Lkotlin/random/ۨۨ۠۠;->۠ۥۤۤ([SIII)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    sput-object v0, Ldev/blaze/launcher/App;->AD_UNIT_INTERSTITIAL_ID:Ljava/lang/String;

    invoke-static/range {}, Ldev/blaze/launcher/App;->۟۠ۥۧۥ()[S

    move-result-object v42

    const v45, 0x931

    const v43, 0x48

    const v44, 0x28

    invoke-static/range {v42 .. v45}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/۟ۥۣ۟ۡ;->۟ۦ۠ۨۧ([SIII)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    sput-object v0, Ldev/blaze/launcher/App;->PRIVACY_POLICE_MINECRAFT:Ljava/lang/String;

    invoke-static/range {}, Ldev/blaze/launcher/App;->۟۠ۥۧۥ()[S

    move-result-object v13

    const v16, 0xc79

    const v14, 0x70

    const v15, 0x34

    invoke-static/range {v13 .. v16}, Lcom/bea/xml/stream/samples/۟ۧ۟ۥۧ;->ۡۨۥۣ([SIII)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v13

    sput-object v0, Ldev/blaze/launcher/App;->PRIVACY_POLICE_XBOX:Ljava/lang/String;

    invoke-static {}, Ldev/blaze/launcher/App;->۟۠ۥۧۥ()[S

    move-result-object v9

    const v12, 0x16a

    const v10, 0xa4

    const v11, 0x1a

    invoke-static/range {v9 .. v12}, Lorg/spongycastle/jce/spec/ۣ۟۠ۦۡ;->ۣۦۧ۟([SIII)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v9

    sput-object v0, Ldev/blaze/launcher/App;->REDIRECT_URL:Ljava/lang/String;

    new-instance v0, Ldev/blaze/launcher/App$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldev/blaze/launcher/App$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ldev/blaze/launcher/App;->Companion:Ldev/blaze/launcher/App$Companion;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {}, Ldev/blaze/launcher/App;->۟۠ۥۧۥ()[S

    move-result-object v10

    const v13, 0xc47

    const v11, 0xbe

    const v12, 0x16

    invoke-static/range {v10 .. v13}, Lcom/google/android/material/sidesheet/۟ۧۥۡ۠;->ۣ۟ۧۧۧ([SIII)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v2, v10

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static/range {}, Ldev/blaze/launcher/App;->۟۠ۥۧۥ()[S

    move-result-object v11

    const v14, 0x5d8

    const v12, 0xd4

    const v13, 0x18

    invoke-static/range {v11 .. v14}, Lcom/google/android/material/chip/ۣۡۨۧ;->ۣ۟ۢۨۥ([SIII)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v2, v11

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static/range {}, Ldev/blaze/launcher/App;->۟۠ۥۧۥ()[S

    move-result-object v36

    const v39, 0x62a

    const v37, 0xec

    const v38, 0x17

    invoke-static/range {v36 .. v39}, Lokhttp3/internal/http1/ۤۤۢ;->ۧۧۥ۟([SIII)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v2, v36

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static/range {}, Ldev/blaze/launcher/App;->۟۠ۥۧۥ()[S

    move-result-object v37

    const v40, 0xb3e

    const v38, 0x103

    const v39, 0x2e

    invoke-static/range {v37 .. v40}, Lcom/mojang/android/۟۟ۤۥۡ;->ۧ۟۟ۦ([SIII)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v2, v37

    aput-object v2, v0, v1

    invoke-static {v0}, Ldev/blaze/launcher/App;->۟ۢۤۥۦ(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ldev/blaze/launcher/App;->REDIRECT_MINECRAFT_URLS:Ljava/util/List;

    return-void

    nop

    :array_0
    .array-data 2
        0xb0bs
        0xb55s
        0xb5es
        0xb54s
        0xb0cs
        0xb5as
        0xb5ds
        0xb58s
        0xb40s
        0xb0es
        0xb0bs
        0xb55s
        0xb0bs
        0xb40s
        0xb59s
        0xb09s
        0xb59s
        0xb5es
        0xb40s
        0xb55s
        0xb55s
        0xb0bs
        0xb0cs
        0xb40s
        0xb59s
        0xb5fs
        0xb5ds
        0xb5cs
        0xb59s
        0xb0es
        0xb5bs
        0xb0bs
        0xb0es
        0xb55s
        0xb55s
        0xb5bs
        0x669s
        0x63ds
        0x63ds
        0x63cs
        0x669s
        0x63ds
        0x63es
        0x66as
        0x626s
        0x63cs
        0x63es
        0x639s
        0x638s
        0x626s
        0x63fs
        0x63es
        0x63ds
        0x639s
        0x626s
        0x633s
        0x669s
        0x63fs
        0x63bs
        0x626s
        0x669s
        0x639s
        0x66fs
        0x63fs
        0x63as
        0x638s
        0x668s
        0x633s
        0x66es
        0x638s
        0x66fs
        0x66es
        0x959s
        0x945s
        0x945s
        0x941s
        0x942s
        0x90bs
        0x91es
        0x91es
        0x950s
        0x952s
        0x952s
        0x95es
        0x944s
        0x95fs
        0x945s
        0x91fs
        0x95cs
        0x95es
        0x95bs
        0x950s
        0x95fs
        0x956s
        0x91fs
        0x952s
        0x95es
        0x95cs
        0x91es
        0x945s
        0x954s
        0x943s
        0x95cs
        0x942s
        0x912s
        0x941s
        0x943s
        0x958s
        0x947s
        0x950s
        0x952s
        0x948s
        0xc11s
        0xc0ds
        0xc0ds
        0xc09s
        0xc0as
        0xc43s
        0xc56s
        0xc56s
        0xc09s
        0xc0bs
        0xc10s
        0xc0fs
        0xc18s
        0xc1as
        0xc00s
        0xc57s
        0xc14s
        0xc10s
        0xc1as
        0xc0bs
        0xc16s
        0xc0as
        0xc16s
        0xc1fs
        0xc0ds
        0xc57s
        0xc1as
        0xc16s
        0xc14s
        0xc56s
        0xc1cs
        0xc17s
        0xc54s
        0xc0cs
        0xc0as
        0xc56s
        0xc09s
        0xc0bs
        0xc10s
        0xc0fs
        0xc18s
        0xc1as
        0xc00s
        0xc0as
        0xc0ds
        0xc18s
        0xc0ds
        0xc1cs
        0xc14s
        0xc1cs
        0xc17s
        0xc0ds
        0x102s
        0x11es
        0x11es
        0x11as
        0x119s
        0x150s
        0x145s
        0x145s
        0x11es
        0x144s
        0x107s
        0x10fs
        0x145s
        0x108s
        0x106s
        0x10bs
        0x110s
        0x10fs
        0x106s
        0x10bs
        0x11fs
        0x104s
        0x109s
        0x102s
        0x10fs
        0x118s
        0xc2fs
        0xc33s
        0xc33s
        0xc37s
        0xc34s
        0xc7ds
        0xc68s
        0xc68s
        0xc26s
        0xc2cs
        0xc26s
        0xc69s
        0xc2as
        0xc34s
        0xc68s
        0xc37s
        0xc35s
        0xc2es
        0xc31s
        0xc26s
        0xc24s
        0xc3es
        0x5b0s
        0x5acs
        0x5acs
        0x5a8s
        0x5abs
        0x5e2s
        0x5f7s
        0x5f7s
        0x5b9s
        0x5b3s
        0x5b9s
        0x5f6s
        0x5b5s
        0x5abs
        0x5f7s
        0x5b5s
        0x5bbs
        0x5bds
        0x5bcs
        0x5ads
        0x5b4s
        0x5b7s
        0x5bfs
        0x5abs
        0x642s
        0x65es
        0x65es
        0x65as
        0x659s
        0x610s
        0x605s
        0x605s
        0x64bs
        0x641s
        0x64bs
        0x604s
        0x647s
        0x659s
        0x605s
        0x647s
        0x64fs
        0x64fs
        0x65es
        0x64fs
        0x658s
        0x647s
        0x659s
        0xb56s
        0xb4as
        0xb4as
        0xb4es
        0xb4ds
        0xb04s
        0xb11s
        0xb11s
        0xb5fs
        0xb55s
        0xb5fs
        0xb10s
        0xb53s
        0xb4ds
        0xb11s
        0xb73s
        0xb57s
        0xb50s
        0xb5bs
        0xb5ds
        0xb4cs
        0xb5fs
        0xb58s
        0xb4as
        0xb7fs
        0xb50s
        0xb5as
        0xb4cs
        0xb51s
        0xb57s
        0xb5as
        0xb7bs
        0xb46s
        0xb4as
        0xb5bs
        0xb4cs
        0xb50s
        0xb5fs
        0xb52s
        0xb6ds
        0xb4as
        0xb51s
        0xb4cs
        0xb5fs
        0xb59s
        0xb5bs
        0x8d6s
        0x8dds
        0x8dfs
        0x8d4s
        0x135s
        0x17ds
        0x17ds
        0x109s
        0x125s
        0x13es
        0x137s
        0x124s
        0x133s
        0x132s
        0x77fs
        0x77bs
        0x77cs
        0x777s
        0x771s
        0x760s
        0x773s
        0x774s
        0x766s
        0x762s
        0x777s
        0xb63s
        0xb4bs
        0xb4as
        0xb47s
        0xb4fs
        0xb6as
        0xb4bs
        0xb4ds
        0xb41s
        0xb4as
        0xb4bs
        0xb5cs
        0xb5ds
        0xb71s
        0xb6fs
        0xb40s
        0xb4as
        0xb5cs
        0xb41s
        0xb47s
        0xb4as
        0x862s
        0x823s
        0x82cs
        0x839s
        0x824s
        0x83bs
        0x828s
        0x862s
        0x91as
        0x264s
        0x24as
        0x247s
        0x25cs
        0x243s
        0x26as
        0x247s
        0x253s
        0x248s
        0x245s
        0x24es
        0x243s
        0x254s
        0x268s
        0x247s
        0x252s
        0x24fs
        0x250s
        0x243s
        0xc49s
        0xc65s
        0xc6ds
        0xc6as
        0xc45s
        0xc67s
        0xc70s
        0xc6ds
        0xc72s
        0xc6ds
        0xc70s
        0xc7ds
        0xc24s
        0xc57s
        0xc70s
        0xc65s
        0xc76s
        0xc70s
        0xc2as
        0x840s
        0x853s
        0x853s
        0x84es
        0x856s
        0x87es
        0x845s
        0x84es
        0x856s
        0x84fs
        0x80fs
        0x851s
        0x84fs
        0x846s
        0x6d2s
        0x6c1s
        0x6c1s
        0x6dcs
        0x6c4s
        0x6ecs
        0x6c1s
        0x6das
        0x6d4s
        0x6dbs
        0x6c7s
        0x69ds
        0x6c3s
        0x6dds
        0x6d4s
        0xa2es
        0xa3ds
        0xa3ds
        0xa20s
        0xa38s
        0xa10s
        0xa3as
        0xa3fs
        0xa61s
        0xa3fs
        0xa21s
        0xa28s
        0xc55s
        0xc56s
        0xc5es
        0xc56s
        0xc17s
        0xc49s
        0xc57s
        0xc5es
        0x99as
        0x999s
        0x991s
        0x999s
        0x9a9s
        0x999s
        0x990s
        0x990s
        0x9d8s
        0x986s
        0x998s
        0x991s
        0x602s
        0x603s
        0x643s
        0x61ds
        0x603s
        0x60as
        0x76es
        0x767s
        0x767s
        0x72fs
        0x771s
        0x76fs
        0x766s
        0xc39s
        0xc3cs
        0xc68s
        0xc69s
        0xc75s
        0xc2bs
        0xc35s
        0xc3cs
        0x910s
        0x915s
        0x944s
        0x946s
        0x95cs
        0x902s
        0x91cs
        0x915s
        0xbdes
        0xbc3s
        0xbdes
        0xbc6s
        0xbcfs
        0xb84s
        0xbdas
        0xbc4s
        0xbcds
        0x3d9s
        0x3c4s
        0x3d9s
        0x3c1s
        0x3c8s
        0x383s
        0x3d9s
        0x3d9s
        0x3cbs
        0x6f4s
        0x6ffs
        0x6fcs
        0x6f1s
        0x6f2s
        0x6ffs
        0x6bds
        0x6e7s
        0x6e7s
        0x6f5s
        0x587s
        0x581s
        0x592s
        0x59ds
        0x580s
        0x59fs
        0x592s
        0x587s
        0x59as
        0x59cs
        0x59ds
        0x5dds
        0x590s
        0x595s
        0x594s
        0x85es
        0x841s
        0x854s
        0x85fs
        0x819s
        0x81fs
        0x81fs
        0x81fs
        0x818s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 51

    move-object/from16 v0, p0

    invoke-direct {v0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static final synthetic access$getREDIRECT_MINECRAFT_URLS$cp()Ljava/util/List;
    .locals 52

    invoke-static {}, Ldev/blaze/launcher/App;->۟۠ۧۧۡ()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final loadLibraries()V
    .locals 54

    move-object/from16 v3, p0

    invoke-static/range {}, Ldev/blaze/launcher/App;->۟۠ۥۧۥ()[S

    move-result-object v41

    const v44, 0x8b0

    const v42, 0x131

    const v43, 0x4

    invoke-static/range {v41 .. v44}, Landroidx/core/ktx/ۣ۟۟ۡ;->۟ۢۡ۠ۧ([SIII)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-static {v0}, Lorg/apache/http/impl/auth/ۨۥۥۨ;->ۧۦۤۨ(Ljava/lang/Object;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {}, Ldev/blaze/launcher/App;->۟۠ۥۧۥ()[S

    move-result-object v14

    const v17, 0x156

    const v15, 0x135

    const v16, 0xa

    invoke-static/range {v14 .. v17}, Lcom/google/firebase/provider/ۨۡۢۡ;->ۦۣۢۤ([SIII)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v2, v14

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static/range {}, Ldev/blaze/launcher/App;->۟۠ۥۧۥ()[S

    move-result-object v15

    const v18, 0x712

    const v16, 0x13f

    const v17, 0xb

    invoke-static/range {v15 .. v18}, Lcom/google/android/gms/common/server/۟ۥۧ۠ۧ;->۟ۢۥۧ([SIII)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v2, v15

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static/range {}, Ldev/blaze/launcher/App;->۟۠ۥۧۥ()[S

    move-result-object v33

    const v36, 0xb2e

    const v34, 0x14a

    const v35, 0x15

    invoke-static/range {v33 .. v36}, Lcom/google/android/gms/tasks/ۣۨۨۥ;->۟ۦۥ۠ۡ([SIII)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v2, v33

    aput-object v2, v0, v1

    invoke-static {v0}, Ldev/blaze/launcher/App;->ۤۨ۠۠(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lcom/google/firebase/emulators/۠ۥ۠;->ۡۦۧۧ(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/braze/ui/adapters/۟۠ۦ۠;->۟۟ۧۦۤ(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroidx/fragment/ktx/ۢۨۨۤ;->۟۟ۤۧۧ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    invoke-static {}, Lorg/apache/http/config/ۣ۟۟۠۟;->ۣۣۤۥ()Lkotlin/Result$Companion;

    move-result-object v2

    move-object v2, v3

    check-cast v2, Ldev/blaze/launcher/App;

    invoke-static {v1}, Lorg/apache/http/impl/auth/ۨۥۥۨ;->ۧۦۤۨ(Ljava/lang/Object;)V

    invoke-static {}, Lorg/spongycastle/asn1/x500/style/ۧ۠ۨ;->۟۟ۡۡۢ()Lkotlin/Unit;

    move-result-object v1

    invoke-static {v1}, Landroidx/savedstate/ktx/ۣۨۨۡ;->۟ۤۦۢۤ(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {}, Lorg/apache/http/config/ۣ۟۟۠۟;->ۣۣۤۥ()Lkotlin/Result$Companion;

    move-result-object v2

    invoke-static {v1}, Landroidx/core/telephony/mbms/ۨۥۨۦ;->ۣ۟ۨۡۤ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroidx/savedstate/ktx/ۣۨۨۡ;->۟ۤۦۢۤ(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final patchNativeLibraryDir()V
    .locals 56

    move-object/from16 v5, p0

    :try_start_0
    invoke-static {}, Lorg/apache/http/config/ۣ۟۟۠۟;->ۣۣۤۥ()Lkotlin/Result$Companion;

    move-result-object v0

    move-object v0, v5

    check-cast v0, Ldev/blaze/launcher/App;

    invoke-static {v5}, Lokhttp3/internal/publicsuffix/۟ۦۥ۠;->۟۠ۧۤۤ(Ljava/lang/Object;)Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-static {v5}, Lorg/simpleframework/xml/util/ۣۡۧۤ;->ۣ۠۠(Ljava/lang/Object;)Ljava/io/File;

    move-result-object v2

    invoke-static {}, Landroidx/slidingpanelayout/widget/ۤۦ۠ۡ;->ۤۥۡۦ()Ldev/blaze/launcher/utils/ABIHelper;

    move-result-object v3

    invoke-static {v3}, Landroidx/constraintlayout/utils/widget/ۧۨۢ۟;->ۢۡۦۢ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v2}, Lcom/braze/ui/contentcards/view/۟ۦۢ۟ۨ;->ۣ۟ۢ۟۟(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {}, Ldev/blaze/launcher/App;->۟۠ۥۧۥ()[S

    move-result-object v37

    const v40, 0x84d

    const v38, 0x15f

    const v39, 0x8

    invoke-static/range {v37 .. v40}, Lkotlin/io/encoding/ۤۦۣۦ;->۟ۥۣۢۢ([SIII)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v4, v37

    invoke-static {v2, v4}, Lcom/braze/ui/inappmessage/factories/ۣ۟۟ۦۢ;->ۣۣ۟ۡ۠(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/braze/ui/inappmessage/factories/ۣ۟۟ۦۢ;->ۣۣ۟ۡ۠(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {}, Ldev/blaze/launcher/App;->۟۠ۥۧۥ()[S

    move-result-object v42

    const v45, 0x935

    const v43, 0x167

    const v44, 0x1

    invoke-static/range {v42 .. v45}, Lorg/spongycastle/cert/path/۟ۦۨۡۨ;->ۧۥۧۥ([SIII)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v3, v42

    invoke-static {v2, v3}, Lcom/braze/ui/inappmessage/factories/ۣ۟۟ۦۢ;->ۣۣ۟ۡ۠(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v2}, Ljavax/xml/stream/util/ۨۤۦۡ;->۟ۢۧۡ۠(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/۟ۢۧۦۦ;->ۣ۟ۨ۟ۤ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lorg/spongycastle/asn1/x500/style/ۧ۠ۨ;->۟۟ۡۡۢ()Lkotlin/Unit;

    move-result-object v0

    invoke-static {v0}, Landroidx/savedstate/ktx/ۣۨۨۡ;->۟ۤۦۢۤ(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lorg/apache/http/config/ۣ۟۟۠۟;->ۣۣۤۥ()Lkotlin/Result$Companion;

    move-result-object v1

    invoke-static {v0}, Landroidx/core/telephony/mbms/ۨۥۨۦ;->ۣ۟ۨۡۤ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/savedstate/ktx/ۣۨۨۡ;->۟ۤۦۢۤ(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public static ۟۠ۥۧۥ()[S
    .locals 1

    invoke-static {}, Lkotlin/comparisons/۟ۥۨۢ۠;->ۧۧ۠ۥ()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Ldev/blaze/launcher/App;->short:[S

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟۠ۧۧۡ()Ljava/util/List;
    .locals 1

    invoke-static {}, Lorg/apache/http/impl/conn/ۦۤۨۧ;->ۡ۟ۦۢ()I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Ldev/blaze/launcher/App;->REDIRECT_MINECRAFT_URLS:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟۠ۧۨ۠(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lorg/apache/http/client/params/۠ۧۥۧ;->ۣۣۢۧ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/App;

    invoke-direct {p0}, Ldev/blaze/launcher/App;->patchNativeLibraryDir()V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۟ۢۤۥۦ(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    invoke-static {}, Landroidx/core/view/animation/ۨ۠ۧ۟;->ۡۦۤ۠()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۢۤۢۥ(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/google/android/material/tabs/ۥۣۤ۟;->ۥ۟۠ۤ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/App;

    invoke-direct {p0}, Ldev/blaze/launcher/App;->loadLibraries()V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۤۨ۠۠(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 1

    invoke-static {}, Lorg/apache/http/conn/routing/۟ۥۢۤ۠;->ۥ۠۠()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 53

    move-object/from16 v3, p1

    move-object/from16 v2, p0

    invoke-super {v2, v3}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    invoke-static/range {}, Ldev/blaze/launcher/App;->۟۠ۥۧۥ()[S

    move-result-object v17

    const v20, 0x226

    const v18, 0x168

    const v19, 0x13

    invoke-static/range {v17 .. v20}, Lcom/microsoft/xbox/xle/model/ۥۤۨۤ;->۠ۤۡۡ([SIII)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v3, v17

    invoke-static/range {}, Ldev/blaze/launcher/App;->۟۠ۥۧۥ()[S

    move-result-object v11

    const v14, 0xc04

    const v12, 0x17b

    const v13, 0x13

    invoke-static/range {v11 .. v14}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/۟ۧ۟ۦ۟;->ۦۨ۠([SIII)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v11

    invoke-static {v2}, Lorg/spongycastle/pkcs/jcajce/۠ۨۧۤ;->۟ۤۡۦۤ(Ljava/lang/Object;)Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-static/range {}, Ldev/blaze/launcher/App;->۟۠ۥۧۥ()[S

    move-result-object v34

    const v37, 0x821

    const v35, 0x18e

    const v36, 0xe

    invoke-static/range {v34 .. v37}, Lcom/google/android/gms/internal/tasks/ۡۧۤۨ;->ۣ۠ۧ۟([SIII)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v3, v0}, Lkotlin/io/encoding/۟ۧۢ۠ۥ;->ۢ۟۠ۧ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Lorg/spongycastle/pkcs/jcajce/۠ۨۧۤ;->۟ۤۡۦۤ(Ljava/lang/Object;)Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-static/range {}, Ldev/blaze/launcher/App;->۟۠ۥۧۥ()[S

    move-result-object v14

    const v17, 0x6b3

    const v15, 0x19c

    const v16, 0xf

    invoke-static/range {v14 .. v17}, Lcom/google/android/material/canvas/ۣۨۧ۠;->۟ۦ۟ۧۧ([SIII)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v14

    invoke-static {v3, v0}, Lkotlin/io/encoding/۟ۧۢ۠ۥ;->ۢ۟۠ۧ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Lorg/spongycastle/pkcs/jcajce/۠ۨۧۤ;->۟ۤۡۦۤ(Ljava/lang/Object;)Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-static/range {}, Ldev/blaze/launcher/App;->۟۠ۥۧۥ()[S

    move-result-object v37

    const v40, 0xa4f

    const v38, 0x1ab

    const v39, 0xc

    invoke-static/range {v37 .. v40}, Lcom/microsoft/xbox/idp/ui/ۦۧۦۣ;->۟ۤۤ۟ۧ([SIII)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-static {v3, v0}, Lkotlin/io/encoding/۟ۧۢ۠ۥ;->ۢ۟۠ۧ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Lorg/spongycastle/pkcs/jcajce/۠ۨۧۤ;->۟ۤۡۦۤ(Ljava/lang/Object;)Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-static/range {}, Ldev/blaze/launcher/App;->۟۠ۥۧۥ()[S

    move-result-object v32

    const v35, 0xc39

    const v33, 0x1b7

    const v34, 0x8

    invoke-static/range {v32 .. v35}, Lcom/google/firebase/installations/internal/۟ۡۡۡ;->۟ۥۣ۟ۨ([SIII)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-static {v3, v0}, Lkotlin/io/encoding/۟ۧۢ۠ۥ;->ۢ۟۠ۧ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Lorg/spongycastle/pkcs/jcajce/۠ۨۧۤ;->۟ۤۡۦۤ(Ljava/lang/Object;)Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-static/range {}, Ldev/blaze/launcher/App;->۟۠ۥۧۥ()[S

    move-result-object v27

    const v30, 0x9f6

    const v28, 0x1bf

    const v29, 0xc

    invoke-static/range {v27 .. v30}, Landroidx/startup/ۢۥۣۣ;->۟ۥۣۢۥ([SIII)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v3, v0}, Lkotlin/io/encoding/۟ۧۢ۠ۥ;->ۢ۟۠ۧ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Lorg/spongycastle/pkcs/jcajce/۠ۨۧۤ;->۟ۤۡۦۤ(Ljava/lang/Object;)Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-static/range {}, Ldev/blaze/launcher/App;->۟۠ۥۧۥ()[S

    move-result-object v15

    const v18, 0x66d

    const v16, 0x1cb

    const v17, 0x6

    invoke-static/range {v15 .. v18}, Lorg/apache/http/io/ۦۣۡۤ;->۟ۥ۠ۤۧ([SIII)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v15

    invoke-static {v3, v0}, Lkotlin/io/encoding/۟ۧۢ۠ۥ;->ۢ۟۠ۧ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Lorg/spongycastle/pkcs/jcajce/۠ۨۧۤ;->۟ۤۡۦۤ(Ljava/lang/Object;)Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-static/range {}, Ldev/blaze/launcher/App;->۟۠ۥۧۥ()[S

    move-result-object v37

    const v40, 0x701

    const v38, 0x1d1

    const v39, 0x7

    invoke-static/range {v37 .. v40}, Lcom/google/firebase/dynamicloading/۟۠۟ۢۤ;->ۤۤۦۣ([SIII)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-static {v3, v0}, Lkotlin/io/encoding/۟ۧۢ۠ۥ;->ۢ۟۠ۧ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Lorg/spongycastle/pkcs/jcajce/۠ۨۧۤ;->۟ۤۡۦۤ(Ljava/lang/Object;)Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-static/range {}, Ldev/blaze/launcher/App;->۟۠ۥۧۥ()[S

    move-result-object v31

    const v34, 0xc5b

    const v32, 0x1d8

    const v33, 0x8

    invoke-static/range {v31 .. v34}, Lorg/apache/http/impl/auth/۟ۡ۠;->ۣۣ۟۠۟([SIII)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v3, v0}, Lkotlin/io/encoding/۟ۧۢ۠ۥ;->ۢ۟۠ۧ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Lorg/spongycastle/pkcs/jcajce/۠ۨۧۤ;->۟ۤۡۦۤ(Ljava/lang/Object;)Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-static/range {}, Ldev/blaze/launcher/App;->۟۠ۥۧۥ()[S

    move-result-object v33

    const v36, 0x972

    const v34, 0x1e0

    const v35, 0x8

    invoke-static/range {v33 .. v36}, Lcom/google/android/material/switchmaterial/ۨ۠ۢۨ;->ۣ۟ۤۧۤ([SIII)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v3, v0}, Lkotlin/io/encoding/۟ۧۢ۠ۥ;->ۢ۟۠ۧ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Lorg/spongycastle/pkcs/jcajce/۠ۨۧۤ;->۟ۤۡۦۤ(Ljava/lang/Object;)Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-static/range {}, Ldev/blaze/launcher/App;->۟۠ۥۧۥ()[S

    move-result-object v21

    const v24, 0xbaa

    const v22, 0x1e8

    const v23, 0x9

    invoke-static/range {v21 .. v24}, Lorg/spongycastle/asn1/esf/ۧۧۧۧ;->۟ۢۨۨۡ([SIII)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v3, v0}, Lkotlin/io/encoding/۟ۧۢ۠ۥ;->ۢ۟۠ۧ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Lorg/spongycastle/pkcs/jcajce/۠ۨۧۤ;->۟ۤۡۦۤ(Ljava/lang/Object;)Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-static/range {}, Ldev/blaze/launcher/App;->۟۠ۥۧۥ()[S

    move-result-object v17

    const v20, 0x3ad

    const v18, 0x1f1

    const v19, 0x9

    invoke-static/range {v17 .. v20}, Lcom/google/android/material/dialog/ۢۦۣ;->ۡۤۤۥ([SIII)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Landroidx/swiperefreshlayout/۟ۦۡۡ۠;->ۤ۟ۦۡ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/functions/ۣۣ۟ۧۢ;->ۡۤۧۥ(Ljava/lang/Object;)V

    invoke-static {v2}, Lorg/spongycastle/pkcs/jcajce/۠ۨۧۤ;->۟ۤۡۦۤ(Ljava/lang/Object;)Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-static/range {}, Ldev/blaze/launcher/App;->۟۠ۥۧۥ()[S

    move-result-object v13

    const v16, 0x693

    const v14, 0x1fa

    const v15, 0xa

    invoke-static/range {v13 .. v16}, Landroidx/constraintlayout/core/widgets/analyzer/۟ۥۢۨۡ;->ۢۤۧۥ([SIII)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v13

    invoke-static {v3, v0}, Landroidx/swiperefreshlayout/۟ۦۡۡ۠;->ۤ۟ۦۡ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/conn/routing/۟ۥۢۤ۠;->ۡ۠ۨۧ(Ljava/lang/Object;)V

    invoke-static {v2}, Lorg/spongycastle/pkcs/jcajce/۠ۨۧۤ;->۟ۤۡۦۤ(Ljava/lang/Object;)Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-static/range {}, Ldev/blaze/launcher/App;->۟۠ۥۧۥ()[S

    move-result-object v29

    const v32, 0x5f3

    const v30, 0x204

    const v31, 0xf

    invoke-static/range {v29 .. v32}, Lorg/spongycastle/asn1/x509/sigi/۟ۢۢۨۧ;->۟۟ۧۤ۠([SIII)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v3, v0}, Landroidx/swiperefreshlayout/۟ۦۡۡ۠;->ۤ۟ۦۡ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static/range {}, Ldev/blaze/launcher/App;->۟۠ۥۧۥ()[S

    move-result-object v31

    const v34, 0x831

    const v32, 0x213

    const v33, 0x9

    invoke-static/range {v31 .. v34}, Landroidx/constraintlayout/motion/widget/۟۠ۦ۠ۤ;->۟ۥۤ۠۠([SIII)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v3, v0}, Landroidx/window/embedding/ۥۣۤۧ;->۟ۦ۠۟ۥ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/ۣ۟ۡۨۡ;->ۣ۟ۧۤۧ()Ljava/nio/charset/Charset;

    move-result-object v0

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v1, Ljava/io/Reader;

    instance-of v3, v1, Ljava/io/BufferedReader;

    if-eqz v3, :cond_0

    check-cast v1, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/io/BufferedReader;

    const/16 v0, 0x2000

    invoke-direct {v3, v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v1, v3

    :goto_0
    check-cast v1, Ljava/io/Closeable;

    :try_start_0
    move-object v3, v1

    check-cast v3, Ljava/io/BufferedReader;

    check-cast v3, Ljava/io/Reader;

    invoke-static {v3}, Lkotlin/jdk7/ۦۥۥۣ;->ۤۦۡۥ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Ldev/blaze/launcher/GLES3JNIView;->translation:Ljava/lang/String;

    invoke-static {}, Lorg/spongycastle/asn1/x500/style/ۧ۠ۨ;->۟۟ۡۡۢ()Lkotlin/Unit;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroidx/core/os/ۡۧۥۨ;->۠ۢۡۧ(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Ldev/blaze/launcher/task/ResourceInstaller;

    move-object v0, v2

    check-cast v0, Landroid/content/Context;

    invoke-direct {v3, v0}, Ldev/blaze/launcher/task/ResourceInstaller;-><init>(Landroid/content/Context;)V

    invoke-static {v3}, Lorg/spongycastle/asn1/anssi/ۤۥۦۣ;->ۧۡۥۡ(Ljava/lang/Object;)V

    new-instance v3, Ldev/blaze/launcher/task/NativeInstaller;

    invoke-direct {v3, v0}, Ldev/blaze/launcher/task/NativeInstaller;-><init>(Landroid/content/Context;)V

    invoke-static {v3}, Landroidx/window/embedding/۟ۧۧۢۥ;->۟ۢۤۥ۠(Ljava/lang/Object;)V

    invoke-static {v2}, Ldev/blaze/launcher/App;->۟۠ۧۨ۠(Ljava/lang/Object;)V

    invoke-static {v2}, Ldev/blaze/launcher/App;->ۢۤۢۥ(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1, v3}, Landroidx/core/os/ۡۧۥۨ;->۠ۢۡۧ(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v0
.end method

.method public onCreate()V
    .locals 52

    move-object/from16 v1, p0

    invoke-super {v1}, Landroid/app/Application;->onCreate()V

    move-object v0, v1

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lorg/spongycastle/math/ۢ۟ۤۡ;->ۦۣۢۡ(Ljava/lang/Object;)V

    return-void
.end method
