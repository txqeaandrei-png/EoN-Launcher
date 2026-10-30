package dev.blaze.launcher;

import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ChangedPackages;
import android.content.pm.FeatureInfo;
import android.content.pm.InstrumentationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.pm.PermissionGroupInfo;
import android.content.pm.PermissionInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.pm.SharedLibraryInfo;
import android.content.pm.VersionedPackage;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.UserHandle;
import android.support.v4.graphics.drawable.C0003;
import androidx.activity.ktx.C0007;
import androidx.appcompat.view.menu.C0017;
import androidx.browser.trusted.sharing.C0027;
import androidx.browser.trusted.splashscreens.C0030;
import androidx.core.database.sqlite.C0069;
import androidx.core.internal.C0075;
import androidx.core.internal.view.C0074;
import androidx.core.net.C0084;
import androidx.core.text.C0096;
import androidx.lifecycle.extensions.C0137;
import androidx.lifecycle.livedata.core.C0139;
import androidx.localbroadcastmanager.C0157;
import androidx.profileinstaller.C0166;
import androidx.startup.C0177;
import androidx.vectordrawable.animated.C0183;
import androidx.versionedparcelable.C0186;
import com.bea.xml.stream.samples.C0207;
import com.bea.xml.stream.util.C0208;
import com.braze.enums.C0220;
import com.braze.models.outgoing.event.push.C0233;
import com.braze.requests.framework.queue.C0240;
import com.braze.triggers.conditions.C0250;
import com.braze.ui.contentcards.view.C0270;
import com.braze.ui.inappmessage.utils.C0286;
import com.braze.ui.support.C0293;
import com.google.android.datatransport.runtime.logging.C0313;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.C0315;
import com.google.android.gms.internal.cloudmessaging.C0352;
import com.google.android.material.bottomappbar.C0362;
import com.google.android.material.bottomsheet.C0365;
import com.google.android.material.canvas.C0368;
import com.google.android.material.canvas.C0370;
import com.google.android.material.carousel.C0371;
import com.google.android.material.chip.C0377;
import com.google.android.material.circularreveal.cardview.C0378;
import com.google.firebase.dynamicloading.C0436;
import com.google.firebase.installations.interop.C0452;
import com.google.firebase.ktx.C0457;
import com.google.firebase.messaging.ktx.C0458;
import com.google.firebase.platforminfo.C0466;
import com.microsoft.xal.browser.C0480;
import com.microsoft.xbox.idp.util.C0491;
import com.mojang.android.C0525;
import dev.blaze.launcher.Server.C0541;
import java.util.List;
import kotlin.annotation.C0556;
import kotlin.internal.jdk8.C0572;
import kotlin.io.encoding.C0577;
import kotlin.jvm.internal.C0588;
import kotlin.jvm.internal.C0589;
import kotlin.ranges.C0595;
import kotlin.ranges.C0596;
import org.apache.commons.codec.language.C0659;
import org.apache.commons.logging.impl.C0663;
import org.apache.http.conn.C0678;
import org.apache.http.impl.conn.C0690;
import org.apache.http.impl.io.C0694;
import org.apache.http.io.C0701;
import org.spongycastle.asn1.eac.C0740;
import org.spongycastle.asn1.mozilla.C0758;
import org.spongycastle.asn1.x509.C0769;
import org.spongycastle.cert.selector.jcajce.C0786;
import org.spongycastle.crypto.io.C0805;
import org.spongycastle.crypto.parsers.C0816;
import org.spongycastle.dvcs.C0824;
import org.spongycastle.jcajce.provider.keystore.C0853;
import org.spongycastle.jce.C0867;
import org.spongycastle.operator.C0890;
import org.spongycastle.pkcs.bc.C0893;
import org.spongycastle.pqc.crypto.rainbow.C0911;
import org.spongycastle.pqc.jcajce.provider.gmss.C0912;
import org.spongycastle.pqc.jcajce.provider.gmss.C0913;
import org.spongycastle.x509.util.C0936;

/* JADX INFO: loaded from: classes3.dex */
public class ProxyPackageManager extends PackageManager {

    /* JADX INFO: renamed from: short, reason: not valid java name */
    private static final short[] f530short = {1425, 1452, 1447, 1443, 1449, 1467, 2142, 2165, 2151, 2096, 2112, 2141, 2096, 2163, 2146, 2165, 2161, 2148, 2165, 2164, 2097};
    private final String mLibDir;
    private final PackageManager mPackageManager;

