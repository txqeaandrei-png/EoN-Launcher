package com.microsoft.xbox.toolkit;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Random;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;

/* JADX INFO: loaded from: classes3.dex */
public class XLEFileCache {
    private static final String TAG = "XLEFileCache";
    private boolean enabled;
    private final long expiredTimer;
    final int maxFileNumber;
    private int readAccessCnt;
    private int readSuccessfulCnt;
    int size;
    private int writeAccessCnt;

    XLEFileCache() {
        this.size = 0;
        this.readAccessCnt = 0;
        this.writeAccessCnt = 0;
        this.readSuccessfulCnt = 0;
        this.expiredTimer = Long.MAX_VALUE;
        this.maxFileNumber = 0;
        this.enabled = false;
    }

    XLEFileCache(String str, int i) {
        this(str, i, Long.MAX_VALUE);
    }

    XLEFileCache(String str, int i, long j) {
        this.size = 0;
        this.enabled = true;
        this.readAccessCnt = 0;
        this.writeAccessCnt = 0;
        this.readSuccessfulCnt = 0;
        this.maxFileNumber = i;
        this.expiredTimer = j;
    }

    public static int readInt(InputStream inputStream) throws IOException {
        int i = inputStream.read();
        int i2 = inputStream.read();
        int i3 = inputStream.read();
        int i4 = inputStream.read();
        if ((i | i2 | i3 | i4) >= 0) {
            return (i << 24) + (i2 << 16) + (i3 << 8) + i4;
        }
        throw new EOFException();
    }

    public int getItemsInCache() {
        return this.size;
    }

    public synchronized boolean contains(XLEFileCacheItemKey xLEFileCacheItemKey) {
        if (!this.enabled) {
            return false;
        }
        return new File(XLEFileCacheManager.getCacheRootDir(this), getCachedItemFileName(xLEFileCacheItemKey)).exists();
    }

    public synchronized OutputStream getOuputStreamForSave(XLEFileCacheItemKey xLEFileCacheItemKey) throws IOException {
        if (!this.enabled) {
            return new OutputStream() { // from class: com.microsoft.xbox.toolkit.XLEFileCache.1
                @Override // java.io.OutputStream
                public void write(int i) throws IOException {
                }
            };
        }
        XLEAssert.assertTrue(Thread.currentThread() != ThreadManager.UIThread);
        this.writeAccessCnt++;
        checkAndEnsureCapacity();
        File file = new File(XLEFileCacheManager.getCacheRootDir(this), getCachedItemFileName(xLEFileCacheItemKey));
        if (file.exists()) {
            file.delete();
            this.size--;
        }
        if (file.createNewFile()) {
            this.size++;
        }
        return new CachedFileOutputStreamItem(xLEFileCacheItemKey, file);
    }

