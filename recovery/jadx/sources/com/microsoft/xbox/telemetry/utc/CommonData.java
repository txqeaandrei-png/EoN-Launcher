package com.microsoft.xbox.telemetry.utc;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.view.accessibility.AccessibilityManager;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.microsoft.xbox.idp.interop.Interop;
import com.microsoft.xbox.idp.interop.XboxLiveAppConfig;
import com.microsoft.xbox.telemetry.helpers.UTCLog;
import java.util.HashMap;
import java.util.Locale;
import java.util.UUID;

/* JADX INFO: loaded from: classes3.dex */
public class CommonData {
    private static final String DEFAULTSANDBOX = "RETAIL";
    private static final String DEFAULTSERVICES = "none";
    private static final String EVENTVERSION = "1.1";
    private static final String UNKNOWNAPP = "UNKNOWN";
    private static final String UNKNOWNUSER = "0";
    public String eventVersion;
    private static final UUID applicationSession = UUID.randomUUID();
    private static final String staticAccessibilityInfo = getAccessibilityInfo();
    private static final String staticAppName = getAppName();
    private static final String staticDeviceModel = getDeviceModel();
    private static final String staticOSLocale = getDeviceLocale();
    private static NetworkType netType = getNetworkConnection();
    private final String accessibilityInfo = staticAccessibilityInfo;
    public HashMap<String, Object> additionalInfo = new HashMap<>();
    public String appName = staticAppName;
    public String appSessionId = getApplicationSession();
    public String clientLanguage = staticOSLocale;
    public String deviceModel = staticDeviceModel;
    public int network = netType.getValue();
    public String sandboxId = getSandboxId();
    public String titleDeviceId = get_title_telemetry_device_id();
    public String titleSessionId = get_title_telemetry_session_id();
    public String userId = UNKNOWNUSER;
    public String xsapiVersion = "1.0";

    private static native String get_title_telemetry_device_id();

    private static native String get_title_telemetry_session_id();

    public CommonData(int i) {
        this.eventVersion = String.format("%s.%s", EVENTVERSION, Integer.valueOf(i));
    }

    public static String getApplicationSession() {
        return applicationSession.toString();
    }

    private static String getDeviceModel() {
        String str = Build.MODEL;
        return (str == null || str.isEmpty()) ? UNKNOWNAPP : str.replace("|", "");
    }

    private static String getAppName() {
        try {
            Context applicationContext = Interop.getApplicationContext();
            if (applicationContext == null) {
                return UNKNOWNAPP;
            }
            return applicationContext.getApplicationInfo().packageName;
        } catch (Exception e) {
            UTCLog.log(e.getMessage(), new Object[0]);
            return UNKNOWNAPP;
        }
    }

    private static String getDeviceLocale() {
        try {
            Locale locale = Locale.getDefault();
            return String.format("%s-%s", locale.getLanguage(), locale.getCountry());
        } catch (Exception e) {
            UTCLog.log(e.getMessage(), new Object[0]);
            return null;
        }
    }

    private static String getSandboxId() {
        try {
            return new XboxLiveAppConfig().getSandbox();
        } catch (Exception e) {
            UTCLog.log(e.getMessage(), new Object[0]);
            return DEFAULTSANDBOX;
        }
    }

    private static NetworkType getNetworkConnection() {
        if (netType == NetworkType.UNKNOWN && Interop.getApplicationContext() != null) {
            try {
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) Interop.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
                if (activeNetworkInfo == null) {
                    return netType;
                }
                if (activeNetworkInfo.getState() == NetworkInfo.State.CONNECTED) {
                    int type = activeNetworkInfo.getType();
                    if (type != 0) {
                        if (type == 1) {
                            netType = NetworkType.WIFI;
                        } else if (type != 6) {
                            if (type != 9) {
                                netType = NetworkType.UNKNOWN;
                            } else {
                                netType = NetworkType.WIRED;
                            }
                        }
                    }
                    netType = NetworkType.CELLULAR;
                }
            } catch (Exception e) {
                UTCLog.log(e.getMessage(), new Object[0]);
                netType = NetworkType.UNKNOWN;
            }
        }
        return netType;
    }

    private static String getAccessibilityInfo() {
        try {
            Context applicationContext = Interop.getApplicationContext();
            if (applicationContext == null) {
                return "";
            }
            AccessibilityManager accessibilityManager = (AccessibilityManager) applicationContext.getSystemService("accessibility");
            HashMap map = new HashMap();
            map.put("isenabled", Boolean.valueOf(accessibilityManager.isEnabled()));
            String id = DEFAULTSERVICES;
            for (AccessibilityServiceInfo accessibilityServiceInfo : accessibilityManager.getEnabledAccessibilityServiceList(-1)) {
                if (id.equals(DEFAULTSERVICES)) {
                    id = accessibilityServiceInfo.getId();
                } else {
                    id = id + String.format(";%s", accessibilityServiceInfo.getId());
                }
            }
            map.put("enabledservices", id);
            return new GsonBuilder().serializeNulls().create().toJson(map);
        } catch (Exception e) {
            UTCLog.log(e.getMessage(), new Object[0]);
            return "";
        }
    }

    public String ToJson() {
        try {
            return new GsonBuilder().serializeNulls().create().toJson(this);
        } catch (JsonIOException e) {
            UTCLog.log("UTCJsonSerializer", "Error in json serialization" + e.toString());
            return "";
        }
    }

    public String GetAdditionalInfoString() {
        try {
            return new GsonBuilder().serializeNulls().create().toJson(this.additionalInfo);
        } catch (JsonIOException e) {
            UTCLog.log("UTCJsonSerializer", "Error in json serialization" + e.toString());
            return null;
        }
    }

    private enum NetworkType {
        UNKNOWN(0),
        WIFI(1),
        CELLULAR(2),
        WIRED(3);

        private int value = 0;

        NetworkType(int i) {
            setValue(i);
        }

        public int getValue() {
            return this.value;
        }

        public void setValue(int i) {
            this.value = i;
        }
    }
}
