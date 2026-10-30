.class public abstract Lcom/microsoft/xbox/toolkit/DialogManagerBase;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;


# instance fields
.field private blockingSpinner:Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;

.field public cancelableBlockingDialog:Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

.field private final dialogStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;",
            ">;"
        }
    .end annotation
.end field

.field private isEnabled:Z

.field private visibleToast:Landroid/widget/Toast;


# direct methods
.method public static synthetic $r8$lambda$wU3kAp3QFkthccy-3GjYsAXgUC0(Lcom/microsoft/xbox/toolkit/DialogManagerBase;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->lambda$setCancelableBlocking$0(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wc6aplR-SzcQsb2-1kysWHCwnHc(Lcom/microsoft/xbox/toolkit/DialogManagerBase;Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->lambda$buildDialog$2(Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;Ljava/lang/Runnable;)V

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    .line 29
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    return-void
.end method

.method private buildDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;
    .locals 2

    .line 201
    new-instance v0, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;-><init>(Landroid/content/Context;)V

    .line 202
    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 203
    invoke-virtual {v0, p2}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 204
    new-instance p1, Lcom/microsoft/xbox/toolkit/DialogManagerBase$$ExternalSyntheticLambda1;

    invoke-direct {p1, p4}, Lcom/microsoft/xbox/toolkit/DialogManagerBase$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    const/4 p2, -0x1

    invoke-virtual {v0, p2, p3, p1}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 205
    new-instance p1, Lcom/microsoft/xbox/toolkit/DialogManagerBase$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v0, p6}, Lcom/microsoft/xbox/toolkit/DialogManagerBase$$ExternalSyntheticLambda2;-><init>(Lcom/microsoft/xbox/toolkit/DialogManagerBase;Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;Ljava/lang/Runnable;)V

    .line 211
    new-instance p2, Lcom/microsoft/xbox/toolkit/DialogManagerBase$$ExternalSyntheticLambda3;

    invoke-direct {p2, p1}, Lcom/microsoft/xbox/toolkit/DialogManagerBase$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Runnable;)V

    const/4 p3, -0x2

    invoke-virtual {v0, p3, p5, p2}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    if-eqz p5, :cond_1

    .line 212
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 215
    invoke-virtual {v0, p2}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->setCancelable(Z)V

    .line 216
    new-instance p2, Lcom/microsoft/xbox/toolkit/DialogManagerBase$$ExternalSyntheticLambda4;

    invoke-direct {p2, p1}, Lcom/microsoft/xbox/toolkit/DialogManagerBase$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p2}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 213
    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->setCancelable(Z)V

    :goto_1
    return-object v0
.end method

