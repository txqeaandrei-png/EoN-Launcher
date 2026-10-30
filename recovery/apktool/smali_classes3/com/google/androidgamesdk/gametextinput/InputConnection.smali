.class public Lcom/google/androidgamesdk/gametextinput/InputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/androidgamesdk/gametextinput/InputConnection$SingeLineFilter;
    }
.end annotation


# static fields
.field private static final MAX_LENGTH_FOR_SINGLE_LINE_EDIT_TEXT:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "gti.InputConnection"


# instance fields
.field private final imm:Landroid/view/inputmethod/InputMethodManager;

.field private listener:Lcom/google/androidgamesdk/gametextinput/Listener;

.field private final mEditable:Landroid/text/Editable;

.field private mSoftKeyboardActive:Z

.field private final settings:Lcom/google/androidgamesdk/gametextinput/Settings;

.field private final targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/google/androidgamesdk/gametextinput/Settings;)V
    .locals 3

    .line 103
    iget-object v0, p3, Lcom/google/androidgamesdk/gametextinput/Settings;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 104
    const-string v0, "gti.InputConnection"

    const-string v2, "InputConnection created"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iput-object p2, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->targetView:Landroid/view/View;

    .line 107
    iput-object p3, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->settings:Lcom/google/androidgamesdk/gametextinput/Settings;

    .line 108
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 112
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 113
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    .line 116
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1, v1}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 117
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 119
    iget-object p1, p3, Lcom/google/androidgamesdk/gametextinput/Settings;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, p1}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->setEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    .line 121
    new-instance p1, Lcom/google/androidgamesdk/gametextinput/InputConnection$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection$$ExternalSyntheticLambda0;-><init>(Lcom/google/androidgamesdk/gametextinput/InputConnection;)V

    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void

    .line 110
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Can\'t get IMM"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getComposingRegion()Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;
    .locals 3

    .line 415
    new-instance v0, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;

    iget-object v1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v1}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    iget-object v2, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v2}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;-><init>(II)V

    return-object v0
.end method

.method private getSelection()Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;
    .locals 3

    .line 411
    new-instance v0, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;

    iget-object v1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    iget-object v2, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;-><init>(II)V

    return-object v0
.end method

