package com.braze.triggers.managers;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import com.braze.Constants;
import com.braze.support.BrazeFileUtils;
import com.braze.support.BrazeLogger;
import com.braze.support.IntentUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Pair;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static final String a(String str) {
        return com.braze.a.a("Not removing local path for remote path ", str, " from cache because it is being preserved until the end of the app run.");
    }

    public static final String b(File file) {
        return "Deleting obsolete asset '" + file.getPath() + "' from filesystem.";
    }

    public static final String c(String str) {
        return com.braze.b.a("Encountered unexpected exception while parsing stored triggered action local assets on remote asset '", str, '\'');
    }

    public static final String b(String str, String str2) {
        return "Retrieving trigger local asset path '" + str + "' from local storage for remote path '" + str2 + '\'';
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v4, types: [T, java.lang.Object, java.lang.String] */
    public static String b(final String remoteAssetUrl) {
        String lastPathSegment;
        int iLastIndexOf$default;
        Intrinsics.checkNotNullParameter(remoteAssetUrl, "remoteAssetUrl");
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = "";
        Uri uri = Uri.parse(remoteAssetUrl);
        if (uri != null && (lastPathSegment = uri.getLastPathSegment()) != null && lastPathSegment.length() != 0 && (iLastIndexOf$default = StringsKt.lastIndexOf$default((CharSequence) lastPathSegment, '.', 0, false, 6, (Object) null)) > -1) {
            ?? Substring = lastPathSegment.substring(iLastIndexOf$default);
            Intrinsics.checkNotNullExpressionValue(Substring, "substring(...)");
            objectRef.element = Substring;
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) b.e, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.a$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return a.a(objectRef, remoteAssetUrl);
                }
            }, 6, (Object) null);
        }
        return IntentUtils.getRequestCode() + ((String) objectRef.element);
    }

    public static final String c(File file) {
        return "Deleting triggers directory at: " + file.getAbsolutePath();
    }

    public final void a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        final File file = new File(context.getCacheDir(), Constants.TRIGGERS_ASSETS_FOLDER);
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.a$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.c(file);
            }
        }, 6, (Object) null);
        BrazeFileUtils.deleteFileOrDirectory(file);
    }

    public final void a(File triggeredAssetDirectory, ConcurrentHashMap remoteToLocalAssetsMap, LinkedHashMap preservedLocalAssetMap) {
        Intrinsics.checkNotNullParameter(triggeredAssetDirectory, "triggeredAssetDirectory");
        Intrinsics.checkNotNullParameter(remoteToLocalAssetsMap, "remoteToLocalAssetsMap");
        Intrinsics.checkNotNullParameter(preservedLocalAssetMap, "preservedLocalAssetMap");
        final File[] fileArrListFiles = triggeredAssetDirectory.listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.a$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.a(fileArrListFiles);
            }
        }, 6, (Object) null);
        try {
            ArrayList arrayList = new ArrayList();
            for (File file : fileArrListFiles) {
                if (!remoteToLocalAssetsMap.containsValue(file.getPath())) {
                    arrayList.add(file);
                }
            }
            ArrayList<File> arrayList2 = new ArrayList();
            for (Object obj : arrayList) {
                if (!preservedLocalAssetMap.containsValue(((File) obj).getPath())) {
                    arrayList2.add(obj);
                }
            }
            for (final File file2 : arrayList2) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) b.e, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.a$$ExternalSyntheticLambda9
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return a.b(file2);
                    }
                }, 7, (Object) null);
                Intrinsics.checkNotNull(file2);
                BrazeFileUtils.deleteFileOrDirectory(file2);
            }
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.triggers.managers.a$$ExternalSyntheticLambda10
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return a.a();
                }
            }, 4, (Object) null);
        }
    }

    public static final String a(File[] fileArr) {
        return "Local triggered asset directory contains files: " + ArraysKt.joinToString$default(fileArr, " , ", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, new Function1() { // from class: com.braze.triggers.managers.a$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return a.a((File) obj);
            }
        }, 30, (Object) null);
    }

    public static final CharSequence a(File file) {
        String name = file.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        return name;
    }

    public static final String a() {
        return "Exception while deleting obsolete assets from filesystem.";
    }

    public final ConcurrentHashMap a(SharedPreferences storagePrefs) {
        Intrinsics.checkNotNullParameter(storagePrefs, "storagePrefs");
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        Map<String, ?> all = storagePrefs.getAll();
        if (all != null && !all.isEmpty()) {
            for (final String str : all.keySet()) {
                try {
                    final String string = storagePrefs.getString(str, null);
                    if (string != null && !StringsKt.isBlank(string)) {
                        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.a$$ExternalSyntheticLambda5
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return a.b(string, str);
                            }
                        }, 7, (Object) null);
                        concurrentHashMap.put(str, string);
                    }
                } catch (Exception e) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.triggers.managers.a$$ExternalSyntheticLambda6
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return a.c(str);
                        }
                    }, 4, (Object) null);
                }
            }
        }
        return concurrentHashMap;
    }

    public final void a(SharedPreferences.Editor editor, ConcurrentHashMap localAssetPaths, Set newRemotePathStrings, LinkedHashMap preservedLocalAssetPathMap) {
        Intrinsics.checkNotNullParameter(editor, "editor");
        Intrinsics.checkNotNullParameter(localAssetPaths, "localAssetPaths");
        Intrinsics.checkNotNullParameter(newRemotePathStrings, "newRemotePathStrings");
        Intrinsics.checkNotNullParameter(preservedLocalAssetPathMap, "preservedLocalAssetPathMap");
        Iterator it = new HashSet(localAssetPaths.keySet()).iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            final String str = (String) it.next();
            if (preservedLocalAssetPathMap.containsKey(str)) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.a$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return a.a(str);
                    }
                }, 7, (Object) null);
            } else if (!newRemotePathStrings.contains(str)) {
                localAssetPaths.remove(str);
                editor.remove(str);
                final String str2 = (String) localAssetPaths.get(str);
                if (str2 != null && !StringsKt.isBlank(str2)) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.a$$ExternalSyntheticLambda2
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return a.a(str2, str);
                        }
                    }, 7, (Object) null);
                    BrazeFileUtils.deleteFileOrDirectory(new File(str2));
                }
            }
        }
    }

    public static final String a(String str, String str2) {
        return "Removing obsolete local path " + str + " for obsolete remote path " + str2 + " from cache.";
    }

    public final Pair a(List triggeredActions) {
        Intrinsics.checkNotNullParameter(triggeredActions, "triggeredActions");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        Iterator it = triggeredActions.iterator();
        while (it.hasNext()) {
            final com.braze.triggers.actions.a aVar = (com.braze.triggers.actions.a) it.next();
            if (!((com.braze.triggers.actions.g) aVar).c) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.a$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return a.a(aVar);
                    }
                }, 7, (Object) null);
            } else {
                for (com.braze.triggers.utils.a aVar2 : aVar.a()) {
                    final String str = aVar2.b;
                    if (!StringsKt.isBlank(str)) {
                        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.triggers.managers.a$$ExternalSyntheticLambda3
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return a.a(aVar, str);
                            }
                        }, 7, (Object) null);
                        linkedHashSet.add(aVar2);
                        linkedHashSet2.add(str);
                    }
                }
            }
        }
        return new Pair(linkedHashSet, linkedHashSet2);
    }

    public static final String a(com.braze.triggers.actions.a aVar) {
        return com.braze.c.a(new StringBuilder("Pre-fetch off for triggered action "), ((com.braze.triggers.actions.g) aVar).a, ". Not pre-fetching assets.");
    }

    public static final String a(com.braze.triggers.actions.a aVar, String str) {
        return "Received new remote path for triggered action " + ((com.braze.triggers.actions.g) aVar).a + " at " + str + '.';
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final String a(Ref.ObjectRef objectRef, String str) {
        return "Using file extension " + ((String) objectRef.element) + " for remote asset url: " + str;
    }
}
