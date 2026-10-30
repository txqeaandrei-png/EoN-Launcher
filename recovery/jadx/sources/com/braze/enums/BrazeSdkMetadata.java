package com.braze.enums;

import com.braze.models.IPutIntoJson;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0010\n\u0002\b+\b\u0087\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00000\u0003:\u0001\u000bB\u0011\b\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\u0004\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\tj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+j\u0002\b,j\u0002\b-¨\u0006."}, d2 = {"Lcom/braze/enums/BrazeSdkMetadata;", "Lcom/braze/models/IPutIntoJson;", "", "", "jsonKey", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "forJsonPut", "()Ljava/lang/String;", "Ljava/lang/String;", "Companion", "com/braze/enums/a", "ADJUST", "AIRBRIDGE", "APPSFLYER", "BLUEDOT", "BRANCH", "CORDOVA", "EXPO", "FACTUAL", "FOURSQUARE", "FLUTTER", "GRADLE", "GOOGLE", "GIMBAL", "IONIC", "KOCHAVA", "MANUAL", "MPARTICLE", "NPM", "NATIVESCRIPT", "NUGET", "PUB", "RADAR", "REACTNATIVE", "REACTNATIVENEWARCH", "SEGMENT", "SINGULAR", "SPM", "TEALIUM", "UNREAL", "UNITY_PACKAGE_MANAGER", "UNITY", "VIZBEE", "WEBCDN", "XAMARIN", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public enum BrazeSdkMetadata implements IPutIntoJson<String> {
    ADJUST("adj"),
    AIRBRIDGE("air"),
    APPSFLYER("apf"),
    BLUEDOT("blt"),
    BRANCH("brc"),
    CORDOVA("cdva"),
    EXPO("expo"),
    FACTUAL("fct"),
    FOURSQUARE("fsq"),
    FLUTTER("ft"),
    GRADLE("gd"),
    GOOGLE("gg"),
    GIMBAL("gmb"),
    IONIC("ionc"),
    KOCHAVA("kch"),
    MANUAL("manu"),
    MPARTICLE("mp"),
    NPM("npm"),
    NATIVESCRIPT("ns"),
    NUGET("nugt"),
    PUB("pub"),
    RADAR("rdr"),
    REACTNATIVE("rn"),
    REACTNATIVENEWARCH("rnna"),
    SEGMENT("sg"),
    SINGULAR("sng"),
    SPM("spm"),
    TEALIUM("tl"),
    UNREAL("un"),
    UNITY_PACKAGE_MANAGER("unpm"),
    UNITY("ut"),
    VIZBEE("vzb"),
    WEBCDN("wcd"),
    XAMARIN("xam");

    private final String jsonKey;
    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());
    public static final a Companion = new a();

    BrazeSdkMetadata(String str) {
        this.jsonKey = str;
    }

    public static EnumEntries<BrazeSdkMetadata> getEntries() {
        return $ENTRIES;
    }

    @JvmStatic
    public static final JSONArray toJsonArray(EnumSet<BrazeSdkMetadata> set) {
        Companion.getClass();
        Intrinsics.checkNotNullParameter(set, "set");
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(set, 10));
        Iterator<T> it = set.iterator();
        while (it.hasNext()) {
            arrayList.add(((BrazeSdkMetadata) it.next()).jsonKey);
        }
        return new JSONArray((Collection) CollectionsKt.sorted(arrayList));
    }

    @Override // com.braze.models.IPutIntoJson
    /* JADX INFO: renamed from: forJsonPut, reason: avoid collision after fix types in other method and from getter */
    public String getKey() {
        return this.jsonKey;
    }
}
