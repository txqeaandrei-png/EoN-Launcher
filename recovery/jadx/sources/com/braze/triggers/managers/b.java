package com.braze.triggers.managers;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import com.braze.j;
import com.braze.support.BrazeFileUtils;
import com.braze.support.BrazeLogger;
import com.braze.support.WebContentUtils;
import com.braze.support.l;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.apache.http.cookie.ClientCookie;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    public static final a e = new a();
    public final SharedPreferences a;
    public final ConcurrentHashMap b;
    public final LinkedHashMap c;
    public final File d;

    public b(Context context, String apiKey) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.appboy.storage.triggers.local_assets." + apiKey, 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        this.a = sharedPreferences;
        this.b = e.a(sharedPreferences);
        this.c = new LinkedHashMap();
        this.d = new File(context.getCacheDir().getPath() + "/ab_triggers");
    }

    public static final String a(String str) {
        return j.a("Could not download ", str);
    }

    public static final String b(String str) {
        return com.braze.a.a("Failed to store asset for remote path ", str, ". Not storing local asset");
    }

    public static final String c(String str) {
        return com.braze.a.a("Failed to store html zip asset for remote path ", str, ". Not storing local asset");
    }

    public static final String d(String str) {
        return j.a("Could not find local asset for remote path ", str);
    }

    public static final String e(String str) {
        return j.a("Failed to add new local path for remote path ", str);
    }

    public static final String c(String str, String str2) {
        return "Adding new local path '" + str + "' for remote path '" + str2 + "' to cache.";
    }

    public static final String c(com.braze.triggers.actions.a aVar) {
        return "No local assets found for action id: " + ((com.braze.triggers.actions.g) aVar).a;
    }

    public final String a(com.braze.triggers.utils.a remotePath) {
        Long lA;
        Intrinsics.checkNotNullParameter(remotePath, "remotePath");
        final String str = remotePath.b;
        int iOrdinal = remotePath.a.ordinal();
        if (iOrdinal == 0) {
            final String localHtmlUrlFromRemoteUrl = WebContentUtils.getLocalHtmlUrlFromRemoteUrl(this.d, str);
            if (localHtmlUrlFromRemoteUrl != null && !StringsKt.isBlank(localHtmlUrlFromRemoteUrl)) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.b$$ExternalSyntheticLambda10
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return b.a(localHtmlUrlFromRemoteUrl, str);
                    }
                }, 6, (Object) null);
                return localHtmlUrlFromRemoteUrl;
            }
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.b$$ExternalSyntheticLambda11
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return b.c(str);
                }
            }, 7, (Object) null);
            return null;
        }
        if (iOrdinal != 1 && iOrdinal != 2) {
            throw new NoWhenBranchMatchedException();
        }
        String strB = a.b(str);
        try {
            String string = this.d.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            Pair pairDownloadFileToPath$default = BrazeFileUtils.downloadFileToPath$default(string, str, strB, null, 8, null);
            File file = (File) pairDownloadFileToPath$default.component1();
            final Map map = (Map) pairDownloadFileToPath$default.component2();
            String str2 = (String) map.get(ClientCookie.EXPIRES_ATTR);
            if (str2 != null && (lA = l.a(str2)) != null && lA.longValue() <= 0) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.b$$ExternalSyntheticLambda6
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return b.a(str, map);
                    }
                }, 7, (Object) null);
                return null;
            }
            final Uri uriFromFile = Uri.fromFile(file);
            if (uriFromFile != null) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.b$$ExternalSyntheticLambda7
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return b.a(uriFromFile, str);
                    }
                }, 6, (Object) null);
                return uriFromFile.getPath();
            }
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.b$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return b.b(str);
                }
            }, 7, (Object) null);
            return null;
        } catch (Exception e2) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e2, false, new Function0() { // from class: com.braze.triggers.managers.b$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return b.a(str);
                }
            }, 4, (Object) null);
            return null;
        }
    }

    public static final String b(com.braze.triggers.actions.a aVar) {
        return "Prefetch is turned off for this triggered action. Not retrieving local asset paths. Action id: " + ((com.braze.triggers.actions.g) aVar).a;
    }

    public static final String b(String str, String str2) {
        return "Found local asset at path " + str + " for remote asset at path: " + str2;
    }

    public final void a(List triggeredActions) {
        Intrinsics.checkNotNullParameter(triggeredActions, "triggeredActions");
        a aVar = e;
        Pair pairA = aVar.a(triggeredActions);
        Set set = (Set) pairA.component1();
        Set set2 = (Set) pairA.component2();
        SharedPreferences.Editor editorEdit = this.a.edit();
        Intrinsics.checkNotNull(editorEdit);
        aVar.a(editorEdit, this.b, set2, this.c);
        aVar.a(this.d, this.b, this.c);
        ArrayList<com.braze.triggers.utils.a> arrayList = new ArrayList();
        for (Object obj : set) {
            if (!this.b.containsKey(((com.braze.triggers.utils.a) obj).b)) {
                arrayList.add(obj);
            }
        }
        for (com.braze.triggers.utils.a aVar2 : arrayList) {
            final String str = aVar2.b;
            try {
                final String strA = a(aVar2);
                if (strA != null && !StringsKt.isBlank(strA)) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.b$$ExternalSyntheticLambda1
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return b.c(strA, str);
                        }
                    }, 7, (Object) null);
                    this.b.put(str, strA);
                    editorEdit.putString(str, strA);
                }
            } catch (Exception e2) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e2, false, new Function0() { // from class: com.braze.triggers.managers.b$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return b.e(str);
                    }
                }, 4, (Object) null);
            }
        }
        editorEdit.apply();
    }

    public final Map a(final com.braze.triggers.actions.a triggeredAction) {
        Intrinsics.checkNotNullParameter(triggeredAction, "triggeredAction");
        if (!((com.braze.triggers.actions.g) triggeredAction).c) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.b$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return b.b(triggeredAction);
                }
            }, 7, (Object) null);
            return MapsKt.emptyMap();
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = triggeredAction.a().iterator();
        while (it.hasNext()) {
            final String str = ((com.braze.triggers.utils.a) it.next()).b;
            final String path = (String) this.b.get(str);
            if (path != null) {
                Intrinsics.checkNotNullParameter(path, "path");
                if (new File(path).exists()) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.b$$ExternalSyntheticLambda3
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return b.b(path, str);
                        }
                    }, 7, (Object) null);
                    this.c.put(str, path);
                    linkedHashMap.put(str, path);
                }
            }
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.b$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return b.d(str);
                }
            }, 6, (Object) null);
        }
        if (linkedHashMap.isEmpty()) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.b$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return b.c(triggeredAction);
                }
            }, 6, (Object) null);
        }
        return linkedHashMap;
    }

    public static final String a(String str, String str2) {
        return "Storing local triggered action html zip asset at local path " + str + " for remote path " + str2;
    }

    public static final String a(String str, Map map) {
        return "Not caching " + str + " due to headers " + map;
    }

    public static final String a(Uri uri, String str) {
        return "Storing local triggered action asset at local path " + uri.getPath() + " for remote path " + str;
    }
}
