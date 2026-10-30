package dev.blaze.launcher;

import android.content.res.ColorStateList;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.collection.internal.C0037;
import androidx.drawerlayout.C0119;
import androidx.navigation.NavController;
import androidx.navigation.ui.AppBarConfiguration;
import androidx.startup.C0177;
import androidx.vectordrawable.C0184;
import com.braze.communication.dust.C0211;
import com.braze.models.response.C0236;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.google.android.material.canvas.C0368;
import com.google.android.material.search.C0407;
import com.google.firebase.iid.internal.C0448;
import com.google.firebase.installations.time.C0455;
import com.microsoft.xbox.idp.interop.C0486;
import com.microsoft.xbox.toolkit.ui.util.C0508;
import dev.blaze.launcher.databinding.ActivityMainBinding;
import kotlin.io.encoding.C0575;
import kotlin.jdk7.C0582;
import kotlin.jvm.C0591;
import kotlin.math.C0592;
import org.apache.commons.codec.net.C0660;
import org.simpleframework.xml.convert.C0716;
import org.spongycastle.asn1.eac.C0741;
import org.spongycastle.asn1.icao.C0752;
import org.spongycastle.crypto.kems.C0806;
import org.spongycastle.crypto.parsers.C0816;
import org.spongycastle.dvcs.C0822;
import org.spongycastle.jcajce.provider.asymmetric.dsa.C0836;
import org.xmlpull.v1.C0954;

/* JADX INFO: loaded from: classes4.dex */
public class MainActivity extends AppCompatActivity {

    /* JADX INFO: renamed from: short, reason: not valid java name */
    private static final short[] f528short = {1992, 2008, 1929, 2008, 1929, 2008, 1929, 472, 457, 413, 457, 413, 457, 413, 2646, 2629, 2629, 2579, 2579, 2582, 2579, 921, 988, 988, 988, 988, 988, 988};
    private AppBarConfiguration appBarConfiguration;
    private ActivityMainBinding binding;

    /* JADX INFO: renamed from: ۟ۥۢۤ, reason: not valid java name and contains not printable characters */
    public static void m3036(Object obj, Object obj2) {
        if (C0486.m2764() >= 0) {
            ((BottomNavigationView) obj).setItemTextColor((ColorStateList) obj2);
        }
    }

    /* JADX INFO: renamed from: ۠ۦ۟ۡ, reason: not valid java name and contains not printable characters */
    public static ActivityMainBinding m3037(Object obj) {
        if (C0575.m4569() < 0) {
            return ((MainActivity) obj).binding;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۡ۟ۢۤ, reason: not valid java name and contains not printable characters */
    public static void m3038(Object obj, Object obj2) {
        if (C0592.m4662() > 0) {
            ((MainActivity) obj).setSupportActionBar((Toolbar) obj2);
        }
    }

    /* JADX INFO: renamed from: ۥۡۡ۟, reason: contains not printable characters */
    public static void m3039(Object obj, Object obj2) {
        if (C0741.m5833() > 0) {
            ((BottomNavigationView) obj).setItemActiveIndicatorColor((ColorStateList) obj2);
        }
    }

    /* JADX INFO: renamed from: ۥۤۥۦ, reason: contains not printable characters */
    public static short[] m3040() {
        if (C0184.m884() <= 0) {
            return f528short;
        }
        return null;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ActivityMainBinding activityMainBindingM5880 = C0752.m5880(C0660.m5461(this));
        this.binding = activityMainBindingM5880;
        C0448.m2569(C0508.m2867(activityMainBindingM5880), C0119.m590(C0822.m6188(m3040(), 0, 7, 2027)));
        C0037.m195(this, C0508.m2867(m3037(this)));
        m3038(this, new Toolbar(this));
        BottomNavigationView bottomNavigationView = (BottomNavigationView) C0816.m6160(this, C0407.m2350());
        C0716.m5716(bottomNavigationView, C0119.m590(C0455.m2604(m3040(), 7, 7, 507)));
        m3039(bottomNavigationView, C0836.m6250(C0119.m590(C0591.m4651(m3040(), 14, 7, 2677))));
        m3036(bottomNavigationView, C0836.m6250(C0119.m590(C0368.m2111(m3040(), 21, 7, 954))));
        AppBarConfiguration appBarConfigurationM4607 = C0582.m4607(new AppBarConfiguration.Builder(C0592.m4663()));
        NavController navControllerM1298 = C0236.m1298(this, C0806.m6119());
        C0211.m1114(this, navControllerM1298, appBarConfigurationM4607);
        C0177.m852(C0954.m6745(m3037(this)), navControllerM1298);
    }

    @Override // androidx.appcompat.app.AppCompatActivity
    public boolean onSupportNavigateUp() {
        return super.onSupportNavigateUp();
    }
}
