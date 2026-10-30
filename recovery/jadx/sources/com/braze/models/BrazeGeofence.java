package com.braze.models;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0012\n\u0002\u0010\u0000\n\u0002\b!\b\u0007\u0018\u0000 @2\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\b\u0012\u0004\u0012\u00020\u00000\u0003:\u0001ABi\b\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0012\u001a\u00020\u000e\u0012\u0006\u0010\u0013\u001a\u00020\n¢\u0006\u0004\b\u0014\u0010\u0015B\u0011\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0014\u0010\u0016J\u0015\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0000¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u0018\u0010\u001f\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\u0000H\u0096\u0002¢\u0006\u0004\b\u001f\u0010 J\u001a\u0010\"\u001a\u00020\u000e2\b\u0010\u001e\u001a\u0004\u0018\u00010!H\u0096\u0002¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\nH\u0016¢\u0006\u0004\b$\u0010%R\u0014\u0010\u0004\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010&R\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010'\u001a\u0004\b(\u0010\u001bR\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010)\u001a\u0004\b*\u0010+R\u0017\u0010\t\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\t\u0010)\u001a\u0004\b,\u0010+R\u0017\u0010\u000b\u001a\u00020\n8G¢\u0006\f\n\u0004\b\u000b\u0010-\u001a\u0004\b.\u0010%R\u0017\u0010\f\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\f\u0010-\u001a\u0004\b/\u0010%R\u0017\u0010\r\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\r\u0010-\u001a\u0004\b0\u0010%R\u0017\u0010\u000f\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u00101\u001a\u0004\b2\u00103R\u0017\u0010\u0010\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u0010\u00101\u001a\u0004\b4\u00103R\u0017\u0010\u0011\u001a\u00020\u000e8G¢\u0006\f\n\u0004\b\u0011\u00101\u001a\u0004\b5\u00103R\u0017\u0010\u0012\u001a\u00020\u000e8G¢\u0006\f\n\u0004\b\u0012\u00101\u001a\u0004\b6\u00103R\u0017\u0010\u0013\u001a\u00020\n8G¢\u0006\f\n\u0004\b\u0013\u0010-\u001a\u0004\b7\u0010%R(\u00108\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0004\b8\u0010)\u0012\u0004\b<\u0010=\u001a\u0004\b9\u0010+\"\u0004\b:\u0010;R\u0011\u0010?\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b>\u0010+¨\u0006B"}, d2 = {"Lcom/braze/models/BrazeGeofence;", "Lcom/braze/models/IPutIntoJson;", "Lorg/json/JSONObject;", "", "jsonObject", "", "id", "", "latitude", "longitude", "", "radiusMeter", "cooldownEnterSeconds", "cooldownExitSeconds", "", "analyticsEnabledEnter", "analyticsEnabledExit", "enterEvents", "exitEvents", "notificationResponsivenessMs", "<init>", "(Lorg/json/JSONObject;Ljava/lang/String;DDIIIZZZZI)V", "(Lorg/json/JSONObject;)V", "otherGeofence", "equivalentServerData", "(Lcom/braze/models/BrazeGeofence;)Z", "toString", "()Ljava/lang/String;", "forJsonPut", "()Lorg/json/JSONObject;", "other", "compareTo", "(Lcom/braze/models/BrazeGeofence;)I", "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "Lorg/json/JSONObject;", "Ljava/lang/String;", "getId", "D", "getLatitude", "()D", "getLongitude", "I", "getRadiusMeter", "getCooldownEnterSeconds", "getCooldownExitSeconds", "Z", "getAnalyticsEnabledEnter", "()Z", "getAnalyticsEnabledExit", "getEnterEvents", "getExitEvents", "getNotificationResponsivenessMs", "distanceFromGeofenceRefresh", "getDistanceFromGeofenceRefresh", "setDistanceFromGeofenceRefresh", "(D)V", "getDistanceFromGeofenceRefresh$annotations", "()V", "getRadiusMeters", "radiusMeters", "Companion", "com/braze/models/c", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class BrazeGeofence implements IPutIntoJson<JSONObject>, Comparable<BrazeGeofence> {
    private static final String ANALYTICS_ENABLED_ENTER = "analytics_enabled_enter";
    private static final String ANALYTICS_ENABLED_EXIT = "analytics_enabled_exit";
    private static final String COOLDOWN_ENTER_SECONDS = "cooldown_enter";
    private static final String COOLDOWN_EXIT_SECONDS = "cooldown_exit";
    public static final c Companion = new c();
    private static final int DEFAULT_NOTIFICATION_RESPONSIVENESS_MS = 30000;
    private static final String ENTER_EVENTS = "enter_events";
    private static final String EXIT_EVENTS = "exit_events";
    private static final String ID = "id";
    private static final String LATITUDE = "latitude";
    private static final String LONGITUDE = "longitude";
    private static final String NOTIFICATION_RESPONSIVENESS_MS = "notification_responsiveness";
    private static final String RADIUS_METERS = "radius";
    private final boolean analyticsEnabledEnter;
    private final boolean analyticsEnabledExit;
    private final int cooldownEnterSeconds;
    private final int cooldownExitSeconds;
    private double distanceFromGeofenceRefresh;
    private final boolean enterEvents;
    private final boolean exitEvents;
    private final String id;
    private final JSONObject jsonObject;
    private final double latitude;
    private final double longitude;
    private final int notificationResponsivenessMs;
    private final int radiusMeter;

    public BrazeGeofence(JSONObject jsonObject, String id, double d, double d2, int i, int i2, int i3, boolean z, boolean z2, boolean z3, boolean z4, int i4) {
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        Intrinsics.checkNotNullParameter(id, "id");
        this.jsonObject = jsonObject;
        this.id = id;
        this.latitude = d;
        this.longitude = d2;
        this.radiusMeter = i;
        this.cooldownEnterSeconds = i2;
        this.cooldownExitSeconds = i3;
        this.analyticsEnabledEnter = z;
        this.analyticsEnabledExit = z2;
        this.enterEvents = z3;
        this.exitEvents = z4;
        this.notificationResponsivenessMs = i4;
        this.distanceFromGeofenceRefresh = -1.0d;
    }

    public static /* synthetic */ void getDistanceFromGeofenceRefresh$annotations() {
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!Intrinsics.areEqual(BrazeGeofence.class, other != null ? other.getClass() : null)) {
            return false;
        }
        Intrinsics.checkNotNull(other, "null cannot be cast to non-null type com.braze.models.BrazeGeofence");
        BrazeGeofence brazeGeofence = (BrazeGeofence) other;
        return Intrinsics.areEqual(this.id, brazeGeofence.id) && this.latitude == brazeGeofence.latitude && this.longitude == brazeGeofence.longitude && this.radiusMeter == brazeGeofence.radiusMeter && this.cooldownEnterSeconds == brazeGeofence.cooldownEnterSeconds && this.cooldownExitSeconds == brazeGeofence.cooldownExitSeconds && this.analyticsEnabledEnter == brazeGeofence.analyticsEnabledEnter && this.analyticsEnabledExit == brazeGeofence.analyticsEnabledExit && this.enterEvents == brazeGeofence.enterEvents && this.exitEvents == brazeGeofence.exitEvents && this.notificationResponsivenessMs == brazeGeofence.notificationResponsivenessMs;
    }

    public final boolean equivalentServerData(BrazeGeofence otherGeofence) {
        Intrinsics.checkNotNullParameter(otherGeofence, "otherGeofence");
        try {
            return Intrinsics.areEqual(this, otherGeofence);
        } catch (Exception unused) {
            return false;
        }
    }

    public final boolean getAnalyticsEnabledEnter() {
        return this.analyticsEnabledEnter;
    }

    public final boolean getAnalyticsEnabledExit() {
        return this.analyticsEnabledExit;
    }

    public final int getCooldownEnterSeconds() {
        return this.cooldownEnterSeconds;
    }

    public final int getCooldownExitSeconds() {
        return this.cooldownExitSeconds;
    }

    public final double getDistanceFromGeofenceRefresh() {
        return this.distanceFromGeofenceRefresh;
    }

    public final boolean getEnterEvents() {
        return this.enterEvents;
    }

    public final boolean getExitEvents() {
        return this.exitEvents;
    }

    public final String getId() {
        return this.id;
    }

    public final double getLatitude() {
        return this.latitude;
    }

    public final double getLongitude() {
        return this.longitude;
    }

    public final int getNotificationResponsivenessMs() {
        return this.notificationResponsivenessMs;
    }

    public final int getRadiusMeter() {
        return this.radiusMeter;
    }

    public final double getRadiusMeters() {
        return this.radiusMeter;
    }

    public int hashCode() {
        return Double.hashCode(getRadiusMeters()) + ((((Boolean.hashCode(this.exitEvents) + ((Boolean.hashCode(this.enterEvents) + ((Boolean.hashCode(this.analyticsEnabledExit) + ((Boolean.hashCode(this.analyticsEnabledEnter) + ((((((((Double.hashCode(this.longitude) + ((Double.hashCode(this.latitude) + ((this.id.hashCode() + (this.jsonObject.hashCode() * 31)) * 31)) * 31)) * 31) + this.radiusMeter) * 31) + this.cooldownEnterSeconds) * 31) + this.cooldownExitSeconds) * 31)) * 31)) * 31)) * 31)) * 31) + this.notificationResponsivenessMs) * 31);
    }

    public final void setDistanceFromGeofenceRefresh(double d) {
        this.distanceFromGeofenceRefresh = d;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("BrazeGeofence{id=");
        sb.append(this.id).append(", \n            |latitude, longitude=(").append(this.latitude).append(", ").append(this.longitude).append("),\n            |radiusMeters=").append(this.radiusMeter).append(", \n            |cooldownEnterSeconds=").append(this.cooldownEnterSeconds).append(", \n            |cooldownExitSeconds=").append(this.cooldownExitSeconds).append(", \n            |analyticsEnabledEnter=").append(this.analyticsEnabledEnter).append(", \n            |analyticsEnabledExit=").append(this.analyticsEnabledExit).append(", \n            |enterEvents=").append(this.enterEvents).append(", \n            |exitEvents=").append(this.exitEvents).append(", \n            |notificationResponsivenessMs=").append(this.notificationResponsivenessMs).append(", \n            |distanceFromGeofenceRefresh=");
        sb.append(this.distanceFromGeofenceRefresh).append(" }\n            |\n        ");
        return StringsKt.trimMargin$default(sb.toString(), null, 1, null);
    }

    @Override // java.lang.Comparable
    public int compareTo(BrazeGeofence other) {
        Intrinsics.checkNotNullParameter(other, "other");
        double d = this.distanceFromGeofenceRefresh;
        return (d != -1.0d && d < other.distanceFromGeofenceRefresh) ? -1 : 1;
    }

    @Override // com.braze.models.IPutIntoJson
    /* JADX INFO: renamed from: forJsonPut, reason: avoid collision after fix types in other method and from getter */
    public JSONObject getJsonKey() {
        return this.jsonObject;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public BrazeGeofence(JSONObject jsonObject) throws JSONException {
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        String string = jsonObject.getString("id");
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        this(jsonObject, string, jsonObject.getDouble("latitude"), jsonObject.getDouble("longitude"), jsonObject.getInt(RADIUS_METERS), jsonObject.getInt(COOLDOWN_ENTER_SECONDS), jsonObject.getInt(COOLDOWN_EXIT_SECONDS), jsonObject.getBoolean(ANALYTICS_ENABLED_ENTER), jsonObject.getBoolean(ANALYTICS_ENABLED_EXIT), jsonObject.optBoolean(ENTER_EVENTS, true), jsonObject.optBoolean(EXIT_EVENTS, true), jsonObject.optInt(NOTIFICATION_RESPONSIVENESS_MS, DEFAULT_NOTIFICATION_RESPONSIVENESS_MS));
    }
}
