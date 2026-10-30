package com.braze.models.outgoing;

import com.braze.Constants;
import com.braze.enums.BrazeDateFormat;
import com.braze.models.IPutIntoJson;
import com.braze.support.BrazeLogger;
import com.braze.support.DateTimeUtils;
import com.braze.support.StringUtils;
import com.braze.support.ValidationUtils;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0006\b\u0007\u0018\u0000 )2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001*B\t\b\u0016¢\u0006\u0004\b\u0003\u0010\u0004B\u0011\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0006B\u001b\b\u0016\u0012\u0010\u0010\t\u001a\f\u0012\u0004\u0012\u00020\b\u0012\u0002\b\u00030\u0007¢\u0006\u0004\b\u0003\u0010\nJ!\u0010\r\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u0004\u0018\u00010\u0000¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\bH\u0007¢\u0006\u0004\b\u0016\u0010\u0017J\u0019\u0010\u0018\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u000f\u001a\u00020\bH\u0007¢\u0006\u0004\b\u0018\u0010\u0019J\u001a\u0010\u001a\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u000f\u001a\u00020\bH\u0087\u0002¢\u0006\u0004\b\u001a\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001b\u0010\u001cR\u0016\u0010\u001d\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0011\u0010\"\u001a\u00020\u001f8F¢\u0006\u0006\u001a\u0004\b \u0010!R\u0011\u0010#\u001a\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b#\u0010$R\u0011\u0010(\u001a\u00020%8G¢\u0006\u0006\u001a\u0004\b&\u0010'¨\u0006+"}, d2 = {"Lcom/braze/models/outgoing/BrazeProperties;", "Lcom/braze/models/IPutIntoJson;", "Lorg/json/JSONObject;", "<init>", "()V", "jsonObject", "(Lorg/json/JSONObject;)V", "", "", "map", "(Ljava/util/Map;)V", "", "doKeyValidation", "clean", "(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;", "key", "", "value", "addProperty", "(Ljava/lang/String;Ljava/lang/Object;)Lcom/braze/models/outgoing/BrazeProperties;", "clone", "()Lcom/braze/models/outgoing/BrazeProperties;", "containsProperty", "(Ljava/lang/String;)Z", "removeProperty", "(Ljava/lang/String;)Ljava/lang/Object;", "get", "forJsonPut", "()Lorg/json/JSONObject;", "propertiesJSONObject", "Lorg/json/JSONObject;", "", "getSize", "()I", "size", "isInvalid", "()Z", "", "getByteSize", "()J", "byteSize", "Companion", "com/braze/models/outgoing/d", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class BrazeProperties implements IPutIntoJson<JSONObject> {
    public static final d Companion = new d();
    private JSONObject propertiesJSONObject;

    public BrazeProperties() {
        this.propertiesJSONObject = new JSONObject();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String addProperty$lambda$0(String str) {
        return com.braze.b.a("Value type is not supported. Cannot add property ", str, '.');
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String addProperty$lambda$1() {
        return "Caught json exception trying to add property.";
    }

    private final JSONObject clean(JSONObject jsonObject, boolean doKeyValidation) throws JSONException {
        ArrayList<String> arrayList = new ArrayList();
        Iterator<String> itKeys = jsonObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Intrinsics.checkNotNullExpressionValue(next, "next(...)");
            arrayList.add(next);
        }
        for (String str : arrayList) {
            if (!doKeyValidation || Companion.a(str)) {
                Object obj = jsonObject.get(str);
                if (obj instanceof Date) {
                    jsonObject.put(str, DateTimeUtils.formatDate$default((Date) obj, BrazeDateFormat.LONG, null, 2, null));
                }
                if (obj instanceof JSONArray) {
                    jsonObject.put(str, e.a((JSONArray) obj));
                }
                if (obj instanceof JSONObject) {
                    jsonObject.put(str, clean((JSONObject) obj, false));
                }
            } else {
                jsonObject.remove(str);
            }
        }
        return jsonObject;
    }

    public static /* synthetic */ JSONObject clean$default(BrazeProperties brazeProperties, JSONObject jSONObject, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return brazeProperties.clean(jSONObject, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String clone$lambda$2() {
        return "Failed to clone BrazeProperties";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String get$lambda$3() {
        return "Caught json exception trying to get property.";
    }

    @JvmStatic
    public static final boolean isValidKey(String str) {
        return Companion.a(str);
    }

    public final BrazeProperties addProperty(final String key, Object value) {
        Intrinsics.checkNotNullParameter(key, "key");
        if (!Companion.a(key)) {
            return this;
        }
        try {
            if (value instanceof Long) {
                this.propertiesJSONObject.put(ValidationUtils.ensureBrazeFieldLength(key), ((Number) value).longValue());
            } else if (value instanceof Integer) {
                this.propertiesJSONObject.put(ValidationUtils.ensureBrazeFieldLength(key), ((Number) value).intValue());
            } else if (value instanceof Double) {
                this.propertiesJSONObject.put(ValidationUtils.ensureBrazeFieldLength(key), ((Number) value).doubleValue());
            } else if (value instanceof Boolean) {
                this.propertiesJSONObject.put(ValidationUtils.ensureBrazeFieldLength(key), ((Boolean) value).booleanValue());
            } else if (value instanceof Date) {
                this.propertiesJSONObject.put(ValidationUtils.ensureBrazeFieldLength(key), DateTimeUtils.formatDate$default((Date) value, BrazeDateFormat.LONG, null, 2, null));
            } else if (value instanceof String) {
                this.propertiesJSONObject.put(ValidationUtils.ensureBrazeFieldLength(key), ValidationUtils.ensureBrazeFieldLength((String) value));
            } else if (value instanceof JSONArray) {
                this.propertiesJSONObject.put(ValidationUtils.ensureBrazeFieldLength(key), e.a((JSONArray) value));
            } else if (value instanceof JSONObject) {
                this.propertiesJSONObject.put(ValidationUtils.ensureBrazeFieldLength(key), clean$default(this, (JSONObject) value, false, 2, null));
            } else if (value instanceof Map) {
                this.propertiesJSONObject.put(ValidationUtils.ensureBrazeFieldLength(key), clean$default(this, new JSONObject(e.a((Map) value)), false, 2, null));
            } else if (value == null) {
                this.propertiesJSONObject.put(ValidationUtils.ensureBrazeFieldLength(key), JSONObject.NULL);
            } else {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.models.outgoing.BrazeProperties$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeProperties.addProperty$lambda$0(key);
                    }
                }, 6, (Object) null);
                Unit unit = Unit.INSTANCE;
            }
        } catch (JSONException e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.models.outgoing.BrazeProperties$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeProperties.addProperty$lambda$1();
                }
            }, 4, (Object) null);
        }
        return this;
    }

    public final BrazeProperties clone() {
        try {
            return new BrazeProperties(new JSONObject(getJsonKey().toString()));
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.models.outgoing.BrazeProperties$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeProperties.clone$lambda$2();
                }
            }, 4, (Object) null);
            return null;
        }
    }

    public final boolean containsProperty(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.propertiesJSONObject.has(key);
    }

    public final Object get(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            return this.propertiesJSONObject.get(key);
        } catch (JSONException e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.models.outgoing.BrazeProperties$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeProperties.get$lambda$3();
                }
            }, 4, (Object) null);
            return null;
        }
    }

    public final long getByteSize() {
        String string = this.propertiesJSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return StringUtils.getByteSize(string);
    }

    public final int getSize() {
        return this.propertiesJSONObject.length();
    }

    public final boolean isInvalid() {
        return getByteSize() > Constants.EVENT_PROPERTIES_MAX_SIZE_BYTES;
    }

    public final Object removeProperty(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.propertiesJSONObject.remove(key);
    }

    @Override // com.braze.models.IPutIntoJson
    /* JADX INFO: renamed from: forJsonPut, reason: avoid collision after fix types in other method and from getter */
    public JSONObject getJsonKey() {
        return this.propertiesJSONObject;
    }

    public BrazeProperties(JSONObject jsonObject) {
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        this.propertiesJSONObject = new JSONObject();
        this.propertiesJSONObject = clean$default(this, jsonObject, false, 2, null);
    }

    public BrazeProperties(Map<String, ?> map) {
        Intrinsics.checkNotNullParameter(map, "map");
        this.propertiesJSONObject = new JSONObject();
        this.propertiesJSONObject = clean$default(this, new JSONObject(e.a(map)), false, 2, null);
    }
}
