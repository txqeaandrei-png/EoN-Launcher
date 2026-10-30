.class public Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;
.super Landroid/widget/LinearLayout;


# instance fields
.field private final iconImageView:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

.field private final subtitleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private final titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v0, Lcom/microsoft/xboxtcui/R$layout;->image_title_subtitle_button:I

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 42
    sget p3, Lcom/microsoft/xboxtcui/R$id;->image_title_subtitle_button_image:I

    invoke-virtual {p0, p3}, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

    iput-object p3, p0, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;->iconImageView:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

    .line 43
    sget p3, Lcom/microsoft/xboxtcui/R$id;->image_title_subtitle_button_title:I

    invoke-virtual {p0, p3}, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object p3, p0, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;->titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 44
    sget v0, Lcom/microsoft/xboxtcui/R$id;->image_title_subtitle_button_subtitle:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;->subtitleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 45
    const-string v2, "ImageTitleSubtitleButton"

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValueArray(Ljava/lang/String;)[I

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 46
    const-string p2, "ImageTitleSubtitleButton_image_uri"

    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 47
    const-string v2, "ImageTitleSubtitleButton_text_title"

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 48
    const-string v3, "ImageTitleSubtitleButton_text_subtitle"

    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 49
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    invoke-virtual {p0, p2}, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;->setImageUri(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 51
    invoke-static {p3, v2, p1}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateTextAndVisibilityIfNotNull(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 52
    invoke-static {v0, v3, p1}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateTextAndVisibilityIfNotNull(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 53
    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 63
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    .line 64
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 65
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setImageUri(Ljava/lang/String;)V
    .locals 1

    .line 57
    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;->iconImageView:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->setImageURI2(Ljava/net/URI;)V

    :cond_0
    return-void
.end method
