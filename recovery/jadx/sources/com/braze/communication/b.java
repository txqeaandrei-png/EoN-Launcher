package com.braze.communication;

import android.net.TrafficStats;
import com.braze.Constants;
import com.braze.support.BrazeLogger;
import com.braze.support.l;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.io.CloseableKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    public static final int b = (int) TimeUnit.SECONDS.toMillis(15);
    public final int a;

    public b(int i) {
        this.a = i;
    }

    public final d a(final com.braze.requests.util.c requestTarget, HashMap requestHeaders, JSONObject payload) {
        Intrinsics.checkNotNullParameter(requestTarget, "requestTarget");
        Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
        Intrinsics.checkNotNullParameter(payload, "payload");
        TrafficStats.setThreadStatsTag(Constants.TRAFFIC_STATS_THREAD_TAG);
        URL url = requestTarget.c;
        Map mapEmptyMap = MapsKt.emptyMap();
        int responseCode = -1;
        try {
            HttpURLConnection httpURLConnectionA = a(url, payload, requestHeaders);
            responseCode = httpURLConnectionA.getResponseCode();
            Map<String, List<String>> headerFields = httpURLConnectionA.getHeaderFields();
            Intrinsics.checkNotNullExpressionValue(headerFields, "getHeaderFields(...)");
            mapEmptyMap = l.a(headerFields);
            Reader inputStreamReader = new InputStreamReader(a.a(httpURLConnectionA), Charsets.UTF_8);
            BufferedReader bufferedReader = inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192);
            try {
                String text = TextStreamsKt.readText(bufferedReader);
                CloseableKt.closeFinally(bufferedReader, null);
                return new d(responseCode, mapEmptyMap, new JSONObject(text));
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(bufferedReader, th);
                    throw th2;
                }
            }
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.communication.b$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return b.a(requestTarget);
                }
            }, 4, (Object) null);
            return new d(responseCode, mapEmptyMap, 4);
        }
    }

    public static final String a(com.braze.requests.util.c cVar) {
        return "Failed request to [" + cVar + ']';
    }

    public final HttpURLConnection a(URL url, JSONObject jSONObject, HashMap map) throws IOException {
        String string = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        Charset charsetForName = Charset.forName("UTF-8");
        Intrinsics.checkNotNullExpressionValue(charsetForName, "forName(...)");
        byte[] bytes = string.getBytes(charsetForName);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        HttpURLConnection httpURLConnectionA = g.a.a(url);
        for (Map.Entry entry : map.entrySet()) {
            httpURLConnectionA.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        httpURLConnectionA.setConnectTimeout(b);
        httpURLConnectionA.setReadTimeout(this.a);
        httpURLConnectionA.setUseCaches(false);
        httpURLConnectionA.setInstanceFollowRedirects(false);
        httpURLConnectionA.setRequestMethod("POST");
        httpURLConnectionA.setDoOutput(true);
        httpURLConnectionA.setFixedLengthStreamingMode(bytes.length);
        OutputStream outputStream = httpURLConnectionA.getOutputStream();
        try {
            outputStream.write(bytes);
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(outputStream, null);
            return httpURLConnectionA;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(outputStream, th);
                throw th2;
            }
        }
    }
}
