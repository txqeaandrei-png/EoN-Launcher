package com.microsoft.xbox.xle.app;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.microsoft.xboxtcui.XboxTcuiSdk;
import java.net.URI;
import org.spongycastle.asn1.eac.EACTags;
import org.spongycastle.crypto.tls.CipherSuite;

/* JADX INFO: loaded from: classes3.dex */
public class ImageUtil {
    public static final int LARGE_PHONE = 640;
    public static final int LARGE_TABLET = 800;
    public static final int MEDIUM_PHONE = 300;
    public static final int MEDIUM_TABLET = 424;
    public static final int SMALL = 200;
    public static final int TINY = 100;
    public static final String resizeFormatter = "&w=%d&h=%d&format=png";
    public static final String resizeFormatterSizeOnly = "&w=%d&h=%d";
    public static final String resizeFormatterWithPadding = "&mode=padding&w=%d&h=%d&format=png";

    public static URI getURI(URI uri, int i, int i2) {
        return formatURI(uri, i, i2);
    }

    public static URI getURI(String str, int i, int i2) {
        URI string = formatString(str, i, i2);
        return string == null ? createUri(str) : string;
    }

    public static URI getTiny(URI uri) {
        return formatURI(uri, 100, 100);
    }

    public static URI getTiny(String str) {
        URI string = formatString(str, 100, 100);
        return string == null ? createUri(str) : string;
    }

    public static URI getTiny3X4(URI uri) {
        return formatURI(uri, 85, EACTags.COMPATIBLE_TAG_ALLOCATION_AUTHORITY);
    }

    public static URI getTiny3X4(String str) {
        return formatString(str, 85, EACTags.COMPATIBLE_TAG_ALLOCATION_AUTHORITY);
    }

    public static URI getTiny4X3(URI uri) {
        return formatURI(uri, EACTags.COMPATIBLE_TAG_ALLOCATION_AUTHORITY, 90);
    }

    public static URI getTiny4X3(String str) {
        return formatString(str, EACTags.COMPATIBLE_TAG_ALLOCATION_AUTHORITY, 90);
    }

    public static URI getTiny2X1(URI uri) {
        return formatURI(uri, CipherSuite.TLS_RSA_WITH_SEED_CBC_SHA, 84);
    }

    public static URI getTiny2X1(String str) {
        return formatString(str, CipherSuite.TLS_RSA_WITH_SEED_CBC_SHA, 84);
    }

    public static URI getSmall(URI uri) {
        return formatURI(uri, 200, 200);
    }

    public static URI getSmall(String str) {
        URI string = formatString(str, 200, 200);
        return (string != null || str == null) ? string : createUri(str);
    }

    public static URI getSmall3X4(URI uri) {
        return formatURI(uri, 215, 294);
    }

    public static URI getSmall3X4(String str) {
        return formatString(str, 215, 294);
    }

    public static URI getSmall4X3(URI uri) {
        return formatURI(uri, 275, 216);
    }

    public static URI getSmall4X3(String str) {
        return formatString(str, 275, 216);
    }

    public static URI getSmall2X1(URI uri) {
        return formatURI(uri, 243, CipherSuite.TLS_DH_anon_WITH_CAMELLIA_256_CBC_SHA);
    }

    public static URI getSmall2X1(String str) {
        return formatString(str, 243, CipherSuite.TLS_DH_anon_WITH_CAMELLIA_256_CBC_SHA);
    }

    public static URI getMedium(URI uri) {
        if (XboxTcuiSdk.getIsTablet()) {
            return formatURI(uri, 424, 424);
        }
        return formatURI(uri, 300, 300);
    }

    public static URI getMedium(String str) {
        URI string;
        if (XboxTcuiSdk.getIsTablet()) {
            string = formatString(str, 424, 424);
        } else {
            string = formatString(str, 300, 300);
        }
        return (string != null || str == null) ? string : createUri(str);
    }

    public static URI getMedium3X4(URI uri) {
        return formatURI(uri, 426, LARGE_PHONE);
    }

    public static URI getMedium3X4(String str) {
        return formatString(str, 426, LARGE_PHONE);
    }

    public static URI getMedium4X3(URI uri) {
        return formatURI(uri, 562, TypedValues.AttributesType.TYPE_PATH_ROTATE);
    }

    public static URI getMedium4X3(String str) {
        return formatString(str, 562, TypedValues.AttributesType.TYPE_PATH_ROTATE);
    }

    public static URI getMedium2X1(URI uri) {
        return formatURI(uri, 480, 270);
    }

    public static URI getMedium2X1(String str) {
        return formatString(str, 480, 270);
    }

    public static URI getLarge(URI uri) {
        if (XboxTcuiSdk.getIsTablet()) {
            return formatURI(uri, LARGE_TABLET, LARGE_TABLET);
        }
        return formatURI(uri, LARGE_PHONE, LARGE_PHONE);
    }

