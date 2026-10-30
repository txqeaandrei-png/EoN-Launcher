package com.bea.xml.stream.reader;

import java.io.ByteArrayInputStream;
import java.io.CharConversionException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PushbackInputStream;
import java.io.Reader;
import java.util.Hashtable;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
import okio.Utf8;
import org.apache.http.protocol.HTTP;

/* JADX INFO: loaded from: classes.dex */
public final class XmlReader extends Reader {
    private static final int MAXPUSHBACK = 512;
    private static final Hashtable charsets;
    private String assignedEncoding;
    private boolean closed;
    private Reader in;

    public static Reader createReader(InputStream inputStream) throws IOException {
        return new XmlReader(inputStream);
    }

    public static Reader createReader(InputStream inputStream, String str) throws IOException {
        if (str == null) {
            return new XmlReader(inputStream);
        }
        if ("UTF-8".equalsIgnoreCase(str) || "UTF8".equalsIgnoreCase(str)) {
            return new Utf8Reader(inputStream);
        }
        if ("US-ASCII".equalsIgnoreCase(str) || HTTP.ASCII.equalsIgnoreCase(str)) {
            return new AsciiReader(inputStream);
        }
        if ("ISO-8859-1".equalsIgnoreCase(str)) {
            return new Iso8859_1Reader(inputStream);
        }
        return new InputStreamReader(inputStream, std2java(str));
    }

    static {
        Hashtable hashtable = new Hashtable(31);
        charsets = hashtable;
        hashtable.put("UTF-16", "Unicode");
        hashtable.put("ISO-10646-UCS-2", "Unicode");
        hashtable.put("EBCDIC-CP-US", "cp037");
        hashtable.put("EBCDIC-CP-CA", "cp037");
        hashtable.put("EBCDIC-CP-NL", "cp037");
        hashtable.put("EBCDIC-CP-WT", "cp037");
        hashtable.put("EBCDIC-CP-DK", "cp277");
        hashtable.put("EBCDIC-CP-NO", "cp277");
        hashtable.put("EBCDIC-CP-FI", "cp278");
        hashtable.put("EBCDIC-CP-SE", "cp278");
        hashtable.put("EBCDIC-CP-IT", "cp280");
        hashtable.put("EBCDIC-CP-ES", "cp284");
        hashtable.put("EBCDIC-CP-GB", "cp285");
        hashtable.put("EBCDIC-CP-FR", "cp297");
        hashtable.put("EBCDIC-CP-AR1", "cp420");
        hashtable.put("EBCDIC-CP-HE", "cp424");
        hashtable.put("EBCDIC-CP-BE", "cp500");
        hashtable.put("EBCDIC-CP-CH", "cp500");
        hashtable.put("EBCDIC-CP-ROECE", "cp870");
        hashtable.put("EBCDIC-CP-YU", "cp870");
        hashtable.put("EBCDIC-CP-IS", "cp871");
        hashtable.put("EBCDIC-CP-AR2", "cp918");
    }

    private static String std2java(String str) {
        String str2 = (String) charsets.get(str.toUpperCase());
        return str2 != null ? str2 : str;
    }

    public String getEncoding() {
        return this.assignedEncoding;
    }

    private XmlReader(InputStream inputStream) throws IOException {
        super(inputStream);
        PushbackInputStream pushbackInputStream = new PushbackInputStream(inputStream, 512);
        byte[] bArr = new byte[4];
        int i = pushbackInputStream.read(bArr);
        if (i > 0) {
            pushbackInputStream.unread(bArr, 0, i);
        }
        if (i == 4) {
            int i2 = bArr[0] & UByte.MAX_VALUE;
            if (i2 != 0) {
                if (i2 == 60) {
                    int i3 = bArr[1] & UByte.MAX_VALUE;
                    if (i3 == 0) {
                        if (bArr[2] == 63 && bArr[3] == 0) {
                            setEncoding(pushbackInputStream, "UnicodeLittle");
                            return;
                        }
                    } else if (i3 == 63 && bArr[2] == 120 && bArr[3] == 109) {
                        useEncodingDecl(pushbackInputStream, "UTF8");
                        return;
                    }
                } else if (i2 != 76) {
                    if (i2 == 254) {
                        if ((bArr[1] & UByte.MAX_VALUE) == 255) {
                            setEncoding(pushbackInputStream, "UTF-16");
                            return;
                        }
                    } else if (i2 == 255 && (bArr[1] & UByte.MAX_VALUE) == 254) {
                        setEncoding(pushbackInputStream, "UTF-16");
                        return;
                    }
                } else if (bArr[1] == 111 && (bArr[2] & UByte.MAX_VALUE) == 167 && (bArr[3] & UByte.MAX_VALUE) == 148) {
                    useEncodingDecl(pushbackInputStream, "CP037");
                    return;
                }
            } else if (bArr[1] == 60 && bArr[2] == 0 && bArr[3] == 63) {
                setEncoding(pushbackInputStream, "UnicodeBig");
                return;
            }
        }
        setEncoding(pushbackInputStream, "UTF-8");
    }

