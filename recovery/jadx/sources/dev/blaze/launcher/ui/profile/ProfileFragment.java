package dev.blaze.launcher.ui.profile;

import android.os.Bundle;
import android.support.customtabs.C0000;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import androidx.appcompat.resources.C0012;
import androidx.browser.trusted.C0031;
import androidx.concurrent.futures.C0044;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.hardware.display.C0072;
import androidx.core.text.util.C0095;
import androidx.drawerlayout.C0119;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.strictmode.C0125;
import androidx.lifecycle.livedata.core.C0140;
import androidx.profileinstaller.C0167;
import androidx.viewpager2.adapter.C0192;
import com.braze.enums.inappmessage.C0219;
import com.braze.ui.banners.C0262;
import com.braze.ui.banners.listeners.C0260;
import com.google.android.gms.actions.C0326;
import com.google.android.gms.internal.tasks.C0355;
import com.google.android.material.motion.C0399;
import com.google.android.material.transformation.C0423;
import com.google.firebase.iid.internal.C0448;
import com.google.firebase.messaging.threads.C0461;
import com.google.gson.internal.bind.C0473;
import dev.blaze.launcher.databinding.FragmentProfileBinding;
import dev.blaze.launcher.ui.User;
import kotlin.annotation.C0556;
import kotlin.collections.builders.C0558;
import kotlin.contracts.C0565;
import kotlin.io.C0580;
import kotlin.jvm.internal.C0588;
import org.apache.commons.logging.impl.C0663;
import org.apache.http.client.params.C0667;
import org.apache.http.impl.C0698;
import org.apache.http.impl.cookie.C0692;
import org.apache.http.pool.C0705;
import org.spongycastle.asn1.iana.C0749;
import org.spongycastle.asn1.iana.C0750;
import org.spongycastle.asn1.iso.C0755;
import org.spongycastle.asn1.microsoft.C0756;
import org.spongycastle.crypto.agreement.C0793;
import org.spongycastle.jcajce.provider.asymmetric.C0849;
import org.spongycastle.math.raw.C0875;
import org.spongycastle.mozilla.jcajce.C0880;
import org.spongycastle.tsp.cms.C0925;
import org.spongycastle.util.test.C0931;
import org.xmlpull.v1.builder.C0947;
import org.xmlpull.v1.util.C0948;

/* JADX INFO: loaded from: classes4.dex */
public class ProfileFragment extends Fragment {
    public static User currentUser;
    public static boolean isLogined;

    /* JADX INFO: renamed from: short, reason: not valid java name */
    private static final short[] f548short = {1799, 1812, 1812, 1858, 1858, 1863, 1858, 681, 702, 702, 702, 702, 702, 702};
    private FragmentProfileBinding binding;

