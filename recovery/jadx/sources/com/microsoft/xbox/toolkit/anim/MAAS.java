package com.microsoft.xbox.toolkit.anim;

import com.microsoft.xbox.toolkit.XMLHelper;
import com.microsoft.xboxtcui.XboxTcuiSdk;
import java.util.Hashtable;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class MAAS {
    private static final MAAS instance = new MAAS();
    private final String ASSET_FILENAME = "animation/%sAnimation.xml";
    private final String SDCARD_FILENAME = "/sdcard/bishop/maas/%sAnimation.xml";
    private final Hashtable<String, MAASAnimation> maasFileCache = new Hashtable<>();
    private final boolean usingSdcard = false;

    public enum MAASAnimationType {
        ANIMATE_IN,
        ANIMATE_OUT
    }

    public static MAAS getInstance() {
        return instance;
    }

    public MAASAnimation getAnimation(String str) {
        if (str != null) {
            return getMAASFile(str);
        }
        throw new IllegalArgumentException();
    }

    private MAASAnimation getMAASFile(String str) {
        MAASAnimation mAASAnimationLoadMAASFile;
        if (!this.maasFileCache.containsKey(str) && (mAASAnimationLoadMAASFile = loadMAASFile(str)) != null) {
            this.maasFileCache.put(str, mAASAnimationLoadMAASFile);
        }
        return this.maasFileCache.get(str);
    }

    private MAASAnimation loadMAASFile(String str) {
        try {
            Objects.requireNonNull(this);
            return (MAASAnimation) XMLHelper.instance().load(XboxTcuiSdk.getAssetManager().open(String.format("animation/%sAnimation.xml", str)), MAASAnimation.class);
        } catch (Exception unused) {
            return null;
        }
    }
}
