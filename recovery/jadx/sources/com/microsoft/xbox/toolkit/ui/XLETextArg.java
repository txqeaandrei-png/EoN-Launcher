package com.microsoft.xbox.toolkit.ui;

import android.graphics.Typeface;
import com.microsoft.xbox.toolkit.system.SystemUtil;

/* JADX INFO: loaded from: classes3.dex */
public class XLETextArg {
    private final Params params;
    private final String text;

    public XLETextArg(String str, Params params) {
        this.text = str;
        this.params = params;
    }

    public XLETextArg(Params params) {
        this(null, params);
    }

    public String getText() {
        return this.text;
    }

    public boolean hasText() {
        return this.text != null;
    }

    public Params getParams() {
        return this.params;
    }

    public static class Params {
        private final boolean adjustForImageSize;
        private final int color;
        private final int eraseColor;
        private final Float textAspectRatio;
        private final float textSize;
        private final Typeface typeface;

        public Params() {
            this(SystemUtil.SPtoPixels(8.0f), -1, Typeface.DEFAULT, 0, false, null);
        }

        public Params(float f, int i, Typeface typeface, int i2, boolean z, Float f2) {
            this.textSize = f;
            this.color = i;
            this.typeface = typeface;
            this.eraseColor = i2;
            this.adjustForImageSize = z;
            this.textAspectRatio = f2;
        }

        public float getTextSize() {
            return this.textSize;
        }

        public int getColor() {
            return this.color;
        }

        public Typeface getTypeface() {
            return this.typeface;
        }

        public boolean hasEraseColor() {
            return this.eraseColor != 0;
        }

        public int getEraseColor() {
            return this.eraseColor;
        }

        public boolean isAdjustForImageSize() {
            return this.adjustForImageSize;
        }

        public Float getTextAspectRatio() {
            return this.textAspectRatio;
        }

        public boolean hasTextAspectRatio() {
            return this.textAspectRatio != null;
        }
    }
}
