package com.microsoft.xbox.service.network.managers;

import android.text.TextUtils;
import com.google.gson.JsonObject;
import com.microsoft.xbox.toolkit.JavaUtil;
import com.microsoft.xbox.toolkit.StreamUtil;
import com.microsoft.xbox.toolkit.TimeMonitor;
import com.microsoft.xbox.toolkit.UrlUtil;
import com.microsoft.xbox.toolkit.XLEErrorCode;
import com.microsoft.xbox.toolkit.XLEException;
import com.microsoft.xbox.toolkit.network.HttpClientFactory;
import com.microsoft.xbox.toolkit.network.XLEHttpStatusAndStream;
import java.io.InputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.StandardCharsets;
import java.util.Iterator;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.ByteArrayEntity;

/* JADX INFO: loaded from: classes3.dex */
public class ServiceCommon {
    public static final int MaxBIErrorParamLength = 2048;

    public static void AddWebHeaders(HttpUriRequest httpUriRequest, List<Header> list) {
        if (list != null) {
            Iterator<Header> it = list.iterator();
            while (it.hasNext()) {
                httpUriRequest.addHeader(it.next());
            }
        }
    }

    public static int deleteWithStatus(String str, List<Header> list) throws XLEException {
        URI encodedUri = UrlUtil.getEncodedUri(str);
        String string = encodedUri.toString();
        new TimeMonitor();
        XLEHttpStatusAndStream xLEHttpStatusAndStreamExcuteHttpRequest = excuteHttpRequest(new HttpDelete(encodedUri), string, list, false, 0);
        xLEHttpStatusAndStreamExcuteHttpRequest.close();
        return xLEHttpStatusAndStreamExcuteHttpRequest.statusCode;
    }

    public static boolean delete(String str, List<Header> list) throws XLEException {
        int iDeleteWithStatus = deleteWithStatus(str, list);
        return iDeleteWithStatus == 200 || iDeleteWithStatus == 204;
    }

    public static boolean delete(String str, List<Header> list, String str2) throws XLEException {
        return JavaUtil.isNullOrEmpty(str2) ? delete(str, list) : delete(str, list, str2.getBytes(StandardCharsets.UTF_8));
    }

    public static boolean delete(String str, List<Header> list, byte[] bArr) throws XLEException {
        URI encodedUri = UrlUtil.getEncodedUri(str);
        String string = encodedUri.toString();
        new TimeMonitor();
        HttpDeleteWithRequestBody httpDeleteWithRequestBody = new HttpDeleteWithRequestBody(encodedUri);
        if (bArr != null && bArr.length > 0) {
            try {
                httpDeleteWithRequestBody.setEntity(new ByteArrayEntity(bArr));
            } catch (Exception e) {
                throw new XLEException(5L, e);
            }
        }
        XLEHttpStatusAndStream xLEHttpStatusAndStreamExcuteHttpRequest = excuteHttpRequest(httpDeleteWithRequestBody, string, list, false, 0);
        boolean z = xLEHttpStatusAndStreamExcuteHttpRequest.statusCode == 200 || xLEHttpStatusAndStreamExcuteHttpRequest.statusCode == 204;
        xLEHttpStatusAndStreamExcuteHttpRequest.close();
        return z;
    }

    private static void ParseHttpResponseForStatus(String str, int i, String str2) throws XLEException {
        ParseHttpResponseForStatus(str, i, str2, null);
    }

    private static void ParseHttpResponseForStatus(String str, int i, String str2, InputStream inputStream) throws XLEException {
        if (i < 200 || i >= 400) {
            if (i == -1) {
                throw new XLEException(3L);
            }
            if (i == 401 || i == 403) {
                throw new XLEException(XLEErrorCode.NOT_AUTHORIZED);
            }
            if (i == 400) {
                if (inputStream == null) {
                    throw new XLEException(15L);
                }
                throw new XLEException(15L, null, null, StreamUtil.ReadAsString(inputStream));
            }
            if (i == 500) {
                throw new XLEException(13L);
            }
            if (i == 503) {
                throw new XLEException(18L);
            }
            if (i == 404) {
                throw new XLEException(21L);
            }
            throw new XLEException(4L);
        }
    }

    public static XLEHttpStatusAndStream getStreamAndStatus(String str, List<Header> list) throws XLEException {
        XLEHttpStatusAndStream streamAndStatus = getStreamAndStatus(str, list, true, 0);
        return (streamAndStatus == null || JavaUtil.isNullOrEmpty(streamAndStatus.redirectUrl)) ? streamAndStatus : getStreamAndStatus(streamAndStatus.redirectUrl, list);
    }

    private static XLEHttpStatusAndStream getStreamAndStatus(String str, List<Header> list, boolean z, int i) throws XLEException {
        return getStreamAndStatus(str, list, z, i, false);
    }

