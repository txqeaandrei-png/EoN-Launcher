package org.apache.http.impl.execchain;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.HttpClientConnection;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.auth.AuthProtocolState;
import org.apache.http.auth.AuthState;
import org.apache.http.client.AuthenticationStrategy;
import org.apache.http.client.NonRepeatableRequestException;
import org.apache.http.client.UserTokenHandler;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpExecutionAware;
import org.apache.http.client.methods.HttpRequestWrapper;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.conn.ConnectionRequest;
import org.apache.http.conn.HttpClientConnectionManager;
import org.apache.http.conn.routing.BasicRouteDirector;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.HttpRouteDirector;
import org.apache.http.conn.routing.RouteTracker;
import org.apache.http.entity.BufferedHttpEntity;
import org.apache.http.impl.auth.HttpAuthenticator;
import org.apache.http.impl.conn.ConnectionShutdownException;
import org.apache.http.message.BasicHttpRequest;
import org.apache.http.protocol.HttpProcessor;
import org.apache.http.protocol.HttpRequestExecutor;
import org.apache.http.protocol.ImmutableHttpProcessor;
import org.apache.http.protocol.RequestTargetHost;
import org.apache.http.util.Args;
import org.apache.http.util.EntityUtils;

/* JADX INFO: loaded from: classes4.dex */
public class MainClientExec implements ClientExecChain {
    private final HttpAuthenticator authenticator;
    private final HttpClientConnectionManager connManager;
    private final ConnectionKeepAliveStrategy keepAliveStrategy;
    private final Log log;
    private final AuthenticationStrategy proxyAuthStrategy;
    private final HttpProcessor proxyHttpProcessor;
    private final HttpRequestExecutor requestExecutor;
    private final ConnectionReuseStrategy reuseStrategy;
    private final HttpRouteDirector routeDirector;
    private final AuthenticationStrategy targetAuthStrategy;
    private final UserTokenHandler userTokenHandler;

    public MainClientExec(HttpRequestExecutor httpRequestExecutor, HttpClientConnectionManager httpClientConnectionManager, ConnectionReuseStrategy connectionReuseStrategy, ConnectionKeepAliveStrategy connectionKeepAliveStrategy, HttpProcessor httpProcessor, AuthenticationStrategy authenticationStrategy, AuthenticationStrategy authenticationStrategy2, UserTokenHandler userTokenHandler) {
        this.log = LogFactory.getLog(getClass());
        Args.notNull(httpRequestExecutor, "HTTP request executor");
        Args.notNull(httpClientConnectionManager, "Client connection manager");
        Args.notNull(connectionReuseStrategy, "Connection reuse strategy");
        Args.notNull(connectionKeepAliveStrategy, "Connection keep alive strategy");
        Args.notNull(httpProcessor, "Proxy HTTP processor");
        Args.notNull(authenticationStrategy, "Target authentication strategy");
        Args.notNull(authenticationStrategy2, "Proxy authentication strategy");
        Args.notNull(userTokenHandler, "User token handler");
        this.authenticator = new HttpAuthenticator();
        this.routeDirector = new BasicRouteDirector();
        this.requestExecutor = httpRequestExecutor;
        this.connManager = httpClientConnectionManager;
        this.reuseStrategy = connectionReuseStrategy;
        this.keepAliveStrategy = connectionKeepAliveStrategy;
        this.proxyHttpProcessor = httpProcessor;
        this.targetAuthStrategy = authenticationStrategy;
        this.proxyAuthStrategy = authenticationStrategy2;
        this.userTokenHandler = userTokenHandler;
    }

    public MainClientExec(HttpRequestExecutor httpRequestExecutor, HttpClientConnectionManager httpClientConnectionManager, ConnectionReuseStrategy connectionReuseStrategy, ConnectionKeepAliveStrategy connectionKeepAliveStrategy, AuthenticationStrategy authenticationStrategy, AuthenticationStrategy authenticationStrategy2, UserTokenHandler userTokenHandler) {
        this(httpRequestExecutor, httpClientConnectionManager, connectionReuseStrategy, connectionKeepAliveStrategy, new ImmutableHttpProcessor(new RequestTargetHost()), authenticationStrategy, authenticationStrategy2, userTokenHandler);
    }

