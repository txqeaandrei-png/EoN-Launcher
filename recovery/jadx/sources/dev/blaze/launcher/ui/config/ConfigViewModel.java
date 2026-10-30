package dev.blaze.launcher.ui.config;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.livedata.core.C0141;
import com.google.firebase.messaging.threads.C0461;
import com.mojang.minecraftpe.Webview.C0528;
import org.spongycastle.asn1.cmp.C0736;

/* JADX INFO: loaded from: classes4.dex */
public class ConfigViewModel extends ViewModel {

    /* JADX INFO: renamed from: short, reason: not valid java name */
    private static final short[] f543short = {1563, 1575, 1574, 1596, 1647, 1574, 1596, 1647, 1569, 1568, 1595, 1574, 1577, 1574, 1580, 1582, 1595, 1574, 1568, 1569, 1596, 1647, 1577, 1597, 1582, 1576, 1570, 1578, 1569, 1595};
    private final MutableLiveData<String> mText;

    public ConfigViewModel() {
        MutableLiveData<String> mutableLiveData = new MutableLiveData<>();
        this.mText = mutableLiveData;
        C0736.m5807(mutableLiveData, C0141.m693(m3174(), 0, 30, 1615));
    }

    /* JADX INFO: renamed from: ۟۠ۨ۟ۥ, reason: not valid java name and contains not printable characters */
    public static short[] m3174() {
        if (C0528.m2973() > 0) {
            return f543short;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۨ۟ۢ۟, reason: not valid java name and contains not printable characters */
    public static MutableLiveData m3175(Object obj) {
        if (C0461.m2651() > 0) {
            return ((ConfigViewModel) obj).mText;
        }
        return null;
    }

    public LiveData<String> getText() {
        return m3175(this);
    }
}