    /* JADX WARN: Code duplicated, block: B:75:0x00db  */
    private void useEncodingDecl(PushbackInputStream pushbackInputStream, String str) throws IOException {
        int i;
        byte[] bArr = new byte[512];
        int i2 = pushbackInputStream.read(bArr, 0, 512);
        pushbackInputStream.unread(bArr, 0, i2);
        InputStreamReader inputStreamReader = new InputStreamReader(new ByteArrayInputStream(bArr, 4, i2), str);
        if (inputStreamReader.read() != 108) {
            setEncoding(pushbackInputStream, "UTF-8");
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        boolean z = false;
        boolean z2 = false;
        char c = 0;
        String string = null;
        StringBuffer stringBuffer2 = null;
        for (int i3 = 0; i3 < 507 && (i = inputStreamReader.read()) != -1; i3++) {
            if (i != 32 && i != 9 && i != 10 && i != 13) {
                if (i3 == 0) {
                    break;
                }
                if (i == 63) {
                    z = true;
                } else if (z) {
                    if (i == 62) {
                        break;
                    } else {
                        z = false;
                    }
                }
                if (string != null && z2) {
                    char c2 = (char) i;
                    if (Character.isWhitespace(c2)) {
                        continue;
                    } else if (i != 34 && i != 39) {
                        stringBuffer.append(c2);
                    } else if (c == 0) {
                        stringBuffer.setLength(0);
                        c = c2;
                    } else if (i == c) {
                        if ("encoding".equals(string)) {
                            this.assignedEncoding = stringBuffer.toString();
                            for (int i4 = 0; i4 < this.assignedEncoding.length(); i4++) {
                                char cCharAt = this.assignedEncoding.charAt(i4);
                                if ((cCharAt < 'A' || cCharAt > 'Z') && ((cCharAt < 'a' || cCharAt > 'z') && (i4 == 0 || i4 <= 0 || !(cCharAt == '-' || ((cCharAt >= '0' && cCharAt <= '9') || cCharAt == '.' || cCharAt == '_'))))) {
                                    break;
                                }
                            }
                            setEncoding(pushbackInputStream, this.assignedEncoding);
                            return;
                        }
                        string = null;
                    } else {
                        stringBuffer.append(c2);
                    }
                } else if (stringBuffer2 == null) {
                    char c3 = (char) i;
                    if (!Character.isWhitespace(c3)) {
                        stringBuffer.setLength(0);
                        stringBuffer.append(c3);
                        stringBuffer2 = stringBuffer;
                        z2 = false;
                    }
                } else {
                    char c4 = (char) i;
                    if (Character.isWhitespace(c4)) {
                        string = stringBuffer2.toString();
                    } else if (i == 61) {
                        if (string == null) {
                            string = stringBuffer2.toString();
                        }
                        c = 0;
                        z2 = true;
                        stringBuffer2 = null;
                    } else {
                        stringBuffer2.append(c4);
                    }
                }
            }
        }
        setEncoding(pushbackInputStream, "UTF-8");
    }

    private void setEncoding(InputStream inputStream, String str) throws IOException {
        this.assignedEncoding = str;
        this.in = createReader(inputStream, str);
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        if (this.closed) {
            return -1;
        }
        int i3 = this.in.read(cArr, i, i2);
        if (i3 == -1) {
            close();
        }
        return i3;
    }

    @Override // java.io.Reader
    public int read() throws IOException {
        if (this.closed) {
            throw new IOException("Stream closed");
        }
        int i = this.in.read();
        if (i == -1) {
            close();
        }
        return i;
    }

    @Override // java.io.Reader
    public boolean markSupported() {
        Reader reader = this.in;
        if (reader == null) {
            return false;
        }
        return reader.markSupported();
    }

    @Override // java.io.Reader
    public void mark(int i) throws IOException {
        Reader reader = this.in;
        if (reader != null) {
            reader.mark(i);
        }
    }

    @Override // java.io.Reader
    public void reset() throws IOException {
        Reader reader = this.in;
        if (reader != null) {
            reader.reset();
        }
    }

    @Override // java.io.Reader
    public long skip(long j) throws IOException {
        Reader reader = this.in;
        if (reader == null) {
            return 0L;
        }
        return reader.skip(j);
    }

    @Override // java.io.Reader
    public boolean ready() throws IOException {
        Reader reader = this.in;
        if (reader == null) {
            return false;
        }
        return reader.ready();
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.closed) {
            return;
        }
        this.in.close();
        this.in = null;
        this.closed = true;
    }

