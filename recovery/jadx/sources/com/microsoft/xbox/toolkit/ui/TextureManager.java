package com.microsoft.xbox.toolkit.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.widget.ImageView;
import com.microsoft.xbox.toolkit.MemoryMonitor;
import com.microsoft.xbox.toolkit.MultiMap;
import com.microsoft.xbox.toolkit.ThreadManager;
import com.microsoft.xbox.toolkit.ThreadSafePriorityQueue;
import com.microsoft.xbox.toolkit.TimeMonitor;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xbox.toolkit.XLEFileCache;
import com.microsoft.xbox.toolkit.XLEFileCacheManager;
import com.microsoft.xbox.toolkit.XLEMemoryCache;
import com.microsoft.xbox.toolkit.XLEThread;
import com.microsoft.xbox.toolkit.network.HttpClientFactory;
import com.microsoft.xbox.toolkit.network.XLEHttpStatusAndStream;
import com.microsoft.xbox.toolkit.network.XLEThreadPool;
import com.microsoft.xboxtcui.R;
import com.microsoft.xboxtcui.XboxTcuiSdk;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.util.HashMap;
import java.util.HashSet;
import org.apache.http.client.methods.HttpGet;

/* JADX INFO: loaded from: classes3.dex */
public class TextureManager {
    private static final int ANIM_TIME = 100;
    private static final int BITMAP_CACHE_MAX_FILE_SIZE_IN_BYTES = 5242880;
    private static final String BMP_FILE_CACHE_DIR_NAME = "texture";
    private static final int BMP_FILE_CACHE_SIZE = 2000;
    private static final int DECODE_THREAD_WAIT_TIMEOUT_MS = 3000;
    private static final int TEXTURE_TIMEOUT_MS = 15000;
    private static final long TIME_TO_RETRY_MS = 300000;
    public static TextureManager instance = new TextureManager();
    public XLEMemoryCache<TextureManagerScaledNetworkBitmapRequest, XLEBitmap> bitmapCache;
    public XLEFileCache bitmapFileCache;
    private Thread decodeThread;
    public HashSet<TextureManagerScaledNetworkBitmapRequest> inProgress;
    public final Object listLock;
    private HashMap<TextureManagerScaledResourceBitmapRequest, XLEBitmap> resourceBitmapCache;
    private final TimeMonitor stopwatch;
    public HashMap<TextureManagerScaledNetworkBitmapRequest, RetryEntry> timeToRetryCache;
    public ThreadSafePriorityQueue<TextureManagerDownloadRequest> toDecode;
    public MultiMap<TextureManagerScaledNetworkBitmapRequest, ImageView> waitingForImage;

    public void logMemoryUsage() {
    }

    public void preload(int i) {
    }

    public void preload(URI uri) {
    }

    public void preloadFromFile(String str) {
    }

    public void unsafeClearBitmapCache() {
    }

    public TextureManager() {
        TimeMonitor timeMonitor = new TimeMonitor();
        this.stopwatch = timeMonitor;
        this.bitmapCache = new XLEMemoryCache<>(Math.min(getNetworkBitmapCacheSizeInMB(), 50) * 1048576, BITMAP_CACHE_MAX_FILE_SIZE_IN_BYTES);
        this.bitmapFileCache = XLEFileCacheManager.createCache(BMP_FILE_CACHE_DIR_NAME, BMP_FILE_CACHE_SIZE);
        this.inProgress = new HashSet<>();
        this.listLock = new Object();
        this.timeToRetryCache = new HashMap<>();
        this.toDecode = new ThreadSafePriorityQueue<>();
        this.waitingForImage = new MultiMap<>();
        this.decodeThread = null;
        this.resourceBitmapCache = new HashMap<>();
        timeMonitor.start();
        XLEThread xLEThread = new XLEThread(new TextureManagerDecodeThread(), "XLETextureDecodeThread");
        this.decodeThread = xLEThread;
        xLEThread.setDaemon(true);
        this.decodeThread.setPriority(4);
        this.decodeThread.start();
    }

