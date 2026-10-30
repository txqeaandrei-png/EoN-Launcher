.class public interface abstract Lcom/braze/models/inappmessage/IInAppMessageWithImage;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008g\u0018\u00002\u00020\u0001R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0007\u0010\u0005\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u0004\u0018\u00010\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000b\u0010\u0005\"\u0004\u0008\u000c\u0010\tR\u001a\u0010\r\u001a\u0004\u0018\u00010\u000eX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001e\u0010\u0013\u001a\u00020\u0014X\u00a6\u000e\u00a2\u0006\u0012\u0012\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u001b\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/braze/models/inappmessage/IInAppMessageWithImage;",
        "",
        "imageUrl",
        "",
        "getImageUrl",
        "()Ljava/lang/String;",
        "remoteImageUrl",
        "getRemoteImageUrl",
        "setRemoteImageUrl",
        "(Ljava/lang/String;)V",
        "localImageUrl",
        "getLocalImageUrl",
        "setLocalImageUrl",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "setBitmap",
        "(Landroid/graphics/Bitmap;)V",
        "imageDownloadSuccessful",
        "",
        "getImageDownloadSuccessful$annotations",
        "()V",
        "getImageDownloadSuccessful",
        "()Z",
        "setImageDownloadSuccessful",
        "(Z)V",
        "android-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic getImageDownloadSuccessful$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract getBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract getImageDownloadSuccessful()Z
.end method

.method public abstract getImageUrl()Ljava/lang/String;
.end method

.method public abstract getLocalImageUrl()Ljava/lang/String;
.end method

.method public abstract getRemoteImageUrl()Ljava/lang/String;
.end method

.method public abstract setBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setImageDownloadSuccessful(Z)V
.end method

.method public abstract setLocalImageUrl(Ljava/lang/String;)V
.end method

.method public abstract setRemoteImageUrl(Ljava/lang/String;)V
.end method
