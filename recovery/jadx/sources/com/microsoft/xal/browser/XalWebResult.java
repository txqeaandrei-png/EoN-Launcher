package com.microsoft.xal.browser;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/microsoft/xal/browser/XalWebResult;", "", "()V", "mWebResult", "", "xal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class XalWebResult {
    public static final XalWebResult INSTANCE = new XalWebResult();
    public static final int[] mWebResult;

    private XalWebResult() {
    }

    static {
        int[] iArr = new int[WebResult.getEntries().size()];
        mWebResult = iArr;
        iArr[WebResult.SUCCESS.ordinal()] = 1;
        iArr[WebResult.CANCEL.ordinal()] = 2;
        try {
            iArr[WebResult.FAIL.ordinal()] = 3;
        } catch (NoSuchFieldError e) {
            e.printStackTrace();
        }
    }
}
