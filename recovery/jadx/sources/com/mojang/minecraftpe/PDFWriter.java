package com.mojang.minecraftpe;

import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.pdf.PdfDocument;
import android.os.Environment;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.ViewCompat;
import com.mojang.minecraftpe.utils.FileHelper;
import java.io.FileOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public class PDFWriter {
    private final Rect mImageRect;
    private PdfDocument mOpenDocument;
    private final Rect mPageRect;
    private final TextPaint mPageTextPaint;
    private final Rect mTextRect;
    private final Rect mTitleRect;
    private final TextPaint mTitleTextPaint;

    public PDFWriter() {
        Rect rect = new Rect(0, 0, TypedValues.MotionType.TYPE_QUANTIZE_INTERPOLATOR_ID, 792);
        this.mPageRect = rect;
        Rect rect2 = new Rect(0, 0, rect.width(), (int) (rect.height() * 0.7f));
        this.mTitleRect = rect2;
        rect2.offset(0, (int) (rect.height() * 0.3f));
        Rect rect3 = new Rect(rect);
        this.mTextRect = rect3;
        rect3.inset(20, 20);
        Rect rect4 = new Rect(0, 0, 500, 500);
        this.mImageRect = rect4;
        rect4.offset(rect.centerX() - rect4.centerX(), rect.centerY() - rect4.centerY());
        Typeface typefaceCreateFromAsset = Typeface.DEFAULT_BOLD;
        try {
            typefaceCreateFromAsset = Typeface.createFromAsset(MainActivity.mInstance.getAssets(), "fonts/Mojangles.ttf");
        } catch (Exception e) {
            System.out.println("Failed to load mojangles font: " + e.getMessage());
        }
        TextPaint textPaint = new TextPaint();
        this.mTitleTextPaint = textPaint;
        textPaint.setAntiAlias(true);
        textPaint.setTextSize(64.0f);
        textPaint.setColor(ViewCompat.MEASURED_STATE_MASK);
        textPaint.setTypeface(typefaceCreateFromAsset);
        TextPaint textPaint2 = new TextPaint();
        this.mPageTextPaint = textPaint2;
        textPaint2.setAntiAlias(true);
        textPaint2.setTextSize(32.0f);
        textPaint2.setColor(ViewCompat.MEASURED_STATE_MASK);
    }

    public boolean createDocument(String[] strArr, String str) {
        PdfDocument pdfDocument = this.mOpenDocument;
        if (pdfDocument != null) {
            pdfDocument.close();
        }
        PdfDocument pdfDocument2 = new PdfDocument();
        this.mOpenDocument = pdfDocument2;
        PdfDocument.Page pageStartPage = pdfDocument2.startPage(_getPageInfo(1));
        _drawTextInRect(str, pageStartPage, this.mTitleTextPaint, this.mTitleRect, Layout.Alignment.ALIGN_CENTER);
        this.mOpenDocument.finishPage(pageStartPage);
        for (int i = 0; i < strArr.length; i++) {
            String str2 = strArr[i];
            PdfDocument.Page pageStartPage2 = this.mOpenDocument.startPage(_getPageInfo(i + 2));
            try {
                String str_getExtension = _getExtension(str2);
                if (str_getExtension.equals("txt")) {
                    _drawTextInRect(_readFileToString(str2), pageStartPage2, this.mPageTextPaint, this.mTextRect, Layout.Alignment.ALIGN_NORMAL);
                } else if (str_getExtension.equals("jpeg")) {
                    pageStartPage2.getCanvas().drawBitmap(BitmapFactory.decodeFile(str2), (Rect) null, this.mImageRect, (Paint) null);
                } else {
                    throw new UnsupportedOperationException("Unsupported extension from file: " + str2);
                }
                this.mOpenDocument.finishPage(pageStartPage2);
            } catch (Exception e) {
                System.out.println("Failed to write page: " + e.getMessage());
                closeDocument();
                return false;
            }
        }
        return true;
    }

    public boolean writeDocumentToFile(String str) {
        try {
            this.mOpenDocument.writeTo(new FileOutputStream(str));
            return true;
        } catch (Exception e) {
            System.out.println("Failed to write pdf file: " + e.getMessage());
            return false;
        }
    }

    public void closeDocument() {
        PdfDocument pdfDocument = this.mOpenDocument;
        if (pdfDocument != null) {
            pdfDocument.close();
            this.mOpenDocument = null;
        }
    }

    public String getPicturesDirectory() {
        return Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES).getAbsolutePath();
    }

    private PdfDocument.PageInfo _getPageInfo(int i) {
        return new PdfDocument.PageInfo.Builder(this.mPageRect.width(), this.mPageRect.height(), i).create();
    }

    private void _drawTextInRect(String str, PdfDocument.Page page, TextPaint textPaint, Rect rect, Layout.Alignment alignment) {
        StaticLayout staticLayout = new StaticLayout(str, textPaint, rect.width(), alignment, 1.0f, 0.0f, false);
        Canvas canvas = page.getCanvas();
        canvas.translate(rect.left, rect.top);
        staticLayout.draw(canvas);
    }

    private String _readFileToString(String str) throws IOException {
        return FileHelper.readFile(str);
    }

    private String _getExtension(String str) {
        int i;
        int iLastIndexOf = str.lastIndexOf(46);
        if (iLastIndexOf < 0 || (i = iLastIndexOf + 1) >= str.length()) {
            return "";
        }
        return str.substring(i).toLowerCase();
    }
}