    /* JADX WARN: Code duplicated, block: B:133:0x0235  */
    /* JADX WARN: Code duplicated, block: B:226:0x03a9  */
    /* JADX WARN: Code duplicated, block: B:229:0x03b2  */
    /* JADX WARN: Code duplicated, block: B:236:0x03c4  */
    /* JADX WARN: Code duplicated, block: B:239:0x03cd  */
    /* JADX WARN: Code duplicated, block: B:290:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:291:? A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.http.impl.execchain.ClientExecChain
    public CloseableHttpResponse execute(HttpRoute httpRoute, HttpRequestWrapper httpRequestWrapper, HttpClientContext httpClientContext, HttpExecutionAware httpExecutionAware) throws HttpException, IOException {
        HttpException httpException;
        ConnectionHolder connectionHolder;
        RuntimeException runtimeException;
        AuthState authState;
        IOException iOException;
        ConnectionHolder connectionHolder2;
        int i;
        Object obj;
        HttpResponse response;
        Object userToken;
        AuthState authState2;
        String str;
        HttpRoute httpRoute2 = httpRoute;
        HttpExecutionAware httpExecutionAware2 = httpExecutionAware;
        Args.notNull(httpRoute2, "HTTP route");
        Args.notNull(httpRequestWrapper, "HTTP request");
        Args.notNull(httpClientContext, "HTTP context");
        AuthState targetAuthState = httpClientContext.getTargetAuthState();
        if (targetAuthState == null) {
            targetAuthState = new AuthState();
            httpClientContext.setAttribute("http.auth.target-scope", targetAuthState);
        }
        AuthState authState3 = targetAuthState;
        AuthState proxyAuthState = httpClientContext.getProxyAuthState();
        if (proxyAuthState == null) {
            proxyAuthState = new AuthState();
            httpClientContext.setAttribute("http.auth.proxy-scope", proxyAuthState);
        }
        AuthState authState4 = proxyAuthState;
        if (httpRequestWrapper instanceof HttpEntityEnclosingRequest) {
            RequestEntityProxy.enhance((HttpEntityEnclosingRequest) httpRequestWrapper);
        }
        Object userToken2 = httpClientContext.getUserToken();
        ConnectionRequest connectionRequestRequestConnection = this.connManager.requestConnection(httpRoute2, userToken2);
        String str2 = "Request aborted";
        if (httpExecutionAware2 != null) {
            if (httpExecutionAware.isAborted()) {
                connectionRequestRequestConnection.cancel();
                throw new RequestAbortedException("Request aborted");
            }
            httpExecutionAware2.setCancellable(connectionRequestRequestConnection);
        }
        RequestConfig requestConfig = httpClientContext.getRequestConfig();
        try {
            int connectionRequestTimeout = requestConfig.getConnectionRequestTimeout();
            HttpClientConnection httpClientConnection = connectionRequestRequestConnection.get(connectionRequestTimeout > 0 ? connectionRequestTimeout : 0L, TimeUnit.MILLISECONDS);
            httpClientContext.setAttribute("http.connection", httpClientConnection);
            if (requestConfig.isStaleConnectionCheckEnabled() && httpClientConnection.isOpen()) {
                this.log.debug("Stale connection check");
                if (httpClientConnection.isStale()) {
                    this.log.debug("Stale connection detected");
                    httpClientConnection.close();
                }
            }
            ConnectionHolder connectionHolder3 = new ConnectionHolder(this.log, this.connManager, httpClientConnection);
            if (httpExecutionAware2 != null) {
                try {
                    try {
                        httpExecutionAware2.setCancellable(connectionHolder3);
                    } catch (Error e) {
                        this.connManager.shutdown();
                        throw e;
                    } catch (ConnectionShutdownException e2) {
                        InterruptedIOException interruptedIOException = new InterruptedIOException("Connection has been shut down");
                        interruptedIOException.initCause(e2);
                        throw interruptedIOException;
                    }
                } catch (IOException e3) {
                    iOException = e3;
                    connectionHolder = connectionHolder3;
                    authState = authState4;
                    connectionHolder.abortConnection();
                    if (authState.isConnectionBased()) {
                        authState.reset();
                    }
                    if (authState3.isConnectionBased()) {
                        authState3.reset();
                        throw iOException;
                    }
                    throw iOException;
                } catch (RuntimeException e4) {
                    runtimeException = e4;
                    connectionHolder = connectionHolder3;
                    authState = authState4;
                    connectionHolder.abortConnection();
                    if (authState.isConnectionBased()) {
                        authState.reset();
                    }
                    if (authState3.isConnectionBased()) {
                        authState3.reset();
                        throw runtimeException;
                    }
                    throw runtimeException;
                } catch (HttpException e5) {
                    httpException = e5;
                    connectionHolder = connectionHolder3;
                    connectionHolder.abortConnection();
                    throw httpException;
                }
            }
            int i2 = 1;
            int i3 = 1;
            while (true) {
                if (i3 > i2 && !RequestEntityProxy.isRepeatable(httpRequestWrapper)) {
                    throw new NonRepeatableRequestException("Cannot retry request with a non-repeatable request entity.");
                }
                if (httpExecutionAware2 != null && httpExecutionAware.isAborted()) {
                    throw new RequestAbortedException(str2);
                }
                try {
                    if (httpClientConnection.isOpen()) {
                        i = i2;
                        connectionHolder2 = connectionHolder3;
                        obj = userToken2;
                        authState = authState4;
                    } else {
                        try {
                            connectionHolder2 = connectionHolder3;
                            try {
                                try {
                                    this.log.debug("Opening connection " + httpRoute2);
                                    i = 1;
                                    authState = authState4;
                                    obj = userToken2;
                                    try {
                                        try {
                                            establishRoute(authState4, httpClientConnection, httpRoute, httpRequestWrapper, httpClientContext);
                                        } catch (TunnelRefusedException e6) {
                                            if (this.log.isDebugEnabled()) {
                                                this.log.debug(e6.getMessage());
                                            }
                                            response = e6.getResponse();
                                            connectionHolder = connectionHolder2;
                                        }
                                    } catch (IOException e7) {
                                        e = e7;
                                        iOException = e;
                                        connectionHolder = connectionHolder2;
                                        connectionHolder.abortConnection();
                                        if (authState.isConnectionBased()) {
                                            authState.reset();
                                        }
                                        if (authState3.isConnectionBased()) {
                                            authState3.reset();
                                            throw iOException;
                                        }
                                        throw iOException;
                                    } catch (RuntimeException e8) {
                                        e = e8;
                                        runtimeException = e;
                                        connectionHolder = connectionHolder2;
                                        connectionHolder.abortConnection();
                                        if (authState.isConnectionBased()) {
                                            authState.reset();
                                        }
                                        if (authState3.isConnectionBased()) {
                                            authState3.reset();
                                            throw runtimeException;
                                        }
                                        throw runtimeException;
                                    }
                                } catch (HttpException e9) {
                                    e = e9;
                                    httpException = e;
                                    connectionHolder = connectionHolder2;
                                    connectionHolder.abortConnection();
                                    throw httpException;
                                }
                            } catch (IOException e10) {
                                e = e10;
                                authState = authState4;
                                iOException = e;
                                connectionHolder = connectionHolder2;
                                connectionHolder.abortConnection();
                                if (authState.isConnectionBased()) {
                                    authState.reset();
                                }
                                if (authState3.isConnectionBased()) {
                                    authState3.reset();
                                    throw iOException;
                                }
                                throw iOException;
                            } catch (RuntimeException e11) {
                                e = e11;
                                authState = authState4;
                                runtimeException = e;
                                connectionHolder = connectionHolder2;
                                connectionHolder.abortConnection();
                                if (authState.isConnectionBased()) {
                                    authState.reset();
                                }
                                if (authState3.isConnectionBased()) {
                                    authState3.reset();
                                    throw runtimeException;
                                }
                                throw runtimeException;
                            }
                        } catch (IOException e12) {
                            e = e12;
                            connectionHolder2 = connectionHolder3;
                        } catch (RuntimeException e13) {
                            e = e13;
                            connectionHolder2 = connectionHolder3;
                        } catch (HttpException e14) {
                            e = e14;
                            connectionHolder2 = connectionHolder3;
                        }
                    }
                    try {
                        try {
                            int socketTimeout = requestConfig.getSocketTimeout();
                            if (socketTimeout >= 0) {
                                httpClientConnection.setSocketTimeout(socketTimeout);
                            }
                            if (httpExecutionAware2 != null && httpExecutionAware.isAborted()) {
                                throw new RequestAbortedException(str2);
                            }
                            if (this.log.isDebugEnabled()) {
                                this.log.debug("Executing request " + httpRequestWrapper.getRequestLine());
                            }
                            if (!httpRequestWrapper.containsHeader("Authorization")) {
                                if (this.log.isDebugEnabled()) {
                                    this.log.debug("Target auth state: " + authState3.getState());
                                }
                                this.authenticator.generateAuthResponse(httpRequestWrapper, authState3, httpClientContext);
                            }
                            if (httpRequestWrapper.containsHeader("Proxy-Authorization")) {
                                authState2 = authState;
                            } else {
                                try {
                                    if (httpRoute.isTunnelled()) {
                                        authState2 = authState;
                                    } else {
                                        if (this.log.isDebugEnabled()) {
                                            this.log.debug("Proxy auth state: " + authState.getState());
                                        }
                                        authState2 = authState;
                                        try {
                                            this.authenticator.generateAuthResponse(httpRequestWrapper, authState2, httpClientContext);
                                        } catch (IOException e15) {
                                            iOException = e15;
                                            authState = authState2;
                                            connectionHolder = connectionHolder2;
                                            connectionHolder.abortConnection();
                                            if (authState.isConnectionBased()) {
                                                authState.reset();
                                            }
                                            if (authState3.isConnectionBased()) {
                                                authState3.reset();
                                                throw iOException;
                                            }
                                            throw iOException;
                                        } catch (RuntimeException e16) {
                                            runtimeException = e16;
                                            authState = authState2;
                                            connectionHolder = connectionHolder2;
                                            connectionHolder.abortConnection();
                                            if (authState.isConnectionBased()) {
                                                authState.reset();
                                            }
                                            if (authState3.isConnectionBased()) {
                                                authState3.reset();
                                                throw runtimeException;
                                            }
                                            throw runtimeException;
                                        }
                                    }
                                } catch (IOException e17) {
                                    e = e17;
                                    iOException = e;
                                    connectionHolder = connectionHolder2;
                                    connectionHolder.abortConnection();
                                    if (authState.isConnectionBased()) {
                                        authState.reset();
                                    }
                                    if (authState3.isConnectionBased()) {
                                        authState3.reset();
                                        throw iOException;
                                    }
                                    throw iOException;
                                } catch (RuntimeException e18) {
                                    e = e18;
                                    runtimeException = e;
                                    connectionHolder = connectionHolder2;
                                    connectionHolder.abortConnection();
                                    if (authState.isConnectionBased()) {
                                        authState.reset();
                                    }
                                    if (authState3.isConnectionBased()) {
                                        authState3.reset();
                                        throw runtimeException;
                                    }
                                    throw runtimeException;
                                }
                            }
                            try {
                                httpClientContext.setAttribute("http.request", httpRequestWrapper);
                                HttpResponse httpResponseExecute = this.requestExecutor.execute(httpRequestWrapper, httpClientConnection, httpClientContext);
                                if (this.reuseStrategy.keepAlive(httpResponseExecute, httpClientContext)) {
                                    try {
                                        long keepAliveDuration = this.keepAliveStrategy.getKeepAliveDuration(httpResponseExecute, httpClientContext);
                                        if (this.log.isDebugEnabled()) {
                                            if (keepAliveDuration > 0) {
                                                str = "for " + keepAliveDuration + " " + TimeUnit.MILLISECONDS;
                                            } else {
                                                str = "indefinitely";
                                            }
                                            this.log.debug("Connection can be kept alive " + str);
                                        }
                                        connectionHolder = connectionHolder2;
                                        try {
                                            try {
                                                connectionHolder.setValidFor(keepAliveDuration, TimeUnit.MILLISECONDS);
                                                connectionHolder.markReusable();
                                            } catch (HttpException e19) {
                                                e = e19;
                                                httpException = e;
                                                connectionHolder.abortConnection();
                                                throw httpException;
                                            }
                                        } catch (IOException e20) {
                                            e = e20;
                                            iOException = e;
                                            authState = authState2;
                                            connectionHolder.abortConnection();
                                            if (authState.isConnectionBased()) {
                                                authState.reset();
                                            }
                                            if (authState3.isConnectionBased()) {
                                                authState3.reset();
                                                throw iOException;
                                            }
                                            throw iOException;
                                        } catch (RuntimeException e21) {
                                            e = e21;
                                            runtimeException = e;
                                            authState = authState2;
                                            connectionHolder.abortConnection();
                                            if (authState.isConnectionBased()) {
                                                authState.reset();
                                            }
                                            if (authState3.isConnectionBased()) {
                                                authState3.reset();
                                                throw runtimeException;
                                            }
                                            throw runtimeException;
                                        }
                                    } catch (IOException e22) {
                                        e = e22;
                                        connectionHolder = connectionHolder2;
                                    } catch (RuntimeException e23) {
                                        e = e23;
                                        connectionHolder = connectionHolder2;
                                    }
                                } else {
                                    httpResponseExecute = httpResponseExecute;
                                    connectionHolder = connectionHolder2;
                                    try {
                                        connectionHolder.markNonReusable();
                                    } catch (IOException e24) {
                                        e = e24;
                                        authState = authState2;
                                        iOException = e;
                                        connectionHolder.abortConnection();
                                        if (authState.isConnectionBased()) {
                                            authState.reset();
                                        }
                                        if (authState3.isConnectionBased()) {
                                            authState3.reset();
                                            throw iOException;
                                        }
                                        throw iOException;
                                    } catch (RuntimeException e25) {
                                        e = e25;
                                        authState = authState2;
                                        runtimeException = e;
                                        connectionHolder.abortConnection();
                                        if (authState.isConnectionBased()) {
                                            authState.reset();
                                        }
                                        if (authState3.isConnectionBased()) {
                                            authState3.reset();
                                            throw runtimeException;
                                        }
                                        throw runtimeException;
                                    }
                                }
                                HttpResponse httpResponse = httpResponseExecute;
                                authState = authState2;
                                try {
                                    if (!needAuthentication(authState3, authState2, httpRoute, httpResponse, httpClientContext)) {
                                        response = httpResponse;
                                        break;
                                    }
                                    HttpEntity entity = httpResponse.getEntity();
                                    if (connectionHolder.isReusable()) {
                                        EntityUtils.consume(entity);
                                    } else {
                                        httpClientConnection.close();
                                        if (authState.getState() == AuthProtocolState.SUCCESS && authState.isConnectionBased()) {
                                            this.log.debug("Resetting proxy auth state");
                                            authState.reset();
                                        }
                                        if (authState3.getState() == AuthProtocolState.SUCCESS && authState3.isConnectionBased()) {
                                            this.log.debug("Resetting target auth state");
                                            authState3.reset();
                                        }
                                    }
                                    HttpRequest original = httpRequestWrapper.getOriginal();
                                    if (!original.containsHeader("Authorization")) {
                                        httpRequestWrapper.removeHeaders("Authorization");
                                    }
                                    if (!original.containsHeader("Proxy-Authorization")) {
                                        httpRequestWrapper.removeHeaders("Proxy-Authorization");
                                    }
                                    i3++;
                                    httpClientConnection = httpClientConnection;
                                    connectionHolder3 = connectionHolder;
                                    str2 = str2;
                                    i2 = i;
                                    authState4 = authState;
                                    userToken2 = obj;
                                    httpRoute2 = httpRoute;
                                    httpExecutionAware2 = httpExecutionAware;
                                } catch (IOException e26) {
                                    e = e26;
                                    iOException = e;
                                    connectionHolder.abortConnection();
                                    if (authState.isConnectionBased()) {
                                        authState.reset();
                                    }
                                    if (authState3.isConnectionBased()) {
                                        authState3.reset();
                                        throw iOException;
                                    }
                                    throw iOException;
                                } catch (RuntimeException e27) {
                                    e = e27;
                                    runtimeException = e;
                                    connectionHolder.abortConnection();
                                    if (authState.isConnectionBased()) {
                                        authState.reset();
                                    }
                                    if (authState3.isConnectionBased()) {
                                        authState3.reset();
                                        throw runtimeException;
                                    }
                                    throw runtimeException;
                                }
                            } catch (IOException e28) {
                                e = e28;
                                authState = authState2;
                                connectionHolder = connectionHolder2;
                                iOException = e;
                                connectionHolder.abortConnection();
                                if (authState.isConnectionBased()) {
                                    authState.reset();
                                }
                                if (authState3.isConnectionBased()) {
                                    authState3.reset();
                                    throw iOException;
                                }
                                throw iOException;
                            } catch (RuntimeException e29) {
                                e = e29;
                                authState = authState2;
                                connectionHolder = connectionHolder2;
                                runtimeException = e;
                                connectionHolder.abortConnection();
                                if (authState.isConnectionBased()) {
                                    authState.reset();
                                }
                                if (authState3.isConnectionBased()) {
                                    authState3.reset();
                                    throw runtimeException;
                                }
                                throw runtimeException;
                            }
                        } catch (HttpException e30) {
                            e = e30;
                            connectionHolder = connectionHolder2;
                        }
                    } catch (IOException e31) {
                        e = e31;
                    } catch (RuntimeException e32) {
                        e = e32;
                    }
                } catch (IOException e33) {
                    e = e33;
                    connectionHolder = connectionHolder3;
                    authState = authState4;
                } catch (RuntimeException e34) {
                    e = e34;
                    connectionHolder = connectionHolder3;
                    authState = authState4;
                } catch (HttpException e35) {
                    e = e35;
                    connectionHolder = connectionHolder3;
                }
            }
            if (obj == null) {
                userToken = this.userTokenHandler.getUserToken(httpClientContext);
                httpClientContext.setAttribute("http.user-token", userToken);
            } else {
                userToken = obj;
            }
            if (userToken != null) {
                connectionHolder.setState(userToken);
            }
            HttpEntity entity2 = response.getEntity();
            if (entity2 != null && entity2.isStreaming()) {
                return new HttpResponseProxy(response, connectionHolder);
            }
            connectionHolder.releaseConnection();
            return new HttpResponseProxy(response, null);
        } catch (InterruptedException e36) {
            Thread.currentThread().interrupt();
            throw new RequestAbortedException("Request aborted", e36);
        } catch (ExecutionException e37) {
            ExecutionException executionException = e37;
            Throwable cause = executionException.getCause();
            if (cause != null) {
                executionException = cause;
            }
            throw new RequestAbortedException("Request execution failed", executionException);
        }
    }

    void establishRoute(AuthState authState, HttpClientConnection httpClientConnection, HttpRoute httpRoute, HttpRequest httpRequest, HttpClientContext httpClientContext) throws HttpException, IOException {
        int iNextStep;
        int connectTimeout = httpClientContext.getRequestConfig().getConnectTimeout();
        RouteTracker routeTracker = new RouteTracker(httpRoute);
        do {
            HttpRoute route = routeTracker.toRoute();
            iNextStep = this.routeDirector.nextStep(httpRoute, route);
            switch (iNextStep) {
                case -1:
                    throw new HttpException("Unable to establish route: planned = " + httpRoute + "; current = " + route);
                case 0:
                    this.connManager.routeComplete(httpClientConnection, httpRoute, httpClientContext);
                    break;
                case 1:
                    this.connManager.connect(httpClientConnection, httpRoute, connectTimeout > 0 ? connectTimeout : 0, httpClientContext);
                    routeTracker.connectTarget(httpRoute.isSecure());
                    break;
                case 2:
                    this.connManager.connect(httpClientConnection, httpRoute, connectTimeout > 0 ? connectTimeout : 0, httpClientContext);
                    routeTracker.connectProxy(httpRoute.getProxyHost(), httpRoute.isSecure() && !httpRoute.isTunnelled());
                    break;
                case 3:
                    boolean zCreateTunnelToTarget = createTunnelToTarget(authState, httpClientConnection, httpRoute, httpRequest, httpClientContext);
                    this.log.debug("Tunnel to target created.");
                    routeTracker.tunnelTarget(zCreateTunnelToTarget);
                    break;
                case 4:
                    int hopCount = route.getHopCount() - 1;
                    boolean zCreateTunnelToProxy = createTunnelToProxy(httpRoute, hopCount, httpClientContext);
                    this.log.debug("Tunnel to proxy created.");
                    routeTracker.tunnelProxy(httpRoute.getHopTarget(hopCount), zCreateTunnelToProxy);
                    break;
                case 5:
                    this.connManager.upgrade(httpClientConnection, httpRoute, httpClientContext);
                    routeTracker.layerProtocol(httpRoute.isSecure());
                    break;
                default:
                    throw new IllegalStateException("Unknown step indicator " + iNextStep + " from RouteDirector.");
            }
        } while (iNextStep > 0);
    }

    private boolean createTunnelToTarget(AuthState authState, HttpClientConnection httpClientConnection, HttpRoute httpRoute, HttpRequest httpRequest, HttpClientContext httpClientContext) throws HttpException, IOException {
        HttpResponse httpResponseExecute;
        HttpResponse httpResponse;
        RequestConfig requestConfig = httpClientContext.getRequestConfig();
        int connectTimeout = requestConfig.getConnectTimeout();
        HttpHost targetHost = httpRoute.getTargetHost();
        HttpHost proxyHost = httpRoute.getProxyHost();
        BasicHttpRequest basicHttpRequest = new BasicHttpRequest("CONNECT", targetHost.toHostString(), httpRequest.getProtocolVersion());
        this.requestExecutor.preProcess(basicHttpRequest, this.proxyHttpProcessor, httpClientContext);
        while (true) {
            HttpResponse httpResponse2 = null;
            while (true) {
                if (httpResponse2 == null) {
                    if (!httpClientConnection.isOpen()) {
                        this.connManager.connect(httpClientConnection, httpRoute, connectTimeout > 0 ? connectTimeout : 0, httpClientContext);
                    }
                    basicHttpRequest.removeHeaders("Proxy-Authorization");
                    this.authenticator.generateAuthResponse(basicHttpRequest, authState, httpClientContext);
                    httpResponseExecute = this.requestExecutor.execute(basicHttpRequest, httpClientConnection, httpClientContext);
                    this.requestExecutor.postProcess(httpResponseExecute, this.proxyHttpProcessor, httpClientContext);
                    if (httpResponseExecute.getStatusLine().getStatusCode() < 200) {
                        throw new HttpException("Unexpected response to CONNECT request: " + httpResponseExecute.getStatusLine());
                    }
                    if (!requestConfig.isAuthenticationEnabled()) {
                        httpResponse = httpResponseExecute;
                    } else if (!this.authenticator.isAuthenticationRequested(proxyHost, httpResponseExecute, this.proxyAuthStrategy, authState, httpClientContext) || !this.authenticator.handleAuthChallenge(proxyHost, httpResponseExecute, this.proxyAuthStrategy, authState, httpClientContext)) {
                        httpResponse = httpResponseExecute;
                    }
                    httpResponse2 = httpResponse;
                } else {
                    if (httpResponse2.getStatusLine().getStatusCode() <= 299) {
                        return false;
                    }
                    HttpEntity entity = httpResponse2.getEntity();
                    if (entity != null) {
                        httpResponse2.setEntity(new BufferedHttpEntity(entity));
                    }
                    httpClientConnection.close();
                    throw new TunnelRefusedException("CONNECT refused by proxy: " + httpResponse2.getStatusLine(), httpResponse2);
                }
            }
            if (this.reuseStrategy.keepAlive(httpResponseExecute, httpClientContext)) {
                this.log.debug("Connection kept alive");
                EntityUtils.consume(httpResponseExecute.getEntity());
            } else {
                httpClientConnection.close();
            }
        }
    }

    private boolean createTunnelToProxy(HttpRoute httpRoute, int i, HttpClientContext httpClientContext) throws HttpException {
        throw new HttpException("Proxy chains are not supported.");
    }

    private boolean needAuthentication(AuthState authState, AuthState authState2, HttpRoute httpRoute, HttpResponse httpResponse, HttpClientContext httpClientContext) {
        if (!httpClientContext.getRequestConfig().isAuthenticationEnabled()) {
            return false;
        }
        HttpHost targetHost = httpClientContext.getTargetHost();
        if (targetHost == null) {
            targetHost = httpRoute.getTargetHost();
        }
        if (targetHost.getPort() < 0) {
            targetHost = new HttpHost(targetHost.getHostName(), httpRoute.getTargetHost().getPort(), targetHost.getSchemeName());
        }
        boolean zIsAuthenticationRequested = this.authenticator.isAuthenticationRequested(targetHost, httpResponse, this.targetAuthStrategy, authState, httpClientContext);
        HttpHost proxyHost = httpRoute.getProxyHost();
        if (proxyHost == null) {
            proxyHost = httpRoute.getTargetHost();
        }
        boolean zIsAuthenticationRequested2 = this.authenticator.isAuthenticationRequested(proxyHost, httpResponse, this.proxyAuthStrategy, authState2, httpClientContext);
        if (zIsAuthenticationRequested) {
            return this.authenticator.handleAuthChallenge(targetHost, httpResponse, this.targetAuthStrategy, authState, httpClientContext);
        }
        if (!zIsAuthenticationRequested2) {
            return false;
        }
        return this.authenticator.handleAuthChallenge(proxyHost, httpResponse, this.proxyAuthStrategy, authState2, httpClientContext);
    }
}