    public static TextureManager Instance() {
        return instance;
    }

    private static boolean invalidUrl(String str) {
        return str == null || str.isEmpty();
    }

    private static boolean validResizeDimention(int i, int i2) {
        if (i == 0 || i2 == 0) {
            throw new UnsupportedOperationException();
        }
        return i > 0 && i2 > 0;
    }

    private int getNetworkBitmapCacheSizeInMB() {
        return (Math.max(0, MemoryMonitor.instance().getMemoryClass() - 64) / 2) + 12;
    }

    private void load(TextureManagerScaledNetworkBitmapRequest textureManagerScaledNetworkBitmapRequest) {
        if (invalidUrl(textureManagerScaledNetworkBitmapRequest.url)) {
            return;
        }
        XLEThreadPool.textureThreadPool.run(new TextureManagerDownloadThreadWorker(new TextureManagerDownloadRequest(textureManagerScaledNetworkBitmapRequest)));
    }

    public XLEBitmap.XLEBitmapDrawable loadScaledResourceDrawable(int i) {
        XLEBitmap xLEBitmapLoadResource = loadResource(i);
        if (xLEBitmapLoadResource == null) {
            return null;
        }
        return xLEBitmapLoadResource.getDrawable();
    }

    public BitmapFactory.Options computeInSampleSizeOptions(int i, int i2, BitmapFactory.Options options) {
        BitmapFactory.Options options2 = new BitmapFactory.Options();
        int i3 = 1;
        i3 = 1;
        i3 = 1;
        if (validResizeDimention(i, i2) && options.outWidth > i && options.outHeight > i2) {
            int iPow = (int) Math.pow(2.0d, Math.min((int) Math.floor(Math.log(options.outWidth / i) / Math.log(2.0d)), (int) Math.floor(Math.log(options.outHeight / i2) / Math.log(2.0d))));
            XLEAssert.assertTrue(iPow >= 1);
            i3 = iPow;
        }
        options2.inSampleSize = i3;
        return options2;
    }

