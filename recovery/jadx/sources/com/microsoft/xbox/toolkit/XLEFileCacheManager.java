package com.microsoft.xbox.toolkit;

import com.microsoft.xbox.toolkit.system.SystemUtil;
import com.microsoft.xboxtcui.XboxTcuiSdk;
import java.io.File;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class XLEFileCacheManager {
    private static final HashMap<String, XLEFileCache> sAllCaches = new HashMap<>();
    private static final HashMap<XLEFileCache, File> sCacheRootDirMap = new HashMap<>();
    public static XLEFileCache emptyFileCache = new XLEFileCache();

    public static synchronized XLEFileCache createCache(String str, int i) {
        XLEFileCache xLEFileCacheCreateCache;
        synchronized (XLEFileCacheManager.class) {
            xLEFileCacheCreateCache = createCache(str, i, true);
        }
        return xLEFileCacheCreateCache;
        return xLEFileCacheCreateCache;
    }

    public static synchronized XLEFileCache createCache(String str, int i, boolean z) {
        synchronized (XLEFileCacheManager.class) {
            try {
                if (i > 0) {
                    if (str != null && str.length() > 0) {
                        HashMap<String, XLEFileCache> map = sAllCaches;
                        XLEFileCache xLEFileCache = map.get(str);
                        if (xLEFileCache == null) {
                            if (!z) {
                                return emptyFileCache;
                            }
                            if (!SystemUtil.isSDCardAvailable()) {
                                return emptyFileCache;
                            }
                            XLEFileCache xLEFileCache2 = new XLEFileCache(str, i);
                            File file = new File(XboxTcuiSdk.getActivity().getCacheDir(), str);
                            if (!file.exists()) {
                                file.mkdirs();
                            }
                            xLEFileCache2.size = file.list().length;
                            map.put(str, xLEFileCache2);
                            sCacheRootDirMap.put(xLEFileCache2, file);
                        } else if (xLEFileCache.maxFileNumber != i) {
                            throw new IllegalArgumentException("The same subDirectory with different maxFileNumber already exist.");
                        }
                    }
                    throw new IllegalArgumentException("subDirectory must be not null and at least one character length");
                }
                throw new IllegalArgumentException("maxFileNumber must be > 0");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    static File getCacheRootDir(XLEFileCache xLEFileCache) {
        return sCacheRootDirMap.get(xLEFileCache);
    }

    public static String getCacheStatus() {
        return sAllCaches.values().toString();
    }
}
