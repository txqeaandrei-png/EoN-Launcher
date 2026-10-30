package com.microsoft.xbox.toolkit.network;

import com.microsoft.xbox.toolkit.XLEException;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHeaders;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.util.EntityUtils;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractXLEHttpClient {
    public abstract HttpResponse execute(HttpUriRequest httpUriRequest) throws IOException;

    public XLEHttpStatusAndStream getHttpStatusAndStreamInternal(HttpUriRequest httpUriRequest, boolean z) throws XLEException {
        XLEHttpStatusAndStream xLEHttpStatusAndStream = new XLEHttpStatusAndStream();
        try {
            HttpResponse httpResponseExecute = execute(httpUriRequest);
            if (httpResponseExecute != null && httpResponseExecute.getStatusLine() != null) {
                xLEHttpStatusAndStream.statusLine = httpResponseExecute.getStatusLine().toString();
                xLEHttpStatusAndStream.statusCode = httpResponseExecute.getStatusLine().getStatusCode();
            }
            if (httpResponseExecute != null && httpResponseExecute.getLastHeader(HttpHeaders.LOCATION) != null) {
                xLEHttpStatusAndStream.redirectUrl = httpResponseExecute.getLastHeader(HttpHeaders.LOCATION).getValue();
            }
            if (httpResponseExecute != null) {
                xLEHttpStatusAndStream.headers = httpResponseExecute.getAllHeaders();
            }
            HttpEntity entity = httpResponseExecute == null ? null : httpResponseExecute.getEntity();
            if (entity != null) {
                xLEHttpStatusAndStream.stream = new ByteArrayInputStream(EntityUtils.toByteArray(entity));
                entity.consumeContent();
                Header firstHeader = httpResponseExecute.getFirstHeader("Content-Encoding");
                if (firstHeader != null && firstHeader.getValue().equalsIgnoreCase("gzip")) {
                    xLEHttpStatusAndStream.stream = new GZIPInputStream(xLEHttpStatusAndStream.stream);
                }
            }
            return xLEHttpStatusAndStream;
        } catch (Exception e) {
            httpUriRequest.abort();
            if (xLEHttpStatusAndStream.stream != null) {
                xLEHttpStatusAndStream.close();
            }
            throw new XLEException(4L, e);
        }
    }
}