    public static abstract class BaseReader extends Reader {
        protected byte[] buffer;
        protected int finish;
        protected InputStream instream;
        protected int start;

        public abstract String getEncoding();

        BaseReader(InputStream inputStream) {
            super(inputStream);
            this.instream = inputStream;
            this.buffer = new byte[8192];
        }

        @Override // java.io.Reader
        public boolean ready() throws IOException {
            InputStream inputStream = this.instream;
            return inputStream == null || this.finish - this.start > 0 || inputStream.available() != 0;
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            InputStream inputStream = this.instream;
            if (inputStream != null) {
                inputStream.close();
                this.finish = 0;
                this.start = 0;
                this.buffer = null;
                this.instream = null;
            }
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    static final class Utf8Reader extends BaseReader {
        private char nextChar;

        Utf8Reader(InputStream inputStream) {
            super(inputStream);
        }

        @Override // com.bea.xml.stream.reader.XmlReader.BaseReader
        public String getEncoding() {
            return "UTF-8";
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i, int i2) throws IOException {
            int i3;
            int i4;
            int i5;
            int i6;
            int i7;
            byte b;
            if (i2 <= 0) {
                return 0;
            }
            if (i + i2 > cArr.length || i < 0) {
                throw new ArrayIndexOutOfBoundsException();
            }
            char c = this.nextChar;
            if (c != 0) {
                cArr[i] = c;
                this.nextChar = (char) 0;
                i4 = 0;
                i3 = 1;
            } else {
                i3 = 0;
                i4 = 0;
            }
            while (i3 < i2) {
                if (this.finish <= this.start) {
                    if (this.instream != null) {
                        this.start = 0;
                        this.finish = this.instream.read(this.buffer, 0, this.buffer.length);
                        if (this.finish <= 0) {
                            close();
                        }
                    }
                    i4 = -1;
                    break;
                }
                byte b2 = this.buffer[this.start];
                int i8 = b2 & UByte.MAX_VALUE;
                if ((b2 & ByteCompanionObject.MIN_VALUE) == 0) {
                    this.start++;
                    cArr[i3 + i] = (char) i8;
                    i3++;
                    i4 = i8;
                } else {
                    int i9 = this.start;
                    try {
                        if ((this.buffer[i9] & 224) == 192) {
                            int i10 = i9 + 1;
                            try {
                                i6 = (this.buffer[i9] & 31) << 6;
                                i9 += 2;
                                b = this.buffer[i10];
                                i7 = b & Utf8.REPLACEMENT_BYTE;
                                i5 = i6 + i7;
                            } catch (ArrayIndexOutOfBoundsException unused) {
                                i9 = i10;
                                i5 = 0;
                            }
                        } else {
                            if ((this.buffer[i9] & 240) == 224) {
                                int i11 = i9 + 2;
                                try {
                                    i6 = ((this.buffer[i9] & 15) << 12) + ((this.buffer[i9 + 1] & Utf8.REPLACEMENT_BYTE) << 6);
                                    i9 += 3;
                                    b = this.buffer[i11];
                                    i7 = b & Utf8.REPLACEMENT_BYTE;
                                    i5 = i6 + i7;
                                } catch (ArrayIndexOutOfBoundsException unused2) {
                                    i9 = i11;
                                    i5 = 0;
                                }
                            } else if ((this.buffer[i9] & 248) == 240) {
                                int i12 = i9 + 3;
                                try {
                                    int i13 = ((this.buffer[i9] & 7) << 18) + ((this.buffer[i9 + 1] & Utf8.REPLACEMENT_BYTE) << 12) + ((this.buffer[i9 + 2] & Utf8.REPLACEMENT_BYTE) << 6);
                                    i9 += 4;
                                    i5 = i13 + (this.buffer[i12] & Utf8.REPLACEMENT_BYTE);
                                    if (i5 > 1114111) {
                                        throw new CharConversionException(new StringBuffer().append("UTF-8 encoding of character 0x00").append(Integer.toHexString(i5)).append(" can't be converted to Unicode.").toString());
                                    }
                                    if (i5 > 65535) {
                                        int i14 = i5 - 65536;
                                        this.nextChar = (char) ((i14 & 1023) + Utf8.LOG_SURROGATE_HEADER);
                                        i6 = i14 >> 10;
                                        i7 = 55296;
                                        i5 = i6 + i7;
                                    }
                                } catch (ArrayIndexOutOfBoundsException unused3) {
                                    i9 = i12;
                                    i5 = 0;
                                }
                            } else {
                                throw new CharConversionException(new StringBuffer().append("Unconvertible UTF-8 character beginning with 0x").append(Integer.toHexString(this.buffer[this.start] & UByte.MAX_VALUE)).toString());
                            }
                            i5 = 0;
                        }
                    } catch (ArrayIndexOutOfBoundsException unused4) {
                    }
                    if (i9 <= this.finish) {
                        while (true) {
                            this.start++;
                            if (this.start < i9) {
                                if ((this.buffer[this.start] & 192) != 128) {
                                    close();
                                    throw new CharConversionException("Malformed UTF-8 char -- is an XML encoding declaration missing?");
                                }
                            } else {
                                int i15 = i3 + 1;
                                cArr[i + i3] = (char) i5;
                                char c2 = this.nextChar;
                                if (c2 != 0 && i15 < i2) {
                                    i3 += 2;
                                    cArr[i15 + i] = c2;
                                    this.nextChar = (char) 0;
                                    break;
                                }
                                i3 = i15;
                                break;
                            }
                        }
                    } else {
                        System.arraycopy(this.buffer, this.start, this.buffer, 0, this.finish - this.start);
                        this.finish -= this.start;
                        this.start = 0;
                        int i16 = this.instream.read(this.buffer, this.finish, this.buffer.length - this.finish);
                        if (i16 < 0) {
                            close();
                            throw new CharConversionException("Partial UTF-8 char");
                        }
                        this.finish += i16;
                    }
                    i4 = i5;
                }
            }
            if (i3 > 0) {
                return i3;
            }
            return i4 == -1 ? -1 : 0;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    static final class AsciiReader extends BaseReader {
        AsciiReader(InputStream inputStream) {
            super(inputStream);
        }

        @Override // com.bea.xml.stream.reader.XmlReader.BaseReader
        public String getEncoding() {
            return "US-ASCII";
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i, int i2) throws IOException {
            if (this.instream == null) {
                return -1;
            }
            if (i + i2 > cArr.length || i < 0) {
                throw new ArrayIndexOutOfBoundsException();
            }
            int i3 = this.finish - this.start;
            if (i3 < 1) {
                this.start = 0;
                this.finish = this.instream.read(this.buffer, 0, this.buffer.length);
                if (this.finish <= 0) {
                    close();
                    return -1;
                }
                if (i2 > this.finish) {
                    i2 = this.finish;
                }
            } else if (i2 > i3) {
                i2 = i3;
            }
            for (int i4 = 0; i4 < i2; i4++) {
                byte[] bArr = this.buffer;
                int i5 = this.start;
                this.start = i5 + 1;
                byte b = bArr[i5];
                if (b < 0) {
                    throw new CharConversionException(new StringBuffer("Illegal ASCII character, 0x").append(Integer.toHexString(b & UByte.MAX_VALUE)).toString());
                }
                cArr[i + i4] = (char) b;
            }
            return i2;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    static final class Iso8859_1Reader extends BaseReader {
        Iso8859_1Reader(InputStream inputStream) {
            super(inputStream);
        }

        @Override // com.bea.xml.stream.reader.XmlReader.BaseReader
        public String getEncoding() {
            return "ISO-8859-1";
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i, int i2) throws IOException {
            if (this.instream == null) {
                return -1;
            }
            if (i + i2 > cArr.length || i < 0) {
                throw new ArrayIndexOutOfBoundsException();
            }
            int i3 = this.finish - this.start;
            if (i3 < 1) {
                this.start = 0;
                this.finish = this.instream.read(this.buffer, 0, this.buffer.length);
                if (this.finish <= 0) {
                    close();
                    return -1;
                }
                if (i2 > this.finish) {
                    i2 = this.finish;
                }
            } else if (i2 > i3) {
                i2 = i3;
            }
            for (int i4 = 0; i4 < i2; i4++) {
                byte[] bArr = this.buffer;
                int i5 = this.start;
                this.start = i5 + 1;
                cArr[i + i4] = (char) (bArr[i5] & UByte.MAX_VALUE);
            }
            return i2;
        }
    }
}
