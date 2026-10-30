package com.braze.enums;

import com.braze.models.IPutIntoJson;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0010\n\u0002\b\r\b\u0087\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00000\u0003B\u0011\b\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\b\u0010\u000f\u001a\u00020\u0002H\u0016R\u000e\u0010\u0004\u001a\u00020\u0002X\u0082\u0004¢\u0006\u0002\n\u0000j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u0010"}, d2 = {"Lcom/braze/enums/SdkFlavor;", "Lcom/braze/models/IPutIntoJson;", "", "", "jsonKey", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "UNITY", "REACT", "CORDOVA", "XAMARIN", "FLUTTER", "SEGMENT", "TEALIUM", "MPARTICLE", "forJsonPut", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public enum SdkFlavor implements IPutIntoJson<String> {
    UNITY("unity"),
    REACT("react"),
    CORDOVA("cordova"),
    XAMARIN("xamarin"),
    FLUTTER("flutter"),
    SEGMENT("segment"),
    TEALIUM("tealium"),
    MPARTICLE("mparticle");

    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());
    private final String jsonKey;

    SdkFlavor(String str) {
        this.jsonKey = str;
    }

    public static EnumEntries<SdkFlavor> getEntries() {
        return $ENTRIES;
    }

    @Override // com.braze.models.IPutIntoJson
    /* JADX INFO: renamed from: forJsonPut, reason: avoid collision after fix types in other method and from getter */
    public String getJsonKey() {
        return this.jsonKey;
    }
}
