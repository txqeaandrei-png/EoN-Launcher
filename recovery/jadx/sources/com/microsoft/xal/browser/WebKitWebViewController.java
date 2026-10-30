package com.microsoft.xal.browser;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.webkit.CookieManager;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.appcompat.app.AppCompatActivity;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.ListIterator;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import org.apache.http.cookie.ClientCookie;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000e\u000fB\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0012\u0010\u000b\u001a\u00020\u00062\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0017R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/microsoft/xal/browser/WebKitWebViewController;", "Landroidx/appcompat/app/AppCompatActivity;", "()V", "mWebView", "Landroid/webkit/WebView;", "deleteCookies", "", ClientCookie.DOMAIN_ATTR, "", "useHttps", "", "onCreate", "bundle", "Landroid/os/Bundle;", "Companion", "XalWebViewClient", "xal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class WebKitWebViewController extends AppCompatActivity {
    public static final String END_URL = "END_URL";
    public static final String REQUEST_HEADER_KEYS = "REQUEST_HEADER_KEYS";
    public static final String REQUEST_HEADER_VALUES = "REQUEST_HEADER_VALUES";
    public static final String RESPONSE_KEY = "RESPONSE";
    public static final int RESULT_FAILED = 8052;
    public static final String SHOW_TYPE = "SHOW_TYPE";
    public static final String START_URL = "START_URL";
    private WebView mWebView;

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        String str;
        super.onCreate(bundle);
        Bundle extras = getIntent().getExtras();
        if (extras == null) {
            setResult(8052);
            finish();
            return;
        }
        String string = extras.getString("START_URL", "");
        String string2 = extras.getString("END_URL", "");
        Intrinsics.checkNotNull(string);
        if (string.length() != 0) {
            Intrinsics.checkNotNull(string2);
            if (string2.length() != 0) {
                String[] stringArray = extras.getStringArray("REQUEST_HEADER_KEYS");
                String[] stringArray2 = extras.getStringArray("REQUEST_HEADER_VALUES");
                if (stringArray != null && stringArray.length != 0 && stringArray2 != null && stringArray2.length != 0) {
                    if (stringArray.length != stringArray2.length) {
                        setResult(8052);
                        finish();
                        return;
                    }
                    HashMap map = new HashMap(stringArray.length);
                    int length = stringArray.length;
                    for (int i = 0; i < length; i++) {
                        String str2 = stringArray[i];
                        if (str2 != null) {
                            Intrinsics.checkNotNull(str2);
                            if (str2.length() != 0 && (str = stringArray2[i]) != null) {
                                Intrinsics.checkNotNull(str);
                                if (str.length() != 0) {
                                    map.put(stringArray[i], stringArray2[i]);
                                }
                            }
                        }
                        setResult(8052);
                        finish();
                        return;
                    }
                }
                ShowUrlType showUrlType = (ShowUrlType) extras.get("SHOW_TYPE");
                if (showUrlType == ShowUrlType.CookieRemoval || showUrlType == ShowUrlType.CookieRemovalSkipIfSharedCredentials) {
                    deleteCookies("login.live.com", true);
                    deleteCookies("account.live.com", true);
                    deleteCookies("live.com", true);
                    deleteCookies("xboxlive.com", true);
                    deleteCookies("sisu.xboxlive.com", true);
                    Intent intent = new Intent();
                    intent.putExtra(RESPONSE_KEY, string2);
                    Unit unit = Unit.INSTANCE;
                    setResult(-1, intent);
                    finish();
                    return;
                }
                WebView webView = new WebView(this);
                setContentView(webView);
                webView.getSettings().setJavaScriptEnabled(true);
                webView.getSettings().setMixedContentMode(2);
                webView.setWebChromeClient(new WebChromeClient() { // from class: com.microsoft.xal.browser.WebKitWebViewController$onCreate$2$1
                    @Override // android.webkit.WebChromeClient
                    public void onProgressChanged(WebView webView2, int i2) {
                        Intrinsics.checkNotNullParameter(webView2, "webView");
                        this.this$0.setProgress(i2 * 100);
                    }
                });
                webView.setWebViewClient(new XalWebViewClient(this, this, string2));
                webView.loadUrl(string);
                this.mWebView = webView;
                return;
            }
        }
        setResult(8052);
        finish();
    }

    private final void deleteCookies(String domain, boolean useHttps) {
        String str;
        List listEmptyList;
        List listEmptyList2;
        String str2;
        CookieManager cookieManager = CookieManager.getInstance();
        if (useHttps) {
            str = "https://";
        } else {
            str = "http://";
        }
        String str3 = str + domain;
        String cookie = cookieManager.getCookie(str3);
        if (cookie != null) {
            List<String> listSplit = new Regex(";").split(cookie, 0);
            if (!listSplit.isEmpty()) {
                ListIterator<String> listIterator = listSplit.listIterator(listSplit.size());
                while (true) {
                    if (listIterator.hasPrevious()) {
                        if (listIterator.previous().length() != 0) {
                            listEmptyList = CollectionsKt.take(listSplit, listIterator.nextIndex() + 1);
                            break;
                        }
                    } else {
                        listEmptyList = CollectionsKt.emptyList();
                        break;
                    }
                }
            } else {
                listEmptyList = CollectionsKt.emptyList();
                break;
            }
            for (String str4 : (String[]) listEmptyList.toArray(new String[0])) {
                List<String> listSplit2 = new Regex("=").split(str4, 0);
                if (!listSplit2.isEmpty()) {
                    ListIterator<String> listIterator2 = listSplit2.listIterator(listSplit2.size());
                    while (true) {
                        if (listIterator2.hasPrevious()) {
                            if (listIterator2.previous().length() != 0) {
                                listEmptyList2 = CollectionsKt.take(listSplit2, listIterator2.nextIndex() + 1);
                                break;
                            }
                        } else {
                            listEmptyList2 = CollectionsKt.emptyList();
                            break;
                        }
                    }
                } else {
                    listEmptyList2 = CollectionsKt.emptyList();
                    break;
                }
                String string = StringsKt.trim((CharSequence) ((String[]) listEmptyList2.toArray(new String[0]))[0]).toString();
                String str5 = string + "=;";
                if (StringsKt.startsWith$default(string, "__Secure-", false, 2, (Object) null)) {
                    str5 = str5 + "Secure;Domain=" + domain + ";Path=/";
                }
                if (StringsKt.startsWith$default(string, "__Host-", false, 2, (Object) null)) {
                    str2 = str5 + "Secure;Path=/";
                } else {
                    str2 = str5 + "Domain=" + domain + ";Path=/";
                }
                cookieManager.setCookie(str3, str2);
            }
            System.out.println((Object) ("deleteCookies() Found no cookies for " + domain));
        }
        cookieManager.flush();
    }

    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005H\u0016J\u001a\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005H\u0017J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0013\u001a\u00020\u0005H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/microsoft/xal/browser/WebKitWebViewController$XalWebViewClient;", "Landroid/webkit/WebViewClient;", "mActivity", "Landroid/app/Activity;", "mUrl", "", "(Lcom/microsoft/xal/browser/WebKitWebViewController;Landroid/app/Activity;Ljava/lang/String;)V", "onPageFinished", "", "webView", "Landroid/webkit/WebView;", "url", "shouldInterceptRequest", "Landroid/webkit/WebResourceResponse;", "webResourceRequest", "Landroid/webkit/WebResourceRequest;", "shouldOverrideUrlLoading", "", "webResponseFromAssets", "resName", "xal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public final class XalWebViewClient extends WebViewClient {
        private final Activity mActivity;
        private final String mUrl;
        final /* synthetic */ WebKitWebViewController this$0;

        public XalWebViewClient(WebKitWebViewController webKitWebViewController, Activity mActivity, String mUrl) {
            Intrinsics.checkNotNullParameter(mActivity, "mActivity");
            Intrinsics.checkNotNullParameter(mUrl, "mUrl");
            this.this$0 = webKitWebViewController;
            this.mActivity = mActivity;
            this.mUrl = mUrl;
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String url) {
            Intrinsics.checkNotNullParameter(webView, "webView");
            Intrinsics.checkNotNullParameter(url, "url");
            super.onPageFinished(webView, url);
            webView.requestFocus(130);
            webView.sendAccessibilityEvent(8);
            webView.evaluateJavascript("if (typeof window.__xal__performAccessibilityFocus === \"function\") { window.__xal__performAccessibilityFocus(); }", null);
        }

        @Override // android.webkit.WebViewClient
        @Deprecated(message = "Deprecated in Java")
        public boolean shouldOverrideUrlLoading(WebView webView, String url) {
            Intrinsics.checkNotNullParameter(webView, "webView");
            Intrinsics.checkNotNullParameter(url, "url");
            if (!StringsKt.startsWith$default(url, this.mUrl, 0, false, 4, (Object) null)) {
                return false;
            }
            WebKitWebViewController webKitWebViewController = this.this$0;
            Intent intent = new Intent();
            intent.putExtra(WebKitWebViewController.RESPONSE_KEY, url);
            Unit unit = Unit.INSTANCE;
            webKitWebViewController.setResult(-1, intent);
            this.this$0.finish();
            return true;
        }

        @Override // android.webkit.WebViewClient
        public WebResourceResponse shouldInterceptRequest(final WebView webView, WebResourceRequest webResourceRequest) {
            Intrinsics.checkNotNullParameter(webView, "webView");
            Intrinsics.checkNotNullParameter(webResourceRequest, "webResourceRequest");
            final String string = webResourceRequest.getUrl().toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            Log.e("XBOX_URI", string);
            String str = string;
            if (StringsKt.contains$default((CharSequence) str, (CharSequence) "favicon.ico", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) str, (CharSequence) "AppLogos", false, 2, (Object) null)) {
                new Thread(new Runnable() { // from class: com.microsoft.xal.browser.WebKitWebViewController$XalWebViewClient$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebKitWebViewController.XalWebViewClient.shouldInterceptRequest$lambda$2(webView, string);
                    }
                });
            }
            if (StringsKt.contains$default((CharSequence) str, (CharSequence) ".css", false, 2, (Object) null) && StringsKt.contains$default((CharSequence) str, (CharSequence) "splash", false, 2, (Object) null)) {
                new Thread(new Runnable() { // from class: com.microsoft.xal.browser.WebKitWebViewController$XalWebViewClient$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebKitWebViewController.XalWebViewClient.shouldInterceptRequest$lambda$3(webView, string);
                    }
                });
            }
            if (StringsKt.contains$default((CharSequence) str, (CharSequence) ".css", false, 2, (Object) null) && ((StringsKt.contains$default((CharSequence) str, (CharSequence) "login", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) str, (CharSequence) "signup", false, 2, (Object) null)) && !StringsKt.contains$default((CharSequence) str, (CharSequence) "bootstrap", false, 2, (Object) null))) {
                return webResponseFromAssets("resources/login.css");
            }
            if (StringsKt.contains$default((CharSequence) str, (CharSequence) "images-eds", false, 2, (Object) null) && StringsKt.contains$default((CharSequence) str, (CharSequence) "xbox", false, 2, (Object) null)) {
                System.out.println((Object) "User Finished Login");
            }
            if (!StringsKt.contains$default((CharSequence) str, (CharSequence) "microsoft_logo", false, 2, (Object) null) && !StringsKt.contains$default((CharSequence) str, (CharSequence) "AppLogos", false, 2, (Object) null) && !StringsKt.contains$default((CharSequence) str, (CharSequence) "applogos", false, 2, (Object) null) && !StringsKt.contains$default((CharSequence) str, (CharSequence) "xboxlivelogo", false, 2, (Object) null) && !StringsKt.contains$default((CharSequence) str, (CharSequence) "logo", false, 2, (Object) null) && !StringsKt.contains$default((CharSequence) str, (CharSequence) "14_298176657f8069ea5220", false, 2, (Object) null)) {
                if (!StringsKt.contains$default((CharSequence) str, (CharSequence) "AppBackgrounds", false, 2, (Object) null) && !StringsKt.contains$default((CharSequence) str, (CharSequence) "appbackgrounds", false, 2, (Object) null) && !StringsKt.contains$default((CharSequence) str, (CharSequence) "73_b46031e02b69c55b4305", false, 2, (Object) null)) {
                    if (StringsKt.contains$default((CharSequence) str, (CharSequence) "minecraft", false, 2, (Object) null) && (StringsKt.contains$default((CharSequence) str, (CharSequence) ".png", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) str, (CharSequence) ".jpg", false, 2, (Object) null))) {
                        return webResponseFromAssets("resources/bg32.png");
                    }
                    return super.shouldInterceptRequest(webView, webResourceRequest);
                }
                return webResponseFromAssets("resources/bg32.png");
            }
            return webResponseFromAssets("resources/title.png");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void shouldInterceptRequest$lambda$2(WebView webView, String uri) {
            Intrinsics.checkNotNullParameter(webView, "$webView");
            Intrinsics.checkNotNullParameter(uri, "$uri");
            webView.loadUrl(uri);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void shouldInterceptRequest$lambda$3(WebView webView, String uri) {
            Intrinsics.checkNotNullParameter(webView, "$webView");
            Intrinsics.checkNotNullParameter(uri, "$uri");
            webView.loadUrl(uri);
        }

        private final WebResourceResponse webResponseFromAssets(String resName) {
            try {
                return new WebResourceResponse("text/css", "UTF-8", this.mActivity.getAssets().open(resName));
            } catch (IOException e) {
                e.printStackTrace();
                return null;
            }
        }
    }
}
