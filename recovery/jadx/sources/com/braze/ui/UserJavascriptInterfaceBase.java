package com.braze.ui;

import android.content.Context;
import android.webkit.JavascriptInterface;
import com.braze.Braze;
import com.braze.BrazeUser;
import com.braze.enums.Gender;
import com.braze.enums.Month;
import com.braze.enums.NotificationSubscriptionType;
import com.braze.events.IValueCallback;
import com.braze.models.IBrazeLocation;
import com.braze.support.BrazeLogger;
import com.google.firebase.messaging.Constants;
import java.util.ArrayList;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u001b\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018\u0000 B2\u00020\u0001:\u0001BB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0007J\u0012\u0010\n\u001a\u00020\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\tH\u0007J\u0012\u0010\f\u001a\u00020\u00072\b\u0010\r\u001a\u0004\u0018\u00010\tH\u0007J\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\tH\u0007J \u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\tH\u0007J\u0012\u0010\u0014\u001a\u00020\u00072\b\u0010\u0015\u001a\u0004\u0018\u00010\tH\u0007J\u0012\u0010\u0016\u001a\u00020\u00072\b\u0010\u0017\u001a\u0004\u0018\u00010\tH\u0007J\u0012\u0010\u0018\u001a\u00020\u00072\b\u0010\u0019\u001a\u0004\u0018\u00010\tH\u0007J\u0010\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\tH\u0007J\u0010\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\tH\u0007J\u0012\u0010\u001d\u001a\u00020\u00072\b\u0010\u001e\u001a\u0004\u0018\u00010\tH\u0007J\u0012\u0010\u001f\u001a\u00020\u00072\b\u0010 \u001a\u0004\u0018\u00010\tH\u0007J \u0010!\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020\t2\u0006\u0010#\u001a\u00020\t2\u0006\u0010$\u001a\u00020%H\u0007J\u001a\u0010&\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020\t2\b\u0010'\u001a\u0004\u0018\u00010\tH\u0007J\u0018\u0010(\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020\t2\u0006\u0010)\u001a\u00020\tH\u0007J\u0018\u0010*\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020\t2\u0006\u0010)\u001a\u00020\tH\u0007J\u0018\u0010+\u001a\u00020\u00072\u0006\u0010,\u001a\u00020\t2\u0006\u0010)\u001a\u00020\tH\u0007J \u0010-\u001a\u00020\u00072\u0006\u0010,\u001a\u00020\t2\u0006\u0010.\u001a\u00020\t2\u0006\u0010/\u001a\u00020\tH\u0007J\u0018\u00100\u001a\u00020\u00072\u0006\u00101\u001a\u00020\t2\u0006\u00102\u001a\u00020\tH\u0007J\u0010\u00103\u001a\u00020\u00072\u0006\u00104\u001a\u00020\tH\u0007J\u0010\u00105\u001a\u00020\u00072\u0006\u00104\u001a\u00020\tH\u0007J\u0012\u00106\u001a\u0004\u0018\u0001072\u0006\u0010\u0012\u001a\u00020\tH\u0007J\u0014\u00108\u001a\u0004\u0018\u0001092\b\u0010\u001b\u001a\u0004\u0018\u00010\tH\u0007J(\u0010:\u001a\u00020\u00072\u0006\u0010;\u001a\u00020<2\u0006\u0010\"\u001a\u00020\t2\u0006\u0010#\u001a\u00020\t2\u0006\u0010$\u001a\u00020%H\u0007J!\u0010=\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010>2\b\u0010'\u001a\u0004\u0018\u00010\tH\u0007¢\u0006\u0002\u0010?J\u0012\u0010@\u001a\u0004\u0018\u00010A2\u0006\u0010\u000f\u001a\u00020\tH\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006C"}, d2 = {"Lcom/braze/ui/UserJavascriptInterfaceBase;", "", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "setFirstName", "", "firstName", "", "setLastName", "lastName", "setEmail", "email", "setGender", "genderString", "setDateOfBirth", "year", "month", "day", "setCountry", "country", "setLanguage", "language", "setHomeCity", "homeCity", "setEmailNotificationSubscriptionType", "subscriptionType", "setPushNotificationSubscriptionType", "setPhoneNumber", "phoneNumber", "setLineId", "lineId", "setCustomUserAttributeJSON", "key", "jsonStringValue", "merge", "", "setCustomUserAttributeArray", "jsonArrayString", "addToCustomAttributeArray", "value", "removeFromCustomAttributeArray", "incrementCustomUserAttribute", "attribute", "setCustomLocationAttribute", IBrazeLocation.LATITUDE, IBrazeLocation.LONGITUDE, "addAlias", "alias", Constants.ScionAnalytics.PARAM_LABEL, "addToSubscriptionGroup", "subscriptionGroupId", "removeFromSubscriptionGroup", "monthFromInt", "Lcom/braze/enums/Month;", "subscriptionTypeFromJavascriptString", "Lcom/braze/enums/NotificationSubscriptionType;", "setCustomAttribute", "user", "Lcom/braze/BrazeUser;", "parseStringArrayFromJsonString", "", "(Ljava/lang/String;)[Ljava/lang/String;", "parseGender", "Lcom/braze/enums/Gender;", "Companion", "android-sdk-ui_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class UserJavascriptInterfaceBase {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final String JS_BRIDGE_ATTRIBUTE_VALUE = "value";
    private final Context context;

    public UserJavascriptInterfaceBase(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    @JavascriptInterface
    public final void setFirstName(final String firstName) {
        INSTANCE.runOnUser(Braze.INSTANCE.getInstance(this.context), new Function1() { // from class: com.braze.ui.UserJavascriptInterfaceBase$$ExternalSyntheticLambda24
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UserJavascriptInterfaceBase.setFirstName$lambda$0(firstName, (BrazeUser) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setFirstName$lambda$0(String str, BrazeUser it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.setFirstName(str);
        return Unit.INSTANCE;
    }

    @JavascriptInterface
    public final void setLastName(final String lastName) {
        INSTANCE.runOnUser(Braze.INSTANCE.getInstance(this.context), new Function1() { // from class: com.braze.ui.UserJavascriptInterfaceBase$$ExternalSyntheticLambda32
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UserJavascriptInterfaceBase.setLastName$lambda$1(lastName, (BrazeUser) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setLastName$lambda$1(String str, BrazeUser it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.setLastName(str);
        return Unit.INSTANCE;
    }

    @JavascriptInterface
    public final void setEmail(final String email) {
        INSTANCE.runOnUser(Braze.INSTANCE.getInstance(this.context), new Function1() { // from class: com.braze.ui.UserJavascriptInterfaceBase$$ExternalSyntheticLambda28
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UserJavascriptInterfaceBase.setEmail$lambda$2(email, (BrazeUser) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setEmail$lambda$2(String str, BrazeUser it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.setEmail(str);
        return Unit.INSTANCE;
    }

    @JavascriptInterface
    public final void setGender(final String genderString) {
        Intrinsics.checkNotNullParameter(genderString, "genderString");
        final Gender gender = parseGender(genderString);
        if (gender == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.ui.UserJavascriptInterfaceBase$$ExternalSyntheticLambda12
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return UserJavascriptInterfaceBase.setGender$lambda$3(genderString);
                }
            }, 6, (Object) null);
        } else {
            INSTANCE.runOnUser(Braze.INSTANCE.getInstance(this.context), new Function1() { // from class: com.braze.ui.UserJavascriptInterfaceBase$$ExternalSyntheticLambda13
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return UserJavascriptInterfaceBase.setGender$lambda$4(gender, (BrazeUser) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setGender$lambda$3(String str) {
        return "Failed to parse gender in Braze HTML in-app message javascript interface with gender: " + str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setGender$lambda$4(Gender gender, BrazeUser it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.setGender(gender);
        return Unit.INSTANCE;
    }

    @JavascriptInterface
    public final void setDateOfBirth(final String year, final String month, final String day) {
        Intrinsics.checkNotNullParameter(year, "year");
        Intrinsics.checkNotNullParameter(month, "month");
        Intrinsics.checkNotNullParameter(day, "day");
        final Integer intOrNull = StringsKt.toIntOrNull(year);
        if (intOrNull == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.ui.UserJavascriptInterfaceBase$$ExternalSyntheticLambda33
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return UserJavascriptInterfaceBase.setDateOfBirth$lambda$5(year);
                }
            }, 6, (Object) null);
            return;
        }
        final Month monthMonthFromInt = monthFromInt(month);
        if (monthMonthFromInt == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.ui.UserJavascriptInterfaceBase$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return UserJavascriptInterfaceBase.setDateOfBirth$lambda$6(month);
                }
            }, 6, (Object) null);
            return;
        }
        final Integer intOrNull2 = StringsKt.toIntOrNull(day);
        if (intOrNull2 == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.ui.UserJavascriptInterfaceBase$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return UserJavascriptInterfaceBase.setDateOfBirth$lambda$7(day);
                }
            }, 6, (Object) null);
        } else {
            INSTANCE.runOnUser(Braze.INSTANCE.getInstance(this.context), new Function1() { // from class: com.braze.ui.UserJavascriptInterfaceBase$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return UserJavascriptInterfaceBase.setDateOfBirth$lambda$8(intOrNull, monthMonthFromInt, intOrNull2, (BrazeUser) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setDateOfBirth$lambda$5(String str) {
        return "Failed to parse setDateOfBirth year value '" + str + '\'';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setDateOfBirth$lambda$6(String str) {
        return "Failed to parse setDateOfBirth month for value " + str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setDateOfBirth$lambda$7(String str) {
        return "Failed to parse setDateOfBirth day value '" + str + '\'';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setDateOfBirth$lambda$8(Integer num, Month month, Integer num2, BrazeUser it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.setDateOfBirth(num.intValue(), month, num2.intValue());
        return Unit.INSTANCE;
    }

    @JavascriptInterface
    public final void setCountry(final String country) {
        INSTANCE.runOnUser(Braze.INSTANCE.getInstance(this.context), new Function1() { // from class: com.braze.ui.UserJavascriptInterfaceBase$$ExternalSyntheticLambda23
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UserJavascriptInterfaceBase.setCountry$lambda$9(country, (BrazeUser) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setCountry$lambda$9(String str, BrazeUser it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.setCountry(str);
        return Unit.INSTANCE;
    }

    @JavascriptInterface
    public final void setLanguage(final String language) {
        INSTANCE.runOnUser(Braze.INSTANCE.getInstance(this.context), new Function1() { // from class: com.braze.ui.UserJavascriptInterfaceBase$$ExternalSyntheticLambda14
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UserJavascriptInterfaceBase.setLanguage$lambda$10(language, (BrazeUser) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setLanguage$lambda$10(String str, BrazeUser it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.setLanguage(str);
        return Unit.INSTANCE;
    }

    @JavascriptInterface
    public final void setHomeCity(final String homeCity) {
        INSTANCE.runOnUser(Braze.INSTANCE.getInstance(this.context), new Function1() { // from class: com.braze.ui.UserJavascriptInterfaceBase$$ExternalSyntheticLambda25
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UserJavascriptInterfaceBase.setHomeCity$lambda$11(homeCity, (BrazeUser) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setHomeCity$lambda$11(String str, BrazeUser it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.setHomeCity(str);
        return Unit.INSTANCE;
    }

    @JavascriptInterface
    public final void setEmailNotificationSubscriptionType(final String subscriptionType) {
        Intrinsics.checkNotNullParameter(subscriptionType, "subscriptionType");
        final NotificationSubscriptionType notificationSubscriptionTypeSubscriptionTypeFromJavascriptString = subscriptionTypeFromJavascriptString(subscriptionType);
        if (notificationSubscriptionTypeSubscriptionTypeFromJavascriptString == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.ui.UserJavascriptInterfaceBase$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return UserJavascriptInterfaceBase.setEmailNotificationSubscriptionType$lambda$12(subscriptionType);
                }
            }, 6, (Object) null);
        } else {
            INSTANCE.runOnUser(Braze.INSTANCE.getInstance(this.context), new Function1() { // from class: com.braze.ui.UserJavascriptInterfaceBase$$ExternalSyntheticLambda11
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return UserJavascriptInterfaceBase.setEmailNotificationSubscriptionType$lambda$13(notificationSubscriptionTypeSubscriptionTypeFromJavascriptString, (BrazeUser) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setEmailNotificationSubscriptionType$lambda$12(String str) {
        return "Failed to parse email subscription type in Braze HTML in-app message javascript interface with subscription " + str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setEmailNotificationSubscriptionType$lambda$13(NotificationSubscriptionType notificationSubscriptionType, BrazeUser it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.setEmailNotificationSubscriptionType(notificationSubscriptionType);
        return Unit.INSTANCE;
    }

    @JavascriptInterface
    public final void setPushNotificationSubscriptionType(final String subscriptionType) {
        Intrinsics.checkNotNullParameter(subscriptionType, "subscriptionType");
        final NotificationSubscriptionType notificationSubscriptionTypeSubscriptionTypeFromJavascriptString = subscriptionTypeFromJavascriptString(subscriptionType);
        if (notificationSubscriptionTypeSubscriptionTypeFromJavascriptString == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.ui.UserJavascriptInterfaceBase$$ExternalSyntheticLambda22
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return UserJavascriptInterfaceBase.setPushNotificationSubscriptionType$lambda$14(subscriptionType);
                }
            }, 6, (Object) null);
        } else {
            INSTANCE.runOnUser(Braze.INSTANCE.getInstance(this.context), new Function1() { // from class: com.braze.ui.UserJavascriptInterfaceBase$$ExternalSyntheticLambda27
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return UserJavascriptInterfaceBase.setPushNotificationSubscriptionType$lambda$15(notificationSubscriptionTypeSubscriptionTypeFromJavascriptString, (BrazeUser) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setPushNotificationSubscriptionType$lambda$14(String str) {
        return "Failed to parse push subscription type in Braze HTML in-app message javascript interface with subscription: " + str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setPushNotificationSubscriptionType$lambda$15(NotificationSubscriptionType notificationSubscriptionType, BrazeUser it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.setPushNotificationSubscriptionType(notificationSubscriptionType);
        return Unit.INSTANCE;
    }

    @JavascriptInterface
    public final void setPhoneNumber(final String phoneNumber) {
        INSTANCE.runOnUser(Braze.INSTANCE.getInstance(this.context), new Function1() { // from class: com.braze.ui.UserJavascriptInterfaceBase$$ExternalSyntheticLambda26
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UserJavascriptInterfaceBase.setPhoneNumber$lambda$16(phoneNumber, (BrazeUser) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setPhoneNumber$lambda$16(String str, BrazeUser it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.setPhoneNumber(str);
        return Unit.INSTANCE;
    }

    @JavascriptInterface
    public final void setLineId(final String lineId) {
        INSTANCE.runOnUser(Braze.INSTANCE.getInstance(this.context), new Function1() { // from class: com.braze.ui.UserJavascriptInterfaceBase$$ExternalSyntheticLambda31
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UserJavascriptInterfaceBase.setLineId$lambda$17(lineId, (BrazeUser) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setLineId$lambda$17(String str, BrazeUser it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.setLineId(str);
        return Unit.INSTANCE;
    }

    @JavascriptInterface
    public final void setCustomUserAttributeJSON(final String key, final String jsonStringValue, final boolean merge) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(jsonStringValue, "jsonStringValue");
        INSTANCE.runOnUser(Braze.INSTANCE.getInstance(this.context), new Function1() { // from class: com.braze.ui.UserJavascriptInterfaceBase$$ExternalSyntheticLambda18
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UserJavascriptInterfaceBase.setCustomUserAttributeJSON$lambda$18(this.f$0, key, jsonStringValue, merge, (BrazeUser) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setCustomUserAttributeJSON$lambda$18(UserJavascriptInterfaceBase userJavascriptInterfaceBase, String str, String str2, boolean z, BrazeUser it) {
        Intrinsics.checkNotNullParameter(it, "it");
        userJavascriptInterfaceBase.setCustomAttribute(it, str, str2, z);
        return Unit.INSTANCE;
    }

    @JavascriptInterface
    public final void setCustomUserAttributeArray(final String key, String jsonArrayString) {
        Intrinsics.checkNotNullParameter(key, "key");
        final String[] stringArrayFromJsonString = parseStringArrayFromJsonString(jsonArrayString);
        if (stringArrayFromJsonString == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.ui.UserJavascriptInterfaceBase$$ExternalSyntheticLambda15
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return UserJavascriptInterfaceBase.setCustomUserAttributeArray$lambda$19(key);
                }
            }, 6, (Object) null);
        } else {
            INSTANCE.runOnUser(Braze.INSTANCE.getInstance(this.context), new Function1() { // from class: com.braze.ui.UserJavascriptInterfaceBase$$ExternalSyntheticLambda16
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return UserJavascriptInterfaceBase.setCustomUserAttributeArray$lambda$20(key, stringArrayFromJsonString, (BrazeUser) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setCustomUserAttributeArray$lambda$19(String str) {
        return "Failed to set custom attribute array for key " + str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setCustomUserAttributeArray$lambda$20(String str, String[] strArr, BrazeUser it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.setCustomAttributeArray(str, strArr);
        return Unit.INSTANCE;
    }

    @JavascriptInterface
    public final void addToCustomAttributeArray(final String key, final String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        INSTANCE.runOnUser(Braze.INSTANCE.getInstance(this.context), new Function1() { // from class: com.braze.ui.UserJavascriptInterfaceBase$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UserJavascriptInterfaceBase.addToCustomAttributeArray$lambda$21(key, value, (BrazeUser) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit addToCustomAttributeArray$lambda$21(String str, String str2, BrazeUser it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.addToCustomAttributeArray(str, str2);
        return Unit.INSTANCE;
    }

    @JavascriptInterface
    public final void removeFromCustomAttributeArray(final String key, final String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        INSTANCE.runOnUser(Braze.INSTANCE.getInstance(this.context), new Function1() { // from class: com.braze.ui.UserJavascriptInterfaceBase$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UserJavascriptInterfaceBase.removeFromCustomAttributeArray$lambda$22(key, value, (BrazeUser) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit removeFromCustomAttributeArray$lambda$22(String str, String str2, BrazeUser it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.removeFromCustomAttributeArray(str, str2);
        return Unit.INSTANCE;
    }

    @JavascriptInterface
    public final void incrementCustomUserAttribute(final String attribute, final String value) {
        Intrinsics.checkNotNullParameter(attribute, "attribute");
        Intrinsics.checkNotNullParameter(value, "value");
        final Integer intOrNull = StringsKt.toIntOrNull(value);
        if (intOrNull == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.ui.UserJavascriptInterfaceBase$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return UserJavascriptInterfaceBase.incrementCustomUserAttribute$lambda$23(value);
                }
            }, 6, (Object) null);
        } else {
            INSTANCE.runOnUser(Braze.INSTANCE.getInstance(this.context), new Function1() { // from class: com.braze.ui.UserJavascriptInterfaceBase$$ExternalSyntheticLambda10
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return UserJavascriptInterfaceBase.incrementCustomUserAttribute$lambda$24(attribute, intOrNull, (BrazeUser) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String incrementCustomUserAttribute$lambda$23(String str) {
        return "Failed to parse incrementCustomUserAttribute increment value '" + str + '\'';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit incrementCustomUserAttribute$lambda$24(String str, Integer num, BrazeUser it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.incrementCustomUserAttribute(str, num.intValue());
        return Unit.INSTANCE;
    }

    @JavascriptInterface
    public final void setCustomLocationAttribute(final String attribute, final String latitude, final String longitude) {
        Intrinsics.checkNotNullParameter(attribute, "attribute");
        Intrinsics.checkNotNullParameter(latitude, "latitude");
        Intrinsics.checkNotNullParameter(longitude, "longitude");
        final Double doubleOrNull = StringsKt.toDoubleOrNull(latitude);
        if (doubleOrNull == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.ui.UserJavascriptInterfaceBase$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return UserJavascriptInterfaceBase.setCustomLocationAttribute$lambda$25(latitude);
                }
            }, 6, (Object) null);
            return;
        }
        final Double doubleOrNull2 = StringsKt.toDoubleOrNull(longitude);
        if (doubleOrNull2 == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.ui.UserJavascriptInterfaceBase$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return UserJavascriptInterfaceBase.setCustomLocationAttribute$lambda$26(longitude);
                }
            }, 6, (Object) null);
        } else {
            INSTANCE.runOnUser(Braze.INSTANCE.getInstance(this.context), new Function1() { // from class: com.braze.ui.UserJavascriptInterfaceBase$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return UserJavascriptInterfaceBase.setCustomLocationAttribute$lambda$27(attribute, doubleOrNull, doubleOrNull2, (BrazeUser) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setCustomLocationAttribute$lambda$25(String str) {
        return "Failed to parse setCustomLocationAttribute latitude value '" + str + '\'';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setCustomLocationAttribute$lambda$26(String str) {
        return "Failed to parse setCustomLocationAttribute longitude value '" + str + '\'';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setCustomLocationAttribute$lambda$27(String str, Double d, Double d2, BrazeUser it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.setLocationCustomAttribute(str, d.doubleValue(), d2.doubleValue());
        return Unit.INSTANCE;
    }

    @JavascriptInterface
    public final void addAlias(final String alias, final String label) {
        Intrinsics.checkNotNullParameter(alias, "alias");
        Intrinsics.checkNotNullParameter(label, "label");
        INSTANCE.runOnUser(Braze.INSTANCE.getInstance(this.context), new Function1() { // from class: com.braze.ui.UserJavascriptInterfaceBase$$ExternalSyntheticLambda30
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UserJavascriptInterfaceBase.addAlias$lambda$28(alias, label, (BrazeUser) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit addAlias$lambda$28(String str, String str2, BrazeUser it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.addAlias(str, str2);
        return Unit.INSTANCE;
    }

    @JavascriptInterface
    public final void addToSubscriptionGroup(final String subscriptionGroupId) {
        Intrinsics.checkNotNullParameter(subscriptionGroupId, "subscriptionGroupId");
        INSTANCE.runOnUser(Braze.INSTANCE.getInstance(this.context), new Function1() { // from class: com.braze.ui.UserJavascriptInterfaceBase$$ExternalSyntheticLambda17
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UserJavascriptInterfaceBase.addToSubscriptionGroup$lambda$29(subscriptionGroupId, (BrazeUser) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit addToSubscriptionGroup$lambda$29(String str, BrazeUser it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.addToSubscriptionGroup(str);
        return Unit.INSTANCE;
    }

    @JavascriptInterface
    public final void removeFromSubscriptionGroup(final String subscriptionGroupId) {
        Intrinsics.checkNotNullParameter(subscriptionGroupId, "subscriptionGroupId");
        INSTANCE.runOnUser(Braze.INSTANCE.getInstance(this.context), new Function1() { // from class: com.braze.ui.UserJavascriptInterfaceBase$$ExternalSyntheticLambda19
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UserJavascriptInterfaceBase.removeFromSubscriptionGroup$lambda$30(subscriptionGroupId, (BrazeUser) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit removeFromSubscriptionGroup$lambda$30(String str, BrazeUser it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.removeFromSubscriptionGroup(str);
        return Unit.INSTANCE;
    }

    public final Month monthFromInt(String month) {
        int iIntValue;
        Intrinsics.checkNotNullParameter(month, "month");
        Integer intOrNull = StringsKt.toIntOrNull(month);
        if (intOrNull == null || (iIntValue = intOrNull.intValue()) < 1 || iIntValue > 12) {
            return null;
        }
        return Month.INSTANCE.getMonth(iIntValue - 1);
    }

    public final NotificationSubscriptionType subscriptionTypeFromJavascriptString(String subscriptionType) {
        return NotificationSubscriptionType.INSTANCE.fromValue(subscriptionType);
    }

    public final void setCustomAttribute(BrazeUser user, final String key, final String jsonStringValue, boolean merge) {
        Intrinsics.checkNotNullParameter(user, "user");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(jsonStringValue, "jsonStringValue");
        try {
            Object obj = new JSONObject(jsonStringValue).get("value");
            if (obj instanceof String) {
                user.setCustomUserAttribute(key, (String) obj);
            } else if (obj instanceof Boolean) {
                user.setCustomUserAttribute(key, ((Boolean) obj).booleanValue());
            } else if (obj instanceof Integer) {
                user.setCustomUserAttribute(key, ((Number) obj).intValue());
            } else if (obj instanceof Double) {
                user.setCustomUserAttribute(key, ((Number) obj).doubleValue());
            } else if (obj instanceof JSONObject) {
                user.setCustomUserAttribute(key, (JSONObject) obj, merge);
            } else {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.ui.UserJavascriptInterfaceBase$$ExternalSyntheticLambda20
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return UserJavascriptInterfaceBase.setCustomAttribute$lambda$31(key, jsonStringValue);
                    }
                }, 6, (Object) null);
            }
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.ui.UserJavascriptInterfaceBase$$ExternalSyntheticLambda21
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return UserJavascriptInterfaceBase.setCustomAttribute$lambda$32(key, jsonStringValue);
                }
            }, 4, (Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setCustomAttribute$lambda$31(String str, String str2) {
        return "Failed to parse custom attribute type for key: " + str + " and json string value: " + str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setCustomAttribute$lambda$32(String str, String str2) {
        return "Failed to parse custom attribute type for key: " + str + " and json string value: " + str2;
    }

    public final String[] parseStringArrayFromJsonString(String jsonArrayString) {
        try {
            JSONArray jSONArray = new JSONArray(jsonArrayString);
            int length = jSONArray.length();
            ArrayList arrayList = new ArrayList(length);
            for (int i = 0; i < length; i++) {
                arrayList.add(jSONArray.getString(i));
            }
            return (String[]) arrayList.toArray(new String[0]);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.ui.UserJavascriptInterfaceBase$$ExternalSyntheticLambda29
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return UserJavascriptInterfaceBase.parseStringArrayFromJsonString$lambda$34();
                }
            }, 4, (Object) null);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String parseStringArrayFromJsonString$lambda$34() {
        return "Failed to parse custom attribute array";
    }

    public final Gender parseGender(String genderString) {
        Intrinsics.checkNotNullParameter(genderString, "genderString");
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String lowerCase = genderString.toLowerCase(US);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        if (Intrinsics.areEqual(lowerCase, Gender.MALE.getKey())) {
            return Gender.MALE;
        }
        if (Intrinsics.areEqual(lowerCase, Gender.FEMALE.getKey())) {
            return Gender.FEMALE;
        }
        if (Intrinsics.areEqual(lowerCase, Gender.OTHER.getKey())) {
            return Gender.OTHER;
        }
        if (Intrinsics.areEqual(lowerCase, Gender.UNKNOWN.getKey())) {
            return Gender.UNKNOWN;
        }
        if (Intrinsics.areEqual(lowerCase, Gender.NOT_APPLICABLE.getKey())) {
            return Gender.NOT_APPLICABLE;
        }
        if (Intrinsics.areEqual(lowerCase, Gender.PREFER_NOT_TO_SAY.getKey())) {
            return Gender.PREFER_NOT_TO_SAY;
        }
        return null;
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J/\u0010\u0006\u001a\u00020\u0007*\u00020\b2!\u0010\t\u001a\u001d\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u00070\nH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/braze/ui/UserJavascriptInterfaceBase$Companion;", "", "<init>", "()V", "JS_BRIDGE_ATTRIBUTE_VALUE", "", "runOnUser", "", "Lcom/braze/Braze;", "block", "Lkotlin/Function1;", "Lcom/braze/BrazeUser;", "Lkotlin/ParameterName;", "name", "user", "android-sdk-ui_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void runOnUser(Braze braze, final Function1<? super BrazeUser, Unit> function1) {
            braze.getCurrentUser(new IValueCallback() { // from class: com.braze.ui.UserJavascriptInterfaceBase$Companion$$ExternalSyntheticLambda0
                @Override // com.braze.events.IValueCallback
                public final void onSuccess(Object obj) {
                    UserJavascriptInterfaceBase.Companion.runOnUser$lambda$0(function1, (BrazeUser) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void runOnUser$lambda$0(Function1 function1, BrazeUser it) {
            Intrinsics.checkNotNullParameter(it, "it");
            function1.invoke(it);
        }
    }
}
