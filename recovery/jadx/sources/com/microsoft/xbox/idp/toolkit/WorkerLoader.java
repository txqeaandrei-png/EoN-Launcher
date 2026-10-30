package com.microsoft.xbox.idp.toolkit;

import android.content.Context;
import android.content.Loader;
import android.os.Handler;

/* JADX INFO: loaded from: classes3.dex */
public abstract class WorkerLoader<D> extends Loader<D> {
    public final Handler dispatcher;
    public final Object lock;
    private D result;
    public ResultListener<D> resultListener;
    private final Worker<D> worker;

    public interface ResultListener<D> {
        void onResult(D d);
    }

    public interface Worker<D> {
        void cancel();

        void start(ResultListener<D> resultListener);
    }

    public abstract boolean isDataReleased(D d);

    public abstract void releaseData(D d);

    public WorkerLoader(Context context, Worker<D> worker) {
        super(context);
        this.dispatcher = new Handler();
        this.lock = new Object();
        this.worker = worker;
    }

    @Override // android.content.Loader
    public void onStartLoading() {
        D d = this.result;
        if (d != null) {
            deliverResult(d);
        }
        if (takeContentChanged() || this.result == null) {
            forceLoad();
        }
    }

    @Override // android.content.Loader
    public void onStopLoading() {
        cancelLoadCompat();
    }

    public void onCanceled(D d) {
        if (d == null || isDataReleased(d)) {
            return;
        }
        releaseData(d);
    }

    @Override // android.content.Loader
    public void onForceLoad() {
        super.onForceLoad();
        cancelLoadCompat();
        synchronized (this.lock) {
            ResultListenerImpl resultListenerImpl = new ResultListenerImpl();
            this.resultListener = resultListenerImpl;
            this.worker.start(resultListenerImpl);
        }
    }

    @Override // android.content.Loader
    public boolean onCancelLoad() {
        synchronized (this.lock) {
            if (this.resultListener == null) {
                return false;
            }
            this.worker.cancel();
            this.resultListener = null;
            return true;
        }
    }

    @Override // android.content.Loader
    public void deliverResult(D d) {
        if (isReset()) {
            if (d != null) {
                releaseData(d);
                return;
            }
            return;
        }
        D d2 = this.result;
        this.result = d;
        if (isStarted()) {
            super.deliverResult(d);
        }
        if (d2 == null || d2 == d || isDataReleased(d2)) {
            return;
        }
        releaseData(d2);
    }

    @Override // android.content.Loader
    public void onReset() {
        cancelLoadCompat();
        D d = this.result;
        if (d != null && !isDataReleased(d)) {
            releaseData(this.result);
        }
        this.result = null;
    }

    private boolean cancelLoadCompat() {
        return cancelLoad();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: loaded from: classes4.dex */
    class ResultListenerImpl implements ResultListener<D> {
        private ResultListenerImpl() {
        }

        @Override // com.microsoft.xbox.idp.toolkit.WorkerLoader.ResultListener
        public void onResult(final D d) {
            synchronized (WorkerLoader.this.lock) {
                final boolean z = this != WorkerLoader.this.resultListener;
                WorkerLoader.this.dispatcher.post(new Runnable() { // from class: com.microsoft.xbox.idp.toolkit.WorkerLoader$ResultListenerImpl$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onResult$0(z, d);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onResult$0(boolean z, Object obj) {
            if (z) {
                WorkerLoader.this.onCanceled(obj);
            } else {
                WorkerLoader.this.deliverResult(obj);
            }
        }
    }
}