    private static XLEHttpStatusAndStream getStreamAndStatus(String str, List<Header> list, boolean z, int i, boolean z2) throws XLEException {
        URI uri;
        if (z) {
            uri = UrlUtil.getEncodedUri(str);
        } else {
            try {
                uri = new URI(str);
            } catch (URISyntaxException unused) {
                uri = null;
            }
        }
        return excuteHttpRequest(new HttpGet(uri), uri.toString(), list, true, i, z2);
    }

    public static XLEHttpStatusAndStream postStringWithStatus(String str, List<Header> list, String str2) throws XLEException {
        return postStreamWithStatus(str, list, str2.getBytes(StandardCharsets.UTF_8));
    }

    public static XLEHttpStatusAndStream postStreamWithStatus(String str, List<Header> list, byte[] bArr) throws XLEException {
        URI encodedUri = UrlUtil.getEncodedUri(str);
        String string = encodedUri.toString();
        HttpPost httpPost = new HttpPost(encodedUri);
        if (bArr != null && bArr.length > 0) {
            try {
                httpPost.setEntity(new ByteArrayEntity(bArr));
            } catch (Exception e) {
                throw new XLEException(5L, e);
            }
        }
        return excuteHttpRequest(httpPost, string, list, false, 0);
    }

    public static XLEHttpStatusAndStream putStringWithStatus(String str, List<Header> list, String str2) throws XLEException {
        return putStreamWithStatus(str, list, str2.getBytes(StandardCharsets.UTF_8));
    }

    public static XLEHttpStatusAndStream putStreamWithStatus(String str, List<Header> list, byte[] bArr) throws XLEException {
        URI encodedUri = UrlUtil.getEncodedUri(str);
        String string = encodedUri.toString();
        HttpPut httpPut = new HttpPut(encodedUri);
        if (bArr != null && bArr.length > 0) {
            try {
                httpPut.setEntity(new ByteArrayEntity(bArr));
            } catch (Exception e) {
                throw new XLEException(5L, e);
            }
        }
        return excuteHttpRequest(httpPut, string, list, false, 0);
    }

    private static XLEHttpStatusAndStream excuteHttpRequest(HttpUriRequest httpUriRequest, String str, List<Header> list, boolean z, int i) throws XLEException {
        return excuteHttpRequest(httpUriRequest, str, list, z, i, false);
    }

    private static XLEHttpStatusAndStream excuteHttpRequest(HttpUriRequest httpUriRequest, String str, List<Header> list, boolean z, int i, boolean z2) throws XLEException {
        String strSubstring;
        AddWebHeaders(httpUriRequest, list);
        new XLEHttpStatusAndStream();
        XLEHttpStatusAndStream httpStatusAndStreamInternal = HttpClientFactory.networkOperationsFactory.getHttpClient(i).getHttpStatusAndStreamInternal(httpUriRequest, true);
        if (!z2) {
            try {
                ParseHttpResponseForStatus(str, httpStatusAndStreamInternal.statusCode, httpStatusAndStreamInternal.statusLine);
            } catch (XLEException e) {
                JsonObject jsonObject = new JsonObject();
                JsonObject jsonObject2 = new JsonObject();
                int i2 = httpStatusAndStreamInternal == null ? 0 : httpStatusAndStreamInternal.statusCode;
                if (httpUriRequest != null) {
                    httpUriRequest.getMethod();
                }
                String strSubstring2 = "";
                if (httpStatusAndStreamInternal == null || TextUtils.isEmpty(httpStatusAndStreamInternal.statusLine)) {
                    strSubstring = "";
                } else {
                    int length = httpStatusAndStreamInternal.statusLine.length();
                    strSubstring = httpStatusAndStreamInternal.statusLine;
                    if (length > 2048) {
                        strSubstring = strSubstring.substring(0, 2048);
                    }
                }
                if (httpUriRequest != null && httpUriRequest.getURI() != null) {
                    strSubstring2 = httpUriRequest.getURI().toString();
                }
                if (strSubstring2.length() > 2048) {
                    strSubstring2 = strSubstring2.substring(0, 2048);
                }
                jsonObject.addProperty("Request", strSubstring2);
                jsonObject2.addProperty("code", Integer.valueOf(i2));
                jsonObject2.addProperty("description", strSubstring);
                jsonObject.add("Response", jsonObject2);
                throw e;
            }
        } else {
            ParseHttpResponseForStatus(str, httpStatusAndStreamInternal.statusCode, httpStatusAndStreamInternal.statusLine, httpStatusAndStreamInternal.stream);
        }
        if (httpStatusAndStreamInternal.stream == null && z) {
            throw new XLEException(7L);
        }
        return httpStatusAndStreamInternal;
    }
}