    public synchronized void save(XLEFileCacheItemKey xLEFileCacheItemKey, InputStream inputStream) {
        try {
            OutputStream ouputStreamForSave = getOuputStreamForSave(xLEFileCacheItemKey);
            StreamUtil.CopyStream(ouputStreamForSave, inputStream);
            ouputStreamForSave.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public synchronized InputStream getInputStreamForRead(XLEFileCacheItemKey xLEFileCacheItemKey) {
        if (!this.enabled) {
            return null;
        }
        XLEAssert.assertTrue(Thread.currentThread() != ThreadManager.UIThread);
        this.readAccessCnt++;
        File file = new File(XLEFileCacheManager.getCacheRootDir(this), getCachedItemFileName(xLEFileCacheItemKey));
        if (!file.exists()) {
            return null;
        }
        if (file.lastModified() < System.currentTimeMillis() - this.expiredTimer) {
            file.delete();
            this.size--;
            return null;
        }
        try {
            InputStream contentInputStream = new CachedFileInputStreamItem(xLEFileCacheItemKey, file).getContentInputStream();
            this.readSuccessfulCnt++;
            return contentInputStream;
        } catch (IOException unused) {
            return null;
        }
    }

    public String toString() {
        return "Size=" + this.size + "\tRootDir=" + XLEFileCacheManager.getCacheRootDir(this) + "\tMaxFileNumber=" + this.maxFileNumber + "\tExpiredTimerInSeconds=" + this.expiredTimer + "\tWriteAccessCnt=" + this.writeAccessCnt + "\tReadAccessCnt=" + this.readAccessCnt + "\tReadSuccessfulCnt=" + this.readSuccessfulCnt;
    }

    private void checkAndEnsureCapacity() {
        if (this.size < this.maxFileNumber || !this.enabled) {
            return;
        }
        File[] fileArrListFiles = XLEFileCacheManager.getCacheRootDir(this).listFiles();
        fileArrListFiles[new Random().nextInt(fileArrListFiles.length)].delete();
        this.size = fileArrListFiles.length - 1;
    }

    private String getCachedItemFileName(XLEFileCacheItemKey xLEFileCacheItemKey) {
        return String.valueOf(xLEFileCacheItemKey.getKeyString().hashCode());
    }

    private class CachedFileInputStreamItem {
        private final byte[] computedMd5;
        private final InputStream contentInputStream;
        private MessageDigest mDigest;
        private final byte[] savedMd5;

        public CachedFileInputStreamItem(XLEFileCacheItemKey xLEFileCacheItemKey, File file) throws IOException {
            this.mDigest = null;
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(MessageDigestAlgorithms.MD5);
                this.mDigest = messageDigest;
                byte[] bArr = new byte[messageDigest.getDigestLength()];
                this.savedMd5 = bArr;
                if (fileInputStream.read(bArr) == this.mDigest.getDigestLength()) {
                    int i = XLEFileCache.readInt(fileInputStream);
                    byte[] bArr2 = new byte[i];
                    if (i != fileInputStream.read(bArr2) || !xLEFileCacheItemKey.getKeyString().equals(new String(bArr2))) {
                        file.delete();
                        throw new IOException("File key check failed because keyLength != readKeyLength or !key.getKeyString().equals(new String(urlOrSomething))");
                    }
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    StreamUtil.CopyStream(byteArrayOutputStream, fileInputStream);
                    fileInputStream.close();
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    this.mDigest.update(byteArray);
                    byte[] bArrDigest = this.mDigest.digest();
                    this.computedMd5 = bArrDigest;
                    if (!isMd5Error()) {
                        this.contentInputStream = new ByteArrayInputStream(byteArray);
                        return;
                    } else {
                        file.delete();
                        throw new IOException(fileInputStream.getFD() + "the saved md5 is not equal computed md5.ComputedMd5:" + bArrDigest + "     SavedMd5:" + bArr);
                    }
                }
                fileInputStream.close();
                throw new IOException("Ddigest lengh check failed!");
            } catch (OutOfMemoryError e) {
                fileInputStream.close();
                throw new IOException("File digest failed! Out of memory: " + e.getMessage());
            } catch (NoSuchAlgorithmException e2) {
                fileInputStream.close();
                throw new IOException("File digest failed! " + e2.getMessage());
            }
        }

        public InputStream getContentInputStream() {
            return this.contentInputStream;
        }

        private boolean isMd5Error() {
            for (int i = 0; i < this.mDigest.getDigestLength(); i++) {
                if (this.savedMd5[i] != this.computedMd5[i]) {
                    return true;
                }
            }
            return false;
        }
    }

    private class CachedFileOutputStreamItem extends FileOutputStream {
        private final File destFile;
        private MessageDigest mDigest;
        private boolean startDigest;
        private boolean writeMd5Finished;

        public CachedFileOutputStreamItem(XLEFileCacheItemKey xLEFileCacheItemKey, File file) throws IOException {
            super(file);
            this.mDigest = null;
            this.startDigest = false;
            this.writeMd5Finished = false;
            this.destFile = file;
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(MessageDigestAlgorithms.MD5);
                this.mDigest = messageDigest;
                write(new byte[messageDigest.getDigestLength()]);
                byte[] bytes = xLEFileCacheItemKey.getKeyString().getBytes();
                writeInt(bytes.length);
                write(bytes);
                this.startDigest = true;
            } catch (NoSuchAlgorithmException e) {
                throw new IOException("File digest failed!" + e.getMessage());
            }
        }

        @Override // java.io.FileOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            super.close();
            if (this.writeMd5Finished) {
                return;
            }
            this.writeMd5Finished = true;
            RandomAccessFile randomAccessFile = new RandomAccessFile(this.destFile, "rw");
            byte[] bArrDigest = this.mDigest.digest();
            randomAccessFile.seek(0L);
            randomAccessFile.write(bArrDigest);
            randomAccessFile.close();
        }

        @Override // java.io.FileOutputStream, java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) throws IOException {
            super.write(bArr, i, i2);
            if (this.startDigest) {
                this.mDigest.update(bArr, i, i2);
            }
        }

        private final void writeInt(int i) throws IOException {
            write((i >>> 24) & 255);
            write((i >>> 16) & 255);
            write((i >>> 8) & 255);
            write(i & 255);
        }
    }
}
