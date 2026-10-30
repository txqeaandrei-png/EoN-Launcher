package com.microsoft.xbox.toolkit.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import com.microsoft.xbox.toolkit.XLERValueHelper;
import java.net.URI;
import java.net.URISyntaxException;

/* JADX INFO: loaded from: classes4.dex */
public class XLEUniversalImageView extends XLEImageView {
    private static final int JELLY_BEAN_MR1 = 17;
    private static final String TAG = "XLEUniversalImageView";
    private boolean adjustViewBounds;
    public Params arg;
    private final View.OnLayoutChangeListener listener;
    private int maxHeight;
    private int maxWidth;

    public XLEUniversalImageView(Context context) {
        this(context, new Params());
    }

    public XLEUniversalImageView(Context context, Params params) {
        super(context);
        this.listener = new View.OnLayoutChangeListener() { // from class: com.microsoft.xbox.toolkit.ui.XLEUniversalImageView$$ExternalSyntheticLambda2
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                this.f$0.lambda$new$0(view, i, i2, i3, i4, i5, i6, i7, i8);
            }
        };
        setMaxWidth(Integer.MAX_VALUE);
        setMaxHeight(Integer.MAX_VALUE);
        this.arg = params;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        int i9 = i4 - i2;
        if (!(i3 - i == i7 - i5 && i9 == i8 - i6) && this.arg.hasText()) {
            new XLETextTask(this).execute(this.arg.getArgText());
        }
    }

    public XLEUniversalImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.listener = new View.OnLayoutChangeListener() { // from class: com.microsoft.xbox.toolkit.ui.XLEUniversalImageView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                this.f$0.lambda$new$1(view, i, i2, i3, i4, i5, i6, i7, i8);
            }
        };
        this.arg = initializeAttributes(context, attributeSet, 0);
        updateImage();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        int i9 = i4 - i2;
        if (!(i3 - i == i7 - i5 && i9 == i8 - i6) && this.arg.hasText()) {
            new XLETextTask(this).execute(this.arg.getArgText());
        }
    }

    public XLEUniversalImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.listener = new View.OnLayoutChangeListener() { // from class: com.microsoft.xbox.toolkit.ui.XLEUniversalImageView$$ExternalSyntheticLambda1
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                this.f$0.lambda$new$2(view, i2, i3, i4, i5, i6, i7, i8, i9);
            }
        };
        this.arg = initializeAttributes(context, attributeSet, i);
        updateImage();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        int i9 = i4 - i2;
        if (!(i3 - i == i7 - i5 && i9 == i8 - i6) && this.arg.hasText()) {
            new XLETextTask(this).execute(this.arg.getArgText());
        }
    }

    public void setText(String str) {
        if (TextUtils.equals(str, this.arg.getArgText().getText())) {
            return;
        }
        this.arg = this.arg.cloneWithText(str);
        updateImage();
    }

    public void setText(int i) {
        setText(getResources().getString(i));
    }

    public void setImageURI2(URI uri, int i, int i2) {
        this.arg = this.arg.cloneWithUri(uri, i, i2);
        updateImage();
    }

    public void setImageURI2(URI uri) {
        this.arg = this.arg.cloneWithUri(uri);
        updateImage();
    }

    public void clearImage() {
        this.arg = this.arg.cloneEmpty();
        updateImage();
    }

    private void updateImage() {
        if (this.arg.hasText()) {
            new XLETextTask(this).execute(this.arg.getArgText());
        } else if (this.arg.hasArgUri()) {
            TextureManager.Instance().bindToView(this.arg.getArgUri().getUri(), this, this.arg.getArgUri().getTextureBindingOption());
        } else {
            if (this.arg.hasSrc()) {
                return;
            }
            setImageDrawable(null);
        }
    }

    private Params initializeAttributes(Context context, AttributeSet attributeSet, int i) {
        Typeface typeface;
        Params params;
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, XLERValueHelper.getStyleableRValueArray(TAG), i, 0);
        String string = null;
        try {
            float dimension = typedArrayObtainStyledAttributes.getDimension(XLERValueHelper.getStyleableRValue("XLEUniversalImageView_android_textSize"), context.getResources().getDisplayMetrics().scaledDensity * 8.0f);
            int color = typedArrayObtainStyledAttributes.getColor(XLERValueHelper.getStyleableRValue("XLEUniversalImageView_android_textColor"), 0);
            int i2 = typedArrayObtainStyledAttributes.getInt(XLERValueHelper.getStyleableRValue("XLEUniversalImageView_android_typeface"), -1);
            int i3 = typedArrayObtainStyledAttributes.getInt(XLERValueHelper.getStyleableRValue("XLEUniversalImageView_android_textStyle"), 0);
            String string2 = typedArrayObtainStyledAttributes.getString(XLERValueHelper.getStyleableRValue("XLEUniversalImageView_typefaceSource"));
            if (string2 == null) {
                typeface = Typeface.create(TypefaceXml.typefaceFromIndex(i2), i3);
            } else {
                typeface = FontManager.Instance().getTypeface(context, string2);
            }
            Typeface typeface2 = typeface;
            int color2 = typedArrayObtainStyledAttributes.getColor(XLERValueHelper.getStyleableRValue("XLEUniversalImageView_eraseColor"), 0);
            boolean z = typedArrayObtainStyledAttributes.getBoolean(XLERValueHelper.getStyleableRValue("XLEUniversalImageView_adjustForImageSize"), false);
            boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(XLERValueHelper.getStyleableRValue("XLEUniversalImageView_android_src"));
            XLETextArg.Params params2 = new XLETextArg.Params(dimension, color, typeface2, color2, z, typedArrayObtainStyledAttributes.hasValue(XLERValueHelper.getStyleableRValue("XLEUniversalImageView_textAspectRatio")) ? Float.valueOf(typedArrayObtainStyledAttributes.getFloat(XLERValueHelper.getStyleableRValue("XLEUniversalImageView_textAspectRatio"), 0.0f)) : null);
            String string3 = typedArrayObtainStyledAttributes.getString(XLERValueHelper.getStyleableRValue("XLEUniversalImageView_android_text"));
            if (string3 != null) {
                params = new Params(new XLETextArg(string3, params2), false);
            } else {
                string = typedArrayObtainStyledAttributes.getString(XLERValueHelper.getStyleableRValue("XLEUniversalImageView_uri"));
                if (string != null) {
                    params = new Params(new XLETextArg(params2), new XLEURIArg(new URI(string)));
                } else {
                    params = new Params(new XLETextArg(params2), zHasValue);
                }
            }
            if (z) {
                addOnLayoutChangeListener(this.listener);
            }
            typedArrayObtainStyledAttributes.recycle();
            return params;
        } catch (URISyntaxException e) {
            throw new RuntimeException("Error parsing URI '" + string + "'", e);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    @Override // android.widget.ImageView
    public void setMaxWidth(int i) {
        super.setMaxWidth(i);
        this.maxWidth = i;
    }

    @Override // android.widget.ImageView
    public void setMaxHeight(int i) {
        super.setMaxHeight(i);
        this.maxHeight = i;
    }

    @Override // android.widget.ImageView
    public void setAdjustViewBounds(boolean z) {
        this.adjustViewBounds = z;
        super.setAdjustViewBounds(z);
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00c9 A[PHI: r5
      0x00c9: PHI (r5v10 int) = (r5v9 int), (r5v11 int) binds: [B:31:0x00b3, B:36:0x00c3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:47:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:4:0x0016  */
    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        boolean z;
        boolean z2;
        int size;
        int size2;
        float f;
        int iResolveSizeAndState;
        int iResolveSizeAndState2;
        boolean z3;
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        Drawable drawable = getDrawable();
        if (drawable == null) {
            z = false;
            z2 = false;
            size = 0;
            size2 = 0;
            f = 0.0f;
        } else {
            drawable.getIntrinsicWidth();
            drawable.getIntrinsicHeight();
            if (this.adjustViewBounds) {
                z = mode != 1073741824;
                z2 = mode2 != 1073741824;
                size = View.MeasureSpec.getSize(i);
                size2 = View.MeasureSpec.getSize(i2);
                if (size > size2) {
                    size2 = 0 / 0;
                } else {
                    size = 0 / 0;
                }
                f = size / size2;
            } else {
                z = false;
                z2 = false;
                size = 0;
                size2 = 0;
                f = 0.0f;
            }
        }
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        boolean z4 = getContext().getApplicationInfo().targetSdkVersion <= 17;
        if (z || z2) {
            int iResolveAdjustedSize = resolveAdjustedSize(size + paddingLeft + paddingRight, this.maxWidth, i);
            int iResolveAdjustedSize2 = resolveAdjustedSize(size2 + paddingTop + paddingBottom, this.maxHeight, i2);
            if (f != 0.0f) {
                float f2 = (iResolveAdjustedSize2 - paddingTop) - paddingBottom;
                if (Math.abs((((iResolveAdjustedSize - paddingLeft) - paddingRight) / f2) - f) > 1.0E-7d) {
                    if (z) {
                        int i3 = ((int) (f2 * f)) + paddingLeft + paddingRight;
                        if (!z2 && !z4) {
                            iResolveAdjustedSize = resolveAdjustedSize(i3, this.maxWidth, i);
                        }
                        if (i3 <= iResolveAdjustedSize) {
                            iResolveSizeAndState = i3;
                            z3 = true;
                        } else {
                            iResolveSizeAndState = iResolveAdjustedSize;
                            z3 = false;
                        }
                    } else {
                        iResolveSizeAndState = iResolveAdjustedSize;
                        z3 = false;
                    }
                    if (!z3 && z2) {
                        int i4 = ((int) (((iResolveSizeAndState - paddingLeft) - paddingRight) / f)) + paddingTop + paddingBottom;
                        if (!z && !z4) {
                            iResolveAdjustedSize2 = resolveAdjustedSize(i4, this.maxHeight, i2);
                        }
                        if (i4 <= iResolveAdjustedSize2) {
                            iResolveSizeAndState2 = i4;
                        }
                    }
                } else {
                    iResolveSizeAndState = iResolveAdjustedSize;
                }
                iResolveSizeAndState2 = iResolveAdjustedSize2;
            } else {
                iResolveSizeAndState = iResolveAdjustedSize;
                iResolveSizeAndState2 = iResolveAdjustedSize2;
            }
        } else {
            int iMax = Math.max(size + paddingLeft + paddingRight, getSuggestedMinimumWidth());
            int iMax2 = Math.max(size2 + paddingTop + paddingBottom, getSuggestedMinimumHeight());
            iResolveSizeAndState = resolveSizeAndState(iMax, i, 0);
            iResolveSizeAndState2 = resolveSizeAndState(iMax2, i2, 0);
        }
        setMeasuredDimension(iResolveSizeAndState, iResolveSizeAndState2);
    }

    private int resolveAdjustedSize(int i, int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i3);
        if (mode == Integer.MIN_VALUE) {
            return Math.min(Math.min(i, size), i2);
        }
        if (mode != 0) {
            return mode != 1073741824 ? i : size;
        }
        return Math.min(i, i2);
    }

    /* JADX INFO: loaded from: classes3.dex */
    public enum TypefaceXml {
        NORMAL,
        SANS,
        SERIF,
        MONOSPACE;

        public static TypefaceXml fromIndex(int i) {
            TypefaceXml[] typefaceXmlArrValues = values();
            if (i < 0 || i >= typefaceXmlArrValues.length) {
                return null;
            }
            return typefaceXmlArrValues[i];
        }

        public static Typeface typefaceFromIndex(int i) {
            TypefaceXml typefaceXmlFromIndex = fromIndex(i);
            if (typefaceXmlFromIndex == null) {
                return null;
            }
            int i2 = AnonymousClass1.$SwitchMap$com$microsoft$xbox$toolkit$ui$XLEUniversalImageView$TypefaceXml[typefaceXmlFromIndex.ordinal()];
            if (i2 == 1) {
                return Typeface.SANS_SERIF;
            }
            if (i2 == 2) {
                return Typeface.SERIF;
            }
            if (i2 != 3) {
                return null;
            }
            return Typeface.MONOSPACE;
        }
    }

    /* JADX INFO: renamed from: com.microsoft.xbox.toolkit.ui.XLEUniversalImageView$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes3.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$microsoft$xbox$toolkit$ui$XLEUniversalImageView$TypefaceXml;

        static {
            int[] iArr = new int[TypefaceXml.values().length];
            $SwitchMap$com$microsoft$xbox$toolkit$ui$XLEUniversalImageView$TypefaceXml = iArr;
            try {
                iArr[TypefaceXml.SANS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$toolkit$ui$XLEUniversalImageView$TypefaceXml[TypefaceXml.SERIF.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$toolkit$ui$XLEUniversalImageView$TypefaceXml[TypefaceXml.MONOSPACE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public static class Params {
        private final XLETextArg argText;
        private final XLEURIArg argUri;
        private final boolean hasSrc;

        public Params() {
            this(new XLETextArg(new XLETextArg.Params()), null, false);
        }

        public Params(XLETextArg xLETextArg, boolean z) {
            this(xLETextArg, null, z);
        }

        public Params(XLETextArg xLETextArg, XLEURIArg xLEURIArg) {
            this(xLETextArg, xLEURIArg, false);
        }

        private Params(XLETextArg xLETextArg, XLEURIArg xLEURIArg, boolean z) {
            this.argText = xLETextArg;
            this.argUri = xLEURIArg;
            this.hasSrc = z;
        }

        public Params cloneWithText(String str) {
            return new Params(new XLETextArg(str, this.argText.getParams()), null, this.hasSrc);
        }

        public Params cloneWithUri(URI uri, int i, int i2) {
            return new Params(new XLETextArg(this.argText.getParams()), new XLEURIArg(uri, i, i2), this.hasSrc);
        }

        public Params cloneWithUri(URI uri) {
            XLEURIArg xLEURIArg = this.argUri;
            int loadingResourceId = xLEURIArg == null ? -1 : xLEURIArg.getLoadingResourceId();
            XLEURIArg xLEURIArg2 = this.argUri;
            return cloneWithUri(uri, loadingResourceId, xLEURIArg2 != null ? xLEURIArg2.getErrorResourceId() : -1);
        }

        public Params cloneWithSrc(boolean z) {
            return new Params(new XLETextArg(this.argText.getParams()), null, z);
        }

        public Params cloneEmpty() {
            return new Params(new XLETextArg(this.argText.getParams()), null, false);
        }

        public XLETextArg getArgText() {
            return this.argText;
        }

        public boolean hasText() {
            return this.argText.hasText();
        }

        public XLEURIArg getArgUri() {
            return this.argUri;
        }

        public boolean hasArgUri() {
            return this.argUri != null;
        }

        public boolean hasSrc() {
            return this.hasSrc;
        }
    }
}
