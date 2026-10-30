package com.microsoft.xbox.toolkit;

import android.app.Dialog;

/* JADX INFO: loaded from: classes3.dex */
public interface IXLEManagedDialog {

    public enum DialogType {
        FATAL,
        NON_FATAL,
        NORMAL
    }

    Dialog getDialog();

    DialogType getDialogType();

    void quickDismiss();

    void safeDismiss();

    void setDialogType(DialogType dialogType);
}
