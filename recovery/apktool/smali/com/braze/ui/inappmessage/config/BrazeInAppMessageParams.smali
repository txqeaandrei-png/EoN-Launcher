.class public final Lcom/braze/ui/inappmessage/config/BrazeInAppMessageParams;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0011\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R$\u0010\u0008\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\t\u0010\u0003\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR$\u0010\u000e\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000f\u0010\u0003\u001a\u0004\u0008\u0010\u0010\u000b\"\u0004\u0008\u0011\u0010\rR$\u0010\u0012\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0013\u0010\u0003\u001a\u0004\u0008\u0014\u0010\u000b\"\u0004\u0008\u0015\u0010\r\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/braze/ui/inappmessage/config/BrazeInAppMessageParams;",
        "",
        "<init>",
        "()V",
        "MODALIZED_IMAGE_RADIUS_DP",
        "",
        "GRAPHIC_MODAL_MAX_WIDTH_DP",
        "GRAPHIC_MODAL_MAX_HEIGHT_DP",
        "modalizedImageRadiusDp",
        "getModalizedImageRadiusDp$annotations",
        "getModalizedImageRadiusDp",
        "()D",
        "setModalizedImageRadiusDp",
        "(D)V",
        "graphicModalMaxWidthDp",
        "getGraphicModalMaxWidthDp$annotations",
        "getGraphicModalMaxWidthDp",
        "setGraphicModalMaxWidthDp",
        "graphicModalMaxHeightDp",
        "getGraphicModalMaxHeightDp$annotations",
        "getGraphicModalMaxHeightDp",
        "setGraphicModalMaxHeightDp",
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
.field public static final GRAPHIC_MODAL_MAX_HEIGHT_DP:D = 290.0

.field public static final GRAPHIC_MODAL_MAX_WIDTH_DP:D = 290.0

.field public static final INSTANCE:Lcom/braze/ui/inappmessage/config/BrazeInAppMessageParams;

.field public static final MODALIZED_IMAGE_RADIUS_DP:D = 9.0

.field private static graphicModalMaxHeightDp:D

.field private static graphicModalMaxWidthDp:D

.field private static modalizedImageRadiusDp:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/braze/ui/inappmessage/config/BrazeInAppMessageParams;

    invoke-direct {v0}, Lcom/braze/ui/inappmessage/config/BrazeInAppMessageParams;-><init>()V

    sput-object v0, Lcom/braze/ui/inappmessage/config/BrazeInAppMessageParams;->INSTANCE:Lcom/braze/ui/inappmessage/config/BrazeInAppMessageParams;

    const-wide/high16 v0, 0x4022000000000000L    # 9.0

    .line 7
    sput-wide v0, Lcom/braze/ui/inappmessage/config/BrazeInAppMessageParams;->modalizedImageRadiusDp:D

    const-wide v0, 0x4072200000000000L    # 290.0

    .line 8
    sput-wide v0, Lcom/braze/ui/inappmessage/config/BrazeInAppMessageParams;->graphicModalMaxWidthDp:D

    .line 9
    sput-wide v0, Lcom/braze/ui/inappmessage/config/BrazeInAppMessageParams;->graphicModalMaxHeightDp:D

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getGraphicModalMaxHeightDp()D
    .locals 2

    .line 9
    sget-wide v0, Lcom/braze/ui/inappmessage/config/BrazeInAppMessageParams;->graphicModalMaxHeightDp:D

    return-wide v0
.end method

.method public static synthetic getGraphicModalMaxHeightDp$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getGraphicModalMaxWidthDp()D
    .locals 2

    .line 8
    sget-wide v0, Lcom/braze/ui/inappmessage/config/BrazeInAppMessageParams;->graphicModalMaxWidthDp:D

    return-wide v0
.end method

.method public static synthetic getGraphicModalMaxWidthDp$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getModalizedImageRadiusDp()D
    .locals 2

    .line 7
    sget-wide v0, Lcom/braze/ui/inappmessage/config/BrazeInAppMessageParams;->modalizedImageRadiusDp:D

    return-wide v0
.end method

.method public static synthetic getModalizedImageRadiusDp$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final setGraphicModalMaxHeightDp(D)V
    .locals 0

    .line 9
    sput-wide p0, Lcom/braze/ui/inappmessage/config/BrazeInAppMessageParams;->graphicModalMaxHeightDp:D

    return-void
.end method

.method public static final setGraphicModalMaxWidthDp(D)V
    .locals 0

    .line 8
    sput-wide p0, Lcom/braze/ui/inappmessage/config/BrazeInAppMessageParams;->graphicModalMaxWidthDp:D

    return-void
.end method

.method public static final setModalizedImageRadiusDp(D)V
    .locals 0

    .line 7
    sput-wide p0, Lcom/braze/ui/inappmessage/config/BrazeInAppMessageParams;->modalizedImageRadiusDp:D

    return-void
.end method
