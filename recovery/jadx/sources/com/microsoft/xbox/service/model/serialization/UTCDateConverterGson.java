package com.microsoft.xbox.service.model.serialization;

import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.microsoft.xbox.toolkit.JavaUtil;
import java.lang.reflect.Type;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes3.dex */
public class UTCDateConverterGson {
    private static final int NO_MS_STRING_LENGTH = 19;
    private static final SimpleDateFormat defaultFormatMs = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS", Locale.ENGLISH);
    public static SimpleDateFormat defaultFormatNoMs = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.ENGLISH);
    public static SimpleDateFormat shortDateAlternateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss", Locale.ENGLISH);
    public static SimpleDateFormat shortDateFormat = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss", Locale.ENGLISH);

    /* JADX WARN: Code duplicated, block: B:23:0x005f  */
    /* JADX WARN: Code duplicated, block: B:24:0x0061  */
    /* JADX WARN: Code duplicated, block: B:26:0x0064 A[Catch: all -> 0x008e, TRY_LEAVE, TryCatch #3 {, blocks: (B:6:0x0006, B:8:0x000d, B:10:0x0015, B:11:0x001d, B:13:0x0025, B:21:0x0057, B:26:0x0064, B:28:0x006c, B:32:0x007d, B:33:0x0082, B:36:0x0088, B:31:0x0079, B:15:0x002f, B:17:0x0037, B:18:0x0046, B:20:0x004e, B:37:0x008b), top: B:51:0x0006, outer: #0, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x007d A[Catch: all -> 0x008e, TRY_LEAVE, TryCatch #3 {, blocks: (B:6:0x0006, B:8:0x000d, B:10:0x0015, B:11:0x001d, B:13:0x0025, B:21:0x0057, B:26:0x0064, B:28:0x006c, B:32:0x007d, B:33:0x0082, B:36:0x0088, B:31:0x0079, B:15:0x002f, B:17:0x0037, B:18:0x0046, B:20:0x004e, B:37:0x008b), top: B:51:0x0006, outer: #0, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x006c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static synchronized Date convert(String str) {
        Date date;
        TimeZone timeZone;
        boolean z;
        synchronized (UTCDateConverterGson.class) {
            date = null;
            if (!JavaUtil.isNullOrEmpty(str)) {
                if (str.endsWith("Z")) {
                    str = str.replace("Z", "");
                }
                if (str.endsWith("+00:00")) {
                    str = str.replace("+00:00", "");
                } else {
                    if (str.endsWith("+01:00")) {
                        str = str.replace("+01:00", "");
                        timeZone = TimeZone.getTimeZone("GMT+01:00");
                    } else if (str.contains(".")) {
                        str = str.replaceAll("([.][0-9]{3})[0-9]*$", "$1");
                    }
                    if (str.length() == 19) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (timeZone == null) {
                        timeZone = TimeZone.getTimeZone("GMT");
                    }
                    if (z) {
                        try {
                            defaultFormatNoMs.setTimeZone(timeZone);
                            date = defaultFormatNoMs.parse(str);
                        } catch (ParseException e) {
                            e.printStackTrace();
                        }
                    } else {
                        SimpleDateFormat simpleDateFormat = defaultFormatMs;
                        simpleDateFormat.setTimeZone(timeZone);
                        try {
                            date = simpleDateFormat.parse(str);
                        } catch (ParseException e2) {
                            e2.printStackTrace();
                        }
                    }
                }
                timeZone = null;
                if (str.length() == 19) {
                    z = true;
                } else {
                    z = false;
                }
                if (timeZone == null) {
                    timeZone = TimeZone.getTimeZone("GMT");
                }
                if (z) {
                    defaultFormatNoMs.setTimeZone(timeZone);
                    date = defaultFormatNoMs.parse(str);
                } else {
                    SimpleDateFormat simpleDateFormat2 = defaultFormatMs;
                    simpleDateFormat2.setTimeZone(timeZone);
                    date = simpleDateFormat2.parse(str);
                }
            }
        }
        return date;
        return date;
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class UTCDateConverterJSONDeserializer implements JsonDeserializer<Date> {
        @Override // com.google.gson.JsonDeserializer
        public Date deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) {
            return UTCDateConverterGson.convert(jsonElement.getAsJsonPrimitive().getAsString());
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class UTCDateConverterShortDateFormatJSONDeserializer implements JsonDeserializer<Date> {
        @Override // com.google.gson.JsonDeserializer
        public Date deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) {
            String asString = jsonElement.getAsJsonPrimitive().getAsString();
            UTCDateConverterGson.shortDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
            try {
                return UTCDateConverterGson.shortDateFormat.parse(asString);
            } catch (ParseException unused) {
                return null;
            }
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class UTCDateConverterShortDateAlternateFormatJSONDeserializer implements JsonDeserializer<Date> {
        @Override // com.google.gson.JsonDeserializer
        public Date deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) {
            Date date;
            String asString = jsonElement.getAsJsonPrimitive().getAsString();
            TimeZone timeZone = TimeZone.getTimeZone("GMT");
            UTCDateConverterGson.shortDateFormat.setTimeZone(timeZone);
            try {
                date = UTCDateConverterGson.shortDateFormat.parse(asString);
            } catch (ParseException unused) {
                date = null;
            }
            if (date != null && date.getYear() + 1900 < 2000) {
                UTCDateConverterGson.shortDateAlternateFormat.setTimeZone(timeZone);
                try {
                    return UTCDateConverterGson.shortDateAlternateFormat.parse(asString);
                } catch (ParseException unused2) {
                }
            }
            return date;
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class UTCRoundtripDateConverterJSONDeserializer implements JsonDeserializer<Date> {
        @Override // com.google.gson.JsonDeserializer
        public Date deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) {
            String asString = jsonElement.getAsJsonPrimitive().getAsString();
            if (asString.endsWith("Z")) {
                asString = asString.replace("Z", "");
            }
            UTCDateConverterGson.defaultFormatNoMs.setTimeZone(TimeZone.getTimeZone("GMT"));
            try {
                return UTCDateConverterGson.defaultFormatNoMs.parse(asString);
            } catch (ParseException unused) {
                return null;
            }
        }
    }
}
