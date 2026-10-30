package com.microsoft.xbox.idp.toolkit;

import android.content.Context;
import com.google.gson.Gson;
import com.microsoft.xbox.idp.util.HttpCall;
import com.microsoft.xbox.idp.util.HttpHeaders;
import java.io.BufferedInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes4.dex */
public class ObjectLoader<T> extends WorkerLoader<Result<T>> {
    private static final String TAG = "ObjectLoader";

    /* JADX INFO: loaded from: classes3.dex */
    public interface Cache {
        void clear();

        <T> Result<T> get(Object obj);

        <T> Result<T> put(Object obj, Result<T> result);

        <T> Result<T> remove(Object obj);
    }

    public ObjectLoader(Context context, Class<T> cls, Gson gson, HttpCall httpCall) {
        this(context, null, null, cls, gson, httpCall);
    }

    public ObjectLoader(Context context, Cache cache, Object obj, Class<T> cls, Gson gson, HttpCall httpCall) {
        super(context, new MyWorker(cache, obj, cls, gson, httpCall));
    }

    @Override // com.microsoft.xbox.idp.toolkit.WorkerLoader
    public boolean isDataReleased(Result<T> result) {
        return result.isReleased();
    }

    @Override // com.microsoft.xbox.idp.toolkit.WorkerLoader
    public void releaseData(Result<T> result) {
        result.release();
    }

    public static class Result<T> extends LoaderResult<T> {
        @Override // com.microsoft.xbox.idp.toolkit.LoaderResult
        public boolean isReleased() {
            return true;
        }

        @Override // com.microsoft.xbox.idp.toolkit.LoaderResult
        public void release() {
        }

        protected Result(T t) {
            super(t, null);
        }

        protected Result(HttpError httpError) {
            super(null, httpError);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class MyWorker<T> implements WorkerLoader.Worker<Result<T>> {
        public final Cache cache;
        public final Class<T> cls;
        public final Gson gson;
        private final HttpCall httpCall;
        public final Object resultKey;

        @Override // com.microsoft.xbox.idp.toolkit.WorkerLoader.Worker
        public void cancel() {
        }

        private MyWorker(Cache cache, Object obj, Class<T> cls, Gson gson, HttpCall httpCall) {
            this.cache = cache;
            this.resultKey = obj;
            this.cls = cls;
            this.gson = gson;
            this.httpCall = httpCall;
        }

        public boolean hasCache() {
            return (this.cache == null || this.resultKey == null) ? false : true;
        }

        @Override // com.microsoft.xbox.idp.toolkit.WorkerLoader.Worker
        public void start(final WorkerLoader.ResultListener<Result<T>> resultListener) {
            Result<T> result;
            if (hasCache()) {
                synchronized (this.cache) {
                    result = this.cache.get(this.resultKey);
                }
                if (result != null) {
                    resultListener.onResult(result);
                    return;
                }
            }
            this.httpCall.getResponseAsync(new HttpCall.Callback() { // from class: com.microsoft.xbox.idp.toolkit.ObjectLoader$MyWorker$$ExternalSyntheticLambda0
                @Override // com.microsoft.xbox.idp.util.HttpCall.Callback
                public final void processResponse(int i, InputStream inputStream, HttpHeaders httpHeaders) throws Exception {
                    this.f$0.lambda$start$0(resultListener, i, inputStream, httpHeaders);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$start$0(WorkerLoader.ResultListener resultListener, int i, InputStream inputStream, HttpHeaders httpHeaders) throws Exception {
            if (i < 200 || i > 299) {
                Result<T> result = new Result<>(new HttpError(i, i, inputStream));
                if (hasCache()) {
                    synchronized (this.cache) {
                        this.cache.put(this.resultKey, result);
                    }
                }
                resultListener.onResult(result);
                return;
            }
            if (this.cls == Void.class) {
                resultListener.onResult(new Result((HttpError) null));
                return;
            }
            StringWriter stringWriter = new StringWriter();
            try {
                InputStreamReader inputStreamReader = new InputStreamReader(new BufferedInputStream(inputStream));
                try {
                    Result<T> result2 = new Result<>(this.gson.fromJson((Reader) inputStreamReader, (Class) this.cls));
                    if (hasCache()) {
                        synchronized (this.cache) {
                            this.cache.put(this.resultKey, result2);
                        }
                    }
                    resultListener.onResult(result2);
                    inputStreamReader.close();
                    stringWriter.close();
                } catch (Throwable th) {
                    inputStreamReader.close();
                    throw th;
                }
            } catch (Throwable th2) {
                stringWriter.close();
                throw th2;
            }
        }
    }
}
