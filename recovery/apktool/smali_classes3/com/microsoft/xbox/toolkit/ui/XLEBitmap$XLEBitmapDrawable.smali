.class public Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XLEBitmapDrawable"
.end annotation


# instance fields
.field private final drawable:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method
