package com.microsoft.xbox.toolkit;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringWriter;
import java.lang.reflect.Type;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class GsonUtil {

    public interface JsonBodyBuilder {
        void buildBody(JsonWriter jsonWriter) throws IOException;
    }

    public static <T> T deserializeJson(InputStream inputStream, Class<T> cls) {
        return (T) deserializeJson(createMinimumGsonBuilder().create(), inputStream, cls);
    }

    public static <T> T deserializeJson(String str, Class<T> cls) {
        return (T) deserializeJson(createMinimumGsonBuilder().create(), str, cls);
    }

    public static <T> T deserializeJson(InputStream inputStream, Class<T> cls, Type type, Object obj) {
        return (T) deserializeJson(createMinimumGsonBuilder().registerTypeAdapter(type, obj).create(), inputStream, cls);
    }

    public static <T> T deserializeJson(InputStream inputStream, Class<T> cls, Map<Type, Object> map) {
        GsonBuilder gsonBuilderCreateMinimumGsonBuilder = createMinimumGsonBuilder();
        for (Map.Entry<Type, Object> entry : map.entrySet()) {
            gsonBuilderCreateMinimumGsonBuilder.registerTypeAdapter(entry.getKey(), entry.getValue());
        }
        return (T) deserializeJson(gsonBuilderCreateMinimumGsonBuilder.create(), inputStream, cls);
    }

    public static <T> T deserializeJson(String str, Class<T> cls, Type type, Object obj) {
        return (T) deserializeJson(createMinimumGsonBuilder().registerTypeAdapter(type, obj).create(), str, cls);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0022, code lost:
    
        throw r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:?, code lost:
    
        throw r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> T deserializeJson(com.google.gson.Gson r2, java.io.InputStream r3, java.lang.Class<T> r4) {
        /*
            r0 = 0
            java.io.InputStreamReader r1 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L3a java.lang.Exception -> L40
            r1.<init>(r3)     // Catch: java.lang.Throwable -> L3a java.lang.Exception -> L40
            java.io.BufferedReader r3 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L28 java.lang.Exception -> L31
            r3.<init>(r1)     // Catch: java.lang.Throwable -> L28 java.lang.Exception -> L31
            java.lang.Object r2 = r2.fromJson(r3, r4)     // Catch: java.lang.Throwable -> L21 java.lang.Exception -> L23
            r3.close()     // Catch: java.lang.Throwable -> L13 java.lang.Exception -> L16
            goto L1a
        L13:
            r3 = move-exception
            r0 = r2
            goto L22
        L16:
            r3 = move-exception
            r3.printStackTrace()     // Catch: java.lang.Throwable -> L13 java.lang.Exception -> L1e
        L1a:
            r1.close()     // Catch: java.lang.Throwable -> L13 java.lang.Exception -> L3f
            goto L3f
        L1e:
            r3 = move-exception
            r0 = r2
            goto L24
        L21:
            r3 = move-exception
        L22:
            throw r3     // Catch: java.lang.Throwable -> L28 java.lang.Exception -> L31
        L23:
            r3 = move-exception
        L24:
            r3.printStackTrace()     // Catch: java.lang.Throwable -> L28 java.lang.Exception -> L31
            goto L3e
        L28:
            r1.close()     // Catch: java.lang.Exception -> L2c java.lang.Throwable -> L3a
            goto L3e
        L2c:
            r2 = move-exception
            r2.printStackTrace()     // Catch: java.lang.Throwable -> L3a java.lang.Exception -> L40
            goto L3e
        L31:
            r1.close()     // Catch: java.lang.Exception -> L35 java.lang.Throwable -> L3a
            goto L39
        L35:
            r2 = move-exception
            r2.printStackTrace()     // Catch: java.lang.Throwable -> L3a java.lang.Exception -> L40
        L39:
            return r0
        L3a:
            r2 = move-exception
            r2.printStackTrace()
        L3e:
            r2 = r0
        L3f:
            return r2
        L40:
            r2 = move-exception
            r2.printStackTrace()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.xbox.toolkit.GsonUtil.deserializeJson(com.google.gson.Gson, java.io.InputStream, java.lang.Class):java.lang.Object");
    }

    public static <T> T deserializeJson(Gson gson, String str, Class<T> cls) {
        try {
            return (T) gson.fromJson(str, (Class) cls);
        } catch (Exception unused) {
            return null;
        }
    }

    public static GsonBuilder createMinimumGsonBuilder() {
        return new GsonBuilder().excludeFieldsWithModifiers(128);
    }

    public static String toJsonString(Object obj) {
        return new Gson().toJson(obj);
    }

    public static String buildJsonBody(JsonBodyBuilder jsonBodyBuilder) throws IOException {
        StringWriter stringWriter = new StringWriter();
        try {
            JsonWriter jsonWriter = new JsonWriter(stringWriter);
            jsonBodyBuilder.buildBody(jsonWriter);
            String string = stringWriter.toString();
            jsonWriter.close();
            return string;
        } finally {
            stringWriter.close();
        }
    }
}