    public ProxyPackageManager(PackageManager packageManager, String str) {
        C0208.m1001(m3045(), 0, 6, 1474);
        C0890.m6476(m3045(), 6, 15, 2064);
        this.mPackageManager = packageManager;
        this.mLibDir = str;
    }

    /* JADX INFO: renamed from: ۣ۟۟ۨۡ, reason: not valid java name and contains not printable characters */
    public static PackageManager m3043(Object obj) {
        if (C0936.m6669() >= 0) {
            return ((ProxyPackageManager) obj).mPackageManager;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۟ۢۢ۠ۦ, reason: not valid java name and contains not printable characters */
    public static String m3044(Object obj) {
        if (C0466.m2674() < 0) {
            return ((ProxyPackageManager) obj).mLibDir;
        }
        return null;
    }

    /* JADX INFO: renamed from: ۟ۦۥۥۨ, reason: not valid java name and contains not printable characters */
    public static short[] m3045() {
        if (C0030.m136() < 0) {
            return f530short;
        }
        return null;
    }

    @Override // android.content.pm.PackageManager
    public void addPackageToPreferred(String str) {
        C0458.m2639(m3043(this), str);
    }

    @Override // android.content.pm.PackageManager
    public boolean addPermission(PermissionInfo permissionInfo) {
        return C0139.m681(m3043(this), permissionInfo);
    }

    @Override // android.content.pm.PackageManager
    public boolean addPermissionAsync(PermissionInfo permissionInfo) {
        return C0758.m5907(m3043(this), permissionInfo);
    }

    @Override // android.content.pm.PackageManager
    public void addPreferredActivity(IntentFilter intentFilter, int i, ComponentName[] componentNameArr, ComponentName componentName) {
        C0912.m6561(m3043(this), intentFilter, i, componentNameArr, componentName);
    }

    @Override // android.content.pm.PackageManager
    public boolean canRequestPackageInstalls() {
        return false;
    }

    @Override // android.content.pm.PackageManager
    public String[] canonicalToCurrentPackageNames(String[] strArr) {
        return C0589.m4642(m3043(this), strArr);
    }

    @Override // android.content.pm.PackageManager
    public int checkPermission(String str, String str2) {
        return C0588.m4640(m3043(this), str, str2);
    }

    @Override // android.content.pm.PackageManager
    public int checkSignatures(int i, int i2) {
        return C0377.m2160(m3043(this), i, i2);
    }

    @Override // android.content.pm.PackageManager
    public int checkSignatures(String str, String str2) {
        return C0588.m4640(m3043(this), str, str2);
    }

    @Override // android.content.pm.PackageManager
    public void clearInstantAppCookie() {
    }

    @Override // android.content.pm.PackageManager
    public void clearPackagePreferredActivities(String str) {
        C0867.m6384(m3043(this), str);
    }

    @Override // android.content.pm.PackageManager
    public String[] currentToCanonicalPackageNames(String[] strArr) {
        return C0659.m5455(m3043(this), strArr);
    }

    @Override // android.content.pm.PackageManager
    public void extendVerificationTimeout(int i, int i2, long j) {
        C0525.m2949(m3043(this), i, i2, j);
    }

    @Override // android.content.pm.PackageManager
    public Drawable getActivityBanner(ComponentName componentName) throws PackageManager.NameNotFoundException {
        return null;
    }

    @Override // android.content.pm.PackageManager
    public Drawable getActivityBanner(Intent intent) throws PackageManager.NameNotFoundException {
        return null;
    }

    @Override // android.content.pm.PackageManager
    public Drawable getActivityIcon(ComponentName componentName) throws PackageManager.NameNotFoundException {
        return C0368.m2113(m3043(this), componentName);
    }

    @Override // android.content.pm.PackageManager
    public Drawable getActivityIcon(Intent intent) throws PackageManager.NameNotFoundException {
        return C0250.m1436(m3043(this), intent);
    }

    @Override // android.content.pm.PackageManager
    public ActivityInfo getActivityInfo(ComponentName componentName, int i) throws PackageManager.NameNotFoundException {
        ActivityInfo activityInfoM121 = C0027.m121(m3043(this), componentName, i);
        C0824.m6194(activityInfoM121).nativeLibraryDir = m3044(this);
        return activityInfoM121;
    }

    @Override // android.content.pm.PackageManager
    public Drawable getActivityLogo(ComponentName componentName) throws PackageManager.NameNotFoundException {
        return C0911.m6557(m3043(this), componentName);
    }

    @Override // android.content.pm.PackageManager
    public Drawable getActivityLogo(Intent intent) throws PackageManager.NameNotFoundException {
        return C0595.m4733(m3043(this), intent);
    }

    @Override // android.content.pm.PackageManager
    public List<PermissionGroupInfo> getAllPermissionGroups(int i) {
        return C0769.m5959(m3043(this), i);
    }

    @Override // android.content.pm.PackageManager
    public Drawable getApplicationBanner(ApplicationInfo applicationInfo) {
        return null;
    }

    @Override // android.content.pm.PackageManager
    public Drawable getApplicationBanner(String str) throws PackageManager.NameNotFoundException {
        return null;
    }

    @Override // android.content.pm.PackageManager
    public int getApplicationEnabledSetting(String str) {
        return C0286.m1707(m3043(this), str);
    }

    @Override // android.content.pm.PackageManager
    public Drawable getApplicationIcon(ApplicationInfo applicationInfo) {
        return C0007.m33(m3043(this), applicationInfo);
    }

    @Override // android.content.pm.PackageManager
    public Drawable getApplicationIcon(String str) throws PackageManager.NameNotFoundException {
        return C0084.m424(m3043(this), str);
    }

    @Override // android.content.pm.PackageManager
    public ApplicationInfo getApplicationInfo(String str, int i) throws PackageManager.NameNotFoundException {
        return C0556.m3635(m3043(this), str, i);
    }

    @Override // android.content.pm.PackageManager
    public CharSequence getApplicationLabel(ApplicationInfo applicationInfo) {
        return C0378.m2162(m3043(this), applicationInfo);
    }

    @Override // android.content.pm.PackageManager
    public Drawable getApplicationLogo(ApplicationInfo applicationInfo) {
        return C0541.m3049(m3043(this), applicationInfo);
    }

    @Override // android.content.pm.PackageManager
    public Drawable getApplicationLogo(String str) throws PackageManager.NameNotFoundException {
        return C0436.m2515(m3043(this), str);
    }

    @Override // android.content.pm.PackageManager
    public ChangedPackages getChangedPackages(int i) {
        return null;
    }

    @Override // android.content.pm.PackageManager
    public int getComponentEnabledSetting(ComponentName componentName) {
        return C0233.m1284(m3043(this), componentName);
    }

    @Override // android.content.pm.PackageManager
    public Drawable getDefaultActivityIcon() {
        return C0166.m807(m3043(this));
    }

    @Override // android.content.pm.PackageManager
    public Drawable getDrawable(String str, int i, ApplicationInfo applicationInfo) {
        return C0362.m2085(m3043(this), str, i, applicationInfo);
    }

    @Override // android.content.pm.PackageManager
    public List<ApplicationInfo> getInstalledApplications(int i) {
        return C0240.m1367(m3043(this), i);
    }

    @Override // android.content.pm.PackageManager
    public List<PackageInfo> getInstalledPackages(int i) {
        return C0017.m80(m3043(this), i);
    }

    @Override // android.content.pm.PackageManager
    public String getInstallerPackageName(String str) {
        return C0816.m6161(m3043(this), str);
    }

    @Override // android.content.pm.PackageManager
    public byte[] getInstantAppCookie() {
        return new byte[0];
    }

    @Override // android.content.pm.PackageManager
    public int getInstantAppCookieMaxBytes() {
        return 0;
    }

    @Override // android.content.pm.PackageManager
    public InstrumentationInfo getInstrumentationInfo(ComponentName componentName, int i) throws PackageManager.NameNotFoundException {
        return C0690.m5599(m3043(this), componentName, i);
    }

    @Override // android.content.pm.PackageManager
    public Intent getLaunchIntentForPackage(String str) {
        return C0466.m2677(m3043(this), str);
    }

    @Override // android.content.pm.PackageManager
    public Intent getLeanbackLaunchIntentForPackage(String str) {
        return C0183.m882(m3043(this), str);
    }

    @Override // android.content.pm.PackageManager
    public String getNameForUid(int i) {
        return C0315.m1867(m3043(this), i);
    }

    @Override // android.content.pm.PackageManager
    public int[] getPackageGids(String str) throws PackageManager.NameNotFoundException {
        return C0596.m4735(m3043(this), str);
    }

    @Override // android.content.pm.PackageManager
    public int[] getPackageGids(String str, int i) throws PackageManager.NameNotFoundException {
        return new int[0];
    }

    @Override // android.content.pm.PackageManager
    public PackageInfo getPackageInfo(VersionedPackage versionedPackage, int i) throws PackageManager.NameNotFoundException {
        return null;
    }

    @Override // android.content.pm.PackageManager
    public PackageInfo getPackageInfo(String str, int i) throws PackageManager.NameNotFoundException {
        return C0572.m4556(m3043(this), str, i);
    }

    @Override // android.content.pm.PackageManager
    public PackageInstaller getPackageInstaller() {
        return C0075.m366(m3043(this));
    }

    @Override // android.content.pm.PackageManager
    public int getPackageUid(String str, int i) throws PackageManager.NameNotFoundException {
        return 0;
    }

    @Override // android.content.pm.PackageManager
    public String[] getPackagesForUid(int i) {
        return C0701.m5650(m3043(this), i);
    }

    @Override // android.content.pm.PackageManager
    public List<PackageInfo> getPackagesHoldingPermissions(String[] strArr, int i) {
        return null;
    }

    @Override // android.content.pm.PackageManager
    public PermissionGroupInfo getPermissionGroupInfo(String str, int i) throws PackageManager.NameNotFoundException {
        return C0003.m16(m3043(this), str, i);
    }

    @Override // android.content.pm.PackageManager
    public PermissionInfo getPermissionInfo(String str, int i) throws PackageManager.NameNotFoundException {
        return C0157.m758(m3043(this), str, i);
    }

    @Override // android.content.pm.PackageManager
    public int getPreferredActivities(List<IntentFilter> list, List<ComponentName> list2, String str) {
        return C0853.m6322(m3043(this), list, list2, str);
    }

    @Override // android.content.pm.PackageManager
    public List<PackageInfo> getPreferredPackages(int i) {
        return C0371.m2131(m3043(this), i);
    }

    @Override // android.content.pm.PackageManager
    public ProviderInfo getProviderInfo(ComponentName componentName, int i) throws PackageManager.NameNotFoundException {
        return C0457.m2614(m3043(this), componentName, i);
    }

    @Override // android.content.pm.PackageManager
    public ActivityInfo getReceiverInfo(ComponentName componentName, int i) throws PackageManager.NameNotFoundException {
        return C0678.m5548(m3043(this), componentName, i);
    }

    @Override // android.content.pm.PackageManager
    public Resources getResourcesForActivity(ComponentName componentName) throws PackageManager.NameNotFoundException {
        return C0069.m340(m3043(this), componentName);
    }

    @Override // android.content.pm.PackageManager
    public Resources getResourcesForApplication(ApplicationInfo applicationInfo) throws PackageManager.NameNotFoundException {
        return C0805.m6115(m3043(this), applicationInfo);
    }

    @Override // android.content.pm.PackageManager
    public Resources getResourcesForApplication(String str) throws PackageManager.NameNotFoundException {
        return C0370.m2123(m3043(this), str);
    }

    @Override // android.content.pm.PackageManager
    public ServiceInfo getServiceInfo(ComponentName componentName, int i) throws PackageManager.NameNotFoundException {
        return C0074.m362(m3043(this), componentName, i);
    }

    @Override // android.content.pm.PackageManager
    public List<SharedLibraryInfo> getSharedLibraries(int i) {
        return C0480.m2734();
    }

    @Override // android.content.pm.PackageManager
    public FeatureInfo[] getSystemAvailableFeatures() {
        return C0491.m2785(m3043(this));
    }

    @Override // android.content.pm.PackageManager
    public String[] getSystemSharedLibraryNames() {
        return C0694.m5617(m3043(this));
    }

    @Override // android.content.pm.PackageManager
    public CharSequence getText(String str, int i, ApplicationInfo applicationInfo) {
        return C0893.m6485(m3043(this), str, i, applicationInfo);
    }

    @Override // android.content.pm.PackageManager
    public Drawable getUserBadgedDrawableForDensity(Drawable drawable, UserHandle userHandle, Rect rect, int i) {
        return null;
    }

    @Override // android.content.pm.PackageManager
    public Drawable getUserBadgedIcon(Drawable drawable, UserHandle userHandle) {
        return null;
    }

    @Override // android.content.pm.PackageManager
    public CharSequence getUserBadgedLabel(CharSequence charSequence, UserHandle userHandle) {
        return null;
    }

    @Override // android.content.pm.PackageManager
    public XmlResourceParser getXml(String str, int i, ApplicationInfo applicationInfo) {
        return C0740.m5830(m3043(this), str, i, applicationInfo);
    }

    @Override // android.content.pm.PackageManager
    public boolean hasSystemFeature(String str) {
        return C0368.m2112(m3043(this), str);
    }

    @Override // android.content.pm.PackageManager
    public boolean hasSystemFeature(String str, int i) {
        return false;
    }

    @Override // android.content.pm.PackageManager
    public boolean isInstantApp() {
        return false;
    }

    @Override // android.content.pm.PackageManager
    public boolean isInstantApp(String str) {
        return false;
    }

    @Override // android.content.pm.PackageManager
    public boolean isPermissionRevokedByPolicy(String str, String str2) {
        return false;
    }

    @Override // android.content.pm.PackageManager
    public boolean isSafeMode() {
        return C0663.m5475(m3043(this));
    }

    @Override // android.content.pm.PackageManager
    public List<ResolveInfo> queryBroadcastReceivers(Intent intent, int i) {
        return C0365.m2097(m3043(this), intent, i);
    }

    @Override // android.content.pm.PackageManager
    public List<ProviderInfo> queryContentProviders(String str, int i, int i2) {
        return C0096.m479(m3043(this), str, i, i2);
    }

    @Override // android.content.pm.PackageManager
    public List<InstrumentationInfo> queryInstrumentation(String str, int i) {
        return C0457.m2616(m3043(this), str, i);
    }

    @Override // android.content.pm.PackageManager
    public List<ResolveInfo> queryIntentActivities(Intent intent, int i) {
        return C0177.m849(m3043(this), intent, i);
    }

    @Override // android.content.pm.PackageManager
    public List<ResolveInfo> queryIntentActivityOptions(ComponentName componentName, Intent[] intentArr, Intent intent, int i) {
        return C0913.m6566(m3043(this), componentName, intentArr, intent, i);
    }

    @Override // android.content.pm.PackageManager
    public List<ResolveInfo> queryIntentContentProviders(Intent intent, int i) {
        return C0352.m2039(m3043(this), intent, i);
    }

    @Override // android.content.pm.PackageManager
    public List<ResolveInfo> queryIntentServices(Intent intent, int i) {
        return C0452.m2590(m3043(this), intent, i);
    }

    @Override // android.content.pm.PackageManager
    public List<PermissionInfo> queryPermissionsByGroup(String str, int i) throws PackageManager.NameNotFoundException {
        return C0137.m674(m3043(this), str, i);
    }

    @Override // android.content.pm.PackageManager
    public void removePackageFromPreferred(String str) {
        C0786.m6033(m3043(this), str);
    }

    @Override // android.content.pm.PackageManager
    public void removePermission(String str) {
        C0596.m4740(m3043(this), str);
    }

    @Override // android.content.pm.PackageManager
    public ResolveInfo resolveActivity(Intent intent, int i) {
        return C0270.m1573(m3043(this), intent, i);
    }

    @Override // android.content.pm.PackageManager
    public ProviderInfo resolveContentProvider(String str, int i) {
        return C0293.m1753(m3043(this), str, i);
    }

    @Override // android.content.pm.PackageManager
    public ResolveInfo resolveService(Intent intent, int i) {
        return C0186.m895(m3043(this), intent, i);
    }

    @Override // android.content.pm.PackageManager
    public void setApplicationCategoryHint(String str, int i) {
    }

    @Override // android.content.pm.PackageManager
    public void setApplicationEnabledSetting(String str, int i, int i2) {
        C0220.m1168(m3043(this), str, i, i2);
    }

    @Override // android.content.pm.PackageManager
    public void setComponentEnabledSetting(ComponentName componentName, int i, int i2) {
        C0313.m1845(m3043(this), componentName, i, i2);
    }

    @Override // android.content.pm.PackageManager
    public void setInstallerPackageName(String str, String str2) {
        C0577.m4584(m3043(this), str, str2);
    }

    @Override // android.content.pm.PackageManager
    public void updateInstantAppCookie(byte[] bArr) {
    }

    @Override // android.content.pm.PackageManager
    public void verifyPendingInstall(int i, int i2) {
        C0207.m997(m3043(this), i, i2);
    }
}
