.class public Ldev/blaze/launcher/utils/TextureLoader;
.super Ljava/lang/Object;


# static fields
.field public static bitmapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldev/blaze/launcher/utils/BitmapMapperS;",
            ">;"
        }
    .end annotation
.end field

.field public static originAssets:Landroid/content/res/AssetManager;

.field private static final short:[S


# direct methods
.method static constructor <clinit>()V
    .locals 52

    const v0, 0x5e

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Ldev/blaze/launcher/utils/TextureLoader;->short:[S

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ldev/blaze/launcher/utils/TextureLoader;->bitmapList:Ljava/util/List;

    return-void

    :array_0
    .array-data 2
        0xc9es
        0xc82s
        0xcf1s
        0xc65s
        0xc77s
        0xc77s
        0xc61s
        0xc70s
        0xc77s
        0xc2bs
        0xc76s
        0xc61s
        0xc77s
        0xc6bs
        0xc71s
        0xc76s
        0xc67s
        0xc61s
        0xc5bs
        0xc74s
        0xc65s
        0xc67s
        0xc6fs
        0xc77s
        0xc2bs
        0xc72s
        0xc65s
        0xc6as
        0xc6ds
        0xc68s
        0xc68s
        0xc65s
        0xc2bs
        0xc70s
        0xc61s
        0xc7cs
        0xc70s
        0xc71s
        0xc76s
        0xc61s
        0xc77s
        0xc2bs
        0xc6ds
        0xc70s
        0xc61s
        0xc69s
        0xc77s
        0xc2bs
        0x524s
        0x57as
        0x564s
        0x56ds
        0xb29s
        0xb3bs
        0xb3bs
        0xb2ds
        0xb3cs
        0xb3bs
        0xb67s
        0xb3as
        0xb2ds
        0xb3bs
        0xb27s
        0xb3ds
        0xb3as
        0xb2bs
        0xb2ds
        0xb17s
        0xb38s
        0xb29s
        0xb2bs
        0xb23s
        0xb3bs
        0xb67s
        0xb3es
        0xb29s
        0xb26s
        0xb21s
        0xb24s
        0xb24s
        0xb29s
        0xb67s
        0xb3cs
        0xb2ds
        0xb30s
        0xb3cs
        0xb3ds
        0xb3as
        0xb2ds
        0xb3bs
        0xb67s
        0xb3ds
        0xb21s
        0xb67s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 51
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move/from16 v2, p2

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, v1, v2}, Ldev/blaze/launcher/utils/TextureLoader;->۟۟ۡۥۣ(Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-void
.end method

.method public static native IJOdfj()V
.end method

.method private initTexture(Landroid/content/Context;Z)V
    .locals 66
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move/from16 v17, p2

    move-object/from16 v16, p1

    move-object/from16 v15, p0

    invoke-static {}, Landroidx/concurrent/futures/۟ۦۡۡۡ;->۟ۢۥۢ()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/tls/ۤۤۢۦ;->ۣ۟۟ۥۧ(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/braze/ui/adapters/۟۠ۦ۠;->۟۟ۧۦۤ(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x2800

    const/16 v3, 0x2801

    const/16 v4, 0x2600

    const/4 v5, 0x1

    const/16 v6, 0xde1

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroidx/fragment/ktx/ۢۨۨۤ;->۟۟ۤۧۧ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldev/blaze/launcher/utils/BitmapMapperS;

    new-array v8, v5, [I

    invoke-static {v5, v8, v7}, Landroidx/core/content/pm/ۣ۟ۧۤ۟;->۟ۡ۟ۦۤ(ILjava/lang/Object;I)V

    aget v5, v8, v7

    invoke-static {v6, v5}, Lmainz/ۨۤۤۤ;->ۦۥۣۢ(II)V

    invoke-static {v6, v3, v4}, Lcom/google/firebase/messaging/threads/ۣۡۡ۟;->۟ۥۣۢ۟(III)V

    invoke-static {v6, v2, v4}, Lcom/google/firebase/messaging/threads/ۣۡۡ۟;->۟ۥۣۢ۟(III)V

    invoke-static {v1}, Lkotlin/io/encoding/۟ۧۢ۠ۥ;->ۤۨ۠۟(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v6, v7, v2, v7}, Lcom/microsoft/xbox/xle/app/activity/Profile/ۣۣ۟۟۟;->ۣۣ۟ۢۤ(IILjava/lang/Object;I)V

    invoke-static {v1}, Lkotlin/io/encoding/۟ۧۢ۠ۥ;->ۤۨ۠۟(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/jce/ۣۡۥۡ;->ۥۢۦۣ(Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {}, Ldev/blaze/launcher/utils/TextureLoader;->ۢ۟ۡۤ()[S

    move-result-object v44

    const v47, 0xccb

    const v45, 0x0

    const v46, 0x3

    invoke-static/range {v44 .. v47}, Lcom/braze/communication/dust/ۣۣۢ۟;->ۨۨۢۢ([SIII)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v3, v44

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/mojang/minecraftpe/store/amazonappstore/۟۟ۧۢۥ;->ۨ۠ۦۢ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/braze/ui/inappmessage/factories/ۣ۟۟ۦۢ;->ۣۣ۟ۡ۠(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1}, Ljavax/xml/stream/util/ۨۤۦۡ;->۟ۢۧۡ۠(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aget v2, v8, v7

    invoke-static {v1, v2}, Landroidx/constraintlayout/core/state/helpers/ۥۦۣۨ;->۠ۦۥۨ(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    invoke-static/range {v16 .. v16}, Lorg/apache/http/client/protocol/ۥۧۢۢ;->ۣۧۥۥ(Ljava/lang/Object;)Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static/range {}, Ldev/blaze/launcher/utils/TextureLoader;->ۢ۟ۡۤ()[S

    move-result-object v31

    const v34, 0xc04

    const v32, 0x3

    const v33, 0x2d

    invoke-static/range {v31 .. v34}, Lcom/microsoft/xbox/xle/app/ۦۢۤۦ;->ۣ۟۠ۧ۠([SIII)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroidx/core/content/ۣۤۨۡ;->۟ۢ۠ۡۥ(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    invoke-static/range {}, Ldev/blaze/launcher/utils/TextureLoader;->ۢ۟ۡۤ()[S

    move-result-object v44

    const v47, 0x50a

    const v45, 0x30

    const v46, 0x4

    invoke-static/range {v44 .. v47}, Lorg/xmlpull/v1/util/ۣۣ۠ۤ;->ۤۨۢۥ([SIII)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v8, v44

    if-eqz v0, :cond_2

    array-length v9, v0

    move v10, v7

    :goto_1
    if-ge v10, v9, :cond_2

    aget-object v11, v0, v10

    invoke-static {v11, v8}, Landroidx/viewpager2/widget/۟ۤۧۧۨ;->ۣ۟۠ۤۨ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-static/range {v16 .. v16}, Lorg/apache/http/client/protocol/ۥۧۢۢ;->ۣۧۥۥ(Ljava/lang/Object;)Landroid/content/res/AssetManager;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v13, v11}, Lcom/braze/ui/inappmessage/factories/ۣ۟۟ۦۢ;->ۣۣ۟ۡ۠(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v13}, Ljavax/xml/stream/util/ۨۤۦۡ;->۟ۢۧۡ۠(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroidx/swiperefreshlayout/۟ۦۡۡ۠;->ۤ۟ۦۡ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v12

    invoke-static {v12}, Lcom/google/gson/internal/bind/ۤ۟ۨۤ;->۟۟ۧۢۧ(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v12

    new-array v13, v5, [I

    invoke-static {v5, v13, v7}, Landroidx/core/content/pm/ۣ۟ۧۤ۟;->۟ۡ۟ۦۤ(ILjava/lang/Object;I)V

    aget v14, v13, v7

    invoke-static {v6, v14}, Lmainz/ۨۤۤۤ;->ۦۥۣۢ(II)V

    invoke-static {v6, v3, v4}, Lcom/google/firebase/messaging/threads/ۣۡۡ۟;->۟ۥۣۢ۟(III)V

    invoke-static {v6, v2, v4}, Lcom/google/firebase/messaging/threads/ۣۡۡ۟;->۟ۥۣۢ۟(III)V

    invoke-static {v6, v7, v12, v7}, Lcom/microsoft/xbox/xle/app/activity/Profile/ۣۣ۟۟۟;->ۣۣ۟ۢۤ(IILjava/lang/Object;I)V

    invoke-static {v12}, Lorg/spongycastle/jce/ۣۡۥۡ;->ۥۢۦۣ(Ljava/lang/Object;)V

    invoke-static {v11}, Lorg/spongycastle/math/ec/۟۟ۦۣۤ;->ۧۨۥۡ(Ljava/lang/Object;)I

    move-result v12

    add-int/lit8 v12, v12, -0x4

    invoke-static {v11, v7, v12}, Lcom/braze/images/ۣۤۤۥ;->ۦ۠ۨ۠(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v11

    aget v12, v13, v7

    invoke-static {v11, v12}, Landroidx/constraintlayout/core/state/helpers/ۥۦۣۨ;->۠ۦۥۨ(Ljava/lang/Object;I)V

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    invoke-static/range {v16 .. v16}, Lorg/apache/http/client/protocol/ۥۧۢۢ;->ۣۧۥۥ(Ljava/lang/Object;)Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static/range {}, Ldev/blaze/launcher/utils/TextureLoader;->ۢ۟ۡۤ()[S

    move-result-object v47

    const v50, 0xb48

    const v48, 0x34

    const v49, 0x2a

    invoke-static/range {v47 .. v50}, Lorg/spongycastle/pqc/math/ntru/polynomial/ۣ۟ۤ۟;->۟ۢۨۢ۟([SIII)Ljava/lang/String;

    move-result-object v47

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Landroidx/core/content/ۣۤۨۡ;->۟ۢ۠ۡۥ(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v9, v0

    move v10, v7

    :goto_2
    if-ge v10, v9, :cond_4

    aget-object v11, v0, v10

    invoke-static {v11, v8}, Landroidx/viewpager2/widget/۟ۤۧۧۨ;->ۣ۟۠ۤۨ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static/range {v16 .. v16}, Lorg/apache/http/client/protocol/ۥۧۢۢ;->ۣۧۥۥ(Ljava/lang/Object;)Landroid/content/res/AssetManager;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v13, v11}, Lcom/braze/ui/inappmessage/factories/ۣ۟۟ۦۢ;->ۣۣ۟ۡ۠(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v13}, Ljavax/xml/stream/util/ۨۤۦۡ;->۟ۢۧۡ۠(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroidx/swiperefreshlayout/۟ۦۡۡ۠;->ۤ۟ۦۡ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v12

    invoke-static {v12}, Lcom/google/gson/internal/bind/ۤ۟ۨۤ;->۟۟ۧۢۧ(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v12

    new-array v13, v5, [I

    invoke-static {v5, v13, v7}, Landroidx/core/content/pm/ۣ۟ۧۤ۟;->۟ۡ۟ۦۤ(ILjava/lang/Object;I)V

    aget v14, v13, v7

    invoke-static {v6, v14}, Lmainz/ۨۤۤۤ;->ۦۥۣۢ(II)V

    invoke-static {v6, v3, v4}, Lcom/google/firebase/messaging/threads/ۣۡۡ۟;->۟ۥۣۢ۟(III)V

    invoke-static {v6, v2, v4}, Lcom/google/firebase/messaging/threads/ۣۡۡ۟;->۟ۥۣۢ۟(III)V

    invoke-static {v6, v7, v12, v7}, Lcom/microsoft/xbox/xle/app/activity/Profile/ۣۣ۟۟۟;->ۣۣ۟ۢۤ(IILjava/lang/Object;I)V

    invoke-static {v12}, Lorg/spongycastle/jce/ۣۡۥۡ;->ۥۢۦۣ(Ljava/lang/Object;)V

    invoke-static {v11}, Lorg/spongycastle/math/ec/۟۟ۦۣۤ;->ۧۨۥۡ(Ljava/lang/Object;)I

    move-result v12

    add-int/lit8 v12, v12, -0x4

    invoke-static {v11, v7, v12}, Lcom/braze/images/ۣۤۤۥ;->ۦ۠ۨ۠(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v11

    aget v12, v13, v7

    invoke-static {v11, v12}, Landroidx/constraintlayout/core/state/helpers/ۥۦۣۨ;->۠ۦۥۨ(Ljava/lang/Object;I)V

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public static loadImage(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 55
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v5, p1

    move-object/from16 v4, p0

    invoke-static {v4, v5}, Landroidx/swiperefreshlayout/۟ۦۡۡ۠;->ۤ۟ۦۡ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Lcom/google/gson/internal/bind/ۤ۟ۨۤ;->۟۟ۧۢۧ(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {}, Landroidx/concurrent/futures/۟ۦۡۡۡ;->۟ۢۥۢ()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ldev/blaze/launcher/utils/BitmapMapperS;

    invoke-static {v5}, Lorg/spongycastle/math/ec/۟۟ۦۣۤ;->ۧۨۥۡ(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    const/4 v3, 0x0

    invoke-static {v5, v3, v2}, Lcom/braze/images/ۣۤۤۥ;->ۦ۠ۨ۠(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5, v4}, Ldev/blaze/launcher/utils/BitmapMapperS;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {v0, v1}, Lorg/spongycastle/openssl/ۣۨۡۤ;->۠ۦ۟ۧ(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public static ۟۟ۡۥۣ(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 1

    invoke-static {}, Lorg/spongycastle/crypto/engines/ۣۢ۠۟;->ۢۧ۠()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/utils/TextureLoader;

    check-cast p1, Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Ldev/blaze/launcher/utils/TextureLoader;->initTexture(Landroid/content/Context;Z)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۢ۟ۡۤ()[S
    .locals 1

    invoke-static {}, Lcom/braze/enums/inappmessage/۟ۡۥۥۨ;->ۥ۟ۨ()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Ldev/blaze/launcher/utils/TextureLoader;->short:[S

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method
