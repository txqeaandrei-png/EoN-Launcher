.class public Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;
.super Landroidx/appcompat/widget/AppCompatEditText;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;,
        Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEInputConnection;
    }
.end annotation


# instance fields
.field private _mcpeKeyWatcher:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;

.field public allowedLength:I

.field private mLastSentText:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fget_mcpeKeyWatcher(Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;)Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;
    .locals 0

    iget-object p0, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->_mcpeKeyWatcher:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->_mcpeKeyWatcher:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->_mcpeKeyWatcher:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;

    const/16 p1, 0xa0

    .line 33
    iput p1, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->allowedLength:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->_mcpeKeyWatcher:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;

    const/16 p1, 0xa0

    .line 27
    iput p1, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->allowedLength:I

    return-void
.end method

.method private createSingleLineFilter()Landroid/text/InputFilter;
    .locals 1

    .line 91
    new-instance v0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$$ExternalSyntheticLambda1;-><init>()V

    return-object v0
.end method

.method private createUnicodeFilter()Landroid/text/InputFilter;
    .locals 1

    .line 105
    new-instance v0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$createSingleLineFilter$0(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_1

    .line 93
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 94
    invoke-interface {p3, p4, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$createUnicodeFilter$1(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2

    const/4 p3, 0x0

    move p4, p1

    move-object p5, p3

    :goto_0
    if-ge p4, p2, :cond_2

    .line 108
    invoke-interface {p0, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x3000

    if-ne v0, v1, :cond_1

    if-nez p5, :cond_0

    .line 110
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    :cond_0
    const/16 v0, 0x20

    .line 112
    invoke-virtual {p5, p4, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_3

    .line 116
    invoke-virtual {p5, p1, p2}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_3
    return-object p3
.end method


# virtual methods
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    .line 69
    new-instance v0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEInputConnection;

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1, p0}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEInputConnection;-><init>(Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;Landroid/view/inputmethod/InputConnection;ZLcom/mojang/minecraftpe/TextInputProxyEditTextbox;)V

    return-object v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 74
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 75
    iget-object p1, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->_mcpeKeyWatcher:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 79
    :cond_0
    invoke-interface {p1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;->onBackKeyPressed()Z

    move-result p1

    return p1

    .line 81
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setOnMCPEKeyWatcher(Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->_mcpeKeyWatcher:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;

    return-void
.end method

.method public setTextFromGame(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->mLastSentText:Ljava/lang/String;

    .line 60
    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public shouldSendText()Z
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->mLastSentText:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->mLastSentText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public updateFilters(IZ)V
    .locals 2

    .line 42
    iput p1, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->allowedLength:I

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 45
    new-instance p1, Landroid/text/InputFilter$LengthFilter;

    iget v1, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->allowedLength:I

    invoke-direct {p1, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 48
    invoke-direct {p0}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->createSingleLineFilter()Landroid/text/InputFilter;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_1
    invoke-direct {p0}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->createUnicodeFilter()Landroid/text/InputFilter;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroid/text/InputFilter;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/InputFilter;

    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public updateLastSentText()V
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->mLastSentText:Ljava/lang/String;

    return-void
.end method
