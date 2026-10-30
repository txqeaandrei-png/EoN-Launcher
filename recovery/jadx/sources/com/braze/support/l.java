package com.braze.support;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class l {
    public static final String a = BrazeLogger.INSTANCE.getBrazeLogTag("HttpUtils");
    public static final SimpleDateFormat b = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss z", Locale.US);

    public static final Long a(final String str) {
        Long lValueOf;
        try {
            Double doubleOrNull = StringsKt.toDoubleOrNull(str);
            if (doubleOrNull != null) {
                lValueOf = Long.valueOf((long) (doubleOrNull.doubleValue() * 1000));
            } else {
                Date date = b.parse(str);
                if (date == null) {
                    return null;
                }
                lValueOf = Long.valueOf(date.getTime() - DateTimeUtils.nowInMilliseconds());
            }
            return lValueOf;
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, a, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.support.l$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return l.b(str);
                }
            }, 8, (Object) null);
            return null;
        }
    }

    public static final String b(String str) {
        return com.braze.j.a("Could not parse http-date value: ", str);
    }

    public static final LinkedHashMap a(Map map) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : map.entrySet()) {
            if (((String) entry.getKey()) != null) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(MapsKt.mapCapacity(linkedHashMap.size()));
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            Object key = entry2.getKey();
            Intrinsics.checkNotNull(key);
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String lowerCase = ((String) key).toLowerCase(US);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            linkedHashMap2.put(lowerCase, entry2.getValue());
        }
        LinkedHashMap linkedHashMap3 = new LinkedHashMap(MapsKt.mapCapacity(linkedHashMap2.size()));
        for (Map.Entry entry3 : linkedHashMap2.entrySet()) {
            linkedHashMap3.put(entry3.getKey(), CollectionsKt.joinToString$default((Iterable) entry3.getValue(), null, null, null, 0, null, null, 63, null));
        }
        return linkedHashMap3;
    }
}
