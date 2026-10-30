package dev.blaze.launcher.ui.profile;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.mojang.minecraftpe.store.amazonappstore.C0536;
import okhttp3.internal.io.C0644;
import org.apache.commons.codec.digest.C0657;
import org.spongycastle.asn1.cmp.C0736;

/* JADX INFO: loaded from: classes4.dex */
public class ProfileViewModel extends ViewModel {

    /* JADX INFO: renamed from: short, reason: not valid java name */
    private static final short[] f550short = {1216, 1276, 1277, 1255, 1204, 1277, 1255, 1204, 1276, 1275, 1273, 1265, 1204, 1266, 1254, 1269, 1267, 1273, 1265, 1274, 1248};
    private final MutableLiveData<String> mText;

    public ProfileViewModel() {
        MutableLiveData<String> mutableLiveData = new MutableLiveData<>();
        this.mText = mutableLiveData;
        C0736.m5807(mutableLiveData, C0657.m5445(m3214(), 0, 21, 1172));
    }

    /* JADX INFO: renamed from: ۟ۦۦۣۧ, reason: not valid java name and contains not printable characters */
    public static MutableLiveData m3213(Object obj) {
        if (C0644.m5366() > 0) {
            return ((ProfileViewModel) obj).mText;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۡۡ۟ۥ, reason: not valid java name and contains not printable characters */
    public static short[] m3214() {
        if (C0536.m3009() > 0) {
            return f550short;
        }
        return null;
    }

    public LiveData<String> getText() {
        return m3213(this);
    }
}
