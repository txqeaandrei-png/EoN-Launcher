package mainz;

import go.Seq;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class Request implements Seq.Proxy {
    private final int refnum;

    private static native int __New();

    public final native String getName();

    public final native void setName(String str);

    static {
        Mainz.touch();
    }

    @Override // go.Seq.GoObject
    public final int incRefnum() {
        Seq.incGoRef(this.refnum, this);
        return this.refnum;
    }

    Request(int i) {
        this.refnum = i;
        Seq.trackGoRef(i, this);
    }

    public Request() {
        int i__New = __New();
        this.refnum = i__New;
        Seq.trackGoRef(i__New, this);
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof Request)) {
            return false;
        }
        String name = getName();
        String name2 = ((Request) obj).getName();
        if (name == null) {
            return name2 == null;
        }
        return name.equals(name2);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{getName()});
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Request{Name:");
        sb.append(getName()).append(",}");
        return sb.toString();
    }
}
