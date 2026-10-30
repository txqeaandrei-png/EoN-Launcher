package com.braze.support;

import android.content.Context;
import android.content.SharedPreferences;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;
import org.simpleframework.xml.strategy.Name;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00008\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0010\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001\u001a\u0010\u0010\u000f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001\u001a\u0010\u0010\u0010\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001\u001a\f\u0010\u0011\u001a\u0004\u0018\u00010\u0001*\u00020\u0001\u001a\u0012\u0010\u0012\u001a\u00020\u0013*\u00020\u00012\u0006\u0010\u0014\u001a\u00020\u0001\u001a\"\u0010\u0015\u001a\u00020\u00012\u0006\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u00012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001\u001a\u0018\u0010\u0015\u001a\u00020\u00012\u0006\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001\u001a\n\u0010\u001a\u001a\u00020\u001b*\u00020\u0001\u001a\u0012\u0010\u001c\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0013\u001a\n\u0010\u001e\u001a\u00020\u0001*\u00020\u0001\u001a \u0010\u001f\u001a\u00020 *\u0004\u0018\u00010\u00012\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020 0\"\u001a\u001c\u0010#\u001a\u00020\u00012\b\u0010$\u001a\u0004\u0018\u00010\u00012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u0016\u0010\u0003\u001a\u00020\u00018\u0006X\u0087T¢\u0006\b\n\u0000\u0012\u0004\b\u0004\u0010\u0005\"\u0016\u0010\u0006\u001a\u00020\u00018\u0006X\u0087T¢\u0006\b\n\u0000\u0012\u0004\b\u0007\u0010\u0005\"\u0016\u0010\b\u001a\u00020\u00018\u0006X\u0087T¢\u0006\b\n\u0000\u0012\u0004\b\t\u0010\u0005\"\u0016\u0010\n\u001a\u00020\u00018\u0006X\u0087T¢\u0006\b\n\u0000\u0012\u0004\b\u000b\u0010\u0005¨\u0006%"}, d2 = {"TAG", "", "NULL_USER_ID_SUBSTITUTE_STRING", "MD5_HASH_OF_THE_STRING_NULL", "getMD5_HASH_OF_THE_STRING_NULL$annotations", "()V", "CACHE_SUFFIX_PREFERENCES_FILE", "getCACHE_SUFFIX_PREFERENCES_FILE$annotations", "SUFFIX_CACHE_USER_ID_HASH_VALUE", "getSUFFIX_CACHE_USER_ID_HASH_VALUE$annotations", "SUFFIX_CACHE_USER_ID_KEY", "getSUFFIX_CACHE_USER_ID_KEY$annotations", "isNullOrEmpty", "", Name.REFER, "isNullOrBlank", "isBlank", "emptyToNull", "countOccurrences", "", "subString", "getCacheFileSuffix", "context", "Landroid/content/Context;", "userId", "apiKey", "getByteSize", "", "truncateToByteLength", "desiredByteLength", "getMd5Hash", "ifNonEmpty", "", "block", "Lkotlin/Function1;", "getSuffixFromUserIdHashAndApiKey", "userIdHash", "android-sdk-base_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class StringUtils {
    public static final String CACHE_SUFFIX_PREFERENCES_FILE = "com.appboy.support.stringutils.cachefilesuffix";
    public static final String MD5_HASH_OF_THE_STRING_NULL = "37a6259cc0c1dae299a7866489dff0bd";
    private static final String NULL_USER_ID_SUBSTITUTE_STRING = "null";
    public static final String SUFFIX_CACHE_USER_ID_HASH_VALUE = "user_id_hash_value";
    public static final String SUFFIX_CACHE_USER_ID_KEY = "user_id_key";
    private static final String TAG = BrazeLogger.INSTANCE.getBrazeLogTag("StringUtils");

    public static final int countOccurrences(String str, String subString) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(subString, "subString");
        return StringsKt.split$default((CharSequence) str, new String[]{subString}, false, 0, 6, (Object) null).size() - 1;
    }

    public static final String emptyToNull(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (StringsKt.isBlank(str)) {
            return null;
        }
        return str;
    }

    public static final long getByteSize(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        byte[] bytes = str.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        return bytes.length;
    }

    public static /* synthetic */ void getCACHE_SUFFIX_PREFERENCES_FILE$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getCacheFileSuffix$lambda$1() {
        return "The saved user id hash was null or empty.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getCacheFileSuffix$lambda$2(String str, String str2) {
        return "Generating MD5 for user id: " + str + " apiKey: " + str2;
    }

    public static /* synthetic */ void getMD5_HASH_OF_THE_STRING_NULL$annotations() {
    }

    public static final String getMd5Hash(String str) throws NoSuchAlgorithmException {
        Intrinsics.checkNotNullParameter(str, "<this>");
        MessageDigest messageDigest = MessageDigest.getInstance(MessageDigestAlgorithms.MD5);
        byte[] bytes = str.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        BigInteger bigInteger = new BigInteger(1, messageDigest.digest(bytes));
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String str2 = String.format(Locale.US, "%032x", Arrays.copyOf(new Object[]{bigInteger}, 1));
        Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
        return str2;
    }

    public static /* synthetic */ void getSUFFIX_CACHE_USER_ID_HASH_VALUE$annotations() {
    }

    public static /* synthetic */ void getSUFFIX_CACHE_USER_ID_KEY$annotations() {
    }

    private static final String getSuffixFromUserIdHashAndApiKey(String str, String str2) {
        return (str2 == null || StringsKt.isBlank(str2)) ? com.braze.j.a(".", str) : "." + str + '.' + str2;
    }

    public static final void ifNonEmpty(String str, Function1<? super String, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        if (str == null || str.length() == 0) {
            return;
        }
        block.invoke(str);
    }

    public static final boolean isBlank(String str) {
        if (str != null) {
            return StringsKt.isBlank(str);
        }
        return false;
    }

    public static final boolean isNullOrBlank(String str) {
        return str == null || StringsKt.isBlank(str);
    }

    public static final boolean isNullOrEmpty(String str) {
        return str == null || str.length() == 0;
    }

    public static final String truncateToByteLength(String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (getByteSize(str) <= i) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        char[] charArray = str.toCharArray();
        Intrinsics.checkNotNullExpressionValue(charArray, "toCharArray(...)");
        int byteSize = 0;
        for (char c : charArray) {
            byteSize += (int) getByteSize(String.valueOf(c));
            if (byteSize > i) {
                break;
            }
            sb.append(c);
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    public static final String getCacheFileSuffix(Context context, String str, final String str2) throws NoSuchAlgorithmException {
        Intrinsics.checkNotNullParameter(context, "context");
        final String str3 = str == null ? NULL_USER_ID_SUBSTITUTE_STRING : str;
        if (Intrinsics.areEqual(str3, NULL_USER_ID_SUBSTITUTE_STRING)) {
            return getSuffixFromUserIdHashAndApiKey(MD5_HASH_OF_THE_STRING_NULL, str2);
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences(CACHE_SUFFIX_PREFERENCES_FILE, 0);
        String string = sharedPreferences.getString(SUFFIX_CACHE_USER_ID_KEY, null);
        if (string != null && Intrinsics.areEqual(string, str3)) {
            String string2 = sharedPreferences.getString(SUFFIX_CACHE_USER_ID_HASH_VALUE, null);
            if (string2 != null && string2.length() != 0) {
                return getSuffixFromUserIdHashAndApiKey(string2, str2);
            }
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, TAG, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.support.StringUtils$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return StringUtils.getCacheFileSuffix$lambda$1();
                }
            }, 14, (Object) null);
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, TAG, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.support.StringUtils$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return StringUtils.getCacheFileSuffix$lambda$2(str3, str2);
            }
        }, 12, (Object) null);
        String md5Hash = getMd5Hash(str3);
        sharedPreferences.edit().putString(SUFFIX_CACHE_USER_ID_KEY, str3).putString(SUFFIX_CACHE_USER_ID_HASH_VALUE, md5Hash).apply();
        return getSuffixFromUserIdHashAndApiKey(md5Hash, str2);
    }

    public static final String getCacheFileSuffix(Context context, String str) {
        Intrinsics.checkNotNullParameter(context, "context");
        return getCacheFileSuffix(context, str, null);
    }
}