    public static URI getLarge(String str) {
        URI string;
        if (XboxTcuiSdk.getIsTablet()) {
            string = formatString(str, LARGE_TABLET, LARGE_TABLET);
        } else {
            string = formatString(str, LARGE_PHONE, LARGE_PHONE);
        }
        return (string != null || str == null) ? string : createUri(str);
    }

    public static URI getLarge3X4(URI uri) {
        return formatURI(uri, 720, 1080);
    }

    public static URI getLarge3X4(String str) {
        return formatString(str, 720, 1080);
    }

    private static URI formatURI(URI uri, int i, int i2) {
        if (uri == null) {
            return null;
        }
        URI string = formatString(uri.toString(), i, i2);
        return string == null ? uri : string;
    }

    private static URI formatString(String str, int i, int i2) {
        if (str == null || !str.contains("images-eds")) {
            return null;
        }
        boolean zContains = str.contains("&w=");
        boolean zContains2 = str.contains("&h=");
        if (zContains && zContains2) {
            return createUri(str.replaceAll("w=[0-9]+", "w=" + i).replaceAll("h=[0-9]+", "h=" + i2));
        }
        if (zContains) {
            return createUri(str.replaceAll("w=[0-9]+", "w=" + i) + "&h=" + i2);
        }
        if (zContains2) {
            return createUri(str.replaceAll("h=[0-9]+", "h=" + i2) + "&w=" + i);
        }
        if (str.contains("format=")) {
            return createUri(str + String.format(resizeFormatterSizeOnly, Integer.valueOf(i), Integer.valueOf(i2)));
        }
        return createUri(str + String.format(resizeFormatter, Integer.valueOf(i), Integer.valueOf(i2)));
    }

    private static URI createUri(String str) {
        if (str == null) {
            return null;
        }
        try {
            return URI.create(str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public static URI getUri(String str, ImageType imageType) {
        if (imageType == null) {
            return getSmall(str);
        }
        switch (AnonymousClass1.$SwitchMap$com$microsoft$xbox$xle$app$ImageUtil$ImageType[imageType.ordinal()]) {
            case 1:
                return getTiny(str);
            case 2:
                return getTiny3X4(str);
            case 3:
                return getTiny4X3(str);
            case 4:
                return getSmall(str);
            case 5:
                return getSmall3X4(str);
            case 6:
                return getSmall4X3(str);
            case 7:
                return getMedium(str);
            case 8:
                return getMedium3X4(str);
            case 9:
                return getMedium4X3(str);
            case 10:
                return getLarge(str);
            case 11:
                return getLarge3X4(str);
            default:
                return getSmall(str);
        }
    }

    /* JADX INFO: renamed from: com.microsoft.xbox.xle.app.ImageUtil$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$microsoft$xbox$xle$app$ImageUtil$ImageType;

        static {
            int[] iArr = new int[ImageType.values().length];
            $SwitchMap$com$microsoft$xbox$xle$app$ImageUtil$ImageType = iArr;
            try {
                iArr[ImageType.TINY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$xle$app$ImageUtil$ImageType[ImageType.TINY_3X4.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$xle$app$ImageUtil$ImageType[ImageType.TINY_4X3.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$xle$app$ImageUtil$ImageType[ImageType.SMALL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$xle$app$ImageUtil$ImageType[ImageType.SMALL_3X4.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$xle$app$ImageUtil$ImageType[ImageType.SMALL_4X3.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$xle$app$ImageUtil$ImageType[ImageType.MEDIUM.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$xle$app$ImageUtil$ImageType[ImageType.MEDIUM_3X4.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$xle$app$ImageUtil$ImageType[ImageType.MEDIUM_4X3.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$xle$app$ImageUtil$ImageType[ImageType.LARGE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$xle$app$ImageUtil$ImageType[ImageType.LARGE_3X4.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public static URI getUri(URI uri, ImageType imageType) {
        if (imageType == null) {
            return getSmall(uri);
        }
        switch (AnonymousClass1.$SwitchMap$com$microsoft$xbox$xle$app$ImageUtil$ImageType[imageType.ordinal()]) {
            case 1:
                return getTiny(uri);
            case 2:
                return getTiny3X4(uri);
            case 3:
                return getTiny4X3(uri);
            case 4:
                return getSmall(uri);
            case 5:
                return getSmall3X4(uri);
            case 6:
                return getSmall4X3(uri);
            case 7:
                return getMedium(uri);
            case 8:
                return getMedium3X4(uri);
            case 9:
                return getMedium4X3(uri);
            case 10:
                return getLarge(uri);
            case 11:
                return getLarge3X4(uri);
            default:
                return getSmall(uri);
        }
    }

    public enum ImageType {
        TINY,
        TINY_3X4,
        TINY_4X3,
        SMALL,
        SMALL_3X4,
        SMALL_4X3,
        MEDIUM,
        MEDIUM_3X4,
        MEDIUM_4X3,
        LARGE,
        LARGE_3X4;

        public static ImageType fromString(String str) {
            try {
                return valueOf(str);
            } catch (IllegalArgumentException | NullPointerException unused) {
                return null;
            }
        }
    }
}
