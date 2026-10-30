package com.microsoft.xbox.toolkit;

import com.microsoft.xbox.toolkit.network.XLEThreadPool;

/* JADX INFO: loaded from: classes3.dex */
public abstract class XLEAsyncTask<Result> {
    private Runnable doBackgroundAndPostExecuteRunnable;
    private XLEThreadPool threadPool;
    public XLEAsyncTask chainedTask = null;
    protected boolean cancelled = false;
    protected boolean isBusy = false;

    public abstract Result doInBackground();

    public abstract void onPostExecute(Result result);

    public abstract void onPreExecute();

    public XLEAsyncTask(XLEThreadPool xLEThreadPool) {
        this.doBackgroundAndPostExecuteRunnable = null;
        this.threadPool = xLEThreadPool;
        this.doBackgroundAndPostExecuteRunnable = new Runnable() { // from class: com.microsoft.xbox.toolkit.XLEAsyncTask$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$1();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1() {
        final Result resultDoInBackground = !this.cancelled ? doInBackground() : null;
        ThreadManager.UIThreadPost(new Runnable() { // from class: com.microsoft.xbox.toolkit.XLEAsyncTask$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0(resultDoInBackground);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void lambda$new$0(Object obj) {
        this.isBusy = false;
        if (this.cancelled) {
            return;
        }
        onPostExecute(obj);
        XLEAsyncTask xLEAsyncTask = this.chainedTask;
        if (xLEAsyncTask != null) {
            xLEAsyncTask.execute();
        }
    }

    public static void executeAll(XLEAsyncTask... xLEAsyncTaskArr) {
        if (xLEAsyncTaskArr.length > 0) {
            int i = 0;
            while (i < xLEAsyncTaskArr.length - 1) {
                XLEAsyncTask xLEAsyncTask = xLEAsyncTaskArr[i];
                i++;
                xLEAsyncTask.chainedTask = xLEAsyncTaskArr[i];
            }
            xLEAsyncTaskArr[0].execute();
        }
    }

    public void cancel() {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        this.cancelled = true;
    }

    public void execute() {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        this.cancelled = false;
        this.isBusy = true;
        onPreExecute();
        executeBackground();
    }

    public boolean getIsBusy() {
        return this.isBusy && !this.cancelled;
    }

    public void executeBackground() {
        this.cancelled = false;
        this.threadPool.run(this.doBackgroundAndPostExecuteRunnable);
    }
}
