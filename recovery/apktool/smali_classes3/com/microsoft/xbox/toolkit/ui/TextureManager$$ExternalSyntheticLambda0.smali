.class public final synthetic Lcom/microsoft/xbox/toolkit/ui/TextureManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

.field public final synthetic f$1:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

.field public final synthetic f$2:Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

.field public final synthetic f$3:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/microsoft/xbox/toolkit/ui/TextureManager;Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Lcom/microsoft/xbox/toolkit/ui/XLEImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$$ExternalSyntheticLambda0;->f$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$$ExternalSyntheticLambda0;->f$1:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    iput-object p3, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$$ExternalSyntheticLambda0;->f$2:Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

    iput-object p4, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$$ExternalSyntheticLambda0;->f$3:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$$ExternalSyntheticLambda0;->f$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$$ExternalSyntheticLambda0;->f$1:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$$ExternalSyntheticLambda0;->f$2:Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$$ExternalSyntheticLambda0;->f$3:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    invoke-static {v0, v1, v2, v3}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->$r8$lambda$Tz_ZlVJh79HHkBbheQXQsKbQ0es(Lcom/microsoft/xbox/toolkit/ui/TextureManager;Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Lcom/microsoft/xbox/toolkit/ui/XLEImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V

    return-void
.end method
