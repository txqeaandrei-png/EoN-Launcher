.class public Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/toolkit/ui/XLETextArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Params"
.end annotation


# instance fields
.field private final adjustForImageSize:Z

.field private final color:I

.field private final eraseColor:I

.field private final textAspectRatio:Ljava/lang/Float;

.field private final textSize:F

.field private final typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 8

    const/high16 v0, 0x41000000    # 8.0f

    .line 47
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/system/SystemUtil;->SPtoPixels(F)I

    move-result v0

    int-to-float v2, v0

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;-><init>(FILandroid/graphics/Typeface;IZLjava/lang/Float;)V

    return-void
.end method

.method public constructor <init>(FILandroid/graphics/Typeface;IZLjava/lang/Float;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->textSize:F

    .line 52
    iput p2, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->color:I

    .line 53
    iput-object p3, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->typeface:Landroid/graphics/Typeface;

    .line 54
    iput p4, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->eraseColor:I

    .line 55
    iput-boolean p5, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->adjustForImageSize:Z

    .line 56
    iput-object p6, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->textAspectRatio:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->color:I

    return v0
.end method

.method public getEraseColor()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->eraseColor:I

    return v0
.end method

.method public getTextAspectRatio()Ljava/lang/Float;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->textAspectRatio:Ljava/lang/Float;

    return-object v0
.end method

.method public getTextSize()F
    .locals 1

    .line 60
    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->textSize:F

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->typeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public hasEraseColor()Z
    .locals 1

    .line 72
    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->eraseColor:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTextAspectRatio()Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->textAspectRatio:Ljava/lang/Float;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAdjustForImageSize()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->adjustForImageSize:Z

    return v0
.end method