.method static synthetic lambda$buildDialog$1(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 204
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThreadPost(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$buildDialog$2(Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;Ljava/lang/Runnable;)V
    .locals 0

    .line 206
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dismissManagedDialog(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V

    if-eqz p2, :cond_0

    .line 208
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$buildDialog$3(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 211
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThreadPost(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$buildDialog$4(Ljava/lang/Runnable;Landroid/content/DialogInterface;)V
    .locals 0

    .line 216
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThreadPost(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setCancelableBlocking$0(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 147
    iget-object p2, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->cancelableBlockingDialog:Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    invoke-virtual {p2}, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->dismiss()V

    const/4 p2, 0x0

    .line 148
    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->cancelableBlockingDialog:Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    .line 149
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public addManagedDialog(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-interface {p1}, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public dismissBlocking()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->blockingSpinner:Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;->dismiss()V

    .line 187
    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->blockingSpinner:Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->cancelableBlockingDialog:Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->dismiss()V

    .line 191
    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->cancelableBlockingDialog:Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    :cond_1
    return-void
.end method

.method public dismissManagedDialog(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 76
    invoke-interface {p1}, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public dismissToast()V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->visibleToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    .line 168
    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->visibleToast:Landroid/widget/Toast;

    :cond_0
    return-void
.end method

.method public dismissTopNonFatalAlert()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;->getDialogType()Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;->FATAL:Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    if-eq v0, v1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public forceDismissAlerts()V
    .locals 1

    .line 173
    :goto_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;->quickDismiss()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public forceDismissAll()V
    .locals 0

    .line 160
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dismissToast()V

    .line 161
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->forceDismissAlerts()V

    .line 162
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dismissBlocking()V

    return-void
.end method

.method public getIsBlocking()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->blockingSpinner:Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->cancelableBlockingDialog:Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getVisibleDialog()Landroid/app/Dialog;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDialogStopped(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBlocking(ZLjava/lang/String;)V
    .locals 2

    .line 123
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 124
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->isEnabled:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_3

    .line 128
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->blockingSpinner:Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;

    if-nez p1, :cond_2

    .line 129
    new-instance p1, Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->blockingSpinner:Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;

    .line 131
    :cond_2
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->blockingSpinner:Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 132
    :cond_3
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->blockingSpinner:Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;

    if-eqz p1, :cond_4

    .line 133
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;->dismiss()V

    const/4 p1, 0x0

    .line 134
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->blockingSpinner:Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;

    :cond_4
    :goto_1
    return-void
.end method

.method public setCancelableBlocking(ZLjava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    .line 139
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 140
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->isEnabled:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_3

    .line 144
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->cancelableBlockingDialog:Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    if-nez p1, :cond_2

    .line 145
    new-instance p1, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->cancelableBlockingDialog:Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    .line 146
    new-instance v0, Lcom/microsoft/xbox/toolkit/DialogManagerBase$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3}, Lcom/microsoft/xbox/toolkit/DialogManagerBase$$ExternalSyntheticLambda0;-><init>(Lcom/microsoft/xbox/toolkit/DialogManagerBase;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->setCancelButtonAction(Landroid/view/View$OnClickListener;)V

    .line 152
    :cond_2
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->cancelableBlockingDialog:Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 153
    :cond_3
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->cancelableBlockingDialog:Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    if-eqz p1, :cond_4

    .line 154
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->dismiss()V

    const/4 p1, 0x0

    .line 155
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->cancelableBlockingDialog:Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    :cond_4
    :goto_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->isEnabled:Z

    if-eq v0, p1, :cond_0

    .line 45
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->isEnabled:Z

    :cond_0
    return-void
.end method

.method public shouldDismissAllBeforeOpeningADialog()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showFatalAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 8

    .line 85
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->forceDismissAll()V

    .line 86
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->isEnabled:Z

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 87
    invoke-direct/range {v1 .. v7}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->buildDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;

    move-result-object p1

    .line 88
    sget-object p2, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;->FATAL:Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->setDialogType(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;)V

    .line 89
    iget-object p2, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->show()V

    :cond_0
    return-void
.end method

.method public showManagedDialog(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V
    .locals 2

    .line 50
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->shouldDismissAllBeforeOpeningADialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->forceDismissAll()V

    .line 53
    :cond_0
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->isEnabled:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :try_start_0
    invoke-interface {p1}, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 59
    const-string v1, "Adding window failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 60
    :cond_1
    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public showNonFatalAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 8

    .line 95
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->isEnabled:Z

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 96
    invoke-direct/range {v1 .. v7}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->buildDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;

    move-result-object p1

    .line 97
    sget-object p2, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;->NON_FATAL:Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->setDialogType(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;)V

    .line 98
    iget-object p2, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->show()V

    :cond_0
    return-void
.end method

.method public showOkCancelDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    .line 104
    const-string v0, "You must supply cancel text if this is not a must-act dialog."

    invoke-static {v0, p5}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->isEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    invoke-direct/range {p0 .. p6}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->buildDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;

    move-result-object p1

    .line 107
    sget-object p2, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;->NORMAL:Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->setDialogType(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;)V

    .line 108
    iget-object p2, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->show()V

    :cond_0
    return-void
.end method

.method public showToast(I)V
    .locals 2

    .line 115
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dismissToast()V

    .line 116
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->visibleToast:Landroid/widget/Toast;

    .line 118
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
