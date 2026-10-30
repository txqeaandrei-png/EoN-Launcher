package com.braze.communication;

import androidx.webkit.ProxyConfig;
import com.braze.support.BrazeLogger;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class g {
    public static final g a = new g();
    public static final f b;

    static {
        try {
            b = new f();
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) a, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.communication.g$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return g.a();
                }
            }, 4, (Object) null);
        }
    }

    public static final String a() {
        return "Exception initializing static TLS socket factory.";
    }

    public static final String b() {
        return "Exception setting TLS socket factory on url connection.";
    }

    public final HttpURLConnection a(URL url) throws IOException {
        Intrinsics.checkNotNullParameter(url, "url");
        URLConnection uRLConnectionOpenConnection = url.openConnection();
        if (Intrinsics.areEqual(url.getProtocol(), ProxyConfig.MATCH_HTTPS)) {
            try {
                Intrinsics.checkNotNull(uRLConnectionOpenConnection, "null cannot be cast to non-null type javax.net.ssl.HttpsURLConnection");
                HttpsURLConnection httpsURLConnection = (HttpsURLConnection) uRLConnectionOpenConnection;
                f fVar = b;
                if (fVar == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("socketFactory");
                    fVar = null;
                }
                httpsURLConnection.setSSLSocketFactory(fVar);
            } catch (Exception e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.communication.g$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return g.b();
                    }
                }, 4, (Object) null);
            }
        }
        Intrinsics.checkNotNull(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
        return (HttpURLConnection) uRLConnectionOpenConnection;
    }
}
