.class public Ldev/blaze/launcher/utils/BitmapMapperS;
.super Ljava/lang/Object;


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 52

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 51

    move-object/from16 v2, p2

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Ldev/blaze/launcher/utils/BitmapMapperS;->name:Ljava/lang/String;

    iput-object v2, v0, Ldev/blaze/launcher/utils/BitmapMapperS;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method
