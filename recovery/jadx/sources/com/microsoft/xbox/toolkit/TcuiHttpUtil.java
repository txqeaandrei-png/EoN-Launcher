package com.microsoft.xbox.toolkit;

import android.util.Pair;
import com.microsoft.xbox.idp.util.HttpCall;
import com.microsoft.xbox.idp.util.HttpHeaders;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public class TcuiHttpUtil {
    public static <T> T getResponseSync(HttpCall httpCall, final Class<T> cls) throws XLEException {
        final AtomicReference atomicReference = new AtomicReference();
        atomicReference.set(new Pair(false, null));
        httpCall.getResponseAsync(new HttpCall.Callback() { // from class: com.microsoft.xbox.toolkit.TcuiHttpUtil$$ExternalSyntheticLambda0
            @Override // com.microsoft.xbox.idp.util.HttpCall.Callback
            public final void processResponse(int i, InputStream inputStream, HttpHeaders httpHeaders) throws Exception {
                TcuiHttpUtil.lambda$getResponseSync$0(cls, atomicReference, i, inputStream, httpHeaders);
            }
        });
        synchronized (atomicReference) {
            while (true) {
                try {
                    if (!((Boolean) ((Pair) atomicReference.get()).first).booleanValue()) {
                        atomicReference.wait();
                    }
                } catch (InterruptedException e) {
                    e.printStackTrace();
                    return (T) ((Pair) atomicReference.get()).second;
                }
            }
        }
    }

    static /* synthetic */ void lambda$getResponseSync$0(Class cls, AtomicReference atomicReference, int i, InputStream inputStream, HttpHeaders httpHeaders) throws Exception {
        Object objDeserializeJson = (i >= 200 || i <= 299) ? GsonUtil.deserializeJson(inputStream, cls) : null;
        synchronized (atomicReference) {
            atomicReference.set(new Pair(true, objDeserializeJson));
            atomicReference.notify();
        }
    }

    public static boolean getResponseSyncSucceeded(HttpCall httpCall, final List<Integer> list) {
        final AtomicReference atomicReference = new AtomicReference();
        httpCall.getResponseAsync(new HttpCall.Callback() { // from class: com.microsoft.xbox.toolkit.TcuiHttpUtil$$ExternalSyntheticLambda1
            @Override // com.microsoft.xbox.idp.util.HttpCall.Callback
            public final void processResponse(int i, InputStream inputStream, HttpHeaders httpHeaders) throws Exception {
                TcuiHttpUtil.lambda$getResponseSyncSucceeded$1(atomicReference, list, i, inputStream, httpHeaders);
            }
        });
        synchronized (atomicReference) {
            while (true) {
                try {
                    if (atomicReference.get() == null) {
                        atomicReference.wait();
                    }
                } catch (InterruptedException e) {
                    e.printStackTrace();
                    return ((Boolean) atomicReference.get()).booleanValue();
                }
            }
        }
    }

    static /* synthetic */ void lambda$getResponseSyncSucceeded$1(AtomicReference atomicReference, List list, int i, InputStream inputStream, HttpHeaders httpHeaders) throws Exception {
        synchronized (atomicReference) {
            atomicReference.set(Boolean.valueOf(list.contains(Integer.valueOf(i))));
            atomicReference.notify();
        }
    }

    public static String getResponseBodySync(HttpCall httpCall) throws XLEException {
        final AtomicReference atomicReference = new AtomicReference();
        atomicReference.set(new Pair(false, null));
        httpCall.getResponseAsync(new HttpCall.Callback() { // from class: com.microsoft.xbox.toolkit.TcuiHttpUtil$$ExternalSyntheticLambda2
            @Override // com.microsoft.xbox.idp.util.HttpCall.Callback
            public final void processResponse(int i, InputStream inputStream, HttpHeaders httpHeaders) throws Exception {
                TcuiHttpUtil.lambda$getResponseBodySync$2(atomicReference, i, inputStream, httpHeaders);
            }
        });
        synchronized (atomicReference) {
            while (true) {
                try {
                    if (!((Boolean) ((Pair) atomicReference.get()).first).booleanValue()) {
                        atomicReference.wait();
                    }
                } catch (InterruptedException e) {
                    e.printStackTrace();
                    return (String) ((Pair) atomicReference.get()).second;
                }
            }
        }
    }

    static /* synthetic */ void lambda$getResponseBodySync$2(AtomicReference atomicReference, int i, InputStream inputStream, HttpHeaders httpHeaders) throws Exception {
        String string = null;
        if (i < 200 || i > 299) {
            synchronized (atomicReference) {
                atomicReference.set(new Pair(true, null));
                atomicReference.notify();
            }
            return;
        }
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.UTF_8), 4096);
            StringBuilder sb = new StringBuilder();
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                } else {
                    sb.append(line).append("\n");
                }
            }
            string = sb.toString();
        } catch (IOException e) {
            XLEAssert.assertTrue("Failed to read ShortCircuitProfileMessage string - " + e.getMessage(), false);
        }
        synchronized (atomicReference) {
            atomicReference.set(new Pair(true, string));
            atomicReference.notify();
        }
    }

    public static <T> void throwIfNullOrFalse(T t) throws XLEException {
        if (t == null && !Boolean.getBoolean(t.toString())) {
            throw new XLEException(2L);
        }
    }
}
