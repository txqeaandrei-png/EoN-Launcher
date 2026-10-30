.class public Lcom/microsoft/xbox/xle/ui/XLERootView;
.super Landroid/widget/RelativeLayout;


# static fields
.field private static final UNASSIGNED_ACTIVITY_BODY_ID:I = -0x1


# instance fields
.field private activityBody:Landroid/view/View;

.field private activityBodyIndex:I

.field private headerName:Ljava/lang/String;

.field private final isTopLevel:Z

.field private final lastFps:J

.field private final lastMs:J

.field private origPaddingBottom:I

.field private final showTitleBar:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->isTopLevel:Z

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->lastFps:J

    .line 20
    iput-wide v0, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->lastMs:J

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->showTitleBar:Z

    .line 29
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->isTopLevel:Z

    const-wide/16 p1, 0x0

    .line 19
    iput-wide p1, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->lastFps:J

    .line 20
    iput-wide p1, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->lastMs:J

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->showTitleBar:Z

    return-void
.end method

.method private initialize()V
    .locals 6

    .line 69
    iget v0, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->activityBodyIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 71
    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/ui/XLERootView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->activityBody:Landroid/view/View;

    goto :goto_0

    .line 73
    :cond_0
    iput-object p0, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->activityBody:Landroid/view/View;

    .line 75
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/ui/XLERootView;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->origPaddingBottom:I

    .line 76
    iget-object v0, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->activityBody:Landroid/view/View;

    if-eqz v0, :cond_2

    if-eq v0, p0, :cond_2

    .line 78
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 79
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 81
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 v1, 0xa

    .line 82
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 83
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    .line 84
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 85
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/ui/XLERootView;->getPaddingLeft()I

    move-result v1

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/ui/XLERootView;->getPaddingTop()I

    move-result v3

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/ui/XLERootView;->getPaddingRight()I

    move-result v4

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->origPaddingBottom:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v0

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/microsoft/xbox/xle/ui/XLERootView;->setPadding(IIII)V

    const/4 v0, 0x0

    .line 86
    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->activityBody:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/ui/XLERootView;->removeView(Landroid/view/View;)V

    .line 89
    iget-object v0, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->activityBody:Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Lcom/microsoft/xbox/xle/ui/XLERootView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 94
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getHeaderName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->headerName:Ljava/lang/String;

    return-object v0
.end method

.method public getIsTopLevel()Z
    .locals 1

    .line 52
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    return v0
.end method

.method public getShowTitleBar()Z
    .locals 1

    .line 56
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method

.method public onFinishInflate()V
    .locals 0

    .line 64
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 65
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/ui/XLERootView;->initialize()V

    return-void
.end method

.method public setBottomMargin(I)V
    .locals 4

    .line 98
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/ui/XLERootView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/ui/XLERootView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/ui/XLERootView;->getPaddingRight()I

    move-result v2

    iget v3, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->origPaddingBottom:I

    add-int/2addr v3, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/microsoft/xbox/xle/ui/XLERootView;->setPadding(IIII)V

    return-void
.end method
