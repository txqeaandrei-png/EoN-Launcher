package com.braze.support;

import com.braze.enums.inappmessage.MessageType;
import com.braze.models.inappmessage.InAppMessageBase;
import com.braze.models.inappmessage.InAppMessageControl;
import com.braze.models.inappmessage.InAppMessageFull;
import com.braze.models.inappmessage.InAppMessageHtml;
import com.braze.models.inappmessage.InAppMessageHtmlFull;
import com.braze.models.inappmessage.InAppMessageModal;
import com.braze.models.inappmessage.InAppMessageSlideup;
import java.util.Locale;
import java.util.NoSuchElementException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class n {
    public static final String a = BrazeLogger.INSTANCE.getBrazeLogTag("InAppMessageModelUtils");

    public static final InAppMessageBase a(final JSONObject inAppMessageJson, com.braze.managers.m brazeManager) {
        MessageType messageType;
        InAppMessageBase inAppMessageFull;
        Intrinsics.checkNotNullParameter(inAppMessageJson, "inAppMessageJson");
        Intrinsics.checkNotNullParameter(brazeManager, "brazeManager");
        try {
            Intrinsics.checkNotNullParameter(inAppMessageJson, "inAppMessageJson");
            int i = 0;
            if (inAppMessageJson.optBoolean("is_control", false)) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, a, BrazeLogger.Priority.D, (Throwable) null, false, new Function0() { // from class: com.braze.support.n$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return n.a();
                    }
                }, 12, (Object) null);
                return new InAppMessageControl(inAppMessageJson, brazeManager);
            }
            try {
                String string = inAppMessageJson.getString("type");
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                Locale US = Locale.US;
                Intrinsics.checkNotNullExpressionValue(US, "US");
                String upperCase = string.toUpperCase(US);
                Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                MessageType[] messageTypeArrValues = MessageType.values();
                int length = messageTypeArrValues.length;
                while (true) {
                    if (i >= length) {
                        throw new NoSuchElementException("Array contains no element matching the predicate.");
                    }
                    messageType = messageTypeArrValues[i];
                    if (Intrinsics.areEqual(messageType.name(), upperCase)) {
                        break;
                    }
                    i++;
                }
            } catch (Exception unused) {
                messageType = null;
            }
            if (messageType == null) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, a, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.support.n$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return n.a(inAppMessageJson);
                    }
                }, 12, (Object) null);
                return null;
            }
            int i2 = m.a[messageType.ordinal()];
            if (i2 == 1) {
                inAppMessageFull = new InAppMessageFull(inAppMessageJson, brazeManager);
            } else if (i2 == 2) {
                inAppMessageFull = new InAppMessageModal(inAppMessageJson, brazeManager);
            } else if (i2 == 3) {
                inAppMessageFull = new InAppMessageSlideup(inAppMessageJson, brazeManager);
            } else if (i2 == 4) {
                inAppMessageFull = new InAppMessageHtmlFull(inAppMessageJson, brazeManager);
            } else {
                if (i2 != 5) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, a, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.support.n$$ExternalSyntheticLambda4
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return n.b(inAppMessageJson);
                        }
                    }, 12, (Object) null);
                    return null;
                }
                inAppMessageFull = new InAppMessageHtml(inAppMessageJson, brazeManager);
            }
            return inAppMessageFull;
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, a, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.support.n$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return n.c(inAppMessageJson);
                }
            }, 8, (Object) null);
            return null;
        }
    }

    public static final String b() {
        return "In-app message string was blank.";
    }

    public static final String c(JSONObject jSONObject) {
        return "Failed to deserialize the in-app message: " + JsonUtils.getPrettyPrintedString(jSONObject) + ". Returning null.";
    }

    public static final String b(JSONObject jSONObject) {
        return "Unknown in-app message type. Returning null: " + JsonUtils.getPrettyPrintedString(jSONObject);
    }

    public static final String a(String str) {
        return com.braze.j.a("Failed to deserialize the in-app message string: ", str);
    }

    public static final InAppMessageBase a(final String inAppMessageJsonString, com.braze.managers.m brazeManager) {
        Intrinsics.checkNotNullParameter(inAppMessageJsonString, "inAppMessageJsonString");
        Intrinsics.checkNotNullParameter(brazeManager, "brazeManager");
        if (StringsKt.isBlank(inAppMessageJsonString)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, a, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.support.n$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return n.b();
                }
            }, 12, (Object) null);
            return null;
        }
        try {
            return a(new JSONObject(inAppMessageJsonString), brazeManager);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, a, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.support.n$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return n.a(inAppMessageJsonString);
                }
            }, 8, (Object) null);
            return null;
        }
    }

    public static final String a() {
        return "Deserializing control in-app message.";
    }

    public static final String a(JSONObject jSONObject) {
        return "In-app message type was unknown for in-app message: " + JsonUtils.getPrettyPrintedString(jSONObject);
    }
}
