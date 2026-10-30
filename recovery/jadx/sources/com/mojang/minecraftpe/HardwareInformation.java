package com.mojang.minecraftpe;

import android.content.Context;
import android.os.Build;
import androidx.core.os.EnvironmentCompat;
import com.mojang.minecraftpe.hardwareinfo.CPUCluster;
import com.mojang.minecraftpe.hardwareinfo.CPUTopologyInfo;
import com.mojang.minecraftpe.platforms.Platform;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public class HardwareInformation {
    private static final CPUInfo cpuInfo = getCPUInfo();
    private final Context context;

    public static int getNumCores() {
        return 1;
    }

    public boolean getIsRooted() {
        return false;
    }

    public int getSignaturesHashCode() {
        return 0;
    }

    HardwareInformation(Context context) {
        this.context = context;
    }

    public static String getDeviceModelName() {
        return Build.MANUFACTURER.toUpperCase() + " " + Build.MODEL;
    }

    public static String getSoCName() {
        String cPULine;
        if (Build.VERSION.SDK_INT >= 31) {
            cPULine = Build.SOC_MODEL.equals(EnvironmentCompat.MEDIA_UNKNOWN) ? "" : Build.SOC_MODEL;
        } else {
            cPULine = cpuInfo.getCPULine("Hardware");
        }
        return cPULine.isEmpty() ? cpuInfo.getCPULine("model name") : cPULine;
    }

    public static int getPerformanceCoreCount() {
        CPUCluster[] clusterArray = CPUTopologyInfo.getInstance().getClusterArray();
        int numCores = getNumCores();
        if (clusterArray.length == 0) {
            if (numCores > 2) {
                return numCores >> 1;
            }
            return 1;
        }
        if (clusterArray.length == 1) {
            return numCores;
        }
        CPUCluster cPUCluster = clusterArray[0];
        long maxFreq = cPUCluster.getMaxFreq();
        for (int i = 1; i < clusterArray.length; i++) {
            if (clusterArray[i].getMaxFreq() < maxFreq) {
                cPUCluster = clusterArray[i];
            }
        }
        return numCores - cPUCluster.getClusterCoreCount();
    }

    public static String getLocale() {
        return Locale.getDefault().toString();
    }

    public static String getCPUType() {
        return Platform.createPlatform(false).getABIS();
    }

    public static String getCPUName() {
        return EnvironmentCompat.MEDIA_UNKNOWN;
    }

    public static String getCPUFeatures() {
        return EnvironmentCompat.MEDIA_UNKNOWN;
    }

    public static int getNumClusters() {
        return CPUTopologyInfo.getInstance().getCPUClusterCount();
    }

    public static CPUInfo getCPUInfo() {
        HashMap map = new HashMap();
        int i = 0;
        if (new File("/proc/cpuinfo").exists()) {
            try {
                BufferedReader bufferedReader = new BufferedReader(new FileReader(new File("/proc/cpuinfo")));
                Pattern patternCompile = Pattern.compile("(\\w*)\\s*:\\s([^\\n]*)");
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    Matcher matcher = patternCompile.matcher(line);
                    if (matcher.find() && matcher.groupCount() == 2) {
                        if (!map.containsKey(matcher.group(1))) {
                            map.put(matcher.group(1), matcher.group(2));
                        }
                        if (matcher.group(1).contentEquals("processor")) {
                            i++;
                        }
                    }
                }
                bufferedReader.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return new CPUInfo(map, i);
    }

    public static String getSerialNumber() {
        return Build.SERIAL;
    }

    public static String getBoard() {
        return Build.BOARD;
    }

    public String getAndroidVersion() {
        if (((MainActivity) this.context).isChromebook()) {
            return "ChromeOS " + Build.VERSION.RELEASE;
        }
        return "Android " + Build.VERSION.RELEASE;
    }

    public String getSecureId() {
        return "SecureId";
    }

    public String getInstallerPackageName() {
        return "installer.package.name";
    }

    public static class CPUInfo {
        private final Map<String, String> cpuLines;
        private final int numberCPUCores;

        public CPUInfo(Map<String, String> map, int i) {
            this.cpuLines = map;
            this.numberCPUCores = i;
        }

        public String getCPULine(String str) {
            if (this.cpuLines.containsKey(str)) {
                return this.cpuLines.get(str);
            }
            return "";
        }

        public int getNumberCPUCores() {
            return this.numberCPUCores;
        }
    }
}