    public XLEBitmap loadResource(int i) {
        TextureManagerScaledResourceBitmapRequest textureManagerScaledResourceBitmapRequest = new TextureManagerScaledResourceBitmapRequest(i);
        XLEBitmap xLEBitmapDecodeResource = this.resourceBitmapCache.get(textureManagerScaledResourceBitmapRequest);
        if (xLEBitmapDecodeResource == null) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeResource(XboxTcuiSdk.getResources(), textureManagerScaledResourceBitmapRequest.resourceId, options);
            xLEBitmapDecodeResource = XLEBitmap.decodeResource(XboxTcuiSdk.getResources(), textureManagerScaledResourceBitmapRequest.resourceId);
            this.resourceBitmapCache.put(textureManagerScaledResourceBitmapRequest, xLEBitmapDecodeResource);
        }
        XLEAssert.assertNotNull(xLEBitmapDecodeResource);
        return xLEBitmapDecodeResource;
    }

    public void bindToView(int i, ImageView imageView, int i2, int i3) {
        bindToView(i, imageView, i2, i3, null);
    }

    public void bindToView(int i, ImageView imageView, int i2, int i3, OnBitmapSetListener onBitmapSetListener) {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        XLEBitmap xLEBitmapLoadResource = loadResource(i);
        XLEAssert.assertTrue(xLEBitmapLoadResource != null);
        if (imageView instanceof XLEImageView) {
            ((XLEImageView) imageView).TEST_loadingOrLoadedImageUrl = Integer.toString(i);
        }
        setImage(imageView, xLEBitmapLoadResource);
    }

    public void bindToViewFromFile(String str, ImageView imageView, TextureBindingOption textureBindingOption) {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        bindToViewInternal(str, imageView, textureBindingOption);
    }

    public void bindToViewFromFile(String str, ImageView imageView, int i, int i2) {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        if (i == 0 || i2 == 0) {
            throw new UnsupportedOperationException();
        }
        bindToViewInternal(str, imageView, new TextureBindingOption(i, i2));
    }

    public void bindToView(URI uri, ImageView imageView, int i, int i2) {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        if (i == 0 || i2 == 0) {
            throw new UnsupportedOperationException();
        }
        bindToViewInternal(uri == null ? null : uri.toString(), imageView, new TextureBindingOption(i, i2));
    }

    public void bindToView(URI uri, ImageView imageView, TextureBindingOption textureBindingOption) {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        bindToViewInternal(uri == null ? null : uri.toString(), imageView, textureBindingOption);
    }

    public void setCachingEnabled(boolean z) {
        this.bitmapCache = new XLEMemoryCache<>(z ? getNetworkBitmapCacheSizeInMB() : 0, BITMAP_CACHE_MAX_FILE_SIZE_IN_BYTES);
        this.bitmapFileCache = XLEFileCacheManager.createCache(BMP_FILE_CACHE_DIR_NAME, BMP_FILE_CACHE_SIZE, z);
        this.resourceBitmapCache = new HashMap<>();
    }

    public boolean isBusy() {
        boolean z;
        synchronized (this.listLock) {
            z = !this.inProgress.isEmpty();
        }
        return z;
    }

    private void bindToViewInternal(String str, ImageView imageView, TextureBindingOption textureBindingOption) {
        XLEBitmap xLEBitmapLoadResource;
        TextureManagerScaledNetworkBitmapRequest textureManagerScaledNetworkBitmapRequest = new TextureManagerScaledNetworkBitmapRequest(str, textureBindingOption);
        synchronized (this.listLock) {
            if (this.waitingForImage.containsValue(imageView)) {
                this.waitingForImage.removeValue(imageView);
            }
            if (!invalidUrl(str)) {
                xLEBitmapLoadResource = this.bitmapCache.get(textureManagerScaledNetworkBitmapRequest);
                if (xLEBitmapLoadResource == null) {
                    RetryEntry retryEntry = this.timeToRetryCache.get(textureManagerScaledNetworkBitmapRequest);
                    if (retryEntry != null && !retryEntry.isExpired() && textureBindingOption.resourceIdForError != -1) {
                        xLEBitmapLoadResource = loadResource(textureBindingOption.resourceIdForError);
                    }
                    if (textureBindingOption.resourceIdForLoading != -1) {
                        XLEBitmap xLEBitmapLoadResource2 = loadResource(textureBindingOption.resourceIdForLoading);
                        XLEAssert.assertTrue(xLEBitmapLoadResource2 != null);
                        xLEBitmapLoadResource = xLEBitmapLoadResource2;
                    }
                    this.waitingForImage.put(textureManagerScaledNetworkBitmapRequest, imageView);
                    if (!this.inProgress.contains(textureManagerScaledNetworkBitmapRequest)) {
                        this.inProgress.add(textureManagerScaledNetworkBitmapRequest);
                        load(textureManagerScaledNetworkBitmapRequest);
                    }
                }
            } else if (textureBindingOption.resourceIdForError != -1) {
                xLEBitmapLoadResource = loadResource(textureBindingOption.resourceIdForError);
                XLEAssert.assertNotNull(xLEBitmapLoadResource);
            } else {
                xLEBitmapLoadResource = null;
            }
        }
        setImage(imageView, xLEBitmapLoadResource);
        if (imageView instanceof XLEImageView) {
            ((XLEImageView) imageView).TEST_loadingOrLoadedImageUrl = str;
        }
    }

    public XLEBitmap createScaledBitmap(XLEBitmap xLEBitmap, int i, int i2) {
        if (!validResizeDimention(i, i2) || xLEBitmap.getBitmap() == null) {
            return xLEBitmap;
        }
        float height = xLEBitmap.getBitmap().getHeight() / xLEBitmap.getBitmap().getWidth();
        float f = i2;
        float f2 = i;
        if (f / f2 < height) {
            i = Math.max(1, (int) (f / height));
        } else {
            i2 = Math.max(1, (int) (f2 * height));
        }
        return XLEBitmap.createScaledBitmap8888(xLEBitmap, i, i2, true);
    }

    public void drainWaitingForImage(TextureManagerScaledNetworkBitmapRequest textureManagerScaledNetworkBitmapRequest, XLEBitmap xLEBitmap) {
        if (this.waitingForImage.containsKey(textureManagerScaledNetworkBitmapRequest)) {
            for (ImageView imageView : this.waitingForImage.get(textureManagerScaledNetworkBitmapRequest)) {
                if (imageView != null) {
                    if (imageView instanceof XLEImageView) {
                        setXLEImageView(textureManagerScaledNetworkBitmapRequest, (XLEImageView) imageView, xLEBitmap);
                    } else {
                        setView(textureManagerScaledNetworkBitmapRequest, imageView, xLEBitmap);
                    }
                }
            }
        }
    }

    private void setView(final TextureManagerScaledNetworkBitmapRequest textureManagerScaledNetworkBitmapRequest, final ImageView imageView, final XLEBitmap xLEBitmap) {
        ThreadManager.UIThreadPost(new Runnable() { // from class: com.microsoft.xbox.toolkit.ui.TextureManager$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setView$0(textureManagerScaledNetworkBitmapRequest, imageView, xLEBitmap);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setView$0(TextureManagerScaledNetworkBitmapRequest textureManagerScaledNetworkBitmapRequest, ImageView imageView, XLEBitmap xLEBitmap) {
        boolean zKeyValueMatches;
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        synchronized (this.listLock) {
            zKeyValueMatches = this.waitingForImage.keyValueMatches(textureManagerScaledNetworkBitmapRequest, imageView);
        }
        if (zKeyValueMatches) {
            setImage(imageView, xLEBitmap);
            synchronized (this.listLock) {
                this.waitingForImage.removeValue(imageView);
            }
        }
    }

    private void setXLEImageView(final TextureManagerScaledNetworkBitmapRequest textureManagerScaledNetworkBitmapRequest, final XLEImageView xLEImageView, final XLEBitmap xLEBitmap) {
        ThreadManager.UIThreadPost(new Runnable() { // from class: com.microsoft.xbox.toolkit.ui.TextureManager$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setXLEImageView$1(textureManagerScaledNetworkBitmapRequest, xLEImageView, xLEBitmap);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setXLEImageView$1(TextureManagerScaledNetworkBitmapRequest textureManagerScaledNetworkBitmapRequest, final XLEImageView xLEImageView, final XLEBitmap xLEBitmap) {
        boolean zKeyValueMatches;
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        synchronized (this.listLock) {
            zKeyValueMatches = this.waitingForImage.keyValueMatches(textureManagerScaledNetworkBitmapRequest, xLEImageView);
        }
        if (zKeyValueMatches) {
            final float alpha = xLEImageView.getAlpha();
            if (xLEImageView.getShouldAnimate()) {
                xLEImageView.animate().alpha(0.0f).setDuration(100L).setListener(new AnimatorListenerAdapter() { // from class: com.microsoft.xbox.toolkit.ui.TextureManager.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        xLEImageView.setFinal(true);
                        TextureManager.this.setImage(xLEImageView, xLEBitmap);
                        xLEImageView.animate().alpha(alpha).setDuration(100L).setListener(null);
                    }
                });
            } else {
                setImage(xLEImageView, xLEBitmap);
            }
            synchronized (this.listLock) {
                this.waitingForImage.removeValue(xLEImageView);
            }
        }
    }

    public void purgeResourceBitmapCache() {
        this.resourceBitmapCache.clear();
    }

    public void setImage(ImageView imageView, XLEBitmap xLEBitmap) {
        Bitmap bitmap = xLEBitmap == null ? null : xLEBitmap.getBitmap();
        OnBitmapSetListener onBitmapSetListener = (OnBitmapSetListener) imageView.getTag(R.id.image_callback);
        if (onBitmapSetListener != null) {
            onBitmapSetListener.onBeforeImageSet(imageView, bitmap);
        }
        imageView.setImageBitmap(bitmap);
        imageView.setTag(R.id.image_bound, true);
        if (onBitmapSetListener != null) {
            onBitmapSetListener.onAfterImageSet(imageView, bitmap);
        }
    }

    private static class RetryEntry {
        private static final long SEC = 1000;
        private static final long[] TIMES_MS = {5000, 9000, 19000, 37000, 75000, 150000, TextureManager.TIME_TO_RETRY_MS};
        private int curIdx;
        private long currStart;

        private RetryEntry() {
            this.curIdx = 0;
            this.currStart = System.currentTimeMillis();
        }

        public boolean isExpired() {
            return this.currStart + TIMES_MS[this.curIdx] < System.currentTimeMillis();
        }

        public void startNext() {
            int i = this.curIdx;
            if (i < TIMES_MS.length - 1) {
                this.curIdx = i + 1;
            }
            this.currStart = System.currentTimeMillis();
        }
    }

    private class TextureManagerDecodeThread implements Runnable {
        private TextureManagerDecodeThread() {
        }

        /* JADX WARN: Bottom block not found for handler: all -> 0x00fe */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instruction units count: 257
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.microsoft.xbox.toolkit.ui.TextureManager.TextureManagerDecodeThread.run():void");
        }
    }

    private class TextureManagerDownloadThreadWorker implements Runnable {
        private final TextureManagerDownloadRequest request;

        public TextureManagerDownloadThreadWorker(TextureManagerDownloadRequest textureManagerDownloadRequest) {
            this.request = textureManagerDownloadRequest;
        }

        @Override // java.lang.Runnable
        public void run() {
            XLEAssert.assertTrue((this.request.key == null || this.request.key.url == null) ? false : true);
            this.request.stream = null;
            try {
                if (!this.request.key.url.startsWith("http")) {
                    TextureManagerDownloadRequest textureManagerDownloadRequest = this.request;
                    textureManagerDownloadRequest.stream = downloadFromAssets(textureManagerDownloadRequest.key.url);
                } else if (this.request.key.bindingOption.useFileCache) {
                    this.request.stream = TextureManager.this.bitmapFileCache.getInputStreamForRead(this.request.key);
                    if (this.request.stream == null) {
                        TextureManagerDownloadRequest textureManagerDownloadRequest2 = this.request;
                        textureManagerDownloadRequest2.stream = downloadFromWeb(textureManagerDownloadRequest2.key.url);
                    }
                } else {
                    TextureManagerDownloadRequest textureManagerDownloadRequest3 = this.request;
                    textureManagerDownloadRequest3.stream = downloadFromWeb(textureManagerDownloadRequest3.key.url);
                }
            } catch (Exception unused) {
            }
            synchronized (TextureManager.this.listLock) {
                TextureManager.this.toDecode.push(this.request);
            }
        }

        private InputStream downloadFromWeb(String str) {
            try {
                XLEHttpStatusAndStream httpStatusAndStreamInternal = HttpClientFactory.textureFactory.getHttpClient(TextureManager.TEXTURE_TIMEOUT_MS).getHttpStatusAndStreamInternal(new HttpGet(URI.create(str)), false);
                if (httpStatusAndStreamInternal.statusCode == 200) {
                    return httpStatusAndStreamInternal.stream;
                }
            } catch (Exception unused) {
            }
            return null;
        }

        private InputStream downloadFromAssets(String str) {
            try {
                return XboxTcuiSdk.getAssetManager().open(str);
            } catch (IOException unused) {
                return null;
            }
        }
    }
}
