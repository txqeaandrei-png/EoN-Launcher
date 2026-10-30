package com.braze.models;

import com.braze.support.BrazeLogger;
import com.braze.support.JsonUtils;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u0004\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0002\b\u0012\b\u0007\u0018\u0000 02\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001:\u00011B-\b\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000e\u001a\u0004\u0018\u00010\u00032\u0006\u0010\r\u001a\u00020\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\r\u001a\u00020\u0003¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u0004\u0018\u00010\u00052\u0006\u0010\r\u001a\u00020\u0003¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u0004\u0018\u00010\u00022\u0006\u0010\r\u001a\u00020\u0003¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0017\u001a\u0004\u0018\u00010\u00032\u0006\u0010\r\u001a\u00020\u0003¢\u0006\u0004\b\u0017\u0010\u000fJ\u0019\u0010\u0019\u001a\u0004\u0018\u00010\u00182\u0006\u0010\r\u001a\u00020\u0003H\u0007¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001b\u001a\u0004\u0018\u00010\u00182\u0006\u0010\r\u001a\u00020\u0003¢\u0006\u0004\b\u001b\u0010\u001aJ\u000f\u0010\u001e\u001a\u00020\u0000H\u0000¢\u0006\u0004\b\u001c\u0010\u001dJ!\u0010#\u001a\u0004\u0018\u00010 2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\u0003H\u0000¢\u0006\u0004\b!\u0010\"J\u0017\u0010&\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0003H\u0000¢\u0006\u0004\b$\u0010%R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010'\u001a\u0004\b(\u0010)R\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010*\u001a\u0004\b+\u0010,R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0007\u0010-\u001a\u0004\b.\u0010\fR\u001c\u0010\b\u001a\u0004\u0018\u00010\u00038\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\b\u0010'\u001a\u0004\b/\u0010)¨\u00062"}, d2 = {"Lcom/braze/models/FeatureFlag;", "Lcom/braze/models/IPutIntoJson;", "Lorg/json/JSONObject;", "", "id", "", FeatureFlag.ENABLED, FeatureFlag.PROPERTIES, "trackingString", "<init>", "(Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;)V", "forJsonPut", "()Lorg/json/JSONObject;", "key", "getStringProperty", "(Ljava/lang/String;)Ljava/lang/String;", "", "getNumberProperty", "(Ljava/lang/String;)Ljava/lang/Number;", "getBooleanProperty", "(Ljava/lang/String;)Ljava/lang/Boolean;", "getJSONProperty", "(Ljava/lang/String;)Lorg/json/JSONObject;", "getImageProperty", "", "getTimestamp", "(Ljava/lang/String;)Ljava/lang/Long;", "getTimestampProperty", "deepcopy$android_sdk_base_release", "()Lcom/braze/models/FeatureFlag;", "deepcopy", "expectedPropertyType", "", "getValue$android_sdk_base_release", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;", "getValue", "doesKeyExist$android_sdk_base_release", "(Ljava/lang/String;)Z", "doesKeyExist", "Ljava/lang/String;", "getId", "()Ljava/lang/String;", "Z", "getEnabled", "()Z", "Lorg/json/JSONObject;", "getProperties", "getTrackingString$android_sdk_base_release", "Companion", "com/braze/models/h", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class FeatureFlag implements IPutIntoJson<JSONObject> {
    public static final h Companion = new h();
    public static final String ENABLED = "enabled";
    public static final String ID = "id";
    public static final String PROPERTIES = "properties";
    public static final String PROPERTIES_TYPE = "type";
    public static final String PROPERTIES_TYPE_BOOLEAN = "boolean";
    public static final String PROPERTIES_TYPE_DATETIME = "datetime";
    public static final String PROPERTIES_TYPE_IMAGE = "image";
    public static final String PROPERTIES_TYPE_JSON = "jsonobject";
    public static final String PROPERTIES_TYPE_NUMBER = "number";
    public static final String PROPERTIES_TYPE_STRING = "string";
    public static final String PROPERTIES_VALUE = "value";
    public static final String TRACKING_STRING = "fts";
    private final boolean enabled;
    private final String id;
    private final JSONObject properties;
    private final String trackingString;

    public FeatureFlag(String id, boolean z, JSONObject properties, String str) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(properties, "properties");
        this.id = id;
        this.enabled = z;
        this.properties = properties;
        this.trackingString = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String doesKeyExist$lambda$2(String str, FeatureFlag featureFlag) {
        return "Key " + str + " does not exist in properties " + featureFlag.properties + '.';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String forJsonPut$lambda$0() {
        return "Caught exception creating FeatureFlag Json.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getValue$lambda$1(String str, Object obj) {
        return "Property is not of type " + str + ". It is " + obj + '.';
    }

    public final FeatureFlag deepcopy$android_sdk_base_release() {
        return new FeatureFlag(this.id, this.enabled, JsonUtils.deepcopy(this.properties), this.trackingString);
    }

    public final boolean doesKeyExist$android_sdk_base_release(final String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        if (this.properties.has(key)) {
            return true;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.models.FeatureFlag$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return FeatureFlag.doesKeyExist$lambda$2(key, this);
            }
        }, 6, (Object) null);
        return false;
    }

    public final Boolean getBooleanProperty(String key) throws JSONException {
        Intrinsics.checkNotNullParameter(key, "key");
        Object value$android_sdk_base_release = getValue$android_sdk_base_release(key, "boolean");
        if (value$android_sdk_base_release instanceof Boolean) {
            return (Boolean) value$android_sdk_base_release;
        }
        return null;
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    public final String getId() {
        return this.id;
    }

    public final String getImageProperty(String key) throws JSONException {
        Intrinsics.checkNotNullParameter(key, "key");
        Object value$android_sdk_base_release = getValue$android_sdk_base_release(key, PROPERTIES_TYPE_IMAGE);
        if (value$android_sdk_base_release instanceof String) {
            return (String) value$android_sdk_base_release;
        }
        return null;
    }

    public final JSONObject getJSONProperty(String key) throws JSONException {
        Intrinsics.checkNotNullParameter(key, "key");
        Object value$android_sdk_base_release = getValue$android_sdk_base_release(key, PROPERTIES_TYPE_JSON);
        if (value$android_sdk_base_release instanceof JSONObject) {
            return (JSONObject) value$android_sdk_base_release;
        }
        return null;
    }

    public final Number getNumberProperty(String key) throws JSONException {
        Intrinsics.checkNotNullParameter(key, "key");
        Object value$android_sdk_base_release = getValue$android_sdk_base_release(key, PROPERTIES_TYPE_NUMBER);
        if (value$android_sdk_base_release instanceof Number) {
            return (Number) value$android_sdk_base_release;
        }
        return null;
    }

    public final JSONObject getProperties() {
        return this.properties;
    }

    public final String getStringProperty(String key) throws JSONException {
        Intrinsics.checkNotNullParameter(key, "key");
        Object value$android_sdk_base_release = getValue$android_sdk_base_release(key, "string");
        if (value$android_sdk_base_release instanceof String) {
            return (String) value$android_sdk_base_release;
        }
        return null;
    }

    @Deprecated(message = "Use getTimestampProperty instead", replaceWith = @ReplaceWith(expression = "getTimestampProperty(key)", imports = {}))
    public final Long getTimestamp(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return getTimestampProperty(key);
    }

    public final Long getTimestampProperty(String key) throws JSONException {
        Intrinsics.checkNotNullParameter(key, "key");
        Object value$android_sdk_base_release = getValue$android_sdk_base_release(key, PROPERTIES_TYPE_DATETIME);
        if (value$android_sdk_base_release instanceof Long) {
            return (Long) value$android_sdk_base_release;
        }
        return null;
    }

    /* JADX INFO: renamed from: getTrackingString$android_sdk_base_release, reason: from getter */
    public final String getTrackingString() {
        return this.trackingString;
    }

    public final Object getValue$android_sdk_base_release(String key, final String expectedPropertyType) throws JSONException {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(expectedPropertyType, "expectedPropertyType");
        if (!doesKeyExist$android_sdk_base_release(key)) {
            return null;
        }
        Object obj = this.properties.get(key);
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type org.json.JSONObject");
        JSONObject jSONObject = (JSONObject) obj;
        final Object obj2 = jSONObject.get("type");
        if (Intrinsics.areEqual(obj2, expectedPropertyType)) {
            return jSONObject.get("value");
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.models.FeatureFlag$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return FeatureFlag.getValue$lambda$1(expectedPropertyType, obj2);
            }
        }, 6, (Object) null);
        return null;
    }

    @Override // com.braze.models.IPutIntoJson
    /* JADX INFO: renamed from: forJsonPut, reason: avoid collision after fix types in other method */
    public JSONObject getPropertiesJSONObject() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", this.id);
            jSONObject.put(ENABLED, this.enabled);
            jSONObject.put(PROPERTIES, this.properties);
            jSONObject.put(TRACKING_STRING, this.trackingString);
        } catch (JSONException e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.models.FeatureFlag$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return FeatureFlag.forJsonPut$lambda$0();
                }
            }, 4, (Object) null);
        }
        return jSONObject;
    }

    public /* synthetic */ FeatureFlag(String str, boolean z, JSONObject jSONObject, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, z, jSONObject, (i & 8) != 0 ? null : str2);
    }
}
