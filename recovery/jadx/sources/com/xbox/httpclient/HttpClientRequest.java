package com.xbox.httpclient;

import java.io.IOException;
import java.net.UnknownHostException;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import org.apache.http.client.methods.HttpPut;

/* JADX INFO: loaded from: classes3.dex */
public class HttpClientRequest {
    private static final byte[] NO_BODY = new byte[0];
    private static final OkHttpClient OK_CLIENT = new OkHttpClient.Builder().retryOnConnectionFailure(false).build();
    private Request.Builder requestBuilder = new Request.Builder();

    public native void OnRequestCompleted(long j, HttpClientResponse httpClientResponse);

    public native void OnRequestFailed(long j, String str, boolean z);

    public void setHttpUrl(String str) {
        this.requestBuilder = this.requestBuilder.url(str);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void setHttpMethodAndBody(String str, long j, String str2, long j2) {
        RequestBody httpClientRequestBody;
        if (j2 == 0) {
            httpClientRequestBody = null;
            if ("POST".equals(str) || HttpPut.METHOD_NAME.equals(str)) {
                httpClientRequestBody = RequestBody.create(NO_BODY, str2 != null ? MediaType.parse(str2) : null);
            }
        } else {
            httpClientRequestBody = new HttpClientRequestBody(j, str2, j2);
        }
        this.requestBuilder.method(str, httpClientRequestBody);
    }

    public void setHttpHeader(String str, String str2) {
        this.requestBuilder = this.requestBuilder.addHeader(str, str2);
    }

    public void doRequestAsync(final long j) {
        OK_CLIENT.newCall(this.requestBuilder.build()).enqueue(new Callback() { // from class: com.xbox.httpclient.HttpClientRequest.1
            @Override // okhttp3.Callback
            public void onFailure(Call call, IOException iOException) {
                HttpClientRequest.this.OnRequestFailed(j, iOException.getClass().getCanonicalName(), iOException instanceof UnknownHostException);
            }

            @Override // okhttp3.Callback
            public void onResponse(Call call, Response response) {
                HttpClientRequest.this.OnRequestCompleted(j, new HttpClientResponse(j, response));
            }
        });
    }
}
