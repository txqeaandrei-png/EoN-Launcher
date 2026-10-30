package com.microsoft.xbox.toolkit;

import android.app.Dialog;
import android.content.DialogInterface;
import android.view.View;
import android.widget.Toast;
import com.microsoft.xbox.toolkit.ui.BlockingScreen;
import com.microsoft.xbox.toolkit.ui.CancellableBlockingScreen;
import com.microsoft.xboxtcui.XboxTcuiSdk;
import java.util.Stack;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DialogManagerBase implements IProjectSpecificDialogManager {
    private BlockingScreen blockingSpinner;
    public CancellableBlockingScreen cancelableBlockingDialog;
    private final Stack<IXLEManagedDialog> dialogStack = new Stack<>();
    private boolean isEnabled;
    private Toast visibleToast;

    public boolean shouldDismissAllBeforeOpeningADialog() {
        return true;
    }

    protected DialogManagerBase() {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public Dialog getVisibleDialog() {
        if (this.dialogStack.isEmpty()) {
            return null;
        }
        return this.dialogStack.peek().getDialog();
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public boolean getIsBlocking() {
        CancellableBlockingScreen cancellableBlockingScreen;
        BlockingScreen blockingScreen = this.blockingSpinner;
        return (blockingScreen != null && blockingScreen.isShowing()) || ((cancellableBlockingScreen = this.cancelableBlockingDialog) != null && cancellableBlockingScreen.isShowing());
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void setEnabled(boolean z) {
        if (this.isEnabled != z) {
            this.isEnabled = z;
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void showManagedDialog(IXLEManagedDialog iXLEManagedDialog) {
        if (shouldDismissAllBeforeOpeningADialog()) {
            forceDismissAll();
        }
        if (!this.isEnabled || XboxTcuiSdk.getActivity() == null || XboxTcuiSdk.getActivity().isFinishing()) {
            return;
        }
        this.dialogStack.push(iXLEManagedDialog);
        try {
            iXLEManagedDialog.getDialog().show();
        } catch (RuntimeException e) {
            String message = e.getMessage();
            if (message == null || !message.contains("Adding window failed")) {
                throw e;
            }
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void addManagedDialog(IXLEManagedDialog iXLEManagedDialog) {
        if (this.isEnabled) {
            this.dialogStack.push(iXLEManagedDialog);
            iXLEManagedDialog.getDialog().show();
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void dismissManagedDialog(IXLEManagedDialog iXLEManagedDialog) {
        if (this.isEnabled) {
            this.dialogStack.remove(iXLEManagedDialog);
            iXLEManagedDialog.getDialog().dismiss();
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void onDialogStopped(IXLEManagedDialog iXLEManagedDialog) {
        this.dialogStack.remove(iXLEManagedDialog);
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void showFatalAlertDialog(String str, String str2, String str3, Runnable runnable) {
        forceDismissAll();
        if (this.isEnabled) {
            XLEManagedAlertDialog xLEManagedAlertDialogBuildDialog = buildDialog(str, str2, str3, runnable, null, null);
            xLEManagedAlertDialogBuildDialog.setDialogType(IXLEManagedDialog.DialogType.FATAL);
            this.dialogStack.push(xLEManagedAlertDialogBuildDialog);
            xLEManagedAlertDialogBuildDialog.show();
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void showNonFatalAlertDialog(String str, String str2, String str3, Runnable runnable) {
        if (this.isEnabled) {
            XLEManagedAlertDialog xLEManagedAlertDialogBuildDialog = buildDialog(str, str2, str3, runnable, null, null);
            xLEManagedAlertDialogBuildDialog.setDialogType(IXLEManagedDialog.DialogType.NON_FATAL);
            this.dialogStack.push(xLEManagedAlertDialogBuildDialog);
            xLEManagedAlertDialogBuildDialog.show();
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void showOkCancelDialog(String str, String str2, String str3, Runnable runnable, String str4, Runnable runnable2) {
        XLEAssert.assertNotNull("You must supply cancel text if this is not a must-act dialog.", str4);
        if (this.dialogStack.size() > 0 || !this.isEnabled || XboxTcuiSdk.getActivity() == null || XboxTcuiSdk.getActivity().isFinishing()) {
            return;
        }
        XLEManagedAlertDialog xLEManagedAlertDialogBuildDialog = buildDialog(str, str2, str3, runnable, str4, runnable2);
        xLEManagedAlertDialogBuildDialog.setDialogType(IXLEManagedDialog.DialogType.NORMAL);
        this.dialogStack.push(xLEManagedAlertDialogBuildDialog);
        xLEManagedAlertDialogBuildDialog.show();
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void showToast(int i) {
        dismissToast();
        if (this.isEnabled) {
            Toast toastMakeText = Toast.makeText(XboxTcuiSdk.getActivity(), i, 1);
            this.visibleToast = toastMakeText;
            toastMakeText.show();
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void setBlocking(boolean z, String str) {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        if (this.isEnabled) {
            if (z) {
                if (this.blockingSpinner == null) {
                    this.blockingSpinner = new BlockingScreen(XboxTcuiSdk.getActivity());
                }
                this.blockingSpinner.show(XboxTcuiSdk.getActivity(), str);
            } else {
                BlockingScreen blockingScreen = this.blockingSpinner;
                if (blockingScreen != null) {
                    blockingScreen.dismiss();
                    this.blockingSpinner = null;
                }
            }
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void setCancelableBlocking(boolean z, String str, final Runnable runnable) {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        if (this.isEnabled) {
            if (z) {
                if (this.cancelableBlockingDialog == null) {
                    CancellableBlockingScreen cancellableBlockingScreen = new CancellableBlockingScreen(XboxTcuiSdk.getActivity());
                    this.cancelableBlockingDialog = cancellableBlockingScreen;
                    cancellableBlockingScreen.setCancelButtonAction(new View.OnClickListener() { // from class: com.microsoft.xbox.toolkit.DialogManagerBase$$ExternalSyntheticLambda0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$setCancelableBlocking$0(runnable, view);
                        }
                    });
                }
                this.cancelableBlockingDialog.show(XboxTcuiSdk.getActivity(), str);
                return;
            }
            CancellableBlockingScreen cancellableBlockingScreen2 = this.cancelableBlockingDialog;
            if (cancellableBlockingScreen2 != null) {
                cancellableBlockingScreen2.dismiss();
                this.cancelableBlockingDialog = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setCancelableBlocking$0(Runnable runnable, View view) {
        this.cancelableBlockingDialog.dismiss();
        this.cancelableBlockingDialog = null;
        runnable.run();
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void forceDismissAll() {
        dismissToast();
        forceDismissAlerts();
        dismissBlocking();
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void dismissToast() {
        Toast toast = this.visibleToast;
        if (toast != null) {
            toast.cancel();
            this.visibleToast = null;
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void forceDismissAlerts() {
        while (this.dialogStack.size() > 0) {
            this.dialogStack.pop().quickDismiss();
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void dismissTopNonFatalAlert() {
        if (this.dialogStack.size() <= 0 || this.dialogStack.peek().getDialogType() == IXLEManagedDialog.DialogType.FATAL) {
            return;
        }
        this.dialogStack.pop().getDialog().dismiss();
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDialogManager
    public void dismissBlocking() {
        BlockingScreen blockingScreen = this.blockingSpinner;
        if (blockingScreen != null) {
            blockingScreen.dismiss();
            this.blockingSpinner = null;
        }
        CancellableBlockingScreen cancellableBlockingScreen = this.cancelableBlockingDialog;
        if (cancellableBlockingScreen != null) {
            cancellableBlockingScreen.dismiss();
            this.cancelableBlockingDialog = null;
        }
    }

    private XLEManagedAlertDialog buildDialog(String str, String str2, String str3, final Runnable runnable, String str4, final Runnable runnable2) {
        final XLEManagedAlertDialog xLEManagedAlertDialog = new XLEManagedAlertDialog(XboxTcuiSdk.getActivity());
        xLEManagedAlertDialog.setTitle(str);
        xLEManagedAlertDialog.setMessage(str2);
        xLEManagedAlertDialog.setButton(-1, str3, new DialogInterface.OnClickListener() { // from class: com.microsoft.xbox.toolkit.DialogManagerBase$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                ThreadManager.UIThreadPost(runnable);
            }
        });
        final Runnable runnable3 = new Runnable() { // from class: com.microsoft.xbox.toolkit.DialogManagerBase$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$buildDialog$2(xLEManagedAlertDialog, runnable2);
            }
        };
        xLEManagedAlertDialog.setButton(-2, str4, new DialogInterface.OnClickListener() { // from class: com.microsoft.xbox.toolkit.DialogManagerBase$$ExternalSyntheticLambda3
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                ThreadManager.UIThreadPost(runnable3);
            }
        });
        if (str4 == null || str4.length() == 0) {
            xLEManagedAlertDialog.setCancelable(false);
        } else {
            xLEManagedAlertDialog.setCancelable(true);
            xLEManagedAlertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.microsoft.xbox.toolkit.DialogManagerBase$$ExternalSyntheticLambda4
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    ThreadManager.UIThreadPost(runnable3);
                }
            });
        }
        return xLEManagedAlertDialog;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildDialog$2(XLEManagedAlertDialog xLEManagedAlertDialog, Runnable runnable) {
        dismissManagedDialog(xLEManagedAlertDialog);
        if (runnable != null) {
            runnable.run();
        }
    }
}
