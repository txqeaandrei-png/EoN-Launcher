package com.braze.requests;

import com.google.firebase.messaging.Constants;
import java.util.LinkedHashMap;
import kotlin.collections.MapsKt;
import kotlin.enums.EnumEntriesKt;
import kotlin.ranges.RangesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.braze.requests.m[], still in use, count: 1, list:
  (r0v1 com.braze.requests.m[]) from 0x009a: INVOKE (r0v1 com.braze.requests.m[]) STATIC call: kotlin.enums.EnumEntriesKt.enumEntries(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:<E extends java.lang.Enum<E>>:(E extends java.lang.Enum<E>[]):kotlin.enums.EnumEntries<E extends java.lang.Enum<E>> (m)]
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
public final class m {
    CONTENT_CARD_SYNC("content_cards/sync"),
    FEATURE_FLAG_SYNC("feature_flags/sync"),
    V3_DATA(Constants.ScionAnalytics.MessageType.DATA_MESSAGE),
    TEMPLATE_REQUEST("template"),
    PUSH_DELIVERY_EVENTS("push/delivery_events"),
    GEOFENCE_REFRESH("geofence/request"),
    GEOFENCE_REPORT("geofence/report"),
    PUSH_REDELIVER("push/redeliver"),
    BANNERS_SYNC("banners/sync"),
    SDK_DEBUGGER_INIT("debugger/init"),
    SDK_DEBUGGER_LOG("debugger/log"),
    DUST_CONFIG("dust/config");

    public static final l b;
    public static final LinkedHashMap c;
    public final String a;

    static {
        EnumEntriesKt.enumEntries(new m[]{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11});
        b = new l();
        m[] mVarArrValues = values();
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(mVarArrValues.length), 16));
        for (m mVar : mVarArrValues) {
            linkedHashMap.put(mVar.a, mVar);
        }
        c = linkedHashMap;
    }

    public m(String str) {
        super(str, i);
        this.a = str;
    }

    public static m valueOf(String str) {
        return (m) Enum.valueOf(m.class, str);
    }

    public static m[] values() {
        return (m[]) p.clone();
    }
}