.method private informIMM()V
    .locals 10

    .line 401
    invoke-direct {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->getSelection()Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;

    move-result-object v0

    .line 402
    invoke-direct {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->getComposingRegion()Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;

    move-result-object v1

    .line 403
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "informIMM: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->second:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ". "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->second:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gti.InputConnection"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v4, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->targetView:Landroid/view/View;

    iget v6, v0, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    iget v7, v0, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->second:I

    iget v8, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    iget v9, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->second:I

    invoke-virtual/range {v4 .. v9}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    return-void
.end method

.method private processKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 424
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 423
    const-string v2, "processKeyEvent(key=%d) text=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 422
    const-string v2, "gti.InputConnection"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->settings:Lcom/google/androidgamesdk/gametextinput/Settings;

    iget-object v1, v1, Lcom/google/androidgamesdk/gametextinput/Settings;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v3, 0x20000

    and-int/2addr v1, v3

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 427
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v4, 0x42

    if-eq v1, v4, :cond_1

    .line 428
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v4, 0xa0

    if-ne v1, v4, :cond_2

    .line 429
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 430
    iget-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->settings:Lcom/google/androidgamesdk/gametextinput/Settings;

    iget-object p1, p1, Lcom/google/androidgamesdk/gametextinput/Settings;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget p1, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    invoke-direct {p0, p1}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->sendEditorAction(I)Z

    return v3

    .line 433
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_3

    return v3

    .line 440
    :cond_3
    invoke-direct {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->getSelection()Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;

    move-result-object v1

    .line 441
    iget v4, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 442
    iget-object v4, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    iput v4, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    .line 443
    iget-object v4, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    iput v4, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->second:I

    .line 448
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v6, 0x15

    if-ne v4, v6, :cond_6

    .line 449
    iget p1, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    iget v0, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->second:I

    if-ne p1, v0, :cond_5

    .line 450
    iget p1, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    sub-int/2addr p1, v3

    iget v0, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->second:I

    sub-int/2addr v0, v3

    invoke-virtual {p0, p1, v0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->setSelection(II)Z

    goto :goto_0

    .line 452
    :cond_5
    iget p1, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    iget v0, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    invoke-virtual {p0, p1, v0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->setSelection(II)Z

    :goto_0
    return v3

    .line 455
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v6, 0x16

    if-ne v4, v6, :cond_8

    .line 456
    iget p1, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    iget v0, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->second:I

    if-ne p1, v0, :cond_7

    .line 457
    iget p1, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    add-int/2addr p1, v3

    iget v0, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->second:I

    add-int/2addr v0, v3

    invoke-virtual {p0, p1, v0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->setSelection(II)Z

    goto :goto_1

    .line 459
    :cond_7
    iget p1, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->second:I

    iget v0, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->second:I

    invoke-virtual {p0, p1, v0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->setSelection(II)Z

    :goto_1
    return v3

    .line 462
    :cond_8
    iget v4, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    iget v6, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->second:I

    if-eq v4, v6, :cond_9

    .line 463
    const-string v4, "processKeyEvent: deleting selection"

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v4, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    iget v6, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    iget v7, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->second:I

    invoke-interface {v4, v6, v7}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    move v4, v3

    goto :goto_2

    .line 466
    :cond_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v6, 0x43

    if-ne v4, v6, :cond_a

    iget v4, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    if-lez v4, :cond_a

    .line 467
    iget-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    iget v0, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    sub-int/2addr v0, v3

    iget v1, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 468
    invoke-direct {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->stateUpdated()V

    .line 469
    iget-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    .line 470
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "processKeyEvent: exit after DEL, text=%s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 469
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 472
    :cond_a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v6, 0x70

    if-ne v4, v6, :cond_b

    iget v4, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    iget-object v6, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    .line 473
    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    if-ge v4, v6, :cond_b

    .line 474
    iget-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    iget v0, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    iget v1, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    add-int/2addr v1, v3

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 475
    invoke-direct {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->stateUpdated()V

    .line 476
    iget-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    .line 478
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 477
    const-string v0, "processKeyEvent: exit after FORWARD_DEL, text=%s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 476
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_b
    move v4, v0

    .line 482
    :goto_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 483
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v6

    if-eqz v6, :cond_d

    .line 484
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result p1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    .line 485
    iget-object v4, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    iget v6, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    invoke-interface {v4, v6, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 486
    iget-object v4, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    .line 490
    invoke-direct {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->getComposingRegion()Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;

    move-result-object v6

    .line 491
    iget v7, v6, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    if-ne v7, v5, :cond_c

    .line 492
    invoke-direct {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->getSelection()Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;

    move-result-object v6

    .line 493
    iget v7, v6, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    if-ne v7, v5, :cond_c

    .line 494
    new-instance v6, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;

    invoke-direct {v6, v0, v0}, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;-><init>(II)V

    .line 500
    :cond_c
    iget v0, v6, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    add-int/2addr v0, v4

    iput v0, v6, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->second:I

    .line 501
    iget v0, v6, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    iget v4, v6, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->second:I

    invoke-virtual {p0, v0, v4}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->setComposingRegion(II)Z

    .line 502
    iget v0, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    .line 503
    invoke-virtual {p0, v0, v0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->setSelection(II)Z

    .line 504
    invoke-direct {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->informIMM()V

    .line 505
    invoke-virtual {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->restartInput()V

    goto :goto_3

    :cond_d
    move v3, v4

    :goto_3
    if-eqz v3, :cond_e

    .line 510
    iget-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "processKeyEvent: exit, text=%s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-direct {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->stateUpdated()V

    :cond_e
    return v3
.end method

.method private sendEditorAction(I)Z
    .locals 1

    .line 625
    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->listener:Lcom/google/androidgamesdk/gametextinput/Listener;

    if-eqz v0, :cond_0

    .line 627
    invoke-interface {v0, p1}, Lcom/google/androidgamesdk/gametextinput/Listener;->onEditorAction(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final stateUpdated()V
    .locals 9

    .line 518
    invoke-direct {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->getSelection()Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;

    move-result-object v0

    .line 519
    invoke-direct {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->getComposingRegion()Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;

    move-result-object v1

    .line 520
    new-instance v8, Lcom/google/androidgamesdk/gametextinput/State;

    iget-object v2, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    .line 521
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    iget v5, v0, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->second:I

    iget v6, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    iget v7, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->second:I

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/androidgamesdk/gametextinput/State;-><init>(Ljava/lang/String;IIII)V

    .line 524
    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->listener:Lcom/google/androidgamesdk/gametextinput/Listener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 529
    invoke-interface {v0, v8, v1}, Lcom/google/androidgamesdk/gametextinput/Listener;->stateChanged(Lcom/google/androidgamesdk/gametextinput/State;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public closeConnection()V
    .locals 2

    .line 378
    const-string v0, "gti.InputConnection"

    const-string v1, "closeConnection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->closeConnection()V

    return-void
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 2

    .line 291
    const-string v0, "gti.InputConnection"

    const-string v1, "commitCompletion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    move-result p1

    return p1
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 2

    .line 297
    const-string v0, "gti.InputConnection"

    const-string v1, "commitCompletion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    move-result p1

    return p1
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 2

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "commitText: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", new pos = "

    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 309
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    const-string v1, "gti.InputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result p1

    return p1
.end method

.method public deleteSurroundingText(II)Z
    .locals 2

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deleteSurroundingText: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gti.InputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    move-result p1

    return p1
.end method

.method public deleteSurroundingTextInCodePoints(II)Z
    .locals 2

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deleteSurroundingTextInCodePoints: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gti.InputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingTextInCodePoints(II)Z

    move-result p1

    return p1
.end method

.method public endBatchEdit()Z
    .locals 2

    .line 284
    const-string v0, "gti.InputConnection"

    const-string v1, "endBatchEdit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-direct {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->stateUpdated()V

    .line 286
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    move-result v0

    return v0
.end method

.method public finishComposingText()Z
    .locals 2

    .line 278
    const-string v0, "gti.InputConnection"

    const-string v1, "finishComposingText"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    move-result v0

    return v0
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 2

    .line 246
    const-string v0, "gti.InputConnection"

    const-string v1, "getEditable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    return-object v0
.end method

.method public final getEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->settings:Lcom/google/androidgamesdk/gametextinput/Settings;

    iget-object v0, v0, Lcom/google/androidgamesdk/gametextinput/Settings;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    return-object v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 2

    .line 390
    const-string v0, "gti.InputConnection"

    const-string v1, "getExtractedText"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object p1

    return-object p1
.end method

.method public getImeInsets()Landroidx/core/graphics/Insets;
    .locals 2

    .line 569
    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->targetView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 570
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    return-object v0

    .line 573
    :cond_0
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    if-nez v0, :cond_1

    .line 576
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    return-object v0

    .line 579
    :cond_1
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public final getListener()Lcom/google/androidgamesdk/gametextinput/Listener;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->listener:Lcom/google/androidgamesdk/gametextinput/Listener;

    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 3

    .line 338
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 340
    const-string v0, ""

    .line 342
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSelectedText: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", result: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "gti.InputConnection"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final getSoftKeyboardActive()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mSoftKeyboardActive:Z

    return v0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 2

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getTextAfterCursor: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gti.InputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p1, :cond_0

    .line 351
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "getTextAfterCursor: returning null to due to an invalid length="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 354
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 2

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getTextBeforeCursor: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gti.InputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p1, :cond_0

    .line 362
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "getTextBeforeCursor: returning null to due to an invalid length="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 365
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public isSoftwareKeyboardVisible()Z
    .locals 2

    .line 588
    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->targetView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 592
    :cond_0
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 598
    :cond_1
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->isVisible(I)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$new$0$com-google-androidgamesdk-gametextinput-InputConnection(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 122
    invoke-virtual {p0, p1, p2}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    .line 541
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onApplyWindowInsets: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->isSoftwareKeyboardVisible()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gti.InputConnection"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->listener:Lcom/google/androidgamesdk/gametextinput/Listener;

    if-eqz p1, :cond_0

    .line 545
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/androidgamesdk/gametextinput/Listener;->onImeInsetsChanged(Landroidx/core/graphics/Insets;)V

    .line 548
    :cond_0
    invoke-virtual {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->isSoftwareKeyboardVisible()Z

    move-result v0

    .line 549
    iget-boolean v1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mSoftKeyboardActive:Z

    if-ne v0, v1, :cond_1

    return-object p2

    .line 553
    :cond_1
    iput-boolean v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mSoftKeyboardActive:Z

    .line 554
    iget-object v1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->targetView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    if-eqz p1, :cond_2

    .line 557
    invoke-interface {p1, v0}, Lcom/google/androidgamesdk/gametextinput/Listener;->onSoftwareKeyboardVisibilityChanged(Z)V

    :cond_2
    return-object p2
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 235
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onKey: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "gti.InputConnection"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->getSoftKeyboardActive()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 240
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->processKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public performEditorAction(I)Z
    .locals 2

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "performEditorAction, action="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gti.InputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 613
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->performEditorAction(I)Z

    move-result p1

    return p1

    .line 615
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->sendEditorAction(I)Z

    move-result p1

    return p1
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2

    .line 396
    const-string v0, "gti.InputConnection"

    const-string v1, "performPrivateCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public requestCursorUpdates(I)Z
    .locals 2

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request cursor updates: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gti.InputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->requestCursorUpdates(I)Z

    move-result p1

    return p1
.end method

.method public restartInput()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->targetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendKeyEvent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gti.InputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setComposingRegion(II)Z
    .locals 2

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setComposingRegion: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gti.InputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingRegion(II)Z

    move-result p1

    return p1
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 2

    .line 261
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "setComposingText=\'%s\' newCursorPosition=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 260
    const-string v1, "gti.InputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 265
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result p1

    return p1
.end method

.method public final setEditorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 4

    .line 177
    const-string v0, "gti.InputConnection"

    const-string v1, "setEditorInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->settings:Lcom/google/androidgamesdk/gametextinput/Settings;

    iput-object p1, v0, Lcom/google/androidgamesdk/gametextinput/Settings;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 183
    iget-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->settings:Lcom/google/androidgamesdk/gametextinput/Settings;

    iget-object p1, p1, Lcom/google/androidgamesdk/gametextinput/Settings;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget p1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v0, 0x20000

    and-int/2addr p1, v0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 184
    iget-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x1388

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v0

    new-instance v0, Lcom/google/androidgamesdk/gametextinput/InputConnection$SingeLineFilter;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/google/androidgamesdk/gametextinput/InputConnection$SingeLineFilter;-><init>(Lcom/google/androidgamesdk/gametextinput/InputConnection;Lcom/google/androidgamesdk/gametextinput/InputConnection$1;)V

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-interface {p1, v1}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .line 188
    :cond_0
    iget-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    new-array v0, v0, [Landroid/text/InputFilter;

    invoke-interface {p1, v0}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    :goto_0
    return-void
.end method

.method public setImeConsumesInput(Z)Z
    .locals 2

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setImeConsumesInput: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gti.InputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->setImeConsumesInput(Z)Z

    move-result p1

    return p1
.end method

.method public final setListener(Lcom/google/androidgamesdk/gametextinput/Listener;)Lcom/google/androidgamesdk/gametextinput/InputConnection;
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->listener:Lcom/google/androidgamesdk/gametextinput/Listener;

    return-object p0
.end method

.method public setSelection(II)Z
    .locals 2

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setSelection: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gti.InputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setSelection(II)Z

    move-result p1

    return p1
.end method

.method public final setSoftKeyboardActive(ZI)V
    .locals 2

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setSoftKeyboardActive, active: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gti.InputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iput-boolean p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mSoftKeyboardActive:Z

    if-eqz p1, :cond_0

    .line 153
    iget-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->targetView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 154
    iget-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->targetView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 155
    iget-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->targetView:Landroid/view/View;

    invoke-virtual {p1, v0, p2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 158
    iget-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object p2, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->targetView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public final setState(Lcom/google/androidgamesdk/gametextinput/State;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 201
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setState: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/google/androidgamesdk/gametextinput/State;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', selection=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/google/androidgamesdk/gametextinput/State;->selectionStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Lcom/google/androidgamesdk/gametextinput/State;->selectionEnd:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), composing region=("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Lcom/google/androidgamesdk/gametextinput/State;->composingRegionStart:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/google/androidgamesdk/gametextinput/State;->composingRegionEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gti.InputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 206
    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/androidgamesdk/gametextinput/State;->text:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 207
    iget v0, p1, Lcom/google/androidgamesdk/gametextinput/State;->selectionStart:I

    iget v1, p1, Lcom/google/androidgamesdk/gametextinput/State;->selectionEnd:I

    invoke-virtual {p0, v0, v1}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->setSelection(II)Z

    .line 208
    iget v0, p1, Lcom/google/androidgamesdk/gametextinput/State;->composingRegionStart:I

    iget p1, p1, Lcom/google/androidgamesdk/gametextinput/State;->composingRegionEnd:I

    invoke-virtual {p0, v0, p1}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->setComposingRegion(II)Z

    .line 209
    invoke-direct {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->informIMM()V

    return-void
.end method
