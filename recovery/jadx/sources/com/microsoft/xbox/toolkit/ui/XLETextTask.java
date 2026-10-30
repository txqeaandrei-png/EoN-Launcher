package com.microsoft.xbox.toolkit.ui;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.AsyncTask;
import android.text.TextPaint;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes3.dex */
public class XLETextTask extends AsyncTask<XLETextArg, Void, Bitmap> {
    private static final String TAG = "XLETextTask";
    private final WeakReference<ImageView> img;
    private final int imgHeight;
    private final int imgWidth;

    public XLETextTask(ImageView imageView) {
        this.img = new WeakReference<>(imageView);
        this.imgWidth = imageView.getWidth();
        this.imgHeight = imageView.getHeight();
    }

    @Override // android.os.AsyncTask
    public Bitmap doInBackground(XLETextArg... xLETextArgArr) {
        int iMax;
        int iMax2;
        if (xLETextArgArr.length <= 0) {
            return null;
        }
        XLETextArg xLETextArg = xLETextArgArr[0];
        XLETextArg.Params params = xLETextArg.getParams();
        String text = xLETextArg.getText();
        TextPaint textPaint = new TextPaint();
        textPaint.setTextSize(params.getTextSize());
        textPaint.setAntiAlias(true);
        textPaint.setColor(params.getColor());
        textPaint.setTypeface(params.getTypeface());
        int iRound = Math.round(textPaint.measureText(text));
        int iRound2 = Math.round(textPaint.descent() - textPaint.ascent());
        if (params.isAdjustForImageSize()) {
            iMax = Math.max(iRound, this.imgWidth);
            iMax2 = Math.max(iRound2, this.imgHeight);
        } else {
            iMax = iRound;
            iMax2 = iRound2;
        }
        if (params.hasTextAspectRatio()) {
            float fFloatValue = params.getTextAspectRatio().floatValue();
            if (fFloatValue > 0.0f) {
                float f = iMax2;
                float f2 = iMax * fFloatValue;
                if (f > f2) {
                    iMax = (int) (f / fFloatValue);
                } else {
                    iMax2 = (int) f2;
                }
            }
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iMax, iMax2, Bitmap.Config.ARGB_8888);
        if (params.hasEraseColor()) {
            bitmapCreateBitmap.eraseColor(params.getEraseColor());
        }
        new Canvas(bitmapCreateBitmap).drawText(text, Math.max(0, iMax - iRound) / 2, (-textPaint.ascent()) + (Math.max(0, iMax2 - iRound2) / 2), textPaint);
        return bitmapCreateBitmap;
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(Bitmap bitmap) {
        ImageView imageView = this.img.get();
        if (imageView != null) {
            imageView.setImageBitmap(bitmap);
        }
    }
}
