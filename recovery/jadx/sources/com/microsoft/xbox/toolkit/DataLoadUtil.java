package com.microsoft.xbox.toolkit;

import com.microsoft.xbox.toolkit.network.IDataLoaderRunnable;
import com.microsoft.xbox.xle.app.XLEUtil;
import java.util.Date;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class DataLoadUtil {
    public static <T> NetworkAsyncTask StartLoadFromUI(boolean z, final long j, final Date date, final SingleEntryLoadingStatus singleEntryLoadingStatus, final IDataLoaderRunnable<T> iDataLoaderRunnable) {
        NetworkAsyncTask<T> networkAsyncTask = new NetworkAsyncTask<T>() { // from class: com.microsoft.xbox.toolkit.DataLoadUtil.1
            @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
            public T onError() {
                return null;
            }

            @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
            public void onNoAction() {
            }

            @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
            public void onPostExecute(T t) {
            }

            @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
            public void onPreExecute() {
            }

            @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
            public boolean checkShouldExecute() {
                return this.forceLoad;
            }

            @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
            public T loadDataInBackground() {
                return (T) DataLoadUtil.Load(this.forceLoad, j, date, singleEntryLoadingStatus, iDataLoaderRunnable).getResult();
            }
        };
        networkAsyncTask.execute();
        return networkAsyncTask;
    }

    public static <T> AsyncResult<T> Load(boolean z, long j, Date date, SingleEntryLoadingStatus singleEntryLoadingStatus, final IDataLoaderRunnable<T> iDataLoaderRunnable) {
        XLEAssert.assertNotNull(singleEntryLoadingStatus);
        XLEAssert.assertNotNull(iDataLoaderRunnable);
        XLEAssert.assertIsNotUIThread();
        SingleEntryLoadingStatus.WaitResult waitResultWaitForNotLoading = singleEntryLoadingStatus.waitForNotLoading();
        if (waitResultWaitForNotLoading.waited) {
            XLEException xLEException = waitResultWaitForNotLoading.error;
            if (xLEException == null) {
                return safeReturnResult(null, iDataLoaderRunnable, null, AsyncActionStatus.NO_OP_SUCCESS);
            }
            return safeReturnResult(null, iDataLoaderRunnable, xLEException, AsyncActionStatus.NO_OP_FAIL);
        }
        if (XLEUtil.shouldRefresh(date, j) || z) {
            Objects.requireNonNull(iDataLoaderRunnable);
            ThreadManager.UIThreadSend(new Runnable() { // from class: com.microsoft.xbox.toolkit.DataLoadUtil$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    iDataLoaderRunnable.onPreExecute();
                }
            });
            int shouldRetryCountOnTokenError = iDataLoaderRunnable.getShouldRetryCountOnTokenError();
            int i = 0;
            XLEException e = null;
            while (i <= shouldRetryCountOnTokenError) {
                try {
                    T tBuildData = iDataLoaderRunnable.buildData();
                    postExecute(tBuildData, iDataLoaderRunnable, null, AsyncActionStatus.SUCCESS);
                    singleEntryLoadingStatus.setSuccess();
                    return new AsyncResult<>(tBuildData, iDataLoaderRunnable, null, AsyncActionStatus.SUCCESS);
                } catch (XLEException e2) {
                    e = e2;
                    if (e.getErrorCode() == XLEErrorCode.NOT_AUTHORIZED) {
                        i++;
                    } else {
                        e.getErrorCode();
                    }
                } catch (Exception e3) {
                    e = new XLEException(iDataLoaderRunnable.getDefaultErrorCode(), e3);
                }
            }
            singleEntryLoadingStatus.setFailed(e);
            return safeReturnResult(null, iDataLoaderRunnable, e, AsyncActionStatus.FAIL);
        }
        singleEntryLoadingStatus.setSuccess();
        return safeReturnResult(null, iDataLoaderRunnable, null, AsyncActionStatus.NO_CHANGE);
    }

    private static <T> AsyncResult<T> safeReturnResult(T t, IDataLoaderRunnable<T> iDataLoaderRunnable, XLEException xLEException, AsyncActionStatus asyncActionStatus) {
        postExecute(t, iDataLoaderRunnable, xLEException, asyncActionStatus);
        return new AsyncResult<>(t, iDataLoaderRunnable, xLEException, asyncActionStatus);
    }

    private static <T> void postExecute(final T t, final IDataLoaderRunnable<T> iDataLoaderRunnable, final XLEException xLEException, final AsyncActionStatus asyncActionStatus) {
        ThreadManager.UIThreadSend(new Runnable() { // from class: com.microsoft.xbox.toolkit.DataLoadUtil$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                IDataLoaderRunnable iDataLoaderRunnable2 = iDataLoaderRunnable;
                iDataLoaderRunnable2.onPostExcute(new AsyncResult(t, iDataLoaderRunnable2, xLEException, asyncActionStatus));
            }
        });
    }
}
