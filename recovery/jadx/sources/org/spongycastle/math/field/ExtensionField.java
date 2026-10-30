package org.spongycastle.math.field;

/* JADX INFO: loaded from: classes5.dex */
public interface ExtensionField extends FiniteField {
    int getDegree();

    FiniteField getSubfield();
}
