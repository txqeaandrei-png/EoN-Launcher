package com.braze;

import com.braze.enums.BrazeDateFormat;
import com.braze.enums.Gender;
import com.braze.enums.Month;
import com.braze.enums.NotificationSubscriptionType;
import com.braze.models.IBrazeLocation;
import com.braze.models.outgoing.AttributionData;
import com.braze.models.outgoing.BrazeLocation;
import com.braze.support.BrazeLogger;
import com.braze.support.DateTimeUtils;
import com.braze.support.JsonUtils;
import com.braze.support.ValidationUtils;
import java.util.ArrayList;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import org.apache.commons.codec.language.Soundex;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B1\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ\u001d\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\u00102\b\u0010\u0016\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0017\u0010\u0015J\u0017\u0010\u0019\u001a\u00020\u00102\b\u0010\u0018\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0019\u0010\u0015J\u0015\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001c\u0010\u001dJ%\u0010#\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u001e¢\u0006\u0004\b#\u0010$J\u0017\u0010&\u001a\u00020\u00102\b\u0010%\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b&\u0010\u0015J\u0017\u0010(\u001a\u00020\u00102\b\u0010'\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b(\u0010\u0015J\u0017\u0010*\u001a\u00020\u00102\b\u0010)\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b*\u0010\u0015J\u0015\u0010-\u001a\u00020\u00102\u0006\u0010,\u001a\u00020+¢\u0006\u0004\b-\u0010.J\u0015\u00100\u001a\u00020\u00102\u0006\u0010/\u001a\u00020+¢\u0006\u0004\b0\u0010.J\u0015\u00102\u001a\u00020\u00102\u0006\u00101\u001a\u00020\u0006¢\u0006\u0004\b2\u0010\u0015J\u0015\u00103\u001a\u00020\u00102\u0006\u00101\u001a\u00020\u0006¢\u0006\u0004\b3\u0010\u0015J\u0017\u00105\u001a\u00020\u00102\b\u00104\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b5\u0010\u0015J\u0017\u00107\u001a\u00020\u00102\b\u00106\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b7\u0010\u0015J\u001d\u0010:\u001a\u00020\u00102\u0006\u00108\u001a\u00020\u00062\u0006\u00109\u001a\u00020\u0010¢\u0006\u0004\b:\u0010;J\u001d\u0010:\u001a\u00020\u00102\u0006\u00108\u001a\u00020\u00062\u0006\u00109\u001a\u00020\u001e¢\u0006\u0004\b:\u0010<J\u001d\u0010:\u001a\u00020\u00102\u0006\u00108\u001a\u00020\u00062\u0006\u00109\u001a\u00020=¢\u0006\u0004\b:\u0010>J\u001d\u0010:\u001a\u00020\u00102\u0006\u00108\u001a\u00020\u00062\u0006\u00109\u001a\u00020?¢\u0006\u0004\b:\u0010@J\u001d\u0010:\u001a\u00020\u00102\u0006\u00108\u001a\u00020\u00062\u0006\u00109\u001a\u00020\u0006¢\u0006\u0004\b:\u0010\u0012J\u001d\u0010:\u001a\u00020\u00102\u0006\u00108\u001a\u00020\u00062\u0006\u00109\u001a\u00020A¢\u0006\u0004\b:\u0010BJ)\u0010:\u001a\u00020\u00102\u0006\u00108\u001a\u00020\u00062\u0006\u00109\u001a\u00020C2\b\b\u0002\u0010D\u001a\u00020\u0010H\u0007¢\u0006\u0004\b:\u0010EJ\u001d\u0010:\u001a\u00020\u00102\u0006\u00108\u001a\u00020\u00062\u0006\u00109\u001a\u00020F¢\u0006\u0004\b:\u0010GJ\u001d\u0010H\u001a\u00020\u00102\u0006\u00108\u001a\u00020\u00062\u0006\u00109\u001a\u00020\u0006¢\u0006\u0004\bH\u0010\u0012J\u001d\u0010I\u001a\u00020\u00102\u0006\u00108\u001a\u00020\u00062\u0006\u00109\u001a\u00020\u0006¢\u0006\u0004\bI\u0010\u0012J%\u0010L\u001a\u00020\u00102\u0006\u00108\u001a\u00020\u00062\u000e\u0010K\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060J¢\u0006\u0004\bL\u0010MJ\u0015\u0010N\u001a\u00020\u00102\u0006\u00108\u001a\u00020\u0006¢\u0006\u0004\bN\u0010\u0015J\u001d\u0010P\u001a\u00020\u00102\u0006\u00108\u001a\u00020\u00062\u0006\u0010O\u001a\u00020?¢\u0006\u0004\bP\u0010@J!\u0010R\u001a\u00020\u00102\u0006\u00108\u001a\u00020\u00062\b\b\u0002\u0010Q\u001a\u00020\u001eH\u0007¢\u0006\u0004\bR\u0010<J\u0015\u0010S\u001a\u00020\u00102\u0006\u00108\u001a\u00020\u0006¢\u0006\u0004\bS\u0010\u0015J\u0017\u0010V\u001a\u00020\u00102\b\u0010U\u001a\u0004\u0018\u00010T¢\u0006\u0004\bV\u0010WJC\u0010^\u001a\u00020]2\u0006\u0010X\u001a\u00020A2\u0006\u0010Y\u001a\u00020A2\n\b\u0002\u0010Z\u001a\u0004\u0018\u00010A2\n\b\u0002\u0010[\u001a\u0004\u0018\u00010A2\n\b\u0002\u0010\\\u001a\u0004\u0018\u00010AH\u0007¢\u0006\u0004\b^\u0010_J%\u0010`\u001a\u00020]2\u0006\u00108\u001a\u00020\u00062\u0006\u0010X\u001a\u00020A2\u0006\u0010Y\u001a\u00020A¢\u0006\u0004\b`\u0010aJ\u0015\u0010b\u001a\u00020]2\u0006\u00108\u001a\u00020\u0006¢\u0006\u0004\bb\u0010cJ)\u0010d\u001a\u00020\u00102\u0006\u00108\u001a\u00020\u00062\u0006\u00109\u001a\u00020\u00012\b\b\u0002\u0010D\u001a\u00020\u0010H\u0007¢\u0006\u0004\bd\u0010eJ\u001d\u0010f\u001a\u00020\u00102\u0006\u00108\u001a\u00020\u00062\u0006\u0010O\u001a\u00020?¢\u0006\u0004\bf\u0010@R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010gR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010hR\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010iR\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010jR\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010kR\u0014\u0010m\u001a\u00020l8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bm\u0010nR$\u0010o\u001a\u00020\u00062\u0006\u0010o\u001a\u00020\u00068F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bp\u0010q\"\u0004\br\u0010c¨\u0006s"}, d2 = {"Lcom/braze/BrazeUser;", "", "Lcom/braze/storage/h0;", "userCache", "Lcom/braze/managers/c0;", "brazeManager", "", "internalUserId", "Lcom/braze/managers/f0;", "locationManager", "Lcom/braze/storage/e0;", "serverConfigStorageProvider", "<init>", "(Lcom/braze/storage/h0;Lcom/braze/managers/c0;Ljava/lang/String;Lcom/braze/managers/f0;Lcom/braze/storage/e0;)V", "alias", com.google.firebase.messaging.Constants.ScionAnalytics.PARAM_LABEL, "", "addAlias", "(Ljava/lang/String;Ljava/lang/String;)Z", "firstName", "setFirstName", "(Ljava/lang/String;)Z", "lastName", "setLastName", "email", "setEmail", "Lcom/braze/enums/Gender;", "gender", "setGender", "(Lcom/braze/enums/Gender;)Z", "", "year", "Lcom/braze/enums/Month;", "month", "day", "setDateOfBirth", "(ILcom/braze/enums/Month;I)Z", "country", "setCountry", "homeCity", "setHomeCity", "language", "setLanguage", "Lcom/braze/enums/NotificationSubscriptionType;", "emailNotificationSubscriptionType", "setEmailNotificationSubscriptionType", "(Lcom/braze/enums/NotificationSubscriptionType;)Z", "pushNotificationSubscriptionType", "setPushNotificationSubscriptionType", "subscriptionGroupId", "addToSubscriptionGroup", "removeFromSubscriptionGroup", "phoneNumber", "setPhoneNumber", "lineId", "setLineId", "key", "value", "setCustomUserAttribute", "(Ljava/lang/String;Z)Z", "(Ljava/lang/String;I)Z", "", "(Ljava/lang/String;F)Z", "", "(Ljava/lang/String;J)Z", "", "(Ljava/lang/String;D)Z", "Lorg/json/JSONObject;", "merge", "(Ljava/lang/String;Lorg/json/JSONObject;Z)Z", "Lorg/json/JSONArray;", "(Ljava/lang/String;Lorg/json/JSONArray;)Z", "addToCustomAttributeArray", "removeFromCustomAttributeArray", "", "values", "setCustomAttributeArray", "(Ljava/lang/String;[Ljava/lang/String;)Z", "setCustomUserAttributeToNow", "secondsFromEpoch", "setCustomUserAttributeToSecondsFromEpoch", "incrementValue", "incrementCustomUserAttribute", "unsetCustomUserAttribute", "Lcom/braze/models/outgoing/AttributionData;", "attributionData", "setAttributionData", "(Lcom/braze/models/outgoing/AttributionData;)Z", IBrazeLocation.LATITUDE, IBrazeLocation.LONGITUDE, IBrazeLocation.ALTITUDE, "accuracy", "verticalAccuracy", "", "setLastKnownLocation", "(DDLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V", "setLocationCustomAttribute", "(Ljava/lang/String;DD)V", "unsetLocationCustomAttribute", "(Ljava/lang/String;)V", "setCustomAttribute", "(Ljava/lang/String;Ljava/lang/Object;Z)Z", "setCustomAttributeToSecondsFromEpoch", "Lcom/braze/storage/h0;", "Lcom/braze/managers/c0;", "Ljava/lang/String;", "Lcom/braze/managers/f0;", "Lcom/braze/storage/e0;", "Ljava/util/concurrent/locks/ReentrantLock;", "userIdLock", "Ljava/util/concurrent/locks/ReentrantLock;", "userId", "getUserId", "()Ljava/lang/String;", "setUserId", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class BrazeUser {
    private final com.braze.managers.c0 brazeManager;
    private volatile String internalUserId;
    private final com.braze.managers.f0 locationManager;
    private final com.braze.storage.e0 serverConfigStorageProvider;
    private final com.braze.storage.h0 userCache;
    private final ReentrantLock userIdLock;

    public BrazeUser(com.braze.storage.h0 userCache, com.braze.managers.c0 brazeManager, String internalUserId, com.braze.managers.f0 locationManager, com.braze.storage.e0 serverConfigStorageProvider) {
        Intrinsics.checkNotNullParameter(userCache, "userCache");
        Intrinsics.checkNotNullParameter(brazeManager, "brazeManager");
        Intrinsics.checkNotNullParameter(internalUserId, "internalUserId");
        Intrinsics.checkNotNullParameter(locationManager, "locationManager");
        Intrinsics.checkNotNullParameter(serverConfigStorageProvider, "serverConfigStorageProvider");
        this.userCache = userCache;
        this.brazeManager = brazeManager;
        this.internalUserId = internalUserId;
        this.locationManager = locationManager;
        this.serverConfigStorageProvider = serverConfigStorageProvider;
        this.userIdLock = new ReentrantLock();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _set_userId_$lambda$1(String str) {
        return j.a("User object user id set to: ", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String addAlias$lambda$4() {
        return "Invalid alias parameter: alias is required to be non-null and non-empty. Not adding alias.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String addAlias$lambda$5() {
        return "Invalid label parameter: label is required to be non-null and non-empty. Not adding alias.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String addAlias$lambda$7(String str) {
        return j.a("Failed to set alias: ", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String addToCustomAttributeArray$lambda$51() {
        return "Custom attribute key was invalid. Not adding to attribute array.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String addToCustomAttributeArray$lambda$52(String str) {
        return a.a("Failed to add custom attribute with key '", str, "'.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String addToSubscriptionGroup$lambda$27() {
        return "Invalid subscription group ID: subscription group ID is required to be non-null and non-empty. Not adding user to subscription group.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String addToSubscriptionGroup$lambda$29(String str) {
        return j.a("Failed to add user to subscription group ", str);
    }

    public static /* synthetic */ boolean incrementCustomUserAttribute$default(BrazeUser brazeUser, String str, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 1;
        }
        return brazeUser.incrementCustomUserAttribute(str, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String incrementCustomUserAttribute$lambda$58(String str, int i) {
        return "Failed to increment custom attribute " + str + " by " + i + '.';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String removeFromCustomAttributeArray$lambda$53() {
        return "Custom attribute key was invalid. Not removing from attribute array.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String removeFromCustomAttributeArray$lambda$54(String str) {
        return a.a("Failed to remove custom attribute with key '", str, "'.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String removeFromSubscriptionGroup$lambda$30() {
        return "Invalid subscription group ID: subscription group ID is required to be non-null and non-empty. Not removing user from subscription group.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String removeFromSubscriptionGroup$lambda$32(String str) {
        return j.a("Failed to remove user from subscription group ", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setAttributionData$lambda$61() {
        return "Failed to set attribution data.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setCountry$lambda$19() {
        return "Invalid country parameter: country is required to be non-blank. Not setting country.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setCountry$lambda$20(String str) {
        return j.a("Failed to set country to: ", str);
    }

    public static /* synthetic */ boolean setCustomAttribute$default(BrazeUser brazeUser, String str, Object obj, boolean z, int i, Object obj2) {
        if ((i & 4) != 0) {
            z = false;
        }
        return brazeUser.setCustomAttribute(str, obj, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setCustomAttribute$lambda$70() {
        return "Custom attribute key cannot be null.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setCustomAttribute$lambda$73$lambda$71(String str, Object obj) {
        return "Could not add unsupported custom attribute value with key: " + str + " and value: " + obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setCustomAttribute$lambda$73$lambda$72(String str, Object obj) {
        return "Could not build NestedCustomAttributeEvent for key " + str + " and " + obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setCustomAttributeArray$lambda$55(String str) {
        return a.a("Failed to set custom attribute array with key: '", str, "'.");
    }

    public static /* synthetic */ boolean setCustomUserAttribute$default(BrazeUser brazeUser, String str, JSONObject jSONObject, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return brazeUser.setCustomUserAttribute(str, jSONObject, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setCustomUserAttribute$lambda$43(String str) {
        return b.a("Failed to set custom boolean attribute ", str, '.');
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setCustomUserAttribute$lambda$44(String str) {
        return b.a("Failed to set custom integer attribute ", str, '.');
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setCustomUserAttribute$lambda$45(String str) {
        return b.a("Failed to set custom float attribute ", str, '.');
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setCustomUserAttribute$lambda$46(String str) {
        return b.a("Failed to set custom long attribute ", str, '.');
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setCustomUserAttribute$lambda$47(String str) {
        return b.a("Failed to set custom string attribute ", str, '.');
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setCustomUserAttribute$lambda$48(String str) {
        return b.a("Failed to set custom double attribute ", str, '.');
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setCustomUserAttribute$lambda$49(String str, JSONObject jSONObject) {
        return "Failed to set custom json attribute " + str + " with value \n" + JsonUtils.getPrettyPrintedString(jSONObject) + '.';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setCustomUserAttribute$lambda$50(String str, JSONArray jSONArray) {
        return "Failed to set custom json attribute " + str + " with value \n" + JsonUtils.getPrettyPrintedString(jSONArray) + '.';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setCustomUserAttributeToNow$lambda$56(String str) {
        return a.a("Failed to set custom attribute ", str, " to now.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setCustomUserAttributeToSecondsFromEpoch$lambda$57(String str, long j) {
        return "Failed to set custom attribute " + str + " to " + j + " seconds from epoch.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setDateOfBirth$lambda$18(int i, Month month, int i2) {
        return "Failed to set date of birth to: " + i + Soundex.SILENT_MARKER + month.getValue() + Soundex.SILENT_MARKER + i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setEmail$lambda$12() {
        return "Invalid email parameter: email is required to be non-empty. Not setting email.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setEmail$lambda$15$lambda$14(String str) {
        return j.a("Email address is not valid: ", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setEmail$lambda$16(String str) {
        return j.a("Failed to set email to: ", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setEmailNotificationSubscriptionType$lambda$25(NotificationSubscriptionType notificationSubscriptionType) {
        return "Failed to set email notification subscription to: " + notificationSubscriptionType;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setFirstName$lambda$8() {
        return "Invalid first name parameter: first name is required to be non-empty. Not setting first name.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setFirstName$lambda$9(String str) {
        return j.a("Failed to set first name to: ", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setGender$lambda$17(Gender gender) {
        return "Failed to set gender to: " + gender;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setHomeCity$lambda$21() {
        return "Invalid home city parameter: home city is required to be non-blank. Not setting home city.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setHomeCity$lambda$22(String str) {
        return j.a("Failed to set home city to: ", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setLanguage$lambda$23() {
        return "Invalid language parameter: language is required to be non-empty. Not setting language.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setLanguage$lambda$24(String str) {
        return j.a("Failed to set language to: ", str);
    }

    public static /* synthetic */ void setLastKnownLocation$default(BrazeUser brazeUser, double d, double d2, Double d3, Double d4, Double d5, int i, Object obj) {
        brazeUser.setLastKnownLocation(d, d2, (i & 4) != 0 ? null : d3, (i & 8) != 0 ? null : d4, (i & 16) != 0 ? null : d5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setLastKnownLocation$lambda$62() {
        return "Failed to manually set location.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setLastName$lambda$10() {
        return "Invalid last name parameter: last name is required to be non-empty. Not setting last name.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setLastName$lambda$11(String str) {
        return j.a("Failed to set last name to: ", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setLineId$lambda$38() {
        return "Invalid LINE ID parameter: LINE ID is required to be non-empty or null. Not setting LINE ID.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setLineId$lambda$41$lambda$40(String str) {
        return j.a("LINE ID is longer than 33 characters: Failed to set LINE ID: ", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setLineId$lambda$42(String str) {
        return j.a("Failed to set LINE ID to: ", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setLocationCustomAttribute$lambda$63() {
        return "Custom location attribute key was invalid. Not setting attribute.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setLocationCustomAttribute$lambda$64(double d, double d2) {
        return "Cannot set custom location attribute due with invalid latitude '" + d + " and longitude '" + d2 + '\'';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setLocationCustomAttribute$lambda$66(String str, double d, double d2) {
        return "Failed to set custom location attribute with key '" + str + "' and latitude '" + d + "' and longitude '" + d2 + '\'';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setPhoneNumber$lambda$33() {
        return "Invalid phone number parameter: phone number is required to be non-empty. Not setting phone number.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setPhoneNumber$lambda$36$lambda$35(String str) {
        return j.a("Phone number contains invalid characters (allowed are digits, spaces, or any of the following +.-()): ", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setPhoneNumber$lambda$37(String str) {
        return j.a("Failed to set phone number to: ", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setPushNotificationSubscriptionType$lambda$26(NotificationSubscriptionType notificationSubscriptionType) {
        return "Failed to set push notification subscription to: " + notificationSubscriptionType;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String unsetCustomUserAttribute$lambda$59() {
        return "Custom attribute key cannot be null.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String unsetCustomUserAttribute$lambda$60(String str) {
        return b.a("Failed to unset custom attribute ", str, '.');
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String unsetLocationCustomAttribute$lambda$67() {
        return "Custom location attribute key was invalid. Not setting attribute.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String unsetLocationCustomAttribute$lambda$69(String str) {
        return b.a("Failed to unset custom location attribute with key '", str, '\'');
    }

    public final boolean addAlias(final String alias, String label) {
        Intrinsics.checkNotNullParameter(alias, "alias");
        Intrinsics.checkNotNullParameter(label, "label");
        if (StringsKt.isBlank(alias)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda51
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeUser.addAlias$lambda$4();
                }
            }, 6, (Object) null);
            return false;
        }
        if (StringsKt.isBlank(label)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda52
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeUser.addAlias$lambda$5();
                }
            }, 6, (Object) null);
            return false;
        }
        try {
            com.braze.models.i iVarS = com.braze.models.outgoing.event.b.g.s(alias, label);
            if (iVarS != null) {
                return ((com.braze.managers.m) this.brazeManager).a(iVarS);
            }
            return false;
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda53
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeUser.addAlias$lambda$7(alias);
                }
            }, 4, (Object) null);
            return false;
        }
    }

    public final boolean addToCustomAttributeArray(final String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        try {
            if (!com.braze.support.d.a(key, this.serverConfigStorageProvider.e())) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda31
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeUser.addToCustomAttributeArray$lambda$51();
                    }
                }, 6, (Object) null);
                return false;
            }
            if (!com.braze.support.d.c(value)) {
                return false;
            }
            com.braze.models.i iVarA = com.braze.models.outgoing.event.b.g.a(ValidationUtils.ensureBrazeFieldLength(key), ValidationUtils.ensureBrazeFieldLength(value));
            if (iVarA == null) {
                return false;
            }
            return ((com.braze.managers.m) this.brazeManager).a(iVarA);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda32
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeUser.addToCustomAttributeArray$lambda$52(key);
                }
            }, 4, (Object) null);
            return false;
        }
    }

    public final boolean addToSubscriptionGroup(final String subscriptionGroupId) {
        Intrinsics.checkNotNullParameter(subscriptionGroupId, "subscriptionGroupId");
        try {
            if (StringsKt.isBlank(subscriptionGroupId)) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda9
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeUser.addToSubscriptionGroup$lambda$27();
                    }
                }, 6, (Object) null);
                return false;
            }
            com.braze.models.i iVarA = com.braze.models.outgoing.event.b.g.a(subscriptionGroupId, com.braze.enums.h.SUBSCRIBED);
            if (iVarA == null) {
                return true;
            }
            ((com.braze.managers.m) this.brazeManager).a(iVarA);
            return true;
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda10
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeUser.addToSubscriptionGroup$lambda$29(subscriptionGroupId);
                }
            }, 4, (Object) null);
            return false;
        }
    }

    public final String getUserId() {
        ReentrantLock reentrantLock = this.userIdLock;
        reentrantLock.lock();
        try {
            return this.internalUserId;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean incrementCustomUserAttribute(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return incrementCustomUserAttribute$default(this, key, 0, 2, null);
    }

    public final boolean removeFromCustomAttributeArray(final String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        try {
            if (!com.braze.support.d.a(key, this.serverConfigStorageProvider.e())) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda58
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeUser.removeFromCustomAttributeArray$lambda$53();
                    }
                }, 6, (Object) null);
                return false;
            }
            if (!com.braze.support.d.c(value)) {
                return false;
            }
            com.braze.models.i iVarQ = com.braze.models.outgoing.event.b.g.q(ValidationUtils.ensureBrazeFieldLength(key), ValidationUtils.ensureBrazeFieldLength(value));
            if (iVarQ == null) {
                return false;
            }
            return ((com.braze.managers.m) this.brazeManager).a(iVarQ);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeUser.removeFromCustomAttributeArray$lambda$54(key);
                }
            }, 4, (Object) null);
            return false;
        }
    }

    public final boolean removeFromSubscriptionGroup(final String subscriptionGroupId) {
        Intrinsics.checkNotNullParameter(subscriptionGroupId, "subscriptionGroupId");
        try {
            if (StringsKt.isBlank(subscriptionGroupId)) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda33
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeUser.removeFromSubscriptionGroup$lambda$30();
                    }
                }, 6, (Object) null);
                return false;
            }
            com.braze.models.i iVarA = com.braze.models.outgoing.event.b.g.a(subscriptionGroupId, com.braze.enums.h.UNSUBSCRIBED);
            if (iVarA == null) {
                return true;
            }
            ((com.braze.managers.m) this.brazeManager).a(iVarA);
            return true;
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda44
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeUser.removeFromSubscriptionGroup$lambda$32(subscriptionGroupId);
                }
            }, 4, (Object) null);
            return false;
        }
    }

    public final boolean setAttributionData(AttributionData attributionData) {
        try {
            BuildersKt__Builders_commonKt.launch$default(com.braze.coroutine.f.a, null, null, new c0(this, attributionData, null), 3, null);
            return true;
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda43
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeUser.setAttributionData$lambda$61();
                }
            }, 4, (Object) null);
            return false;
        }
    }

    public final boolean setCountry(final String country) {
        if (country != null) {
            try {
                if (StringsKt.isBlank(country)) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda12
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return BrazeUser.setCountry$lambda$19();
                        }
                    }, 6, (Object) null);
                    return false;
                }
            } catch (Exception e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda13
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeUser.setCountry$lambda$20(country);
                    }
                }, 4, (Object) null);
                return false;
            }
        }
        BuildersKt__Builders_commonKt.launch$default(com.braze.coroutine.f.a, null, null, new d0(this, country, null), 3, null);
        return true;
    }

    public final boolean setCustomAttribute(String key, Object value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        return setCustomAttribute$default(this, key, value, false, 4, null);
    }

    public final boolean setCustomAttributeArray(final String key, String[] values) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(values, "values");
        try {
            if (!com.braze.support.d.a(key, this.serverConfigStorageProvider.e())) {
                return false;
            }
            String strEnsureBrazeFieldLength = ValidationUtils.ensureBrazeFieldLength(key);
            Intrinsics.checkNotNullParameter(values, "values");
            ArrayList arrayList = new ArrayList(values.length);
            for (String str : values) {
                arrayList.add(ValidationUtils.ensureBrazeFieldLength(str));
            }
            com.braze.models.i iVarA = com.braze.models.outgoing.event.b.g.a(strEnsureBrazeFieldLength, (String[]) arrayList.toArray(new String[0]));
            if (iVarA == null) {
                return false;
            }
            return ((com.braze.managers.m) this.brazeManager).a(iVarA);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda54
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeUser.setCustomAttributeArray$lambda$55(key);
                }
            }, 4, (Object) null);
            return false;
        }
    }

    public final boolean setCustomAttributeToSecondsFromEpoch(String key, long secondsFromEpoch) {
        Intrinsics.checkNotNullParameter(key, "key");
        return setCustomAttribute$default(this, key, DateTimeUtils.createDate(secondsFromEpoch), false, 4, null);
    }

    public final boolean setCustomUserAttribute(String key, JSONObject value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        return setCustomUserAttribute$default(this, key, value, false, 4, null);
    }

    public final boolean setCustomUserAttributeToNow(final String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            return setCustomAttributeToSecondsFromEpoch(key, DateTimeUtils.nowInSeconds());
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda35
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeUser.setCustomUserAttributeToNow$lambda$56(key);
                }
            }, 4, (Object) null);
            return false;
        }
    }

    public final boolean setCustomUserAttributeToSecondsFromEpoch(final String key, final long secondsFromEpoch) {
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            return setCustomAttributeToSecondsFromEpoch(key, secondsFromEpoch);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda30
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeUser.setCustomUserAttributeToSecondsFromEpoch$lambda$57(key, secondsFromEpoch);
                }
            }, 4, (Object) null);
            return false;
        }
    }

    public final boolean setDateOfBirth(final int year, final Month month, final int day) {
        Intrinsics.checkNotNullParameter(month, "month");
        try {
            BuildersKt__Builders_commonKt.launch$default(com.braze.coroutine.f.a, null, null, new f0(this, DateTimeUtils.formatDate$default(DateTimeUtils.createDate$default(year, month.getValue(), day, 0, 0, 0, 56, null), BrazeDateFormat.SHORT, null, 2, null), null), 3, null);
            return true;
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda42
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeUser.setDateOfBirth$lambda$18(year, month, day);
                }
            }, 4, (Object) null);
            return false;
        }
    }

    public final boolean setEmail(final String email) {
        String string;
        if (email != null) {
            try {
                if (StringsKt.isBlank(email)) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda55
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return BrazeUser.setEmail$lambda$12();
                        }
                    }, 6, (Object) null);
                    return false;
                }
            } catch (Exception e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda57
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeUser.setEmail$lambda$16(email);
                    }
                }, 4, (Object) null);
                return false;
            }
        }
        if (email != null) {
            int length = email.length() - 1;
            int i = 0;
            boolean z = false;
            while (i <= length) {
                boolean z2 = Intrinsics.compare((int) email.charAt(!z ? i : length), 32) <= 0;
                if (z) {
                    if (!z2) {
                        break;
                    }
                    length--;
                } else if (z2) {
                    i++;
                } else {
                    z = true;
                }
            }
            string = email.subSequence(i, length + 1).toString();
        } else {
            string = null;
        }
        if (string != null && !ValidationUtils.isValidEmailAddress(string)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda56
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeUser.setEmail$lambda$15$lambda$14(email);
                }
            }, 7, (Object) null);
            return false;
        }
        BuildersKt__Builders_commonKt.launch$default(com.braze.coroutine.f.a, null, null, new g0(this, string, null), 3, null);
        return true;
    }

    public final boolean setEmailNotificationSubscriptionType(final NotificationSubscriptionType emailNotificationSubscriptionType) {
        Intrinsics.checkNotNullParameter(emailNotificationSubscriptionType, "emailNotificationSubscriptionType");
        try {
            BuildersKt__Builders_commonKt.launch$default(com.braze.coroutine.f.a, null, null, new h0(this, emailNotificationSubscriptionType, null), 3, null);
            return true;
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda20
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeUser.setEmailNotificationSubscriptionType$lambda$25(emailNotificationSubscriptionType);
                }
            }, 4, (Object) null);
            return false;
        }
    }

    public final boolean setFirstName(final String firstName) {
        if (firstName != null) {
            try {
                if (StringsKt.isBlank(firstName)) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda27
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return BrazeUser.setFirstName$lambda$8();
                        }
                    }, 6, (Object) null);
                    return false;
                }
            } catch (Exception e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda28
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeUser.setFirstName$lambda$9(firstName);
                    }
                }, 4, (Object) null);
                return false;
            }
        }
        BuildersKt__Builders_commonKt.launch$default(com.braze.coroutine.f.a, null, null, new i0(this, firstName, null), 3, null);
        return true;
    }

    public final boolean setGender(final Gender gender) {
        Intrinsics.checkNotNullParameter(gender, "gender");
        try {
            BuildersKt__Builders_commonKt.launch$default(com.braze.coroutine.f.a, null, null, new j0(this, gender, null), 3, null);
            return true;
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda23
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeUser.setGender$lambda$17(gender);
                }
            }, 4, (Object) null);
            return false;
        }
    }

    public final boolean setHomeCity(final String homeCity) {
        if (homeCity != null) {
            try {
                if (StringsKt.isBlank(homeCity)) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda40
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return BrazeUser.setHomeCity$lambda$21();
                        }
                    }, 6, (Object) null);
                    return false;
                }
            } catch (Exception e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda41
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeUser.setHomeCity$lambda$22(homeCity);
                    }
                }, 4, (Object) null);
                return false;
            }
        }
        BuildersKt__Builders_commonKt.launch$default(com.braze.coroutine.f.a, null, null, new k0(this, homeCity, null), 3, null);
        return true;
    }

    public final boolean setLanguage(final String language) {
        if (language != null) {
            try {
                if (StringsKt.isBlank(language)) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda25
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return BrazeUser.setLanguage$lambda$23();
                        }
                    }, 6, (Object) null);
                    return false;
                }
            } catch (Exception e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda26
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeUser.setLanguage$lambda$24(language);
                    }
                }, 4, (Object) null);
                return false;
            }
        }
        BuildersKt__Builders_commonKt.launch$default(com.braze.coroutine.f.a, null, null, new l0(this, language, null), 3, null);
        return true;
    }

    public final void setLastKnownLocation(double d, double d2) {
        setLastKnownLocation$default(this, d, d2, null, null, null, 28, null);
    }

    public final boolean setLastName(final String lastName) {
        if (lastName != null) {
            try {
                if (StringsKt.isBlank(lastName)) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda38
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return BrazeUser.setLastName$lambda$10();
                        }
                    }, 6, (Object) null);
                    return false;
                }
            } catch (Exception e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda39
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeUser.setLastName$lambda$11(lastName);
                    }
                }, 4, (Object) null);
                return false;
            }
        }
        BuildersKt__Builders_commonKt.launch$default(com.braze.coroutine.f.a, null, null, new m0(this, lastName, null), 3, null);
        return true;
    }

    public final boolean setLineId(final String lineId) {
        final String string;
        if (lineId != null) {
            try {
                if (StringsKt.isBlank(lineId)) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda47
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return BrazeUser.setLineId$lambda$38();
                        }
                    }, 6, (Object) null);
                    return false;
                }
            } catch (Exception e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda49
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeUser.setLineId$lambda$42(lineId);
                    }
                }, 4, (Object) null);
                return false;
            }
        }
        if (lineId != null) {
            int length = lineId.length() - 1;
            int i = 0;
            boolean z = false;
            while (i <= length) {
                boolean z2 = Intrinsics.compare((int) lineId.charAt(!z ? i : length), 32) <= 0;
                if (z) {
                    if (!z2) {
                        break;
                    }
                    length--;
                } else if (z2) {
                    i++;
                } else {
                    z = true;
                }
            }
            string = lineId.subSequence(i, length + 1).toString();
        } else {
            string = null;
        }
        if (string != null && !ValidationUtils.isValidLineId(string)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda48
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeUser.setLineId$lambda$41$lambda$40(string);
                }
            }, 6, (Object) null);
            return false;
        }
        BuildersKt__Builders_commonKt.launch$default(com.braze.coroutine.f.a, null, null, new n0(this, string, null), 3, null);
        return true;
    }

    public final void setLocationCustomAttribute(final String key, final double latitude, final double longitude) {
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            if (!com.braze.support.d.a(key, this.serverConfigStorageProvider.e())) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda16
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeUser.setLocationCustomAttribute$lambda$63();
                    }
                }, 6, (Object) null);
                return;
            }
            if (ValidationUtils.isValidLocation(latitude, longitude)) {
                com.braze.models.i iVarA = com.braze.models.outgoing.event.b.g.a(ValidationUtils.ensureBrazeFieldLength(key), latitude, longitude);
                if (iVarA != null) {
                    ((com.braze.managers.m) this.brazeManager).a(iVarA);
                    return;
                }
                return;
            }
            try {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda17
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeUser.setLocationCustomAttribute$lambda$64(latitude, longitude);
                    }
                }, 6, (Object) null);
            } catch (Exception e) {
                e = e;
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda18
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeUser.setLocationCustomAttribute$lambda$66(key, latitude, longitude);
                    }
                }, 4, (Object) null);
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    public final boolean setPhoneNumber(final String phoneNumber) {
        final String string;
        if (phoneNumber != null) {
            try {
                if (StringsKt.isBlank(phoneNumber)) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return BrazeUser.setPhoneNumber$lambda$33();
                        }
                    }, 6, (Object) null);
                    return false;
                }
            } catch (Exception e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda22
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeUser.setPhoneNumber$lambda$37(phoneNumber);
                    }
                }, 4, (Object) null);
                return false;
            }
        }
        if (phoneNumber != null) {
            int length = phoneNumber.length() - 1;
            int i = 0;
            boolean z = false;
            while (i <= length) {
                boolean z2 = Intrinsics.compare((int) phoneNumber.charAt(!z ? i : length), 32) <= 0;
                if (z) {
                    if (!z2) {
                        break;
                    }
                    length--;
                } else if (z2) {
                    i++;
                } else {
                    z = true;
                }
            }
            string = phoneNumber.subSequence(i, length + 1).toString();
        } else {
            string = null;
        }
        if (string != null && !ValidationUtils.isValidPhoneNumber(string)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda11
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeUser.setPhoneNumber$lambda$36$lambda$35(string);
                }
            }, 6, (Object) null);
            return false;
        }
        BuildersKt__Builders_commonKt.launch$default(com.braze.coroutine.f.a, null, null, new o0(this, string, null), 3, null);
        return true;
    }

    public final boolean setPushNotificationSubscriptionType(final NotificationSubscriptionType pushNotificationSubscriptionType) {
        Intrinsics.checkNotNullParameter(pushNotificationSubscriptionType, "pushNotificationSubscriptionType");
        try {
            BuildersKt__Builders_commonKt.launch$default(com.braze.coroutine.f.a, null, null, new p0(this, pushNotificationSubscriptionType, null), 3, null);
            return true;
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda50
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeUser.setPushNotificationSubscriptionType$lambda$26(pushNotificationSubscriptionType);
                }
            }, 4, (Object) null);
            return false;
        }
    }

    public final void setUserId(final String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda34
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeUser._set_userId_$lambda$1(userId);
            }
        }, 6, (Object) null);
        ReentrantLock reentrantLock = this.userIdLock;
        reentrantLock.lock();
        try {
            if (!Intrinsics.areEqual(this.internalUserId, "") && !Intrinsics.areEqual(this.internalUserId, userId)) {
                throw new IllegalArgumentException(("setExternalId can not be used to change the external ID of a UserCache from a non-empty value to a new value. Was: [" + this.internalUserId + "], tried to change to: [" + userId + ']').toString());
            }
            this.internalUserId = userId;
            BuildersKt__Builders_commonKt.launch$default(com.braze.coroutine.f.a, null, null, new r0(this, userId, null), 3, null);
            reentrantLock.unlock();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final boolean unsetCustomUserAttribute(final String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            if (com.braze.support.d.a(key, this.serverConfigStorageProvider.e())) {
                BuildersKt__Builders_commonKt.launch$default(com.braze.coroutine.f.a, null, null, new q0(this, key, null), 3, null);
                return true;
            }
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeUser.unsetCustomUserAttribute$lambda$59();
                }
            }, 6, (Object) null);
            return false;
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeUser.unsetCustomUserAttribute$lambda$60(key);
                }
            }, 4, (Object) null);
            return false;
        }
    }

    public final void unsetLocationCustomAttribute(final String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            if (!com.braze.support.d.a(key, this.serverConfigStorageProvider.e())) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda36
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeUser.unsetLocationCustomAttribute$lambda$67();
                    }
                }, 6, (Object) null);
                return;
            }
            com.braze.models.i iVarR = com.braze.models.outgoing.event.b.g.r(ValidationUtils.ensureBrazeFieldLength(key));
            if (iVarR != null) {
                ((com.braze.managers.m) this.brazeManager).a(iVarR);
            }
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda37
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeUser.unsetLocationCustomAttribute$lambda$69(key);
                }
            }, 4, (Object) null);
        }
    }

    public final boolean incrementCustomUserAttribute(final String key, final int incrementValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            if (!com.braze.support.d.a(key, this.serverConfigStorageProvider.e())) {
                return false;
            }
            com.braze.models.i iVarA = com.braze.models.outgoing.event.b.g.a(ValidationUtils.ensureBrazeFieldLength(key), incrementValue);
            if (iVarA == null) {
                return false;
            }
            return ((com.braze.managers.m) this.brazeManager).a(iVarA);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeUser.incrementCustomUserAttribute$lambda$58(key, incrementValue);
                }
            }, 4, (Object) null);
            return false;
        }
    }

    public final boolean setCustomAttribute(final String key, final Object value, boolean merge) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        if (!com.braze.support.d.a(key, this.serverConfigStorageProvider.e())) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeUser.setCustomAttribute$lambda$70();
                }
            }, 6, (Object) null);
            return false;
        }
        final String strEnsureBrazeFieldLength = ValidationUtils.ensureBrazeFieldLength(key);
        final Object objA = com.braze.support.d.a.a(value, 0);
        if (objA == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeUser.setCustomAttribute$lambda$73$lambda$71(key, value);
                }
            }, 6, (Object) null);
            return false;
        }
        if (!(objA instanceof JSONObject) || !merge) {
            BuildersKt__Builders_commonKt.launch$default(com.braze.coroutine.f.a, null, null, new e0(this, strEnsureBrazeFieldLength, objA, null), 3, null);
            return true;
        }
        com.braze.models.i iVarA = com.braze.models.outgoing.event.b.g.a(strEnsureBrazeFieldLength, (JSONObject) objA);
        if (iVarA != null) {
            return ((com.braze.managers.m) this.brazeManager).a(iVarA);
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BrazeUser.setCustomAttribute$lambda$73$lambda$72(strEnsureBrazeFieldLength, objA);
            }
        }, 6, (Object) null);
        return false;
    }

    public final boolean setCustomUserAttribute(final String key, boolean value) {
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            return setCustomAttribute$default(this, key, Boolean.valueOf(value), false, 4, null);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda45
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeUser.setCustomUserAttribute$lambda$43(key);
                }
            }, 4, (Object) null);
            return false;
        }
    }

    public final void setLastKnownLocation(double d, double d2, Double d3) {
        setLastKnownLocation$default(this, d, d2, d3, null, null, 24, null);
    }

    public final void setLastKnownLocation(double d, double d2, Double d3, Double d4) {
        setLastKnownLocation$default(this, d, d2, d3, d4, null, 16, null);
    }

    public final boolean setCustomUserAttribute(final String key, int value) {
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            return setCustomAttribute$default(this, key, Integer.valueOf(value), false, 4, null);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda24
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeUser.setCustomUserAttribute$lambda$44(key);
                }
            }, 4, (Object) null);
            return false;
        }
    }

    public final void setLastKnownLocation(double latitude, double longitude, Double altitude, Double accuracy, Double verticalAccuracy) {
        try {
            try {
                ((com.braze.managers.k) this.locationManager).a(new BrazeLocation(latitude, longitude, altitude, accuracy, verticalAccuracy));
            } catch (Exception e) {
                e = e;
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda46
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BrazeUser.setLastKnownLocation$lambda$62();
                    }
                }, 4, (Object) null);
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    public final boolean setCustomUserAttribute(final String key, float value) {
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            return setCustomAttribute$default(this, key, Float.valueOf(value), false, 4, null);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda21
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeUser.setCustomUserAttribute$lambda$45(key);
                }
            }, 4, (Object) null);
            return false;
        }
    }

    public final boolean setCustomUserAttribute(final String key, long value) {
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            return setCustomAttribute$default(this, key, Long.valueOf(value), false, 4, null);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda14
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeUser.setCustomUserAttribute$lambda$46(key);
                }
            }, 4, (Object) null);
            return false;
        }
    }

    public final boolean setCustomUserAttribute(final String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        try {
            return setCustomAttribute$default(this, key, value, false, 4, null);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda15
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeUser.setCustomUserAttribute$lambda$47(key);
                }
            }, 4, (Object) null);
            return false;
        }
    }

    public final boolean setCustomUserAttribute(final String key, double value) {
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            return setCustomAttribute$default(this, key, Double.valueOf(value), false, 4, null);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda19
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeUser.setCustomUserAttribute$lambda$48(key);
                }
            }, 4, (Object) null);
            return false;
        }
    }

    public final boolean setCustomUserAttribute(final String key, final JSONObject value, boolean merge) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        try {
            return setCustomAttribute(key, value, merge);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeUser.setCustomUserAttribute$lambda$49(key, value);
                }
            }, 4, (Object) null);
            return false;
        }
    }

    public final boolean setCustomUserAttribute(final String key, final JSONArray value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        try {
            return setCustomAttribute$default(this, key, value, false, 4, null);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.BrazeUser$$ExternalSyntheticLambda29
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BrazeUser.setCustomUserAttribute$lambda$50(key, value);
                }
            }, 4, (Object) null);
            return false;
        }
    }
}
