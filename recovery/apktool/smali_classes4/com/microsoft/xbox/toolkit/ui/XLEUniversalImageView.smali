.class public Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;
.super Lcom/microsoft/xbox/toolkit/ui/XLEImageView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;,
        Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;
    }
.end annotation


# static fields
.field private static final JELLY_BEAN_MR1:I = 0x11

.field private static final TAG:Ljava/lang/String; = "XLEUniversalImageView"


# instance fields
.field private adjustViewBounds:Z

.field public arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

.field private final listener:Landroid/view/View$OnLayoutChangeListener;

.field private maxHeight:I

.field private maxWidth:I


# direct methods
.method public static synthetic $r8$lambda$E7z4rVKR3Y6-Ms2Wbi_lcDdGImM(Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->lambda$new$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$OC4LX5d81IgI8VZh8XOEfATLs5w(Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->lambda$new$2(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$OVuwth6-cv93LhdM7ntBGQbg8ow(Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->lambda$new$1(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 37
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$$ExternalSyntheticLambda0;-><init>(Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->listener:Landroid/view/View$OnLayoutChangeListener;

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->initializeAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    .line 62
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->updateImage()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$$ExternalSyntheticLambda1;-><init>(Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->listener:Landroid/view/View$OnLayoutChangeListener;

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->initializeAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    .line 74
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->updateImage()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance p1, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$$ExternalSyntheticLambda2;-><init>(Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;)V

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->listener:Landroid/view/View$OnLayoutChangeListener;

    const p1, 0x7fffffff

    .line 48
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->setMaxWidth(I)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->setMaxHeight(I)V

    .line 50
    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    return-void
.end method

.method private initializeAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;
    .locals 11

    .line 116
    const-string v0, "XLEUniversalImageView_textAspectRatio"

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const-string v2, "XLEUniversalImageView"

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValueArray(Ljava/lang/String;)[I

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v2, p3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x0

    .line 120
    :try_start_0
    const-string v1, "XLEUniversalImageView_android_textSize"

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v4, 0x41000000    # 8.0f

    mul-float/2addr v2, v4

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .line 121
    const-string v1, "XLEUniversalImageView_android_textColor"

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 122
    const-string v1, "XLEUniversalImageView_android_typeface"

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 123
    const-string v2, "XLEUniversalImageView_android_textStyle"

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 124
    const-string v4, "XLEUniversalImageView_typefaceSource"

    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 126
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;->typefaceFromIndex(I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-static {p1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    .line 128
    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/FontManager;->Instance()Lcom/microsoft/xbox/toolkit/ui/FontManager;

    move-result-object v1

    invoke-virtual {v1, p1, v4}, Lcom/microsoft/xbox/toolkit/ui/FontManager;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_0
    move-object v7, p1

    .line 130
    const-string p1, "XLEUniversalImageView_eraseColor"

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    .line 131
    const-string p1, "XLEUniversalImageView_adjustForImageSize"

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 132
    const-string v1, "XLEUniversalImageView_android_src"

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    .line 134
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    move-object v10, v0

    goto :goto_1

    :cond_1
    move-object v10, p3

    .line 137
    :goto_1
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;

    move-object v4, v0

    move v9, p1

    invoke-direct/range {v4 .. v10}, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;-><init>(FILandroid/graphics/Typeface;IZLjava/lang/Float;)V

    .line 138
    const-string v2, "XLEUniversalImageView_android_text"

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 140
    new-instance v1, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    new-instance v4, Lcom/microsoft/xbox/toolkit/ui/XLETextArg;

    invoke-direct {v4, v2, v0}, Lcom/microsoft/xbox/toolkit/ui/XLETextArg;-><init>(Ljava/lang/String;Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;)V

    invoke-direct {v1, v4, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;-><init>(Lcom/microsoft/xbox/toolkit/ui/XLETextArg;Z)V

    goto :goto_2

    .line 142
    :cond_2
    const-string v2, "XLEUniversalImageView_uri"

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 144
    new-instance v1, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    new-instance v2, Lcom/microsoft/xbox/toolkit/ui/XLETextArg;

    invoke-direct {v2, v0}, Lcom/microsoft/xbox/toolkit/ui/XLETextArg;-><init>(Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;)V

    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;

    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;-><init>(Ljava/net/URI;)V

    invoke-direct {v1, v2, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;-><init>(Lcom/microsoft/xbox/toolkit/ui/XLETextArg;Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;)V

    goto :goto_2

    .line 146
    :cond_3
    new-instance v2, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    new-instance v3, Lcom/microsoft/xbox/toolkit/ui/XLETextArg;

    invoke-direct {v3, v0}, Lcom/microsoft/xbox/toolkit/ui/XLETextArg;-><init>(Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;)V

    invoke-direct {v2, v3, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;-><init>(Lcom/microsoft/xbox/toolkit/ui/XLETextArg;Z)V

    move-object v1, v2

    :goto_2
    if-eqz p1, :cond_4

    .line 150
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->listener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 152
    :cond_4
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p1

    .line 157
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 158
    throw p1

    :catch_0
    move-exception p1

    .line 155
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error parsing URI \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "\'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private synthetic lambda$new$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p5, p3

    sub-int/2addr p4, p2

    sub-int/2addr p8, p6

    if-ne p4, p8, :cond_0

    sub-int/2addr p9, p7

    if-eq p5, p9, :cond_1

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->hasText()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 45
    new-instance p1, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;

    invoke-direct {p1, p0}, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;-><init>(Landroid/widget/ImageView;)V

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/microsoft/xbox/toolkit/ui/XLETextArg;

    iget-object p3, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-virtual {p3}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->getArgText()Lcom/microsoft/xbox/toolkit/ui/XLETextArg;

    move-result-object p3

    const/4 p4, 0x0

    aput-object p3, p2, p4

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p5, p3

    sub-int/2addr p4, p2

    sub-int/2addr p8, p6

    if-ne p4, p8, :cond_0

    sub-int/2addr p9, p7

    if-eq p5, p9, :cond_1

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->hasText()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 58
    new-instance p1, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;

    invoke-direct {p1, p0}, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;-><init>(Landroid/widget/ImageView;)V

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/microsoft/xbox/toolkit/ui/XLETextArg;

    iget-object p3, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-virtual {p3}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->getArgText()Lcom/microsoft/xbox/toolkit/ui/XLETextArg;

    move-result-object p3

    const/4 p4, 0x0

    aput-object p3, p2, p4

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p5, p3

    sub-int/2addr p4, p2

    sub-int/2addr p8, p6

    if-ne p4, p8, :cond_0

    sub-int/2addr p9, p7

    if-eq p5, p9, :cond_1

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->hasText()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 70
    new-instance p1, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;

    invoke-direct {p1, p0}, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;-><init>(Landroid/widget/ImageView;)V

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/microsoft/xbox/toolkit/ui/XLETextArg;

    iget-object p3, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-virtual {p3}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->getArgText()Lcom/microsoft/xbox/toolkit/ui/XLETextArg;

    move-result-object p3

    const/4 p4, 0x0

    aput-object p3, p2, p4

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method private resolveAdjustedSize(III)I
    .locals 2

    .line 256
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 257
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    const/high16 p2, 0x40000000    # 2.0f

    if-eq v0, p2, :cond_0

    return p1

    :cond_0
    return p3

    .line 262
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    .line 260
    :cond_2
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private updateImage()V
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;-><init>(Landroid/widget/ImageView;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/microsoft/xbox/toolkit/ui/XLETextArg;

    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-virtual {v2}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->getArgText()Lcom/microsoft/xbox/toolkit/ui/XLETextArg;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->hasArgUri()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->Instance()Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->getArgUri()Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->getUri()Ljava/net/URI;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-virtual {v2}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->getArgUri()Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->getTextureBindingOption()Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bindToView(Ljava/net/URI;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V

    goto :goto_0

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->hasSrc()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public clearImage()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->cloneEmpty()Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    .line 100
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->updateImage()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 185
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 186
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez v5, :cond_1

    :cond_0
    move v3, v7

    move v4, v3

    move v5, v4

    move v9, v5

    move v10, v8

    goto :goto_3

    .line 192
    :cond_1
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 193
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 200
    iget-boolean v5, v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->adjustViewBounds:Z

    if-eqz v5, :cond_0

    const/high16 v5, 0x40000000    # 2.0f

    if-eq v3, v5, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v7

    :goto_0
    if-eq v4, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    move v4, v7

    .line 203
    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 204
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    if-le v5, v9, :cond_4

    .line 206
    div-int v9, v7, v7

    goto :goto_2

    .line 209
    :cond_4
    div-int v5, v7, v7

    :goto_2
    int-to-float v10, v5

    int-to-float v11, v9

    div-float/2addr v10, v11

    .line 215
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->getPaddingLeft()I

    move-result v11

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->getPaddingRight()I

    move-result v12

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->getPaddingTop()I

    move-result v13

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->getPaddingBottom()I

    move-result v14

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x11

    if-gt v15, v6, :cond_5

    const/4 v6, 0x1

    goto :goto_4

    :cond_5
    move v6, v7

    :goto_4
    if-nez v3, :cond_7

    if-eqz v4, :cond_6

    goto :goto_5

    :cond_6
    add-int/2addr v5, v11

    add-int/2addr v5, v12

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v9, v13

    add-int/2addr v9, v14

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 248
    invoke-static {v3, v1, v7}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->resolveSizeAndState(III)I

    move-result v1

    .line 249
    invoke-static {v4, v2, v7}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->resolveSizeAndState(III)I

    move-result v2

    goto :goto_7

    :cond_7
    :goto_5
    add-int/2addr v5, v11

    add-int/2addr v5, v12

    .line 221
    iget v15, v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->maxWidth:I

    invoke-direct {v0, v5, v15, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->resolveAdjustedSize(III)I

    move-result v5

    add-int/2addr v9, v13

    add-int/2addr v9, v14

    .line 222
    iget v15, v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->maxHeight:I

    invoke-direct {v0, v9, v15, v2}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->resolveAdjustedSize(III)I

    move-result v9

    cmpl-float v8, v10, v8

    if-eqz v8, :cond_b

    sub-int v8, v5, v11

    sub-int/2addr v8, v12

    int-to-float v8, v8

    sub-int v15, v9, v13

    sub-int/2addr v15, v14

    int-to-float v15, v15

    div-float/2addr v8, v15

    sub-float/2addr v8, v10

    .line 223
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v7, v8

    const-wide v17, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v7, v7, v17

    if-lez v7, :cond_b

    if-eqz v3, :cond_9

    mul-float/2addr v15, v10

    float-to-int v7, v15

    add-int/2addr v7, v11

    add-int/2addr v7, v12

    if-nez v4, :cond_8

    if-nez v6, :cond_8

    .line 228
    iget v5, v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->maxWidth:I

    invoke-direct {v0, v7, v5, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->resolveAdjustedSize(III)I

    move-result v5

    :cond_8
    if-gt v7, v5, :cond_9

    move v1, v7

    const/16 v16, 0x1

    goto :goto_6

    :cond_9
    move v1, v5

    const/16 v16, 0x0

    :goto_6
    if-nez v16, :cond_c

    if-eqz v4, :cond_c

    sub-int v4, v1, v11

    sub-int/2addr v4, v12

    int-to-float v4, v4

    div-float/2addr v4, v10

    float-to-int v4, v4

    add-int/2addr v4, v13

    add-int/2addr v4, v14

    if-nez v3, :cond_a

    if-nez v6, :cond_a

    .line 238
    iget v3, v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->maxHeight:I

    invoke-direct {v0, v4, v3, v2}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->resolveAdjustedSize(III)I

    move-result v9

    :cond_a
    if-gt v4, v9, :cond_c

    move v2, v4

    goto :goto_7

    :cond_b
    move v1, v5

    :cond_c
    move v2, v9

    .line 251
    :goto_7
    invoke-virtual {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .locals 0

    .line 173
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->adjustViewBounds:Z

    .line 174
    invoke-super {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->setAdjustViewBounds(Z)V

    return-void
.end method

.method public setImageURI2(Ljava/net/URI;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->cloneWithUri(Ljava/net/URI;)Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    .line 95
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->updateImage()V

    return-void
.end method

.method public setImageURI2(Ljava/net/URI;II)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->cloneWithUri(Ljava/net/URI;II)Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    .line 90
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->updateImage()V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0

    .line 168
    invoke-super {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->setMaxHeight(I)V

    .line 169
    iput p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->maxHeight:I

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .line 163
    invoke-super {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->setMaxWidth(I)V

    .line 164
    iput p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->maxWidth:I

    return-void
.end method

.method public setText(I)V
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->getArgText()Lcom/microsoft/xbox/toolkit/ui/XLETextArg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/XLETextArg;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->cloneWithText(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    .line 80
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->updateImage()V

    :cond_0
    return-void
.end method
