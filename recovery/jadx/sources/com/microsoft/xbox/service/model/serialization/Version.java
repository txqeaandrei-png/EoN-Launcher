package com.microsoft.xbox.service.model.serialization;

import org.apache.http.cookie.ClientCookie;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

/* JADX INFO: loaded from: classes3.dex */
@Root(name = ClientCookie.VERSION_ATTR)
public class Version {

    @Element
    public int latest;

    @Element
    public int min;

    @Element
    public String url;
}
