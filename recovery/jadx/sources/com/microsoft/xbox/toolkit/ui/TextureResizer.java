package com.microsoft.xbox.toolkit.ui;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;

/* JADX INFO: loaded from: classes3.dex */
public class TextureResizer {
    public static Bitmap createScaledBitmap8888(Bitmap bitmap, int i, int i2, boolean z) {
        Paint paint;
        Bitmap bitmapCreateBitmap;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        float f = width;
        float f2 = height;
        Matrix matrix = new Matrix();
        matrix.setScale(i / f, i2 / f2);
        if (width <= bitmap.getWidth()) {
            if (height > bitmap.getHeight()) {
                throw new IllegalArgumentException("y + height must be <= bitmap.height()");
            }
            if (!bitmap.isMutable() && width == bitmap.getWidth() && height == bitmap.getHeight() && matrix.isIdentity()) {
                return bitmap;
            }
            Canvas canvas = new Canvas();
            Rect rect = new Rect(0, 0, width, height);
            RectF rectF = new RectF(0.0f, 0.0f, f, f2);
            if (matrix.isIdentity()) {
                bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
                paint = null;
            } else {
                boolean z2 = bitmap.hasAlpha() || !matrix.rectStaysRect();
                RectF rectF2 = new RectF();
                matrix.mapRect(rectF2, rectF);
                Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(Math.round(rectF2.width()), Math.round(rectF2.height()), Bitmap.Config.ARGB_8888);
                if (z2) {
                    bitmapCreateBitmap2.eraseColor(0);
                }
                canvas.translate(-rectF2.left, -rectF2.top);
                canvas.concat(matrix);
                paint = new Paint();
                paint.setFilterBitmap(z);
                if (!matrix.rectStaysRect()) {
                    paint.setAntiAlias(true);
                }
                bitmapCreateBitmap = bitmapCreateBitmap2;
            }
            bitmapCreateBitmap.setDensity(bitmap.getDensity());
            canvas.setBitmap(bitmapCreateBitmap);
            canvas.drawBitmap(bitmap, rect, rectF, paint);
            return bitmapCreateBitmap;
        }
        throw new IllegalArgumentException("x + width must be <= bitmap.width()");
    }
}
