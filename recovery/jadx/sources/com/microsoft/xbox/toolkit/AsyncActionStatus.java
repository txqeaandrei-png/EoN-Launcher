package com.microsoft.xbox.toolkit;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r2v2 com.microsoft.xbox.toolkit.AsyncActionStatus, still in use, count: 1, list:
  (r2v2 com.microsoft.xbox.toolkit.AsyncActionStatus) from 0x0040: FILLED_NEW_ARRAY 
  (r0v0 com.microsoft.xbox.toolkit.AsyncActionStatus)
  (r1v1 com.microsoft.xbox.toolkit.AsyncActionStatus)
  (r2v2 com.microsoft.xbox.toolkit.AsyncActionStatus)
  (r3v2 com.microsoft.xbox.toolkit.AsyncActionStatus)
  (r4v2 com.microsoft.xbox.toolkit.AsyncActionStatus)
 A[WRAPPED] elemType: com.microsoft.xbox.toolkit.AsyncActionStatus
	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1604)
	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes3.dex */
public final class AsyncActionStatus {
    SUCCESS,
    FAIL,
    NO_CHANGE,
    NO_OP_SUCCESS,
    NO_OP_FAIL;

    private static AsyncActionStatus[][] MERGE_MATRIX;

    private AsyncActionStatus() {
        super(str, i);
    }

    public static AsyncActionStatus valueOf(String str) {
        return (AsyncActionStatus) Enum.valueOf(AsyncActionStatus.class, str);
    }

    public static AsyncActionStatus[] values() {
        return (AsyncActionStatus[]) $VALUES.clone();
    }

    static {
        AsyncActionStatus asyncActionStatus = SUCCESS;
        AsyncActionStatus asyncActionStatus2 = FAIL;
        AsyncActionStatus asyncActionStatus3 = NO_OP_SUCCESS;
        AsyncActionStatus asyncActionStatus4 = NO_OP_FAIL;
        MERGE_MATRIX = new AsyncActionStatus[][]{new AsyncActionStatus[]{asyncActionStatus, asyncActionStatus2, asyncActionStatus, asyncActionStatus, asyncActionStatus2}, new AsyncActionStatus[]{asyncActionStatus2, asyncActionStatus2, asyncActionStatus2, asyncActionStatus2, asyncActionStatus2}, new AsyncActionStatus[]{asyncActionStatus, asyncActionStatus2, asyncActionStatus, asyncActionStatus3, asyncActionStatus4}, new AsyncActionStatus[]{asyncActionStatus, asyncActionStatus2, asyncActionStatus3, asyncActionStatus3, asyncActionStatus4}, new AsyncActionStatus[]{asyncActionStatus2, asyncActionStatus2, asyncActionStatus4, asyncActionStatus4, asyncActionStatus4}};
    }

    public static boolean getIsFail(AsyncActionStatus asyncActionStatus) {
        return asyncActionStatus == FAIL || asyncActionStatus == NO_OP_FAIL;
    }

    public static AsyncActionStatus merge(AsyncActionStatus asyncActionStatus, AsyncActionStatus... asyncActionStatusArr) {
        for (AsyncActionStatus asyncActionStatus2 : asyncActionStatusArr) {
            asyncActionStatus = MERGE_MATRIX[asyncActionStatus.ordinal()][asyncActionStatus2.ordinal()];
        }
        return asyncActionStatus;
    }
}
