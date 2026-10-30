.class public interface abstract Lcom/braze/models/inappmessage/IInAppMessageImmersive;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/braze/models/inappmessage/IInAppMessage;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008g\u0018\u00002\u00020\u0001J\u0010\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u0013H&R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u0018\u0010\u0008\u001a\u00020\tX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u0018\u0010\u000e\u001a\u00020\tX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000f\u0010\u000b\"\u0004\u0008\u0010\u0010\rR\u001e\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u0004\u0018\u00010\tX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u0018\u0010\u001d\u001a\u00020\u001eX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u0018\u0010#\u001a\u00020$X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006,\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/braze/models/inappmessage/IInAppMessageImmersive;",
        "Lcom/braze/models/inappmessage/IInAppMessage;",
        "header",
        "",
        "getHeader",
        "()Ljava/lang/String;",
        "setHeader",
        "(Ljava/lang/String;)V",
        "headerTextColor",
        "",
        "getHeaderTextColor",
        "()I",
        "setHeaderTextColor",
        "(I)V",
        "closeButtonColor",
        "getCloseButtonColor",
        "setCloseButtonColor",
        "messageButtons",
        "",
        "Lcom/braze/models/inappmessage/MessageButton;",
        "getMessageButtons",
        "()Ljava/util/List;",
        "setMessageButtons",
        "(Ljava/util/List;)V",
        "frameColor",
        "getFrameColor",
        "()Ljava/lang/Integer;",
        "setFrameColor",
        "(Ljava/lang/Integer;)V",
        "imageStyle",
        "Lcom/braze/enums/inappmessage/ImageStyle;",
        "getImageStyle",
        "()Lcom/braze/enums/inappmessage/ImageStyle;",
        "setImageStyle",
        "(Lcom/braze/enums/inappmessage/ImageStyle;)V",
        "headerTextAlign",
        "Lcom/braze/enums/inappmessage/TextAlign;",
        "getHeaderTextAlign",
        "()Lcom/braze/enums/inappmessage/TextAlign;",
        "setHeaderTextAlign",
        "(Lcom/braze/enums/inappmessage/TextAlign;)V",
        "logButtonClick",
        "",
        "messageButton",
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


# virtual methods
.method public abstract getCloseButtonColor()I
.end method

.method public abstract getFrameColor()Ljava/lang/Integer;
.end method

.method public abstract getHeader()Ljava/lang/String;
.end method

.method public abstract getHeaderTextAlign()Lcom/braze/enums/inappmessage/TextAlign;
.end method

.method public abstract getHeaderTextColor()I
.end method

.method public abstract getImageStyle()Lcom/braze/enums/inappmessage/ImageStyle;
.end method

.method public abstract getMessageButtons()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/braze/models/inappmessage/MessageButton;",
            ">;"
        }
    .end annotation
.end method

.method public abstract logButtonClick(Lcom/braze/models/inappmessage/MessageButton;)Z
.end method

.method public abstract setCloseButtonColor(I)V
.end method

.method public abstract setFrameColor(Ljava/lang/Integer;)V
.end method

.method public abstract setHeader(Ljava/lang/String;)V
.end method

.method public abstract setHeaderTextAlign(Lcom/braze/enums/inappmessage/TextAlign;)V
.end method

.method public abstract setHeaderTextColor(I)V
.end method

.method public abstract setImageStyle(Lcom/braze/enums/inappmessage/ImageStyle;)V
.end method

.method public abstract setMessageButtons(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/braze/models/inappmessage/MessageButton;",
            ">;)V"
        }
    .end annotation
.end method
