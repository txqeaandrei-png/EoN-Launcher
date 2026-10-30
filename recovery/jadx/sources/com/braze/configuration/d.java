package com.braze.configuration;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.braze.configuration.d[], still in use, count: 1, list:
  (r0v1 com.braze.configuration.d[]) from 0x004e: INVOKE (r0v1 com.braze.configuration.d[]) STATIC call: kotlin.enums.EnumEntriesKt.enumEntries(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:<E extends java.lang.Enum<E>>:(E extends java.lang.Enum<E>[]):kotlin.enums.EnumEntries<E extends java.lang.Enum<E>> (m)]
	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1604)
	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes.dex */
public final class d {
    INTEGER(TypedValues.Custom.S_INT),
    COLOR(TypedValues.Custom.S_COLOR),
    BOOLEAN("bool"),
    STRING("string"),
    DRAWABLE_IDENTIFIER("drawable"),
    STRING_ARRAY("array");

    public final String a;

    static {
        EnumEntriesKt.enumEntries(dVarArr);
    }

    public d(String str) {
        super(str, i);
        this.a = str;
    }

    public static d valueOf(String str) {
        return (d) Enum.valueOf(d.class, str);
    }

    public static d[] values() {
        return (d[]) h.clone();
    }
}
