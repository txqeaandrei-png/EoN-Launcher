package com.microsoft.xbox.toolkit.ui;

import java.net.URI;

/* JADX INFO: loaded from: classes3.dex */
public class XLEURIArg {
    private final int errorResourceId;
    private final int loadingResourceId;
    private final URI uri;

    public XLEURIArg(URI uri, int i, int i2) {
        this.uri = uri;
        this.loadingResourceId = i;
        this.errorResourceId = i2;
    }

    public XLEURIArg(URI uri) {
        this(uri, -1, -1);
    }

    public URI getUri() {
        return this.uri;
    }

    public int getLoadingResourceId() {
        return this.loadingResourceId;
    }

    public int getErrorResourceId() {
        return this.errorResourceId;
    }

    public TextureBindingOption getTextureBindingOption() {
        return new TextureBindingOption(-1, -1, this.loadingResourceId, this.errorResourceId, false);
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof XLEURIArg)) {
            return false;
        }
        XLEURIArg xLEURIArg = (XLEURIArg) obj;
        if (this.loadingResourceId != xLEURIArg.loadingResourceId || this.errorResourceId != xLEURIArg.errorResourceId) {
            return false;
        }
        URI uri = this.uri;
        URI uri2 = xLEURIArg.uri;
        return uri == uri2 || (uri != null && uri.equals(uri2));
    }

    public int hashCode() {
        int i = ((this.loadingResourceId + 13) * 17) + this.errorResourceId;
        URI uri = this.uri;
        return uri != null ? (i * 23) + uri.hashCode() : i;
    }
}
