package org.simpleframework.xml.stream;

import org.apache.commons.codec.language.Soundex;

/* JADX INFO: loaded from: classes4.dex */
class HyphenBuilder implements Style {
    HyphenBuilder() {
    }

    @Override // org.simpleframework.xml.stream.Style
    public String getAttribute(String str) {
        if (str != null) {
            return new Parser(str).process();
        }
        return null;
    }

    @Override // org.simpleframework.xml.stream.Style
    public String getElement(String str) {
        if (str != null) {
            return new Parser(str).process();
        }
        return null;
    }

    private class Parser extends Splitter {
        private Parser(String str) {
            super(str);
        }

        @Override // org.simpleframework.xml.stream.Splitter
        protected void parse(char[] cArr, int i, int i2) {
            cArr[i] = toLower(cArr[i]);
        }

        @Override // org.simpleframework.xml.stream.Splitter
        protected void commit(char[] cArr, int i, int i2) {
            this.builder.append(cArr, i, i2);
            if (i + i2 < this.count) {
                this.builder.append(Soundex.SILENT_MARKER);
            }
        }
    }
}
