package dev.blaze.launcher.ui.config;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.resources.C0012;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.legacy.coreutils.C0131;
import androidx.viewpager.C0191;
import com.braze.ui.inappmessage.views.C0289;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.tooltip.C0421;
import com.google.firebase.messaging.C0464;
import com.mojang.minecraftpe.Webview.C0527;
import dev.blaze.launcher.databinding.FragmentConfigBinding;
import java.io.File;
import org.spongycastle.crypto.util.C0819;
import org.spongycastle.jcajce.provider.asymmetric.ies.C0844;
import org.spongycastle.pqc.math.ntru.euclid.C0921;

/* JADX INFO: loaded from: classes4.dex */
public class ConfigFragment extends Fragment {

    /* JADX INFO: renamed from: short, reason: not valid java name */
    private static final short[] f542short = {1328, 1308, 1309, 1301, 1306, 1300};
    private FragmentConfigBinding binding;

    /* JADX INFO: renamed from: ۟ۡ۟ۡۦ, reason: not valid java name and contains not printable characters */
    public static FragmentActivity m3171(Object obj) {
        if (C0289.m1732() > 0) {
            return ((ConfigFragment) obj).getActivity();
        }
        return null;
    }

    /* JADX INFO: renamed from: ۟ۢ۟۠ۨ, reason: not valid java name and contains not printable characters */
    public static FragmentConfigBinding m3172(Object obj) {
        if (C0844.m6282() > 0) {
            return ((ConfigFragment) obj).binding;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۤۢ۠ۧ, reason: not valid java name and contains not printable characters */
    public static short[] m3173() {
        if (C0012.m55() < 0) {
            return f542short;
        }
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        FragmentConfigBinding fragmentConfigBindingM2667 = C0464.m2667(layoutInflater, viewGroup, false);
        this.binding = fragmentConfigBindingM2667;
        ConstraintLayout constraintLayoutM2968 = C0527.m2968(fragmentConfigBindingM2667);
        C0921.m6606(m3172(this));
        File file = new File(C0131.m663(m3171(this), C0421.m2432()), C0191.m915(m3173(), 0, 6, 1395));
        if (C0819.m6172(file) != null) {
            for (File file2 : C0819.m6172(file)) {
                new MaterialCardView(m3171(this));
            }
        }
        return constraintLayoutM2968;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.binding = null;
    }
}
