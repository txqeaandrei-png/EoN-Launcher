package dev.blaze.launcher.ui.dashboard;

import androidx.constraintlayout.utils.widget.C0060;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import kotlin.collections.jdk8.C0559;
import org.spongycastle.asn1.cmp.C0736;
import org.spongycastle.util.io.pem.C0930;

/* JADX INFO: loaded from: classes4.dex */
public class DashboardViewModel extends ViewModel {

    /* JADX INFO: renamed from: short, reason: not valid java name */
    private static final short[] f546short = {257, 317, 316, 294, 373, 316, 294, 373, 305, 308, 294, 317, 311, 314, 308, 295, 305, 373, 307, 295, 308, 306, 312, 304, 315, 289};
    private final MutableLiveData<String> mText;

    public DashboardViewModel() {
        MutableLiveData<String> mutableLiveData = new MutableLiveData<>();
        this.mText = mutableLiveData;
        C0736.m5807(mutableLiveData, C0559.m3762(m3195(), 0, 26, 341));
    }

    /* JADX INFO: renamed from: ۥۣۢۥ, reason: contains not printable characters */
    public static MutableLiveData m3194(Object obj) {
        if (C0930.m6640() < 0) {
            return ((DashboardViewModel) obj).mText;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۨۢۨۤ, reason: not valid java name and contains not printable characters */
    public static short[] m3195() {
        if (C0060.m295() <= 0) {
            return f546short;
        }
        return null;
    }

    public LiveData<String> getText() {
        return m3194(this);
    }
}
