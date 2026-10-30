package com.microsoft.xbox.toolkit;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;

/* JADX INFO: loaded from: classes4.dex */
public class XLEManagedAlertDialog extends AlertDialog implements IXLEManagedDialog {
    private IXLEManagedDialog.DialogType dialogType;

    @Override // com.microsoft.xbox.toolkit.IXLEManagedDialog
    public Dialog getDialog() {
        return this;
    }

    protected XLEManagedAlertDialog(Context context) {
        super(context);
        this.dialogType = IXLEManagedDialog.DialogType.NORMAL;
    }

    @Override // com.microsoft.xbox.toolkit.IXLEManagedDialog
    public IXLEManagedDialog.DialogType getDialogType() {
        return this.dialogType;
    }

    @Override // com.microsoft.xbox.toolkit.IXLEManagedDialog
    public void setDialogType(IXLEManagedDialog.DialogType dialogType) {
        this.dialogType = dialogType;
    }

    @Override // com.microsoft.xbox.toolkit.IXLEManagedDialog
    public void safeDismiss() {
        DialogManager.getInstance().dismissManagedDialog(this);
    }

    @Override // com.microsoft.xbox.toolkit.IXLEManagedDialog
    public void quickDismiss() {
        super.dismiss();
    }

    @Override // android.app.Dialog
    public void onStop() {
        super.onStop();
        DialogManager.getInstance().onDialogStopped(this);
    }
}
