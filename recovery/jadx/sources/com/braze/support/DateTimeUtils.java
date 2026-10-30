package com.braze.support;

import android.os.Build;
import android.os.SystemClock;
import com.braze.enums.BrazeDateFormat;
import java.text.SimpleDateFormat;
import java.time.Clock;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000D\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\t\u001a\u0006\u0010\u0013\u001a\u00020\u0001\u001a\u0006\u0010\u0014\u001a\u00020\u0015\u001a\u0006\u0010\u0016\u001a\u00020\u0001\u001a\u0006\u0010\u0017\u001a\u00020\u0001\u001a\u0012\u0010\u0018\u001a\u00020\u0019*\u00020\b2\u0006\u0010\u001a\u001a\u00020\u001b\u001a\u001e\u0010\u001c\u001a\u00020\b*\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010\u001d\u001a\u00020\u0004H\u0007\u001a\u000e\u0010\u001e\u001a\u00020\b2\u0006\u0010\u001a\u001a\u00020\u001b\u001a>\u0010\u001f\u001a\u00020\u00192\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020!2\b\b\u0002\u0010$\u001a\u00020!2\b\b\u0002\u0010%\u001a\u00020!2\b\b\u0002\u0010&\u001a\u00020!H\u0007\u001a \u0010'\u001a\u00020\b*\u00020\u00012\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010\u001d\u001a\u00020\u0004H\u0000\u001a\n\u0010\u001f\u001a\u00020\u0019*\u00020\u0001\u001a\n\u0010(\u001a\u00020\u0001*\u00020\u0019\u001a\n\u0010)\u001a\u00020\n*\u00020\b\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u0018\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0006\"\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000\"!\u0010\u000b\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u0012\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006*"}, d2 = {"MSECS_IN_SEC", "", "MINIMUM_NETWORK_TIME", "UTC_TIME_ZONE", "Ljava/util/TimeZone;", "kotlin.jvm.PlatformType", "Ljava/util/TimeZone;", "TAG", "", "shouldUseNetworkTimeClock", "", "networkTimeClock", "Ljava/time/Clock;", "getNetworkTimeClock$annotations", "()V", "getNetworkTimeClock", "()Ljava/time/Clock;", "networkTimeClock$delegate", "Lkotlin/Lazy;", "nowInSeconds", "nowInSecondsPrecise", "", "nowInMilliseconds", "nowInMillisecondsSystemClock", "parseDate", "Ljava/util/Date;", "dateFormat", "Lcom/braze/enums/BrazeDateFormat;", "formatDate", "timeZone", "formatDateNow", "createDate", "year", "", "month", "day", "hours", "minutes", "seconds", "formatDateFromMillis", "getTimeFromEpochInSeconds", "isValidTimeZone", "android-sdk-base_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class DateTimeUtils {
    private static final long MINIMUM_NETWORK_TIME = 1691768838316L;
    private static final long MSECS_IN_SEC = 1000;
    private static final TimeZone UTC_TIME_ZONE = TimeZone.getTimeZone("UTC");
    private static final String TAG = BrazeLogger.INSTANCE.getBrazeLogTag("DateTimeUtils");
    private static boolean shouldUseNetworkTimeClock = true;
    private static final Lazy networkTimeClock$delegate = LazyKt.lazy(new Function0() { // from class: com.braze.support.DateTimeUtils$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SystemClock.currentNetworkTimeClock();
        }
    });

    public static final Date createDate(int i, int i2, int i3) {
        return createDate$default(i, i2, i3, 0, 0, 0, 56, null);
    }

    public static /* synthetic */ Date createDate$default(int i, int i2, int i3, int i4, int i5, int i6, int i7, Object obj) {
        return createDate(i, i2, i3, (i7 & 8) != 0 ? 0 : i4, (i7 & 16) != 0 ? 0 : i5, (i7 & 32) != 0 ? 0 : i6);
    }

    public static final String formatDate(Date date, BrazeDateFormat dateFormat) {
        Intrinsics.checkNotNullParameter(date, "<this>");
        Intrinsics.checkNotNullParameter(dateFormat, "dateFormat");
        return formatDate$default(date, dateFormat, null, 2, null);
    }

    public static /* synthetic */ String formatDate$default(Date date, BrazeDateFormat brazeDateFormat, TimeZone timeZone, int i, Object obj) {
        if ((i & 2) != 0) {
            timeZone = UTC_TIME_ZONE;
        }
        return formatDate(date, brazeDateFormat, timeZone);
    }

    public static final String formatDateFromMillis(long j, BrazeDateFormat dateFormat, TimeZone timeZone) {
        Intrinsics.checkNotNullParameter(dateFormat, "dateFormat");
        Intrinsics.checkNotNullParameter(timeZone, "timeZone");
        return formatDate(new Date(j), dateFormat, timeZone);
    }

    public static /* synthetic */ String formatDateFromMillis$default(long j, BrazeDateFormat brazeDateFormat, TimeZone timeZone, int i, Object obj) {
        if ((i & 1) != 0) {
            brazeDateFormat = BrazeDateFormat.ANDROID_LOGCAT;
        }
        if ((i & 2) != 0) {
            timeZone = TimeZone.getDefault();
        }
        return formatDateFromMillis(j, brazeDateFormat, timeZone);
    }

    public static final String formatDateNow(BrazeDateFormat dateFormat) {
        Intrinsics.checkNotNullParameter(dateFormat, "dateFormat");
        Date dateCreateDate = createDate(nowInSeconds());
        TimeZone timeZone = TimeZone.getDefault();
        Intrinsics.checkNotNullExpressionValue(timeZone, "getDefault(...)");
        return formatDate(dateCreateDate, dateFormat, timeZone);
    }

    private static final Clock getNetworkTimeClock() {
        return (Clock) networkTimeClock$delegate.getValue();
    }

    private static /* synthetic */ void getNetworkTimeClock$annotations() {
    }

    public static final long getTimeFromEpochInSeconds(Date date) {
        Intrinsics.checkNotNullParameter(date, "<this>");
        return TimeUnit.MILLISECONDS.toSeconds(date.getTime());
    }

    public static final boolean isValidTimeZone(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        String[] availableIDs = TimeZone.getAvailableIDs();
        Intrinsics.checkNotNullExpressionValue(availableIDs, "getAvailableIDs(...)");
        return ArraysKt.contains(availableIDs, str);
    }

    public static final long nowInMilliseconds() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            if (Build.VERSION.SDK_INT < 33 || !shouldUseNetworkTimeClock) {
                return jCurrentTimeMillis;
            }
            long jMillis = getNetworkTimeClock().millis();
            return jMillis < MINIMUM_NETWORK_TIME ? jCurrentTimeMillis : jMillis;
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, TAG, BrazeLogger.Priority.D, (Throwable) e, false, new Function0() { // from class: com.braze.support.DateTimeUtils$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return DateTimeUtils.nowInMilliseconds$lambda$1();
                }
            }, 8, (Object) null);
            shouldUseNetworkTimeClock = false;
            return jCurrentTimeMillis;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String nowInMilliseconds$lambda$1() {
        return "Error reading date and time from network. Using system time instead.";
    }

    public static final long nowInMillisecondsSystemClock() {
        return System.currentTimeMillis();
    }

    public static final long nowInSeconds() {
        return TimeUnit.MILLISECONDS.toSeconds(nowInMilliseconds());
    }

    public static final double nowInSecondsPrecise() {
        return nowInMilliseconds() / 1000.0d;
    }

    public static final Date parseDate(final String str, BrazeDateFormat dateFormat) throws Exception {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(dateFormat, "dateFormat");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(dateFormat.getFormat(), Locale.US);
        simpleDateFormat.setTimeZone(UTC_TIME_ZONE);
        try {
            Date date = simpleDateFormat.parse(str);
            Intrinsics.checkNotNull(date);
            return date;
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, TAG, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.support.DateTimeUtils$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return DateTimeUtils.parseDate$lambda$2(str);
                }
            }, 8, (Object) null);
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String parseDate$lambda$2(String str) {
        return com.braze.a.a("Exception parsing date ", str, ". Returning null");
    }

    public static final Date createDate(int i, int i2, int i3, int i4) {
        return createDate$default(i, i2, i3, i4, 0, 0, 48, null);
    }

    public static final String formatDate(Date date, BrazeDateFormat dateFormat, TimeZone timeZone) {
        Intrinsics.checkNotNullParameter(date, "<this>");
        Intrinsics.checkNotNullParameter(dateFormat, "dateFormat");
        Intrinsics.checkNotNullParameter(timeZone, "timeZone");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(dateFormat.getFormat(), Locale.US);
        simpleDateFormat.setTimeZone(timeZone);
        String str = simpleDateFormat.format(date);
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return str;
    }

    public static final Date createDate(int i, int i2, int i3, int i4, int i5) {
        return createDate$default(i, i2, i3, i4, i5, 0, 32, null);
    }

    public static final Date createDate(int i, int i2, int i3, int i4, int i5, int i6) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(i, i2, i3, i4, i5, i6);
        gregorianCalendar.setTimeZone(UTC_TIME_ZONE);
        Date time = gregorianCalendar.getTime();
        Intrinsics.checkNotNullExpressionValue(time, "getTime(...)");
        return time;
    }

    public static final Date createDate(long j) {
        return new Date(j * MSECS_IN_SEC);
    }
}
