package com.microsoft.xbox.idp.toolkit;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import java.io.InputStream;
import java.net.URL;

/* JADX INFO: loaded from: classes4.dex */
public class BitmapLoader extends WorkerLoader<Result> {
    public static final String TAG = "BitmapLoader";

    /* JADX INFO: loaded from: classes3.dex */
    public interface Cache {
        void clear();

        Bitmap get(Object obj);

        Bitmap put(Object obj, Bitmap bitmap);

        Bitmap remove(Object obj);
    }

    public BitmapLoader(Context context, String str) {
        this(context, null, null, str);
    }

    public BitmapLoader(Context context, Cache cache, Object obj, String str) {
        super(context, new MyWorker(cache, obj, str));
    }

    @Override // com.microsoft.xbox.idp.toolkit.WorkerLoader
    public boolean isDataReleased(Result result) {
        return result.isReleased();
    }

    @Override // com.microsoft.xbox.idp.toolkit.WorkerLoader
    public void releaseData(Result result) {
        result.release();
    }

    public static class Result extends LoaderResult<Bitmap> {
        protected Result(Bitmap bitmap) {
            super(bitmap, null);
        }

        protected Result(Exception exc) {
            super(exc);
        }

        @Override // com.microsoft.xbox.idp.toolkit.LoaderResult
        public boolean isReleased() {
            return hasData() && getData().isRecycled();
        }

        @Override // com.microsoft.xbox.idp.toolkit.LoaderResult
        public void release() {
            if (hasData()) {
                getData().recycle();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class MyWorker implements WorkerLoader.Worker<Result> {
        static final boolean assertionsDisabled = true;
        public final Cache cache;
        public final Object resultKey;
        public final String urlString;

        @Override // com.microsoft.xbox.idp.toolkit.WorkerLoader.Worker
        public void cancel() {
        }

        private MyWorker(Cache cache, Object obj, String str) {
            if (assertionsDisabled || str != null) {
                this.cache = cache;
                this.resultKey = obj;
                this.urlString = str;
                return;
            }
            throw new AssertionError();
        }

        public boolean hasCache() {
            return (this.cache == null || this.resultKey == null) ? false : true;
        }

        @Override // com.microsoft.xbox.idp.toolkit.WorkerLoader.Worker
        public void start(final WorkerLoader.ResultListener<Result> resultListener) {
            final Bitmap bitmap;
            if (hasCache()) {
                synchronized (this.cache) {
                    bitmap = this.cache.get(this.resultKey);
                }
                if (bitmap != null) {
                    Log.d(BitmapLoader.TAG, "Successfully retrieved Bitmap from BitmapLoader.Cache");
                    new Thread(new Runnable() { // from class: com.microsoft.xbox.idp.toolkit.BitmapLoader$MyWorker$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            resultListener.onResult(new BitmapLoader.Result(bitmap));
                        }
                    }).start();
                    return;
                }
            }
            new Thread(new Runnable() { // from class: com.microsoft.xbox.idp.toolkit.BitmapLoader$MyWorker$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$start$1(resultListener);
                }
            }).start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$start$1(WorkerLoader.ResultListener resultListener) {
            try {
                URL url = new URL(this.urlString);
                Log.d(BitmapLoader.TAG, "url created: " + url);
                InputStream inputStreamOpenStream = url.openStream();
                Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpenStream);
                if (hasCache()) {
                    synchronized (this.cache) {
                        Log.d(BitmapLoader.TAG, "Caching retrieved bitmap");
                        this.cache.put(this.resultKey, bitmapDecodeStream);
                    }
                }
                resultListener.onResult(new Result(bitmapDecodeStream));
                inputStreamOpenStream.close();
            } catch (Exception e) {
                resultListener.onResult(new Result(e));
            }
        }
    }
}