    /* JADX INFO: renamed from: ۣ۟ۧۡۤ, reason: not valid java name and contains not printable characters */
    public static short[] m3202() {
        if (C0219.m1162() >= 0) {
            return f548short;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۦۨۦۨ, reason: contains not printable characters */
    public static FragmentProfileBinding m3203(Object obj) {
        if (C0692.m5611() <= 0) {
            return ((ProfileFragment) obj).binding;
        }
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        FragmentProfileBinding fragmentProfileBindingM5493 = C0667.m5493(layoutInflater, viewGroup, false);
        this.binding = fragmentProfileBindingM5493;
        CoordinatorLayout coordinatorLayoutM6418 = C0875.m6418(fragmentProfileBindingM5493);
        C0947.m6711(C0948.m6716(m3203(this)), new View.OnClickListener() { // from class: dev.blaze.launcher.ui.profile.ProfileFragment.1
            /* JADX INFO: renamed from: ۟ۧۤ۟ۢ, reason: not valid java name and contains not printable characters */
            public static ProfileFragment m3204(Object obj) {
                if (C0192.m920() >= 0) {
                    return ProfileFragment.this;
                }
                return null;
            }

            /* JADX INFO: renamed from: ۣ۠ۤۧ, reason: not valid java name and contains not printable characters */
            public static FragmentProfileBinding m3205(Object obj) {
                if (C0663.m5471() >= 0) {
                    return ProfileFragment.m3203((ProfileFragment) obj);
                }
                return null;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ProfileFragment.isLogined = false;
                ProfileFragment.currentUser = null;
                C0793.m6062(C0461.m2655(m3205(m3204(this))), 0);
                C0793.m6062(C0355.m2053(m3205(m3204(this))), 8);
                C0793.m6062(C0473.m2708(m3205(m3204(this))), 8);
                C0750.m5872(C0875.m6418(m3205(m3204(this))));
            }
        });
        Button buttonM3758 = C0558.m3758(m3203(this));
        String strM6622 = C0925.m6622(m3202(), 0, 7, 1828);
        C0031.m141(buttonM3758, C0119.m590(strM6622));
        C0031.m141(C0948.m6716(m3203(this)), C0119.m590(strM6622));
        EditText editTextM224 = C0044.m224(m3203(this));
        String strM354 = C0072.m354(m3202(), 7, 7, 650);
        C0448.m2571(editTextM224, C0119.m590(strM354));
        C0448.m2571(C0749.m5869(m3203(this)), C0119.m590(strM354));
        C0448.m2571(C0556.m3636(m3203(this)), C0119.m590(strM354));
        C0448.m2571(C0756.m5898(m3203(this)), C0119.m590(strM354));
        C0031.m141(C0931.m6645(m3203(this)), C0119.m590(strM6622));
        C0031.m141(C0588.m4639(m3203(this)), C0119.m590(strM6622));
        C0947.m6711(C0931.m6645(m3203(this)), new View.OnClickListener() { // from class: dev.blaze.launcher.ui.profile.ProfileFragment.2

            /* JADX INFO: renamed from: short, reason: not valid java name */
            private static final short[] f549short = {917, 900, 914, 917, 682, 681, 680, 687, 686, 685, 731, 756, 750, 751, 759, 756, 756, 752, 693, 760, 756, 758};

            /* JADX INFO: renamed from: ۟۠ۥۧۦ, reason: not valid java name and contains not printable characters */
            public static FragmentProfileBinding m3206(Object obj) {
                if (C0399.m2302() < 0) {
                    return ProfileFragment.m3203((ProfileFragment) obj);
                }
                return null;
            }

            /* JADX INFO: renamed from: ۠ۤۢ۠, reason: not valid java name and contains not printable characters */
            public static ProfileFragment m3207(Object obj) {
                if (C0326.m1931() > 0) {
                    return ProfileFragment.this;
                }
                return null;
            }

            /* JADX INFO: renamed from: ۥۨۡۢ, reason: contains not printable characters */
            public static short[] m3208() {
                if (C0095.m473() < 0) {
                    return f549short;
                }
                return null;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ProfileFragment.isLogined = true;
                ProfileFragment.currentUser = new User();
                C0580.m4596().userName = C0140.m687(m3208(), 0, 4, 961);
                C0580.m4596().email = C0000.m0(m3208(), 4, 18, 667);
                C0880.m6445(C0698.m5636(m3206(m3207(this))), C0755.m5894(C0580.m4596()));
                C0880.m6445(C0167.m811(m3206(m3207(this))), C0262.m1533(C0580.m4596()));
                C0793.m6062(C0461.m2655(m3206(m3207(this))), 8);
                C0793.m6062(C0355.m2053(m3206(m3207(this))), 8);
                C0793.m6062(C0473.m2708(m3206(m3207(this))), 0);
                C0750.m5872(C0875.m6418(m3206(m3207(this))));
            }
        });
        C0947.m6711(C0705.m5669(m3203(this)), new View.OnClickListener() { // from class: dev.blaze.launcher.ui.profile.ProfileFragment.3
            /* JADX INFO: renamed from: ۣ۟۠ۢ, reason: not valid java name and contains not printable characters */
            public static ProfileFragment m3209(Object obj) {
                if (C0260.m1523() < 0) {
                    return ProfileFragment.this;
                }
                return null;
            }

            /* JADX INFO: renamed from: ۨۢۤ, reason: not valid java name and contains not printable characters */
            public static FragmentProfileBinding m3210(Object obj) {
                if (C0012.m55() <= 0) {
                    return ProfileFragment.m3203((ProfileFragment) obj);
                }
                return null;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                C0750.m5872(C0875.m6418(m3210(m3209(this))));
                C0793.m6062(C0461.m2655(m3210(m3209(this))), 8);
                C0793.m6062(C0355.m2053(m3210(m3209(this))), 0);
            }
        });
        C0947.m6711(C0423.m2439(m3203(this)), new View.OnClickListener() { // from class: dev.blaze.launcher.ui.profile.ProfileFragment.4
            /* JADX INFO: renamed from: ۟ۦ۟ۦۦ, reason: not valid java name and contains not printable characters */
            public static ProfileFragment m3211(Object obj) {
                if (C0849.m6307() < 0) {
                    return ProfileFragment.this;
                }
                return null;
            }

            /* JADX INFO: renamed from: ۦۧۨۧ, reason: contains not printable characters */
            public static FragmentProfileBinding m3212(Object obj) {
                if (C0565.m4522() > 0) {
                    return ProfileFragment.m3203((ProfileFragment) obj);
                }
                return null;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                C0750.m5872(C0875.m6418(m3212(m3211(this))));
                C0793.m6062(C0461.m2655(m3212(m3211(this))), 0);
                C0793.m6062(C0355.m2053(m3212(m3211(this))), 8);
            }
        });
        if (C0125.m639()) {
            C0880.m6445(C0698.m5636(m3203(this)), C0755.m5894(C0580.m4596()));
            C0880.m6445(C0167.m811(m3203(this)), C0262.m1533(C0580.m4596()));
            C0793.m6062(C0461.m2655(m3203(this)), 8);
            C0793.m6062(C0355.m2053(m3203(this)), 8);
            C0793.m6062(C0473.m2708(m3203(this)), 0);
        } else {
            C0793.m6062(C0461.m2655(m3203(this)), 0);
        }
        return coordinatorLayoutM6418;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.binding = null;
    }
}
