package com.microsoft.xal.browser;

import com.microsoft.xbox.telemetry.helpers.UTCTelemetry;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u0000 \t2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\tB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\n"}, d2 = {"Lcom/microsoft/xal/browser/ShowUrlType;", "", "(Ljava/lang/String;I)V", "toString", "", "Normal", "CookieRemoval", "CookieRemovalSkipIfSharedCredentials", "NonAuthFlow", "Companion", "xal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public enum ShowUrlType {
    Normal,
    CookieRemoval,
    CookieRemovalSkipIfSharedCredentials,
    NonAuthFlow;

    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @JvmStatic
    public static final ShowUrlType fromInt(int i) {
        return INSTANCE.fromInt(i);
    }

    public static EnumEntries<ShowUrlType> getEntries() {
        return $ENTRIES;
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcom/microsoft/xal/browser/ShowUrlType$Companion;", "", "()V", "fromInt", "Lcom/microsoft/xal/browser/ShowUrlType;", "value", "", "xal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final ShowUrlType fromInt(int value) {
            if (value == 0) {
                return ShowUrlType.Normal;
            }
            if (value == 1) {
                return ShowUrlType.CookieRemoval;
            }
            if (value == 2) {
                return ShowUrlType.CookieRemovalSkipIfSharedCredentials;
            }
            if (value != 3) {
                return null;
            }
            return ShowUrlType.NonAuthFlow;
        }
    }

    @Override // java.lang.Enum
    public String toString() {
        int iOrdinal = getEntries().get(ordinal()).ordinal();
        if (iOrdinal == 1) {
            return "Normal";
        }
        if (iOrdinal == 2) {
            return "CookieRemoval";
        }
        if (iOrdinal == 3) {
            return "CookieRemovalSkipIfSharedCredentials";
        }
        if (iOrdinal != 4) {
            return UTCTelemetry.UNKNOWNPAGE;
        }
        return "NonAuthFlow";
    }
}
