package org.xmlpull.v1.builder;

/* JADX INFO: loaded from: classes5.dex */
public interface XmlProcessingInstruction extends XmlContainer {
    String getBaseUri();

    String getContent();

    XmlNotation getNotation();

    XmlContainer getParent();

    String getTarget();
}
