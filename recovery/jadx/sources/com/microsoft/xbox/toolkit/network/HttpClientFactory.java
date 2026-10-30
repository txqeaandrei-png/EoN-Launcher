package com.microsoft.xbox.toolkit.network;

import androidx.webkit.ProxyConfig;
import org.apache.http.HttpHost;
import org.apache.http.HttpVersion;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.params.ConnRoutePNames;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;

/* JADX INFO: loaded from: classes3.dex */
public class HttpClientFactory {
    private static final int CONNECTION_PER_ROUTE = 16;
    private static final int DEFAULT_TIMEOUT_IN_SECONDS = 40;
    private static final int MAX_TOTAL_CONNECTIONS = 32;
    public static HttpClientFactory networkOperationsFactory = new HttpClientFactory();
    public static HttpClientFactory noRedirectNetworkOperationsFactory = new HttpClientFactory(false);
    public static HttpClientFactory textureFactory = new HttpClientFactory(true);
    private AbstractXLEHttpClient client;
    private final AbstractXLEHttpClient clientWithTimeoutOverride;
    private ClientConnectionManager connectionManager;
    private final Object httpSyncObject;
    private final HttpParams params;

    public void setHttpClient(AbstractXLEHttpClient abstractXLEHttpClient) {
    }

    public HttpClientFactory() {
        this(false);
    }

    public HttpClientFactory(boolean z) {
        this.connectionManager = null;
        this.httpSyncObject = new Object();
        this.client = null;
        this.clientWithTimeoutOverride = null;
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        this.params = basicHttpParams;
        SchemeRegistry schemeRegistry = new SchemeRegistry();
        schemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
        schemeRegistry.register(new Scheme(ProxyConfig.MATCH_HTTPS, SSLSocketFactory.getSocketFactory(), 443));
        HttpProtocolParams.setVersion(basicHttpParams, HttpVersion.HTTP_1_1);
        HttpProtocolParams.setContentCharset(basicHttpParams, "UTF-8");
        HttpProtocolParams.setUseExpectContinue(basicHttpParams, false);
        HttpClientParams.setRedirecting(basicHttpParams, z);
        if (XboxLiveEnvironment.Instance().getProxyEnabled()) {
            basicHttpParams.setParameter(ConnRoutePNames.DEFAULT_PROXY, new HttpHost("itgproxy.redmond.corp.microsoft.com", 80));
        }
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, 40000);
        HttpConnectionParams.setSoTimeout(basicHttpParams, 40000);
        HttpConnectionParams.setSocketBufferSize(basicHttpParams, 8192);
        ConnManagerParams.setMaxConnectionsPerRoute(basicHttpParams, new ConnPerRouteBean(16));
        ConnManagerParams.setMaxTotalConnections(basicHttpParams, 32);
        this.connectionManager = new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry);
    }

    public AbstractXLEHttpClient getHttpClient(int i) {
        synchronized (this.httpSyncObject) {
            try {
                if (i <= 0) {
                    if (this.client == null) {
                        this.client = new XLEHttpClient(this.connectionManager, this.params);
                    }
                    return this.client;
                }
                AbstractXLEHttpClient abstractXLEHttpClient = this.clientWithTimeoutOverride;
                if (abstractXLEHttpClient != null) {
                    return abstractXLEHttpClient;
                }
                HttpParams httpParamsCopy = this.params.copy();
                int i2 = i * 1000;
                HttpConnectionParams.setConnectionTimeout(httpParamsCopy, i2);
                HttpConnectionParams.setSoTimeout(httpParamsCopy, i2);
                return new XLEHttpClient(this.connectionManager, httpParamsCopy);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public ClientConnectionManager getClientConnectionManager() {
        return this.connectionManager;
    }

    public HttpParams getHttpParams() {
        return this.params;
    }
}
