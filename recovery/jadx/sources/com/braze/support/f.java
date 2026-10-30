package com.braze.support;

import java.util.ArrayList;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class f {
    public static final f a = new f();

    public static final String a(String str) {
        return com.braze.j.a("Failed to create valid enum from string: ", str);
    }

    public static final EnumSet a(Class targetEnumClass, Set sourceStringSet) {
        Intrinsics.checkNotNullParameter(targetEnumClass, "targetEnumClass");
        Intrinsics.checkNotNullParameter(sourceStringSet, "sourceStringSet");
        EnumSet enumSetNoneOf = EnumSet.noneOf(targetEnumClass);
        Iterator it = sourceStringSet.iterator();
        while (it.hasNext()) {
            final String str = (String) it.next();
            try {
                Locale US = Locale.US;
                Intrinsics.checkNotNullExpressionValue(US, "US");
                String enumValue = str.toUpperCase(US);
                Intrinsics.checkNotNullExpressionValue(enumValue, "toUpperCase(...)");
                Intrinsics.checkNotNullParameter(enumValue, "enumValue");
                Intrinsics.checkNotNullParameter(targetEnumClass, "targetEnumClass");
                enumSetNoneOf.add(Enum.valueOf(targetEnumClass, enumValue));
            } catch (Exception e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) a, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.support.f$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return f.a(str);
                    }
                }, 4, (Object) null);
            }
        }
        Intrinsics.checkNotNull(enumSetNoneOf);
        return enumSetNoneOf;
    }

    public static final Set a(EnumSet sourceEnumSet) {
        Intrinsics.checkNotNullParameter(sourceEnumSet, "sourceEnumSet");
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(sourceEnumSet, 10));
        Iterator it = sourceEnumSet.iterator();
        while (it.hasNext()) {
            arrayList.add(((Enum) it.next()).name());
        }
        return CollectionsKt.toSet(arrayList);
    }
}
