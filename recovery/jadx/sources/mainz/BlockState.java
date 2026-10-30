package mainz;

import go.Seq;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class BlockState implements Seq.Proxy {
    private final int refnum;

    private static native int __New();

    public final native long getState();

    public final native void setState(long j);

    static {
        Mainz.touch();
    }

    @Override // go.Seq.GoObject
    public final int incRefnum() {
        Seq.incGoRef(this.refnum, this);
        return this.refnum;
    }

    BlockState(int i) {
        this.refnum = i;
        Seq.trackGoRef(i, this);
    }

    public BlockState() {
        int i__New = __New();
        this.refnum = i__New;
        Seq.trackGoRef(i__New, this);
    }

    public boolean equals(Object obj) {
        return obj != null && (obj instanceof BlockState) && getState() == ((BlockState) obj).getState();
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(getState())});
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("BlockState{State:");
        sb.append(getState()).append(",}");
        return sb.toString();
    }
}
