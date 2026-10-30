.class public Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;
.super Landroid/view/ViewGroup;


# instance fields
.field public final checkBox:Landroid/widget/CheckBox;

.field private final subText:Landroid/widget/TextView;

.field private final text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    .line 30
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    .line 31
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p1, p2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    .line 37
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    .line 38
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance p3, Landroid/widget/CheckBox;

    invoke-direct {p3, p1, p2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p3, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    .line 45
    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p3, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    .line 46
    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p3, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 90
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    sget p2, Lcom/microsoft/xboxtcui/R$drawable;->apptheme_btn_check_holo_light:I

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 91
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    new-instance p2, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox$1;

    invoke-direct {p2, p0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox$1;-><init>(Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getSubText()Ljava/lang/CharSequence;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 1

    .line 147
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->getPaddingLeft()I

    move-result p1

    .line 148
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->getPaddingTop()I

    move-result p2

    iget-object p3, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p3}, Landroid/widget/CheckBox;->getMeasuredHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    iget-object p4, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    add-int/2addr p2, p3

    .line 149
    iget-object p3, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p3}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    sub-int p3, p2, p3

    .line 150
    iget-object p4, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    .line 151
    invoke-virtual {p4}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p5, p1

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p4, p1, p3, p5, v0}, Landroid/widget/CheckBox;->layout(IIII)V

    .line 152
    iget-object p3, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p3}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p1, p3

    .line 153
    iget-object p3, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p2, p3

    .line 154
    iget-object p3, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    .line 155
    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p1

    iget-object p5, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p5, p2

    invoke-virtual {p3, p1, p2, p4, p5}, Landroid/widget/TextView;->layout(IIII)V

    .line 156
    iget-object p3, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p2, p3

    .line 157
    iget-object p3, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    .line 158
    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p1

    iget-object p5, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p5, p2

    invoke-virtual {p3, p1, p2, p4, p5}, Landroid/widget/TextView;->layout(IIII)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 12

    .line 115
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 116
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    if-nez p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 119
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 120
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    if-nez p2, :cond_1

    move v2, v1

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->getPaddingLeft()I

    move-result v5

    .line 125
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->getPaddingTop()I

    move-result v6

    sub-int v7, v4, v6

    .line 127
    iget-object v8, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    sub-int v9, v0, v5

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v9, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->getPaddingBottom()I

    move-result v10

    sub-int v10, v7, v10

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v10, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/CheckBox;->measure(II)V

    .line 128
    iget-object v8, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v5, v8

    sub-int v8, v0, v5

    .line 130
    iget-object v9, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->getPaddingRight()I

    move-result v10

    sub-int v10, v8, v10

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v10, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v7, v11

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v7, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v9, v10, v7}, Landroid/widget/TextView;->measure(II)V

    .line 131
    iget-object v7, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->getMeasuredHeight()I

    move-result v7

    iget-object v9, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/2addr v6, v7

    .line 132
    iget-object v7, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v8, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    sub-int v8, v4, v6

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v7, v3, v1}, Landroid/widget/TextView;->measure(II)V

    .line 133
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v5, v1

    .line 134
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v6, v1

    .line 135
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->getPaddingRight()I

    move-result v1

    add-int/2addr v5, v1

    .line 136
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->getPaddingBottom()I

    move-result v1

    add-int/2addr v6, v1

    if-eqz p1, :cond_2

    .line 138
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    :cond_2
    if-eqz p2, :cond_3

    .line 141
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 143
    :cond_3
    invoke-virtual {p0, v5, v6}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setMeasuredDimension(II)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 80
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 81
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 82
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public setSubText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    return-void
.end method
