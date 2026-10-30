package com.braze.models.outgoing;

import com.braze.configuration.BrazeConfigurationProvider;
import com.braze.enums.DeviceKey;
import com.braze.support.BrazeLogger;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class g {
    public final void a(BrazeConfigurationProvider configurationProvider, JSONObject deviceExport, final DeviceKey exportKey, Object obj) {
        Intrinsics.checkNotNullParameter(configurationProvider, "configurationProvider");
        Intrinsics.checkNotNullParameter(deviceExport, "deviceExport");
        Intrinsics.checkNotNullParameter(exportKey, "exportKey");
        if (!configurationProvider.isDeviceObjectAllowlistEnabled() || configurationProvider.getDeviceObjectAllowlist().contains(exportKey)) {
            deviceExport.putOpt(exportKey.getKey(), obj);
        } else {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.models.outgoing.g$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return g.a(exportKey);
                }
            }, 6, (Object) null);
        }
    }

    public static final String a(DeviceKey deviceKey) {
        return "Not adding device key <" + deviceKey + "> to export due to allowlist restrictions.";
    }
}
