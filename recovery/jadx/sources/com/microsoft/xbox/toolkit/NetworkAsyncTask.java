package com.microsoft.xbox.toolkit;

import com.microsoft.xbox.toolkit.network.XLEThreadPool;

/* JADX INFO: loaded from: classes4.dex */
public abstract class NetworkAsyncTask<T> extends XLEAsyncTask<T> {
    protected boolean forceLoad;
    private boolean shouldExecute;

    public abstract boolean checkShouldExecute();

    public abstract T loadDataInBackground();

    public abstract T onError();

    public abstract void onNoAction();

    public NetworkAsyncTask() {
        super(XLEThreadPool.networkOperationsThreadPool);
        this.forceLoad = true;
        this.shouldExecute = true;
    }

    public NetworkAsyncTask(XLEThreadPool xLEThreadPool) {
        super(XLEThreadPool.networkOperationsThreadPool);
        this.forceLoad = true;
        this.shouldExecute = true;
    }

    public void load(boolean z) {
        this.forceLoad = z;
        execute();
    }

    @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
    public final T doInBackground() {
        try {
            return loadDataInBackground();
        } catch (Exception unused) {
            return onError();
        }
    }

    @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
    public void execute() {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        boolean z = this.cancelled;
        boolean zCheckShouldExecute = checkShouldExecute();
        this.shouldExecute = zCheckShouldExecute;
        if (zCheckShouldExecute || this.forceLoad) {
            this.isBusy = true;
            onPreExecute();
            super.executeBackground();
        } else {
            onNoAction();
            this.isBusy = false;
        }
    }
}
