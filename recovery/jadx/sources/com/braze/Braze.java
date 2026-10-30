package com.braze;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import androidx.core.app.NotificationCompat;
import com.braze.configuration.BrazeConfig;
import com.braze.configuration.BrazeConfigurationProvider;
import com.braze.configuration.RuntimeAppConfigurationProvider;
import com.braze.coroutine.BrazeCoroutineScope;
import com.braze.enums.BrazePushEventType;
import com.braze.enums.BrazeSdkMetadata;
import com.braze.enums.GeofenceTransitionType;
import com.braze.events.BannersUpdatedEvent;
import com.braze.events.BrazeNetworkFailureEvent;
import com.braze.events.BrazePushEvent;
import com.braze.events.BrazeSdkAuthenticationErrorEvent;
import com.braze.events.BrazeUserChangeEvent;
import com.braze.events.ContentCardsUpdatedEvent;
import com.braze.events.FeatureFlagsUpdatedEvent;
import com.braze.events.FeedUpdatedEvent;
import com.braze.events.IEventSubscriber;
import com.braze.events.IFireOnceEventSubscriber;
import com.braze.events.IValueCallback;
import com.braze.events.InAppMessageEvent;
import com.braze.events.NoMatchingTriggerEvent;
import com.braze.events.SdkDataWipeEvent;
import com.braze.events.SessionStateChangedEvent;
import com.braze.images.DefaultBrazeImageLoader;
import com.braze.images.IBrazeImageLoader;
import com.braze.managers.t0;
import com.braze.managers.u0;
import com.braze.models.Banner;
import com.braze.models.FeatureFlag;
import com.braze.models.IBrazeLocation;
import com.braze.models.cards.Card;
import com.braze.models.inappmessage.IInAppMessage;
import com.braze.models.outgoing.BrazeLocation;
import com.braze.models.outgoing.BrazeProperties;
import com.braze.models.push.BrazeNotificationPayload;
import com.braze.storage.r;
import com.braze.support.BrazeFileUtils;
import com.braze.support.BrazeLogger;
import com.braze.support.DateTimeUtils;
import com.braze.support.PermissionUtils;
import com.braze.support.StringUtils;
import com.braze.support.ValidationUtils;
import java.io.File;
import java.io.FilenameFilter;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.HttpUrl;
import org.apache.http.message.TokenParser;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0082\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0015\b\u0007\u0018\u0000 Ä\u00022\u00020\u0001:\u0002Ä\u0002B\u0011\b\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0019\u0010\u001e\u001a\u00020\u000b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u0019\u0010 \u001a\u00020\u000b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016¢\u0006\u0004\b \u0010\u001fJ\u0019\u0010\"\u001a\u00020\u000b2\b\u0010!\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b\"\u0010#J#\u0010\"\u001a\u00020\u000b2\b\u0010!\u001a\u0004\u0018\u00010\u00182\b\u0010%\u001a\u0004\u0018\u00010$H\u0016¢\u0006\u0004\b\"\u0010&J-\u0010+\u001a\u00020\u000b2\b\u0010'\u001a\u0004\u0018\u00010\u00182\b\u0010(\u001a\u0004\u0018\u00010\u00182\b\u0010*\u001a\u0004\u0018\u00010)H\u0016¢\u0006\u0004\b+\u0010,J7\u0010+\u001a\u00020\u000b2\b\u0010'\u001a\u0004\u0018\u00010\u00182\b\u0010(\u001a\u0004\u0018\u00010\u00182\b\u0010*\u001a\u0004\u0018\u00010)2\b\u0010%\u001a\u0004\u0018\u00010$H\u0016¢\u0006\u0004\b+\u0010-J5\u0010+\u001a\u00020\u000b2\b\u0010'\u001a\u0004\u0018\u00010\u00182\b\u0010(\u001a\u0004\u0018\u00010\u00182\b\u0010*\u001a\u0004\u0018\u00010)2\u0006\u0010/\u001a\u00020.H\u0016¢\u0006\u0004\b+\u00100J?\u0010+\u001a\u00020\u000b2\b\u0010'\u001a\u0004\u0018\u00010\u00182\b\u0010(\u001a\u0004\u0018\u00010\u00182\b\u0010*\u001a\u0004\u0018\u00010)2\u0006\u0010/\u001a\u00020.2\b\u0010%\u001a\u0004\u0018\u00010$H\u0016¢\u0006\u0004\b+\u00101J\u0019\u00103\u001a\u00020\u000b2\b\u00102\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b3\u0010#J\u0019\u00103\u001a\u00020\u000b2\b\u00105\u001a\u0004\u0018\u000104H\u0016¢\u0006\u0004\b3\u00106J-\u00109\u001a\u00020\u000b2\b\u00102\u001a\u0004\u0018\u00010\u00182\b\u00107\u001a\u0004\u0018\u00010\u00182\b\u00108\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b9\u0010:J#\u0010<\u001a\u00020\u000b2\b\u00102\u001a\u0004\u0018\u00010\u00182\b\u0010;\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b<\u0010=J\u000f\u0010>\u001a\u00020\u000bH\u0016¢\u0006\u0004\b>\u0010\u0013J\u000f\u0010?\u001a\u00020\u000bH\u0016¢\u0006\u0004\b?\u0010\u0013J\u000f\u0010@\u001a\u00020\u000bH\u0016¢\u0006\u0004\b@\u0010\u0013J\u0017\u0010B\u001a\u00020\u000b2\u0006\u0010A\u001a\u00020\tH\u0017¢\u0006\u0004\bB\u0010\rJ\u000f\u0010B\u001a\u00020\u000bH\u0016¢\u0006\u0004\bB\u0010\u0013J\u000f\u0010C\u001a\u00020\u000bH\u0016¢\u0006\u0004\bC\u0010\u0013J\u000f\u0010D\u001a\u00020\u000bH\u0016¢\u0006\u0004\bD\u0010\u0013J\u0015\u0010G\u001a\b\u0012\u0004\u0012\u00020F0EH\u0016¢\u0006\u0004\bG\u0010HJ\u0019\u0010J\u001a\u0004\u0018\u00010F2\u0006\u0010I\u001a\u00020\u0018H\u0016¢\u0006\u0004\bJ\u0010KJ\u0017\u0010L\u001a\u00020\u000b2\u0006\u0010I\u001a\u00020\u0018H\u0016¢\u0006\u0004\bL\u0010#J\u001d\u0010N\u001a\u00020\u000b2\f\u0010M\u001a\b\u0012\u0004\u0012\u00020\u00180EH\u0016¢\u0006\u0004\bN\u0010OJ-\u0010N\u001a\u00020\u000b2\f\u0010M\u001a\b\u0012\u0004\u0012\u00020\u00180E2\u000e\u0010R\u001a\n\u0012\u0004\u0012\u00020Q\u0018\u00010PH\u0016¢\u0006\u0004\bN\u0010SJ\u0019\u0010U\u001a\u0004\u0018\u00010T2\u0006\u0010I\u001a\u00020\u0018H\u0016¢\u0006\u0004\bU\u0010VJ\u0017\u0010X\u001a\u00020\t2\u0006\u0010W\u001a\u00020\u0018H\u0016¢\u0006\u0004\bX\u0010\u001bJ!\u0010Z\u001a\u00020\u000b2\u0006\u0010W\u001a\u00020\u00182\b\u0010Y\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\bZ\u0010=J\u000f\u0010[\u001a\u00020\u000bH\u0016¢\u0006\u0004\b[\u0010\u0013J\u001d\u0010_\u001a\u00020\u000b2\f\u0010^\u001a\b\u0012\u0004\u0012\u00020]0\\H\u0016¢\u0006\u0004\b_\u0010`J\u001d\u0010b\u001a\u00020\u000b2\f\u0010^\u001a\b\u0012\u0004\u0012\u00020a0\\H\u0016¢\u0006\u0004\bb\u0010`J\u001d\u0010d\u001a\u00020\u000b2\f\u0010^\u001a\b\u0012\u0004\u0012\u00020c0\\H\u0016¢\u0006\u0004\bd\u0010`J\u001d\u0010f\u001a\u00020\u000b2\f\u0010^\u001a\b\u0012\u0004\u0012\u00020e0\\H\u0016¢\u0006\u0004\bf\u0010`J\u001d\u0010g\u001a\u00020\u000b2\f\u0010^\u001a\b\u0012\u0004\u0012\u00020Q0\\H\u0016¢\u0006\u0004\bg\u0010`J\u001d\u0010i\u001a\u00020\u000b2\f\u0010^\u001a\b\u0012\u0004\u0012\u00020h0\\H\u0016¢\u0006\u0004\bi\u0010`J\u001d\u0010k\u001a\u00020\u000b2\f\u0010^\u001a\b\u0012\u0004\u0012\u00020j0\\H\u0016¢\u0006\u0004\bk\u0010`J\u001d\u0010m\u001a\u00020\u000b2\f\u0010^\u001a\b\u0012\u0004\u0012\u00020l0\\H\u0016¢\u0006\u0004\bm\u0010`J\u001d\u0010o\u001a\u00020\u000b2\f\u0010^\u001a\b\u0012\u0004\u0012\u00020n0\\H\u0016¢\u0006\u0004\bo\u0010`J\u001d\u0010q\u001a\u00020\u000b2\f\u0010^\u001a\b\u0012\u0004\u0012\u00020p0\\H\u0016¢\u0006\u0004\bq\u0010`J\u001d\u0010s\u001a\u00020\u000b2\f\u0010^\u001a\b\u0012\u0004\u0012\u00020r0\\H\u0016¢\u0006\u0004\bs\u0010`J1\u0010w\u001a\u00020\u000b\"\u0004\b\u0000\u0010t2\f\u0010^\u001a\b\u0012\u0004\u0012\u00028\u00000\\2\f\u0010v\u001a\b\u0012\u0004\u0012\u00028\u00000uH\u0016¢\u0006\u0004\bw\u0010xJ3\u0010y\u001a\u00020\u000b\"\u0004\b\u0000\u0010t2\u000e\u0010^\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\\2\f\u0010v\u001a\b\u0012\u0004\u0012\u00028\u00000uH\u0016¢\u0006\u0004\by\u0010xJ\u0019\u0010{\u001a\u00020\u000b2\b\u0010z\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b{\u0010#J#\u0010{\u001a\u00020\u000b2\b\u0010z\u001a\u0004\u0018\u00010\u00182\b\u0010|\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b{\u0010=J\u001d\u0010~\u001a\u00020\u000b2\f\u0010R\u001a\b\u0012\u0004\u0012\u00020}0PH\u0016¢\u0006\u0004\b~\u0010\u007fJ\u001f\u0010\u0080\u0001\u001a\u00020\u000b2\f\u0010R\u001a\b\u0012\u0004\u0012\u00020\u00180PH\u0016¢\u0006\u0005\b\u0080\u0001\u0010\u007fJ\u0012\u0010\u0081\u0001\u001a\u00020.H\u0016¢\u0006\u0006\b\u0081\u0001\u0010\u0082\u0001J\u0012\u0010\u0083\u0001\u001a\u00020.H\u0016¢\u0006\u0006\b\u0083\u0001\u0010\u0082\u0001J\u0013\u0010\u0085\u0001\u001a\u00030\u0084\u0001H\u0016¢\u0006\u0006\b\u0085\u0001\u0010\u0086\u0001J\u001a\u0010\u0088\u0001\u001a\u000b\u0012\u0005\u0012\u00030\u0087\u0001\u0018\u00010EH\u0016¢\u0006\u0005\b\u0088\u0001\u0010HJ\u0010\u0010\u0089\u0001\u001a\u00020\t¢\u0006\u0006\b\u0089\u0001\u0010\u008a\u0001J \u0010\u008c\u0001\u001a\u0005\u0018\u00010\u0087\u00012\t\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0006\b\u008c\u0001\u0010\u008d\u0001J!\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u0087\u00012\n\u0010\u008f\u0001\u001a\u0005\u0018\u00010\u008e\u0001H\u0016¢\u0006\u0006\b\u008c\u0001\u0010\u0090\u0001J\u001c\u0010\u0092\u0001\u001a\u00020\u000b2\t\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u0018H\u0017¢\u0006\u0005\b\u0092\u0001\u0010#J\u001c\u0010\u0093\u0001\u001a\u00020\u000b2\t\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u0018H\u0017¢\u0006\u0005\b\u0093\u0001\u0010#J \u0010\u0096\u0001\u001a\u0005\u0018\u00010\u0095\u00012\t\u0010\u0094\u0001\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0006\b\u0096\u0001\u0010\u0097\u0001J&\u0010\u009b\u0001\u001a\u00020\u000b2\b\u0010\u0099\u0001\u001a\u00030\u0098\u00012\b\u0010\u009a\u0001\u001a\u00030\u0098\u0001H\u0016¢\u0006\u0006\b\u009b\u0001\u0010\u009c\u0001J\u0011\u0010\u009d\u0001\u001a\u00020\u000bH\u0016¢\u0006\u0005\b\u009d\u0001\u0010\u0013J$\u0010 \u0001\u001a\u00020\u000b2\u0007\u0010\u009e\u0001\u001a\u00020\u00182\u0007\u0010\u009f\u0001\u001a\u00020\tH\u0016¢\u0006\u0006\b \u0001\u0010¡\u0001J\u001a\u0010£\u0001\u001a\u00020\u000b2\u0007\u0010¢\u0001\u001a\u00020\u0018H\u0016¢\u0006\u0005\b£\u0001\u0010#J)\u0010©\u0001\u001a\u00020\u000b2\t\u0010¤\u0001\u001a\u0004\u0018\u00010\u00182\n\u0010¦\u0001\u001a\u0005\u0018\u00010¥\u0001H\u0000¢\u0006\u0006\b§\u0001\u0010¨\u0001J\u001e\u0010®\u0001\u001a\u00020\u000b2\n\u0010«\u0001\u001a\u0005\u0018\u00010ª\u0001H\u0000¢\u0006\u0006\b¬\u0001\u0010\u00ad\u0001J\u001a\u0010®\u0001\u001a\u00020\u000b2\u0007\u0010¯\u0001\u001a\u00020\tH\u0000¢\u0006\u0005\b¬\u0001\u0010\rJ$\u0010²\u0001\u001a\u00020\u000b2\u0007\u0010°\u0001\u001a\u00020\u00182\b\u0010z\u001a\u0004\u0018\u00010\u0018H\u0000¢\u0006\u0005\b±\u0001\u0010=J\u001c\u0010´\u0001\u001a\u00020\u000b2\b\u0010«\u0001\u001a\u00030ª\u0001H\u0000¢\u0006\u0006\b³\u0001\u0010\u00ad\u0001J\u0011\u0010¶\u0001\u001a\u00020\u000bH\u0000¢\u0006\u0005\bµ\u0001\u0010\u0013J\u0011\u0010¸\u0001\u001a\u00020\u000bH\u0000¢\u0006\u0005\b·\u0001\u0010\u0013J\u0019\u0010º\u0001\u001a\u00020\u000b2\u0006\u00105\u001a\u000204H\u0000¢\u0006\u0005\b¹\u0001\u00106J\u0011\u0010¼\u0001\u001a\u00020\u000bH\u0000¢\u0006\u0005\b»\u0001\u0010\u0013J\u0011\u0010¾\u0001\u001a\u00020\u000bH\u0000¢\u0006\u0005\b½\u0001\u0010\u0013J\u001b\u0010Â\u0001\u001a\u00020\u000b2\u0007\u0010¿\u0001\u001a\u00020]H\u0000¢\u0006\u0006\bÀ\u0001\u0010Á\u0001J\u001b\u0010Ä\u0001\u001a\u00020\u000b2\u0007\u0010¿\u0001\u001a\u00020]H\u0000¢\u0006\u0006\bÃ\u0001\u0010Á\u0001J&\u0010Ë\u0001\u001a\u00020\u000b2\b\u0010Æ\u0001\u001a\u00030Å\u00012\b\u0010È\u0001\u001a\u00030Ç\u0001H\u0000¢\u0006\u0006\bÉ\u0001\u0010Ê\u0001J$\u0010Ï\u0001\u001a\u00020\u000b2\u0006\u00102\u001a\u00020\u00182\b\u0010Ì\u0001\u001a\u00030\u0084\u0001H\u0000¢\u0006\u0006\bÍ\u0001\u0010Î\u0001J\u001c\u0010Ò\u0001\u001a\u00020\u000b2\b\u0010Ì\u0001\u001a\u00030\u0084\u0001H\u0000¢\u0006\u0006\bÐ\u0001\u0010Ñ\u0001J\u0011\u0010Ô\u0001\u001a\u00020\u000bH\u0000¢\u0006\u0005\bÓ\u0001\u0010\u0013J\u001a\u0010×\u0001\u001a\u00020\u000b2\u0007\u0010Õ\u0001\u001a\u00020\u0018H\u0000¢\u0006\u0005\bÖ\u0001\u0010#J\u001a\u0010Ú\u0001\u001a\u00020\t2\u0007\u0010Ø\u0001\u001a\u00020\u0018H\u0000¢\u0006\u0005\bÙ\u0001\u0010\u001bJ\u0011\u0010Ü\u0001\u001a\u00020\u000bH\u0001¢\u0006\u0005\bÛ\u0001\u0010\u0013Jv\u0010ê\u0001\u001a\u00028\u0000\"\u0004\b\u0000\u0010t2\u0007\u0010Ý\u0001\u001a\u00028\u00002\u000e\u0010ß\u0001\u001a\t\u0012\u0004\u0012\u00020\u00180Þ\u00012\t\b\u0002\u0010à\u0001\u001a\u00020\t2\t\b\u0002\u0010á\u0001\u001a\u00020\t2-\u0010ç\u0001\u001a(\b\u0001\u0012\u0005\u0012\u00030ã\u0001\u0012\u000b\u0012\t\u0012\u0004\u0012\u00028\u00000ä\u0001\u0012\u0007\u0012\u0005\u0018\u00010å\u00010â\u0001¢\u0006\u0003\bæ\u0001H\u0001¢\u0006\u0006\bè\u0001\u0010é\u0001JH\u0010í\u0001\u001a\u00020\u000b2\u000e\u0010ß\u0001\u001a\t\u0012\u0004\u0012\u00020\u00180Þ\u00012\t\b\u0002\u0010à\u0001\u001a\u00020\t2\t\b\u0002\u0010á\u0001\u001a\u00020\t2\u000e\u0010ç\u0001\u001a\t\u0012\u0004\u0012\u00020\u000b0Þ\u0001H\u0001¢\u0006\u0006\bë\u0001\u0010ì\u0001J\u001b\u0010ñ\u0001\u001a\u00030î\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0000¢\u0006\u0006\bï\u0001\u0010ð\u0001R*\u0010ó\u0001\u001a\u00030ò\u00018\u0016@\u0016X\u0096.¢\u0006\u0018\n\u0006\bó\u0001\u0010ô\u0001\u001a\u0006\bõ\u0001\u0010ö\u0001\"\u0006\b÷\u0001\u0010ø\u0001R\u0019\u0010ù\u0001\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bù\u0001\u0010ú\u0001R\u001a\u0010ü\u0001\u001a\u00030û\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bü\u0001\u0010ý\u0001R\u0019\u0010þ\u0001\u001a\u00020}8\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bþ\u0001\u0010ÿ\u0001R2\u0010\u0080\u0002\u001a\u0004\u0018\u00010\t8\u0000@\u0000X\u0081\u000e¢\u0006\u001f\n\u0006\b\u0080\u0002\u0010\u0081\u0002\u0012\u0005\b\u0086\u0002\u0010\u0013\u001a\u0006\b\u0082\u0002\u0010\u0083\u0002\"\u0006\b\u0084\u0002\u0010\u0085\u0002R\u0019\u0010\u0087\u0002\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0087\u0002\u0010\u0088\u0002R1\u0010\u008a\u0002\u001a\u00030\u0089\u00028\u0000@\u0000X\u0081.¢\u0006\u001f\n\u0006\b\u008a\u0002\u0010\u008b\u0002\u0012\u0005\b\u0090\u0002\u0010\u0013\u001a\u0006\b\u008c\u0002\u0010\u008d\u0002\"\u0006\b\u008e\u0002\u0010\u008f\u0002R1\u0010\u0092\u0002\u001a\u00030\u0091\u00028\u0000@\u0000X\u0081\u000e¢\u0006\u001f\n\u0006\b\u0092\u0002\u0010\u0093\u0002\u0012\u0005\b\u0098\u0002\u0010\u0013\u001a\u0006\b\u0094\u0002\u0010\u0095\u0002\"\u0006\b\u0096\u0002\u0010\u0097\u0002R1\u0010\u009a\u0002\u001a\u00030\u0099\u00028\u0000@\u0000X\u0081.¢\u0006\u001f\n\u0006\b\u009a\u0002\u0010\u009b\u0002\u0012\u0005\b \u0002\u0010\u0013\u001a\u0006\b\u009c\u0002\u0010\u009d\u0002\"\u0006\b\u009e\u0002\u0010\u009f\u0002R1\u0010¡\u0002\u001a\u00030î\u00018\u0000@\u0000X\u0081.¢\u0006\u001f\n\u0006\b¡\u0002\u0010¢\u0002\u0012\u0005\b§\u0002\u0010\u0013\u001a\u0006\b£\u0002\u0010¤\u0002\"\u0006\b¥\u0002\u0010¦\u0002R1\u0010©\u0002\u001a\u00030¨\u00028\u0000@\u0000X\u0081.¢\u0006\u001f\n\u0006\b©\u0002\u0010ª\u0002\u0012\u0005\b¯\u0002\u0010\u0013\u001a\u0006\b«\u0002\u0010¬\u0002\"\u0006\b\u00ad\u0002\u0010®\u0002R1\u0010±\u0002\u001a\u00030°\u00028\u0000@\u0000X\u0081.¢\u0006\u001f\n\u0006\b±\u0002\u0010²\u0002\u0012\u0005\b·\u0002\u0010\u0013\u001a\u0006\b³\u0002\u0010´\u0002\"\u0006\bµ\u0002\u0010¶\u0002R\u0019\u0010º\u0002\u001a\u0004\u0018\u00010c8BX\u0082\u0004¢\u0006\b\u001a\u0006\b¸\u0002\u0010¹\u0002R\u0017\u0010½\u0002\u001a\u00020\u00188VX\u0096\u0004¢\u0006\b\u001a\u0006\b»\u0002\u0010¼\u0002R\u0018\u0010¿\u0002\u001a\u0004\u0018\u00010}8VX\u0096\u0004¢\u0006\u0007\u001a\u0005\b~\u0010¾\u0002R-\u0010Ã\u0002\u001a\u0004\u0018\u00010\u00182\t\u0010À\u0002\u001a\u0004\u0018\u00010\u00188V@VX\u0096\u000e¢\u0006\u000f\u001a\u0006\bÁ\u0002\u0010¼\u0002\"\u0005\bÂ\u0002\u0010#¨\u0006Å\u0002"}, d2 = {"Lcom/braze/Braze;", "Lcom/braze/IBraze;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Lcom/braze/managers/d0;", "getDeviceDataProvider", "()Lcom/braze/managers/d0;", "", "isOffline", "", "setSyncPolicyOfflineStatus", "(Z)V", "", "throwable", "publishError", "(Ljava/lang/Throwable;)V", "verifyProperSdkSetup", "()V", "Lcom/braze/managers/u0;", "dependencyProvider", "setUserSpecificMemberVariablesAndStartDispatch", "(Lcom/braze/managers/u0;)V", "", "key", "isEphemeralEventKey", "(Ljava/lang/String;)Z", "Landroid/app/Activity;", "activity", "openSession", "(Landroid/app/Activity;)V", "closeSession", "eventName", "logCustomEvent", "(Ljava/lang/String;)V", "Lcom/braze/models/outgoing/BrazeProperties;", FeatureFlag.PROPERTIES, "(Ljava/lang/String;Lcom/braze/models/outgoing/BrazeProperties;)V", "productId", "currencyCode", "Ljava/math/BigDecimal;", "price", "logPurchase", "(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;)V", "(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Lcom/braze/models/outgoing/BrazeProperties;)V", "", "quantity", "(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;I)V", "(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;ILcom/braze/models/outgoing/BrazeProperties;)V", "campaignId", "logPushNotificationOpened", "Landroid/content/Intent;", "intent", "(Landroid/content/Intent;)V", "actionId", "actionType", "logPushNotificationActionClicked", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "pageId", "logPushStoryPageClicked", "(Ljava/lang/String;Ljava/lang/String;)V", "logFeedDisplayed", "requestFeedRefreshFromCache", "requestFeedRefresh", "fromCache", "requestContentCardsRefresh", "requestContentCardsRefreshFromCache", "refreshFeatureFlags", "", "Lcom/braze/models/FeatureFlag;", "getAllFeatureFlags", "()Ljava/util/List;", "id", "getFeatureFlag", "(Ljava/lang/String;)Lcom/braze/models/FeatureFlag;", "logFeatureFlagImpression", "ids", "requestBannersRefresh", "(Ljava/util/List;)V", "Lcom/braze/events/IValueCallback;", "Lcom/braze/events/BannersUpdatedEvent;", "completionCallback", "(Ljava/util/List;Lcom/braze/events/IValueCallback;)V", "Lcom/braze/models/Banner;", "getBanner", "(Ljava/lang/String;)Lcom/braze/models/Banner;", "placementId", "logBannerImpression", "buttonId", "logBannerClick", "requestImmediateDataFlush", "Lcom/braze/events/IEventSubscriber;", "Lcom/braze/events/InAppMessageEvent;", "subscriber", "subscribeToNewInAppMessages", "(Lcom/braze/events/IEventSubscriber;)V", "Lcom/braze/events/NoMatchingTriggerEvent;", "subscribeToNoMatchingTriggerForEvent", "Lcom/braze/events/ContentCardsUpdatedEvent;", "subscribeToContentCardsUpdates", "Lcom/braze/events/FeatureFlagsUpdatedEvent;", "subscribeToFeatureFlagsUpdates", "subscribeToBannersUpdates", "Lcom/braze/events/internal/b;", "subscribeToBannersErrors", "Lcom/braze/events/FeedUpdatedEvent;", "subscribeToFeedUpdates", "Lcom/braze/events/SessionStateChangedEvent;", "subscribeToSessionUpdates", "Lcom/braze/events/BrazeNetworkFailureEvent;", "subscribeToNetworkFailures", "Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;", "subscribeToSdkAuthenticationFailures", "Lcom/braze/events/BrazePushEvent;", "subscribeToPushNotificationEvents", "T", "Ljava/lang/Class;", "eventClass", "addSingleSynchronousSubscription", "(Lcom/braze/events/IEventSubscriber;Ljava/lang/Class;)V", "removeSingleSubscription", "userId", "changeUser", "sdkAuthSignature", "Lcom/braze/BrazeUser;", "getCurrentUser", "(Lcom/braze/events/IValueCallback;)V", "getDeviceIdAsync", "getContentCardCount", "()I", "getContentCardUnviewedCount", "", "getContentCardsLastUpdatedInSecondsFromEpoch", "()J", "Lcom/braze/models/cards/Card;", "getCachedContentCards", "areCachedContentCardsStale", "()Z", "contentCardString", "deserializeContentCard", "(Ljava/lang/String;)Lcom/braze/models/cards/Card;", "Lorg/json/JSONObject;", "contentCardJson", "(Lorg/json/JSONObject;)Lcom/braze/models/cards/Card;", "cardId", "logFeedCardImpression", "logFeedCardClick", "inAppMessageString", "Lcom/braze/models/inappmessage/IInAppMessage;", "deserializeInAppMessageString", "(Ljava/lang/String;)Lcom/braze/models/inappmessage/IInAppMessage;", "", IBrazeLocation.LATITUDE, IBrazeLocation.LONGITUDE, "requestGeofences", "(DD)V", "requestLocationInitialization", "googleAdvertisingId", "isLimitAdTrackingEnabled", "setGoogleAdvertisingId", "(Ljava/lang/String;Z)V", "signature", "setSdkAuthenticationSignature", "geofenceId", "Lcom/braze/enums/GeofenceTransitionType;", "transitionType", "recordGeofenceTransition$android_sdk_base_release", "(Ljava/lang/String;Lcom/braze/enums/GeofenceTransitionType;)V", "recordGeofenceTransition", "Lcom/braze/models/IBrazeLocation;", "location", "requestGeofenceRefresh$android_sdk_base_release", "(Lcom/braze/models/IBrazeLocation;)V", "requestGeofenceRefresh", "ignoreRateLimit", "serializedCardJson", "addSerializedCardJsonToStorage$android_sdk_base_release", "addSerializedCardJsonToStorage", "logLocationRecordedEventFromLocationUpdate$android_sdk_base_release", "logLocationRecordedEventFromLocationUpdate", "requestGeofencesInitialization$android_sdk_base_release", "requestGeofencesInitialization", "requestSingleLocationUpdate$android_sdk_base_release", "requestSingleLocationUpdate", "handleInAppMessageTestPush$android_sdk_base_release", "handleInAppMessageTestPush", "handleInternalBannerRefresh$android_sdk_base_release", "handleInternalBannerRefresh", "applyPendingRuntimeConfiguration$android_sdk_base_release", "applyPendingRuntimeConfiguration", NotificationCompat.CATEGORY_EVENT, "retryInAppMessage$android_sdk_base_release", "(Lcom/braze/events/InAppMessageEvent;)V", "retryInAppMessage", "reenqueueInAppMessage$android_sdk_base_release", "reenqueueInAppMessage", "Lcom/braze/enums/BrazePushEventType;", "pushActionType", "Lcom/braze/models/push/BrazeNotificationPayload;", "payload", "publishBrazePushAction$android_sdk_base_release", "(Lcom/braze/enums/BrazePushEventType;Lcom/braze/models/push/BrazeNotificationPayload;)V", "publishBrazePushAction", "timeInMs", "logPushDelivery$android_sdk_base_release", "(Ljava/lang/String;J)V", "logPushDelivery", "schedulePushDelivery$android_sdk_base_release", "(J)V", "schedulePushDelivery", "performPushDeliveryFlush$android_sdk_base_release", "performPushDeliveryFlush", com.google.firebase.messaging.Constants.ScionAnalytics.PARAM_CAMPAIGN, "logPushMaxCampaign$android_sdk_base_release", "logPushMaxCampaign", "pushId", "validateAndStorePushId$android_sdk_base_release", "validateAndStorePushId", "waitForUserDependencyThread$android_sdk_base_release", "waitForUserDependencyThread", "defaultValueOnException", "Lkotlin/Function0;", "errorLog", "earlyReturnIfDisabled", "earlyReturnIfUdmUninitialized", "Lkotlin/Function2;", "Lkotlinx/coroutines/CoroutineScope;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "block", "runForResult$android_sdk_base_release", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "runForResult", "run$android_sdk_base_release", "(Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;)V", "run", "Lcom/braze/configuration/BrazeConfigurationProvider;", "getConfigurationProviderSafe$android_sdk_base_release", "(Landroid/content/Context;)Lcom/braze/configuration/BrazeConfigurationProvider;", "getConfigurationProviderSafe", "Lcom/braze/images/IBrazeImageLoader;", "imageLoader", "Lcom/braze/images/IBrazeImageLoader;", "getImageLoader", "()Lcom/braze/images/IBrazeImageLoader;", "setImageLoader", "(Lcom/braze/images/IBrazeImageLoader;)V", "applicationContext", "Landroid/content/Context;", "Lcom/braze/configuration/e;", "offlineUserStorageProvider", "Lcom/braze/configuration/e;", "brazeUser", "Lcom/braze/BrazeUser;", "isApiKeyPresent", "Ljava/lang/Boolean;", "isApiKeyPresent$android_sdk_base_release", "()Ljava/lang/Boolean;", "setApiKeyPresent$android_sdk_base_release", "(Ljava/lang/Boolean;)V", "isApiKeyPresent$android_sdk_base_release$annotations", "isInstanceStopped", "Z", "Lcom/braze/managers/e0;", "deviceIdProvider", "Lcom/braze/managers/e0;", "getDeviceIdProvider$android_sdk_base_release", "()Lcom/braze/managers/e0;", "setDeviceIdProvider$android_sdk_base_release", "(Lcom/braze/managers/e0;)V", "getDeviceIdProvider$android_sdk_base_release$annotations", "Lcom/braze/events/e;", "externalIEventMessenger", "Lcom/braze/events/e;", "getExternalIEventMessenger$android_sdk_base_release", "()Lcom/braze/events/e;", "setExternalIEventMessenger$android_sdk_base_release", "(Lcom/braze/events/e;)V", "getExternalIEventMessenger$android_sdk_base_release$annotations", "Lcom/braze/managers/g0;", "registrationDataProvider", "Lcom/braze/managers/g0;", "getRegistrationDataProvider$android_sdk_base_release", "()Lcom/braze/managers/g0;", "setRegistrationDataProvider$android_sdk_base_release", "(Lcom/braze/managers/g0;)V", "getRegistrationDataProvider$android_sdk_base_release$annotations", "configurationProvider", "Lcom/braze/configuration/BrazeConfigurationProvider;", "getConfigurationProvider$android_sdk_base_release", "()Lcom/braze/configuration/BrazeConfigurationProvider;", "setConfigurationProvider$android_sdk_base_release", "(Lcom/braze/configuration/BrazeConfigurationProvider;)V", "getConfigurationProvider$android_sdk_base_release$annotations", "Lcom/braze/managers/i0;", "pushDeliveryManager", "Lcom/braze/managers/i0;", "getPushDeliveryManager$android_sdk_base_release", "()Lcom/braze/managers/i0;", "setPushDeliveryManager$android_sdk_base_release", "(Lcom/braze/managers/i0;)V", "getPushDeliveryManager$android_sdk_base_release$annotations", "Lcom/braze/managers/h0;", "udm", "Lcom/braze/managers/h0;", "getUdm$android_sdk_base_release", "()Lcom/braze/managers/h0;", "setUdm$android_sdk_base_release", "(Lcom/braze/managers/h0;)V", "getUdm$android_sdk_base_release$annotations", "getCachedContentCardsUpdatedEvent", "()Lcom/braze/events/ContentCardsUpdatedEvent;", "cachedContentCardsUpdatedEvent", "getDeviceId", "()Ljava/lang/String;", "deviceId", "()Lcom/braze/BrazeUser;", "currentUser", "value", "getRegisteredPushToken", "setRegisteredPushToken", "registeredPushToken", "Companion", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class Braze implements IBraze {
    private static boolean areOutboundNetworkRequestsOffline;
    private static IBrazeNotificationFactory customBrazeNotificationFactory;
    private static com.braze.managers.d0 deviceDataProvider;
    private static IBrazeEndpointProvider endpointProvider;
    private static volatile Braze instance;
    private static com.braze.storage.a0 sdkEnablementProvider;
    private static boolean shouldMockNetworkRequestsAndDropEvents;
    private static com.braze.events.e staticExternalIEventMessenger;
    private Context applicationContext;
    private BrazeUser brazeUser;
    public BrazeConfigurationProvider configurationProvider;
    public com.braze.managers.e0 deviceIdProvider;
    private com.braze.events.e externalIEventMessenger;
    public IBrazeImageLoader imageLoader;
    private Boolean isApiKeyPresent;
    private boolean isInstanceStopped;
    private com.braze.configuration.e offlineUserStorageProvider;
    public com.braze.managers.i0 pushDeliveryManager;
    public com.braze.managers.g0 registrationDataProvider;
    public com.braze.managers.h0 udm;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final ReentrantLock brazeClassLock = new ReentrantLock();
    private static final Set<String> KNOWN_APP_CRAWLER_DEVICE_MODELS = SetsKt.setOf("calypso appcrawler");
    private static final Set<String> NECESSARY_BRAZE_SDK_PERMISSIONS = SetsKt.setOf((Object[]) new String[]{"android.permission.ACCESS_NETWORK_STATE", "android.permission.INTERNET"});
    private static final ReentrantLock endpointProviderLock = new ReentrantLock();
    private static boolean shouldRequestFrameworkListenToNetworkUpdates = true;
    private static final List<BrazeConfig> pendingConfigurations = new ArrayList();
    private static final BrazeConfig clearConfigSentinel = new BrazeConfig.Builder().build();

    /* JADX INFO: loaded from: classes.dex */
    @Metadata(d1 = {"\u0000 \u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\t\n\u0002\u0010!\n\u0002\b\u0005\b\u0087\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0010\u001a\u00020\u000fH\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u0019\u0010\u0017\u001a\u00020\u00162\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0007¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0016H\u0007¢\u0006\u0004\b\u0019\u0010\u0003J\u0017\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001aH\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ!\u0010 \u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0007¢\u0006\u0004\b \u0010!J%\u0010%\u001a\u00020\u00162\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010$\u001a\b\u0012\u0004\u0012\u00020#0\"H\u0007¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\tH\u0007¢\u0006\u0004\b'\u0010\u000bJ\u0017\u0010(\u001a\u00020\u00162\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b(\u0010)J\u0017\u0010*\u001a\u00020\u00162\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b*\u0010)J\u0017\u0010+\u001a\u00020\u00162\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b+\u0010)J\u0019\u0010/\u001a\u00020\u00162\b\u0010,\u001a\u0004\u0018\u00010\u0011H\u0001¢\u0006\u0004\b-\u0010.J\u001f\u00106\u001a\u00020\u00162\u0006\u00101\u001a\u0002002\u0006\u00103\u001a\u000202H\u0001¢\u0006\u0004\b4\u00105J\u0017\u0010:\u001a\u00020\u00162\u0006\u00107\u001a\u00020\tH\u0001¢\u0006\u0004\b8\u00109J\u000f\u0010<\u001a\u00020\u0016H\u0001¢\u0006\u0004\b;\u0010\u0003R(\u0010=\u001a\u00020\t8\u0000@\u0000X\u0081\u000e¢\u0006\u0018\n\u0004\b=\u0010>\u0012\u0004\bA\u0010\u0003\u001a\u0004\b?\u0010\u000b\"\u0004\b@\u00109R*\u0010B\u001a\u0004\u0018\u00010\u00068\u0000@\u0000X\u0081\u000e¢\u0006\u0018\n\u0004\bB\u0010C\u0012\u0004\bH\u0010\u0003\u001a\u0004\bD\u0010E\"\u0004\bF\u0010GR*\u0010J\u001a\u0004\u0018\u00010I8\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0004\bJ\u0010K\u0012\u0004\bP\u0010\u0003\u001a\u0004\bL\u0010M\"\u0004\bN\u0010OR*\u0010R\u001a\u0004\u0018\u00010Q8\u0000@\u0000X\u0081\u000e¢\u0006\u0018\n\u0004\bR\u0010S\u0012\u0004\bX\u0010\u0003\u001a\u0004\bT\u0010U\"\u0004\bV\u0010WR*\u0010Z\u001a\u0004\u0018\u00010Y8\u0000@\u0000X\u0081\u000e¢\u0006\u0018\n\u0004\bZ\u0010[\u0012\u0004\b`\u0010\u0003\u001a\u0004\b\\\u0010]\"\u0004\b^\u0010_R*\u0010e\u001a\u00020\t2\u0006\u0010a\u001a\u00020\t8F@FX\u0087\u000e¢\u0006\u0012\u0012\u0004\bd\u0010\u0003\u001a\u0004\bb\u0010\u000b\"\u0004\bc\u00109R\u001a\u0010f\u001a\u00020\t8FX\u0087\u0004¢\u0006\f\u0012\u0004\bg\u0010\u0003\u001a\u0004\bf\u0010\u000bR\u0014\u0010i\u001a\u00020h8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bi\u0010jR\u001a\u0010l\u001a\b\u0012\u0004\u0012\u00020\u00110k8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bl\u0010mR\u001a\u0010n\u001a\b\u0012\u0004\u0012\u00020\u00110k8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bn\u0010mR\u0018\u0010o\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\bo\u0010pR\u0014\u0010q\u001a\u00020h8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bq\u0010jR\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010rR\u0016\u0010s\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bs\u0010>R\u0016\u0010t\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bt\u0010>R\u001a\u0010v\u001a\b\u0012\u0004\u0012\u00020\u001e0u8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bv\u0010wR\u0014\u0010x\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bx\u0010y¨\u0006z"}, d2 = {"Lcom/braze/Braze$Companion;", "", "<init>", "()V", "Landroid/content/Context;", "context", "Lcom/braze/storage/a0;", "getSdkEnablementProvider", "(Landroid/content/Context;)Lcom/braze/storage/a0;", "", "shouldAllowSingletonInitialization", "()Z", "Lcom/braze/Braze;", "getInstance", "(Landroid/content/Context;)Lcom/braze/Braze;", "Lcom/braze/configuration/BrazeConfigurationProvider;", "configurationProvider", "", "getConfiguredApiKey", "(Lcom/braze/configuration/BrazeConfigurationProvider;)Ljava/lang/String;", "Lcom/braze/IBrazeEndpointProvider;", "endpointProvider", "", "setEndpointProvider", "(Lcom/braze/IBrazeEndpointProvider;)V", "clearEndpointProvider", "Landroid/net/Uri;", "brazeEndpoint", "getApiEndpoint", "(Landroid/net/Uri;)Landroid/net/Uri;", "Lcom/braze/configuration/BrazeConfig;", "config", "configure", "(Landroid/content/Context;Lcom/braze/configuration/BrazeConfig;)Z", "Ljava/util/EnumSet;", "Lcom/braze/enums/BrazeSdkMetadata;", "sdkMetadata", "addSdkMetadata", "(Landroid/content/Context;Ljava/util/EnumSet;)V", "enableMockNetworkRequestsAndDropEventsMode", "disableSdk", "(Landroid/content/Context;)V", "enableSdk", "wipeData", "configuredCustomEndpoint", "setConfiguredCustomEndpoint$android_sdk_base_release", "(Ljava/lang/String;)V", "setConfiguredCustomEndpoint", "Landroid/content/Intent;", "intent", "Lcom/braze/managers/c0;", "brazeManager", "requestTriggersIfInAppMessageTestPush$android_sdk_base_release", "(Landroid/content/Intent;Lcom/braze/managers/c0;)V", "requestTriggersIfInAppMessageTestPush", "clearStorage", "stopInstance$android_sdk_base_release", "(Z)V", "stopInstance", "clearInstance$android_sdk_base_release", "clearInstance", "shouldRequestFrameworkListenToNetworkUpdates", "Z", "getShouldRequestFrameworkListenToNetworkUpdates$android_sdk_base_release", "setShouldRequestFrameworkListenToNetworkUpdates$android_sdk_base_release", "getShouldRequestFrameworkListenToNetworkUpdates$android_sdk_base_release$annotations", "sdkEnablementProvider", "Lcom/braze/storage/a0;", "getSdkEnablementProvider$android_sdk_base_release", "()Lcom/braze/storage/a0;", "setSdkEnablementProvider$android_sdk_base_release", "(Lcom/braze/storage/a0;)V", "getSdkEnablementProvider$android_sdk_base_release$annotations", "Lcom/braze/IBrazeNotificationFactory;", "customBrazeNotificationFactory", "Lcom/braze/IBrazeNotificationFactory;", "getCustomBrazeNotificationFactory", "()Lcom/braze/IBrazeNotificationFactory;", "setCustomBrazeNotificationFactory", "(Lcom/braze/IBrazeNotificationFactory;)V", "getCustomBrazeNotificationFactory$annotations", "Lcom/braze/managers/d0;", "deviceDataProvider", "Lcom/braze/managers/d0;", "getDeviceDataProvider$android_sdk_base_release", "()Lcom/braze/managers/d0;", "setDeviceDataProvider$android_sdk_base_release", "(Lcom/braze/managers/d0;)V", "getDeviceDataProvider$android_sdk_base_release$annotations", "Lcom/braze/events/e;", "staticExternalIEventMessenger", "Lcom/braze/events/e;", "getStaticExternalIEventMessenger$android_sdk_base_release", "()Lcom/braze/events/e;", "setStaticExternalIEventMessenger$android_sdk_base_release", "(Lcom/braze/events/e;)V", "getStaticExternalIEventMessenger$android_sdk_base_release$annotations", "isOffline", "getOutboundNetworkRequestsOffline", "setOutboundNetworkRequestsOffline", "getOutboundNetworkRequestsOffline$annotations", "outboundNetworkRequestsOffline", "isDisabled", "isDisabled$annotations", "Ljava/util/concurrent/locks/ReentrantLock;", "brazeClassLock", "Ljava/util/concurrent/locks/ReentrantLock;", "", "KNOWN_APP_CRAWLER_DEVICE_MODELS", "Ljava/util/Set;", "NECESSARY_BRAZE_SDK_PERMISSIONS", "instance", "Lcom/braze/Braze;", "endpointProviderLock", "Lcom/braze/IBrazeEndpointProvider;", "shouldMockNetworkRequestsAndDropEvents", "areOutboundNetworkRequestsOffline", "", "pendingConfigurations", "Ljava/util/List;", "clearConfigSentinel", "Lcom/braze/configuration/BrazeConfig;", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String _get_isDisabled_$lambda$2() {
            return "SDK enablement provider was null. Returning SDK as enabled.";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String _get_isDisabled_$lambda$3() {
            return "API key not present. Actions will not be performed on the SDK.";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String _get_isDisabled_$lambda$4() {
            return "SDK is disabled. Actions will not be performed on the SDK.";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String _set_outboundNetworkRequestsOffline_$lambda$0(boolean z) {
            return "Braze SDK outbound network requests are now ".concat(z ? "disabled" : FeatureFlag.ENABLED);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String addSdkMetadata$lambda$18$lambda$17(EnumSet enumSet) {
            return "Failed to add SDK Metadata of: " + enumSet;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String clearInstance$lambda$45$lambda$43() {
            return "Clearing Braze instance";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String configure$lambda$13(BrazeConfig brazeConfig) {
            return "Braze.configure() called with configuration: " + brazeConfig;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String configure$lambda$16$lambda$14() {
            return "Braze.configure() cannot be called while the singleton is still live.";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String configure$lambda$16$lambda$15() {
            return "Braze.configure() called with a null config; Clearing all configuration values.";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String disableSdk$lambda$23() {
            return "Stopping the SDK instance.";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String disableSdk$lambda$24() {
            return "Disabling all network requests";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String enableMockNetworkRequestsAndDropEventsMode$lambda$21$lambda$19() {
            return "Braze network requests already being mocked. Note that events dispatched in this mode are dropped.";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String enableMockNetworkRequestsAndDropEventsMode$lambda$21$lambda$20() {
            return "Braze network requests will be mocked. Events dispatchedin this mode will be dropped.";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String enableMockNetworkRequestsAndDropEventsMode$lambda$22() {
            return "Attempt to enable mocking Braze network requests had no effect since getInstance() has already been called.";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String enableSdk$lambda$25() {
            return "Setting SDK to enabled.";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String enableSdk$lambda$26() {
            return "Enabling all network requests";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String getApiEndpoint$lambda$12$lambda$11$lambda$10() {
            return "Caught exception trying to get a Braze API endpoint from the BrazeEndpointProvider. Using the original URI";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String getConfiguredApiKey$lambda$7() {
            return "Caught exception while retrieving API key.";
        }

        @JvmStatic
        public static /* synthetic */ void getCustomBrazeNotificationFactory$annotations() {
        }

        public static /* synthetic */ void getDeviceDataProvider$android_sdk_base_release$annotations() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String getInstance$lambda$6$lambda$5() {
            return "Created external messenger " + Braze.INSTANCE.getStaticExternalIEventMessenger$android_sdk_base_release();
        }

        @JvmStatic
        public static /* synthetic */ void getOutboundNetworkRequestsOffline$annotations() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final com.braze.storage.a0 getSdkEnablementProvider(Context context) {
            com.braze.storage.a0 sdkEnablementProvider$android_sdk_base_release = getSdkEnablementProvider$android_sdk_base_release();
            if (sdkEnablementProvider$android_sdk_base_release != null) {
                return sdkEnablementProvider$android_sdk_base_release;
            }
            com.braze.storage.a0 a0Var = new com.braze.storage.a0(context);
            setSdkEnablementProvider$android_sdk_base_release(a0Var);
            return a0Var;
        }

        public static /* synthetic */ void getSdkEnablementProvider$android_sdk_base_release$annotations() {
        }

        public static /* synthetic */ void getShouldRequestFrameworkListenToNetworkUpdates$android_sdk_base_release$annotations() {
        }

        public static /* synthetic */ void getStaticExternalIEventMessenger$android_sdk_base_release$annotations() {
        }

        @JvmStatic
        public static /* synthetic */ void isDisabled$annotations() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String requestTriggersIfInAppMessageTestPush$lambda$37() {
            return "Push contained key for fetching test triggers, fetching triggers.";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Uri setConfiguredCustomEndpoint$lambda$33$lambda$32(String str, Uri brazeEndpoint) {
            String authority;
            Intrinsics.checkNotNullParameter(brazeEndpoint, "brazeEndpoint");
            Uri uri = Uri.parse(str);
            String scheme = uri.getScheme();
            boolean z = scheme == null || StringsKt.isBlank(scheme) || (authority = uri.getAuthority()) == null || StringsKt.isBlank(authority);
            Uri.Builder builder = new Uri.Builder();
            if (z || uri.getScheme() == null) {
                builder.scheme(brazeEndpoint.getScheme());
            } else {
                builder.scheme(uri.getScheme());
            }
            if (z) {
                builder.encodedAuthority(str);
            } else if (uri.getEncodedAuthority() != null) {
                builder.encodedAuthority(uri.getEncodedAuthority());
            } else {
                builder.encodedAuthority(brazeEndpoint.getEncodedAuthority());
            }
            if (z || uri.getPath() == null) {
                builder.path(brazeEndpoint.getPath());
            } else {
                builder.path(uri.getPath() + brazeEndpoint.getPath());
            }
            return builder.build();
        }

        private final boolean shouldAllowSingletonInitialization() {
            Braze braze = Braze.instance;
            if (braze == null) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$Companion$$ExternalSyntheticLambda9
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Braze.Companion.shouldAllowSingletonInitialization$lambda$34();
                    }
                }, 6, (Object) null);
                return true;
            }
            if (braze.isInstanceStopped) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$Companion$$ExternalSyntheticLambda10
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Braze.Companion.shouldAllowSingletonInitialization$lambda$35();
                    }
                }, 7, (Object) null);
                return true;
            }
            if (!Intrinsics.areEqual(Boolean.FALSE, braze.getIsApiKeyPresent())) {
                return false;
            }
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$Companion$$ExternalSyntheticLambda12
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.Companion.shouldAllowSingletonInitialization$lambda$36();
                }
            }, 7, (Object) null);
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String shouldAllowSingletonInitialization$lambda$34() {
            return "The instance is null. Allowing instance initialization";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String shouldAllowSingletonInitialization$lambda$35() {
            return "The instance was stopped. Allowing instance initialization";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String shouldAllowSingletonInitialization$lambda$36() {
            return "No API key was found previously. Allowing instance initialization";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String stopInstance$lambda$38() {
            return "Shutting down all queued work on the Braze SDK";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String stopInstance$lambda$41$lambda$39() {
            return "Sending sdk data wipe event to external subscribers";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String stopInstance$lambda$41$lambda$40() {
            return "Shutting down the singleton work queue";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String stopInstance$lambda$42() {
            return "Failed to shutdown queued work on the Braze SDK.";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String wipeData$lambda$27() {
            return "Failed to delete data from the internal storage cache.";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean wipeData$lambda$28(File file, String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            return (StringsKt.startsWith$default(name, "com.appboy", false, 2, (Object) null) && !Intrinsics.areEqual(name, "com.appboy.override.configuration.cache")) || (StringsKt.startsWith$default(name, "com.braze", false, 2, (Object) null) && !Intrinsics.areEqual(name, "com.braze.override.configuration.cache"));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String wipeData$lambda$30$lambda$29(File file) {
            return "Deleting shared prefs file at: " + file.getAbsolutePath();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String wipeData$lambda$31() {
            return "Failed to delete shared preference data for the Braze SDK.";
        }

        @JvmStatic
        public final void addSdkMetadata(Context context, final EnumSet<BrazeSdkMetadata> sdkMetadata) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(sdkMetadata, "sdkMetadata");
            ReentrantLock reentrantLock = Braze.brazeClassLock;
            reentrantLock.lock();
            try {
                try {
                    Braze.pendingConfigurations.add(new BrazeConfig.Builder().setSdkMetadata(sdkMetadata).build());
                    Braze braze = Braze.instance;
                    if (braze != null) {
                        braze.applyPendingRuntimeConfiguration$android_sdk_base_release();
                        Unit unit = Unit.INSTANCE;
                    }
                } catch (Exception e) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) Braze.INSTANCE, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.Braze$Companion$$ExternalSyntheticLambda31
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return Braze.Companion.addSdkMetadata$lambda$18$lambda$17(sdkMetadata);
                        }
                    }, 4, (Object) null);
                    Unit unit2 = Unit.INSTANCE;
                }
            } finally {
                reentrantLock.unlock();
            }
        }

        @JvmStatic
        public final void clearEndpointProvider() {
            ReentrantLock reentrantLock = Braze.endpointProviderLock;
            reentrantLock.lock();
            try {
                Braze.endpointProvider = null;
                Unit unit = Unit.INSTANCE;
            } finally {
                reentrantLock.unlock();
            }
        }

        public final void clearInstance$android_sdk_base_release() {
            ReentrantLock reentrantLock = Braze.brazeClassLock;
            reentrantLock.lock();
            try {
                Braze braze = Braze.instance;
                BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
                Companion companion = Braze.INSTANCE;
                BrazeLogger.brazelog$default(brazeLogger, (Object) companion, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$Companion$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Braze.Companion.clearInstance$lambda$45$lambda$43();
                    }
                }, 6, (Object) null);
                BrazeCoroutineScope.cancelChildren();
                if (braze != null && braze.udm != null) {
                    ((u0) braze.getUdm$android_sdk_base_release()).p.i();
                }
                Braze.instance = null;
                Braze.shouldMockNetworkRequestsAndDropEvents = false;
                Braze.areOutboundNetworkRequestsOffline = false;
                companion.setSdkEnablementProvider$android_sdk_base_release(null);
                Braze.endpointProvider = null;
                companion.setShouldRequestFrameworkListenToNetworkUpdates$android_sdk_base_release(true);
                companion.setStaticExternalIEventMessenger$android_sdk_base_release(null);
                Unit unit = Unit.INSTANCE;
            } finally {
                reentrantLock.unlock();
            }
        }

        @JvmStatic
        public final boolean configure(Context context, final BrazeConfig config) {
            Intrinsics.checkNotNullParameter(context, "context");
            BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
            BrazeLogger.Priority priority = BrazeLogger.Priority.I;
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, priority, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$Companion$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.Companion.configure$lambda$13(config);
                }
            }, 6, (Object) null);
            ReentrantLock reentrantLock = Braze.brazeClassLock;
            reentrantLock.lock();
            try {
                Braze braze = Braze.instance;
                if (braze != null && !braze.isInstanceStopped && Intrinsics.areEqual(Boolean.TRUE, braze.getIsApiKeyPresent())) {
                    BrazeLogger.brazelog$default(brazeLogger, (Object) Braze.INSTANCE, priority, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$Companion$$ExternalSyntheticLambda4
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return Braze.Companion.configure$lambda$16$lambda$14();
                        }
                    }, 6, (Object) null);
                    return false;
                }
                if (config != null) {
                    Braze.pendingConfigurations.add(config);
                } else {
                    BrazeLogger.brazelog$default(brazeLogger, (Object) Braze.INSTANCE, priority, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$Companion$$ExternalSyntheticLambda5
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return Braze.Companion.configure$lambda$16$lambda$15();
                        }
                    }, 6, (Object) null);
                    Braze.pendingConfigurations.add(Braze.clearConfigSentinel);
                }
                return true;
            } finally {
                reentrantLock.unlock();
            }
        }

        @JvmStatic
        public final void disableSdk(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            getSdkEnablementProvider(context).b(true);
            BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
            BrazeLogger.Priority priority = BrazeLogger.Priority.W;
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, priority, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$Companion$$ExternalSyntheticLambda23
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.Companion.disableSdk$lambda$23();
                }
            }, 6, (Object) null);
            stopInstance$android_sdk_base_release(false);
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, priority, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$Companion$$ExternalSyntheticLambda24
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.Companion.disableSdk$lambda$24();
                }
            }, 6, (Object) null);
            setOutboundNetworkRequestsOffline(true);
        }

        @JvmStatic
        public final boolean enableMockNetworkRequestsAndDropEventsMode() {
            if (Braze.instance == null) {
                ReentrantLock reentrantLock = Braze.brazeClassLock;
                reentrantLock.lock();
                try {
                    if (Braze.instance == null) {
                        if (Braze.shouldMockNetworkRequestsAndDropEvents) {
                            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) Braze.INSTANCE, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$Companion$$ExternalSyntheticLambda11
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    return Braze.Companion.enableMockNetworkRequestsAndDropEventsMode$lambda$21$lambda$19();
                                }
                            }, 6, (Object) null);
                        } else {
                            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) Braze.INSTANCE, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$Companion$$ExternalSyntheticLambda22
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    return Braze.Companion.enableMockNetworkRequestsAndDropEventsMode$lambda$21$lambda$20();
                                }
                            }, 6, (Object) null);
                            Braze.shouldMockNetworkRequestsAndDropEvents = true;
                        }
                        reentrantLock.unlock();
                        return true;
                    }
                    Unit unit = Unit.INSTANCE;
                    reentrantLock.unlock();
                } catch (Throwable th) {
                    reentrantLock.unlock();
                    throw th;
                }
            }
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$Companion$$ExternalSyntheticLambda25
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.Companion.enableMockNetworkRequestsAndDropEventsMode$lambda$22();
                }
            }, 6, (Object) null);
            return false;
        }

        @JvmStatic
        public final void enableSdk(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
            BrazeLogger.Priority priority = BrazeLogger.Priority.W;
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, priority, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$Companion$$ExternalSyntheticLambda18
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.Companion.enableSdk$lambda$25();
                }
            }, 6, (Object) null);
            getSdkEnablementProvider(context).b(false);
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, priority, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$Companion$$ExternalSyntheticLambda19
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.Companion.enableSdk$lambda$26();
                }
            }, 6, (Object) null);
            setOutboundNetworkRequestsOffline(false);
        }

        @JvmStatic
        public final Uri getApiEndpoint(Uri brazeEndpoint) {
            Intrinsics.checkNotNullParameter(brazeEndpoint, "brazeEndpoint");
            ReentrantLock reentrantLock = Braze.endpointProviderLock;
            reentrantLock.lock();
            try {
                IBrazeEndpointProvider iBrazeEndpointProvider = Braze.endpointProvider;
                if (iBrazeEndpointProvider != null) {
                    try {
                        Uri apiEndpoint = iBrazeEndpointProvider.getApiEndpoint(brazeEndpoint);
                        if (apiEndpoint != null) {
                            reentrantLock.unlock();
                            return apiEndpoint;
                        }
                    } catch (Exception e) {
                        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) Braze.INSTANCE, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.Braze$Companion$$ExternalSyntheticLambda17
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return Braze.Companion.getApiEndpoint$lambda$12$lambda$11$lambda$10();
                            }
                        }, 4, (Object) null);
                    }
                }
                reentrantLock.unlock();
                return brazeEndpoint;
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }

        @JvmStatic
        public final String getConfiguredApiKey(BrazeConfigurationProvider configurationProvider) {
            Intrinsics.checkNotNullParameter(configurationProvider, "configurationProvider");
            try {
                return configurationProvider.getBrazeApiKey().a;
            } catch (Exception e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.Braze$Companion$$ExternalSyntheticLambda20
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Braze.Companion.getConfiguredApiKey$lambda$7();
                    }
                }, 4, (Object) null);
                return null;
            }
        }

        public final IBrazeNotificationFactory getCustomBrazeNotificationFactory() {
            return Braze.customBrazeNotificationFactory;
        }

        public final com.braze.managers.d0 getDeviceDataProvider$android_sdk_base_release() {
            return Braze.deviceDataProvider;
        }

        @JvmStatic
        public final Braze getInstance(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (shouldAllowSingletonInitialization()) {
                ReentrantLock reentrantLock = Braze.brazeClassLock;
                reentrantLock.lock();
                try {
                    Companion companion = Braze.INSTANCE;
                    if (companion.shouldAllowSingletonInitialization()) {
                        if (companion.getStaticExternalIEventMessenger$android_sdk_base_release() == null) {
                            companion.setStaticExternalIEventMessenger$android_sdk_base_release(new com.braze.events.d(new com.braze.storage.a0(context), false));
                            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) companion, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$Companion$$ExternalSyntheticLambda30
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    return Braze.Companion.getInstance$lambda$6$lambda$5();
                                }
                            }, 6, (Object) null);
                        }
                        Braze braze = new Braze(context);
                        braze.isInstanceStopped = false;
                        Braze.instance = braze;
                        reentrantLock.unlock();
                        return braze;
                    }
                    Unit unit = Unit.INSTANCE;
                    reentrantLock.unlock();
                } catch (Throwable th) {
                    reentrantLock.unlock();
                    throw th;
                }
            }
            Braze braze2 = Braze.instance;
            Intrinsics.checkNotNull(braze2, "null cannot be cast to non-null type com.braze.Braze");
            return braze2;
        }

        public final boolean getOutboundNetworkRequestsOffline() {
            return Braze.areOutboundNetworkRequestsOffline;
        }

        public final com.braze.storage.a0 getSdkEnablementProvider$android_sdk_base_release() {
            return Braze.sdkEnablementProvider;
        }

        public final boolean getShouldRequestFrameworkListenToNetworkUpdates$android_sdk_base_release() {
            return Braze.shouldRequestFrameworkListenToNetworkUpdates;
        }

        public final com.braze.events.e getStaticExternalIEventMessenger$android_sdk_base_release() {
            return Braze.staticExternalIEventMessenger;
        }

        public final boolean isDisabled() {
            com.braze.storage.a0 sdkEnablementProvider$android_sdk_base_release = getSdkEnablementProvider$android_sdk_base_release();
            if (sdkEnablementProvider$android_sdk_base_release == null) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$Companion$$ExternalSyntheticLambda6
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Braze.Companion._get_isDisabled_$lambda$2();
                    }
                }, 7, (Object) null);
                return false;
            }
            Braze braze = Braze.instance;
            if (braze != null && Intrinsics.areEqual(Boolean.FALSE, braze.getIsApiKeyPresent())) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$Companion$$ExternalSyntheticLambda7
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Braze.Companion._get_isDisabled_$lambda$3();
                    }
                }, 6, (Object) null);
                return true;
            }
            boolean z = sdkEnablementProvider$android_sdk_base_release.a.getBoolean("appboy_sdk_disabled", false);
            if (z) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$Companion$$ExternalSyntheticLambda8
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Braze.Companion._get_isDisabled_$lambda$4();
                    }
                }, 6, (Object) null);
            }
            return z;
        }

        public final void requestTriggersIfInAppMessageTestPush$android_sdk_base_release(Intent intent, com.braze.managers.c0 brazeManager) {
            Intrinsics.checkNotNullParameter(intent, "intent");
            Intrinsics.checkNotNullParameter(brazeManager, "brazeManager");
            String stringExtra = intent.getStringExtra(Constants.BRAZE_PUSH_FETCH_TEST_TRIGGERS_KEY);
            if (stringExtra == null || !Intrinsics.areEqual(stringExtra, "true")) {
                return;
            }
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$Companion$$ExternalSyntheticLambda21
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.Companion.requestTriggersIfInAppMessageTestPush$lambda$37();
                }
            }, 6, (Object) null);
            com.braze.models.outgoing.j jVar = new com.braze.models.outgoing.j();
            jVar.c = Boolean.TRUE;
            ((com.braze.managers.m) brazeManager).a(jVar);
        }

        public final void setConfiguredCustomEndpoint$android_sdk_base_release(final String configuredCustomEndpoint) {
            ReentrantLock reentrantLock = Braze.endpointProviderLock;
            reentrantLock.lock();
            try {
                Braze.INSTANCE.setEndpointProvider(new IBrazeEndpointProvider() { // from class: com.braze.Braze$Companion$$ExternalSyntheticLambda0
                    @Override // com.braze.IBrazeEndpointProvider
                    public final Uri getApiEndpoint(Uri uri) {
                        return Braze.Companion.setConfiguredCustomEndpoint$lambda$33$lambda$32(configuredCustomEndpoint, uri);
                    }
                });
                Unit unit = Unit.INSTANCE;
            } finally {
                reentrantLock.unlock();
            }
        }

        public final void setCustomBrazeNotificationFactory(IBrazeNotificationFactory iBrazeNotificationFactory) {
            Braze.customBrazeNotificationFactory = iBrazeNotificationFactory;
        }

        public final void setDeviceDataProvider$android_sdk_base_release(com.braze.managers.d0 d0Var) {
            Braze.deviceDataProvider = d0Var;
        }

        @JvmStatic
        public final void setEndpointProvider(IBrazeEndpointProvider endpointProvider) {
            ReentrantLock reentrantLock = Braze.endpointProviderLock;
            reentrantLock.lock();
            try {
                Braze.endpointProvider = endpointProvider;
                Unit unit = Unit.INSTANCE;
            } finally {
                reentrantLock.unlock();
            }
        }

        public final void setOutboundNetworkRequestsOffline(final boolean z) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$Companion$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.Companion._set_outboundNetworkRequestsOffline_$lambda$0(z);
                }
            }, 6, (Object) null);
            ReentrantLock reentrantLock = Braze.brazeClassLock;
            reentrantLock.lock();
            try {
                Braze.areOutboundNetworkRequestsOffline = z;
                Braze braze = Braze.instance;
                if (braze != null) {
                    braze.setSyncPolicyOfflineStatus(z);
                    Unit unit = Unit.INSTANCE;
                }
            } finally {
                reentrantLock.unlock();
            }
        }

        public final void setSdkEnablementProvider$android_sdk_base_release(com.braze.storage.a0 a0Var) {
            Braze.sdkEnablementProvider = a0Var;
        }

        public final void setShouldRequestFrameworkListenToNetworkUpdates$android_sdk_base_release(boolean z) {
            Braze.shouldRequestFrameworkListenToNetworkUpdates = z;
        }

        public final void setStaticExternalIEventMessenger$android_sdk_base_release(com.braze.events.e eVar) {
            Braze.staticExternalIEventMessenger = eVar;
        }

        public final void stopInstance$android_sdk_base_release(boolean clearStorage) {
            try {
                BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
                BrazeLogger.brazelog$default(brazeLogger, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$Companion$$ExternalSyntheticLambda26
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Braze.Companion.stopInstance$lambda$38();
                    }
                }, 6, (Object) null);
                ReentrantLock reentrantLock = Braze.brazeClassLock;
                reentrantLock.lock();
                try {
                    BrazeCoroutineScope.cancelChildren();
                    Braze braze = Braze.instance;
                    if (braze != null) {
                        Companion companion = Braze.INSTANCE;
                        BrazeLogger.brazelog$default(brazeLogger, (Object) companion, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$Companion$$ExternalSyntheticLambda27
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return Braze.Companion.stopInstance$lambda$41$lambda$39();
                            }
                        }, 6, (Object) null);
                        ((com.braze.events.d) braze.getExternalIEventMessenger()).b(new SdkDataWipeEvent(), SdkDataWipeEvent.class);
                        BrazeLogger.brazelog$default(brazeLogger, (Object) companion, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$Companion$$ExternalSyntheticLambda28
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return Braze.Companion.stopInstance$lambda$41$lambda$40();
                            }
                        }, 7, (Object) null);
                        com.braze.coroutine.f.a.a();
                        if (braze.udm != null) {
                            if (clearStorage) {
                                ((u0) braze.getUdm$android_sdk_base_release()).C.a();
                                ((u0) braze.getUdm$android_sdk_base_release()).z.a();
                                ((u0) braze.getUdm$android_sdk_base_release()).A.a();
                            }
                            com.braze.dispatch.f fVar = ((u0) braze.getUdm$android_sdk_base_release()).p;
                            synchronized (fVar) {
                                fVar.l = true;
                                fVar.b();
                                fVar.f();
                            }
                            com.braze.managers.z zVar = ((u0) braze.getUdm$android_sdk_base_release()).r;
                            zVar.b = true;
                            zVar.a.c = true;
                            ((u0) braze.getUdm$android_sdk_base_release()).x.unregisterGeofences();
                        }
                        braze.isInstanceStopped = true;
                    }
                    Unit unit = Unit.INSTANCE;
                    reentrantLock.unlock();
                } catch (Throwable th) {
                    reentrantLock.unlock();
                    throw th;
                }
            } catch (Exception e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.Braze$Companion$$ExternalSyntheticLambda29
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Braze.Companion.stopInstance$lambda$42();
                    }
                }, 4, (Object) null);
            }
        }

        @JvmStatic
        public final void wipeData(Context context) {
            File[] fileArrListFiles;
            List<File> listAsList;
            Intrinsics.checkNotNullParameter(context, "context");
            stopInstance$android_sdk_base_release(true);
            try {
                com.braze.triggers.managers.b.e.a(context);
                DefaultBrazeImageLoader.Companion.a(context);
            } catch (Exception e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.Braze$Companion$$ExternalSyntheticLambda13
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Braze.Companion.wipeData$lambda$27();
                    }
                }, 4, (Object) null);
            }
            try {
                File file = new File(context.getApplicationInfo().dataDir, "shared_prefs");
                if (!file.exists() || !file.isDirectory() || (fileArrListFiles = file.listFiles(new FilenameFilter() { // from class: com.braze.Braze$Companion$$ExternalSyntheticLambda14
                    @Override // java.io.FilenameFilter
                    public final boolean accept(File file2, String str) {
                        return Braze.Companion.wipeData$lambda$28(file2, str);
                    }
                })) == null || (listAsList = ArraysKt.asList(fileArrListFiles)) == null) {
                    return;
                }
                for (final File file2 : listAsList) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) Braze.INSTANCE, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$Companion$$ExternalSyntheticLambda15
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return Braze.Companion.wipeData$lambda$30$lambda$29(file2);
                        }
                    }, 6, (Object) null);
                    Intrinsics.checkNotNull(file2);
                    BrazeFileUtils.deleteSharedPreferencesFile(context, file2);
                }
            } catch (Exception e2) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e2, false, new Function0() { // from class: com.braze.Braze$Companion$$ExternalSyntheticLambda16
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Braze.Companion.wipeData$lambda$31();
                    }
                }, 4, (Object) null);
            }
        }

        private Companion() {
        }
    }

    public Braze(final Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        final long jNanoTime = System.nanoTime();
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze._init_$lambda$0();
            }
        }, 7, (Object) null);
        this.applicationContext = context.getApplicationContext();
        final String str = Build.MODEL;
        if (str != null) {
            Set<String> set = KNOWN_APP_CRAWLER_DEVICE_MODELS;
            String lowerCase = str.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            if (set.contains(lowerCase)) {
                BrazeLogger.brazelog$default(brazeLogger, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda111
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return j.a("Device build model matches a known crawler. Enabling mock network request mode. Device it: ", str);
                    }
                }, 6, (Object) null);
                INSTANCE.enableMockNetworkRequestsAndDropEventsMode();
            }
        }
        setImageLoader(new DefaultBrazeImageLoader(this.applicationContext));
        com.braze.events.e eVar = staticExternalIEventMessenger;
        this.externalIEventMessenger = eVar == null ? new com.braze.events.d(new com.braze.storage.a0(this.applicationContext), false) : eVar;
        run$android_sdk_base_release(new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda130
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze._init_$lambda$3();
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda141
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze._init_$lambda$27(this.f$0, context);
            }
        });
        final long jNanoTime2 = System.nanoTime();
        BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda152
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze._init_$lambda$28(jNanoTime2, jNanoTime);
            }
        }, 7, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _get_cachedContentCardsUpdatedEvent_$lambda$37() {
        return "Failed to retrieve the cached ContentCardsUpdatedEvent.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _get_currentUser_$lambda$30() {
        return "Failed to retrieve the current user.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _get_deviceId_$lambda$29() {
        return "Failed to retrieve the device id.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _get_registeredPushToken_$lambda$31() {
        return "Failed to get the registered push registration token.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _init_$lambda$0() {
        return "Braze SDK Initializing";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit _init_$lambda$27(Braze braze, Context context) {
        com.braze.configuration.e eVar;
        braze.applyPendingRuntimeConfiguration$android_sdk_base_release();
        braze.setConfigurationProvider$android_sdk_base_release(new BrazeConfigurationProvider(braze.applicationContext));
        Companion companion = INSTANCE;
        String configuredApiKey = companion.getConfiguredApiKey(braze.getConfigurationProvider$android_sdk_base_release());
        braze.isApiKeyPresent = Boolean.valueOf(!(configuredApiKey == null || StringsKt.isBlank(configuredApiKey)));
        BrazeLogger.setInitialLogLevelFromConfiguration(braze.getConfigurationProvider$android_sdk_base_release().getLoggerInitialLogLevel());
        BrazeLogger.checkForSystemLogLevelProperty$default(false, 1, null);
        if (companion.getSdkEnablementProvider(context).a.getBoolean("appboy_sdk_disabled", false)) {
            companion.setOutboundNetworkRequestsOffline(true);
        }
        String str = braze.getConfigurationProvider$android_sdk_base_release().getBrazeApiKey().a;
        braze.setPushDeliveryManager$android_sdk_base_release(new com.braze.managers.i0(braze.applicationContext, str));
        braze.setDeviceIdProvider$android_sdk_base_release(new com.braze.managers.u(braze.applicationContext, str));
        braze.offlineUserStorageProvider = new com.braze.configuration.e(braze.applicationContext);
        braze.setRegistrationDataProvider$android_sdk_base_release(new com.braze.managers.l0(braze.applicationContext, braze.getConfigurationProvider$android_sdk_base_release()));
        String customEndpoint = braze.getConfigurationProvider$android_sdk_base_release().getCustomEndpoint();
        if (customEndpoint != null && !StringsKt.isBlank(customEndpoint)) {
            if (ValidationUtils.isInvalidCustomEndpoint$android_sdk_base_release(braze.getConfigurationProvider$android_sdk_base_release().getCustomEndpoint())) {
                BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
                BrazeLogger.Priority priority = BrazeLogger.Priority.W;
                BrazeLogger.brazelog$default(brazeLogger, (Object) braze, priority, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda17
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Braze.lambda$27$lambda$4();
                    }
                }, 6, (Object) null);
                BrazeLogger.brazelog$default(brazeLogger, (Object) braze, priority, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda29
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Braze.lambda$27$lambda$5();
                    }
                }, 6, (Object) null);
                BrazeLogger.brazelog$default(brazeLogger, (Object) braze, priority, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda32
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Braze.lambda$27$lambda$6();
                    }
                }, 6, (Object) null);
                BrazeLogger.brazelog$default(brazeLogger, (Object) braze, priority, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda34
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Braze.lambda$27$lambda$7();
                    }
                }, 6, (Object) null);
                BrazeLogger.brazelog$default(brazeLogger, (Object) braze, priority, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda35
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Braze.lambda$27$lambda$8();
                    }
                }, 6, (Object) null);
                BrazeLogger.brazelog$default(brazeLogger, (Object) braze, priority, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda36
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Braze.lambda$27$lambda$9();
                    }
                }, 6, (Object) null);
                BrazeLogger.brazelog$default(brazeLogger, (Object) braze, priority, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda37
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Braze.lambda$27$lambda$10();
                    }
                }, 6, (Object) null);
                BrazeLogger.brazelog$default(brazeLogger, (Object) braze, priority, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda38
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Braze.lambda$27$lambda$11();
                    }
                }, 6, (Object) null);
                BrazeLogger.brazelog$default(brazeLogger, (Object) braze, priority, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda39
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Braze.lambda$27$lambda$12();
                    }
                }, 6, (Object) null);
                BrazeLogger.brazelog$default(brazeLogger, (Object) braze, priority, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda40
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Braze.lambda$27$lambda$13();
                    }
                }, 6, (Object) null);
                BrazeLogger.brazelog$default(brazeLogger, (Object) braze, priority, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda18
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Braze.lambda$27$lambda$14();
                    }
                }, 6, (Object) null);
            }
            companion.setConfiguredCustomEndpoint$android_sdk_base_release(braze.getConfigurationProvider$android_sdk_base_release().getCustomEndpoint());
        }
        try {
            if (braze.getConfigurationProvider$android_sdk_base_release().isFirebaseCloudMessagingRegistrationEnabled()) {
                com.braze.managers.b0 b0Var = new com.braze.managers.b0(context, braze.getRegistrationDataProvider$android_sdk_base_release());
                if (b0Var.a()) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) braze, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda19
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return Braze.lambda$27$lambda$15();
                        }
                    }, 6, (Object) null);
                    String firebaseCloudMessagingSenderIdKey = braze.getConfigurationProvider$android_sdk_base_release().getFirebaseCloudMessagingSenderIdKey();
                    if (firebaseCloudMessagingSenderIdKey != null) {
                        b0Var.a(firebaseCloudMessagingSenderIdKey);
                    }
                } else {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) braze, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda20
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return Braze.lambda$27$lambda$17();
                        }
                    }, 6, (Object) null);
                }
            } else {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) braze, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda21
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Braze.lambda$27$lambda$18();
                    }
                }, 6, (Object) null);
            }
            if (braze.getConfigurationProvider$android_sdk_base_release().isAdmMessagingRegistrationEnabled()) {
                com.braze.managers.a aVar = com.braze.managers.b.c;
                Context context2 = braze.applicationContext;
                Intrinsics.checkNotNullParameter(context2, "context");
                if (aVar.a() && aVar.a(context2)) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) braze, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda23
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return Braze.lambda$27$lambda$19();
                        }
                    }, 6, (Object) null);
                    new com.braze.managers.b(braze.applicationContext, braze.getRegistrationDataProvider$android_sdk_base_release()).a();
                } else {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) braze, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda24
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return Braze.lambda$27$lambda$20();
                        }
                    }, 6, (Object) null);
                }
            } else {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) braze, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda25
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Braze.lambda$27$lambda$21();
                    }
                }, 6, (Object) null);
            }
            braze.verifyProperSdkSetup();
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) braze, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda26
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.lambda$27$lambda$22();
                }
            }, 4, (Object) null);
        }
        BrazeLogger brazeLogger2 = BrazeLogger.INSTANCE;
        BrazeLogger.Priority priority2 = BrazeLogger.Priority.V;
        BrazeLogger.brazelog$default(brazeLogger2, (Object) braze, priority2, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda27
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.lambda$27$lambda$23();
            }
        }, 6, (Object) null);
        try {
            Context context3 = braze.applicationContext;
            com.braze.configuration.e eVar2 = braze.offlineUserStorageProvider;
            if (eVar2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("offlineUserStorageProvider");
                eVar = null;
            } else {
                eVar = eVar2;
            }
            braze.setUserSpecificMemberVariablesAndStartDispatch(new u0(context3, eVar, braze.getConfigurationProvider$android_sdk_base_release(), braze.externalIEventMessenger, braze.getDeviceIdProvider$android_sdk_base_release(), braze.getRegistrationDataProvider$android_sdk_base_release(), braze.getPushDeliveryManager$android_sdk_base_release(), shouldMockNetworkRequestsAndDropEvents, areOutboundNetworkRequestsOffline, braze.getDeviceDataProvider(), shouldRequestFrameworkListenToNetworkUpdates));
            BrazeLogger.brazelog$default(brazeLogger2, (Object) braze, priority2, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda28
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.lambda$27$lambda$24();
                }
            }, 6, (Object) null);
        } catch (Exception e2) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) braze, BrazeLogger.Priority.E, (Throwable) e2, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda30
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.lambda$27$lambda$25();
                }
            }, 4, (Object) null);
            braze.publishError(e2);
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) braze, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda31
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.lambda$27$lambda$26();
            }
        }, 6, (Object) null);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _init_$lambda$28(long j, long j2) {
        long j3 = j - j2;
        return "Braze SDK loaded in " + TimeUnit.MILLISECONDS.convert(j3, TimeUnit.NANOSECONDS) + " ms / " + j3 + " nanos";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _init_$lambda$3() {
        return "Failed to perform initial Braze singleton setup.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _set_registeredPushToken_$lambda$32(String str) {
        return j.a("Failed to set the push token ", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit _set_registeredPushToken_$lambda$36(Braze braze, final String str) {
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeLogger.Priority priority = BrazeLogger.Priority.I;
        BrazeLogger.brazelog$default(brazeLogger, (Object) braze, priority, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda177
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze._set_registeredPushToken_$lambda$36$lambda$33(str);
            }
        }, 6, (Object) null);
        if (str == null || StringsKt.isBlank(str)) {
            BrazeLogger.brazelog$default(brazeLogger, (Object) braze, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda179
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze._set_registeredPushToken_$lambda$36$lambda$34();
                }
            }, 6, (Object) null);
            return Unit.INSTANCE;
        }
        if (Intrinsics.areEqual(((com.braze.managers.l0) braze.getRegistrationDataProvider$android_sdk_base_release()).b(), str)) {
            BrazeLogger.brazelog$default(brazeLogger, (Object) braze, priority, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda178
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze._set_registeredPushToken_$lambda$36$lambda$35(str);
                }
            }, 6, (Object) null);
            return Unit.INSTANCE;
        }
        ((com.braze.managers.l0) braze.getRegistrationDataProvider$android_sdk_base_release()).a(str);
        r rVar = ((u0) braze.getUdm$android_sdk_base_release()).k;
        if (rVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("deviceCache");
            rVar = null;
        }
        rVar.e();
        braze.requestImmediateDataFlush();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _set_registeredPushToken_$lambda$36$lambda$33(String str) {
        return j.a("Push token registered: ", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _set_registeredPushToken_$lambda$36$lambda$34() {
        return "Push token must not be null or blank. Not registering for push with Braze.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _set_registeredPushToken_$lambda$36$lambda$35(String str) {
        return a.a("Push token ", str, " is the same as the previous token. Not calling sendFullDeviceObjectOnNextExport or requesting data flush");
    }

    @JvmStatic
    public static final void addSdkMetadata(Context context, EnumSet<BrazeSdkMetadata> enumSet) {
        INSTANCE.addSdkMetadata(context, enumSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String addSerializedCardJsonToStorage$lambda$178(String str, String str2) {
        return "Failed to update ContentCard storage provider with single card update. User id: " + str + " Serialized json: " + str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit addSerializedCardJsonToStorage$lambda$180(final String str, Braze braze, final String str2) {
        if (StringsKt.isBlank(str)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) braze, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda69
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.addSerializedCardJsonToStorage$lambda$180$lambda$179(str2, str);
                }
            }, 6, (Object) null);
            return Unit.INSTANCE;
        }
        ((u0) braze.getUdm$android_sdk_base_release()).C.a(new com.braze.models.response.c(str), str2);
        ((com.braze.events.d) braze.externalIEventMessenger).b(((u0) braze.getUdm$android_sdk_base_release()).C.a(true), ContentCardsUpdatedEvent.class);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String addSerializedCardJsonToStorage$lambda$180$lambda$179(String str, String str2) {
        return "Cannot add null or blank card json to storage. Returning. User id: " + str + " Serialized json: " + str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String addSingleSynchronousSubscription$lambda$125(Class cls) {
        return "Failed to add synchronous subscriber for class: " + cls;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String applyPendingRuntimeConfiguration$lambda$195$lambda$192() {
        return "Applying any pending runtime configuration values";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String applyPendingRuntimeConfiguration$lambda$195$lambda$193() {
        return "Clearing config values";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String applyPendingRuntimeConfiguration$lambda$195$lambda$194(BrazeConfig brazeConfig) {
        return "Setting pending config object: " + brazeConfig;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String areCachedContentCardsStale$lambda$145() {
        return "The ContentCardsUpdatedEvent was null. Returning false for stale check.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String changeUser$lambda$130(String str) {
        return j.a("Failed to set external id to: ", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit changeUser$lambda$138(final String str, Braze braze, final String str2) {
        com.braze.configuration.e eVar;
        if (str == null || str.length() == 0) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) braze, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda57
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.changeUser$lambda$138$lambda$131();
                }
            }, 6, (Object) null);
            return Unit.INSTANCE;
        }
        if (StringUtils.getByteSize(str) > 997) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) braze, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda50
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.changeUser$lambda$138$lambda$132(str);
                }
            }, 6, (Object) null);
            return Unit.INSTANCE;
        }
        BrazeUser brazeUser = braze.brazeUser;
        if (brazeUser == null) {
            Intrinsics.throwUninitializedPropertyAccessException("brazeUser");
            brazeUser = null;
        }
        final String userId = brazeUser.getUserId();
        if (Intrinsics.areEqual(userId, str)) {
            BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
            BrazeLogger.brazelog$default(brazeLogger, (Object) braze, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda51
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.changeUser$lambda$138$lambda$133(str);
                }
            }, 6, (Object) null);
            if (str2 != null && !StringsKt.isBlank(str2)) {
                BrazeLogger.brazelog$default(brazeLogger, (Object) braze, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda52
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Braze.changeUser$lambda$138$lambda$134(str2);
                    }
                }, 7, (Object) null);
                ((u0) braze.getUdm$android_sdk_base_release()).t.b(str2);
            }
        } else {
            com.braze.events.d dVar = ((u0) braze.getUdm$android_sdk_base_release()).l;
            ReentrantLock reentrantLock = dVar.g;
            reentrantLock.lock();
            try {
                reentrantLock.unlock();
                ((u0) braze.getUdm$android_sdk_base_release()).s.a();
                if (Intrinsics.areEqual(userId, "")) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) braze, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda53
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return Braze.changeUser$lambda$138$lambda$135(str);
                        }
                    }, 6, (Object) null);
                    com.braze.configuration.e eVar2 = braze.offlineUserStorageProvider;
                    if (eVar2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("offlineUserStorageProvider");
                        eVar2 = null;
                    }
                    eVar2.b(str);
                    BrazeUser brazeUser2 = braze.brazeUser;
                    if (brazeUser2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("brazeUser");
                        brazeUser2 = null;
                    }
                    brazeUser2.setUserId(str);
                } else {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) braze, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda54
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return Braze.changeUser$lambda$138$lambda$136(userId, str);
                        }
                    }, 6, (Object) null);
                    ((com.braze.events.d) braze.externalIEventMessenger).b(new FeedUpdatedEvent(new ArrayList(), str, false, DateTimeUtils.nowInSeconds()), FeedUpdatedEvent.class);
                }
                ((u0) braze.getUdm$android_sdk_base_release()).w.f();
                ((u0) braze.getUdm$android_sdk_base_release()).n.a();
                com.braze.configuration.e eVar3 = braze.offlineUserStorageProvider;
                if (eVar3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("offlineUserStorageProvider");
                    eVar3 = null;
                }
                eVar3.b(str);
                com.braze.managers.h0 udm$android_sdk_base_release = braze.getUdm$android_sdk_base_release();
                Context context = braze.applicationContext;
                com.braze.configuration.e eVar4 = braze.offlineUserStorageProvider;
                if (eVar4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("offlineUserStorageProvider");
                    eVar = null;
                } else {
                    eVar = eVar4;
                }
                braze.setUserSpecificMemberVariablesAndStartDispatch(new u0(context, eVar, braze.getConfigurationProvider$android_sdk_base_release(), braze.externalIEventMessenger, braze.getDeviceIdProvider$android_sdk_base_release(), braze.getRegistrationDataProvider$android_sdk_base_release(), braze.getPushDeliveryManager$android_sdk_base_release(), shouldMockNetworkRequestsAndDropEvents, areOutboundNetworkRequestsOffline, braze.getDeviceDataProvider(), shouldRequestFrameworkListenToNetworkUpdates));
                if (str2 != null && !StringsKt.isBlank(str2)) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) braze, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda56
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return Braze.changeUser$lambda$138$lambda$137(str2);
                        }
                    }, 7, (Object) null);
                    ((u0) braze.getUdm$android_sdk_base_release()).t.b(str2);
                }
                ((u0) braze.getUdm$android_sdk_base_release()).a().j();
                ((u0) braze.getUdm$android_sdk_base_release()).w.o();
                u0 u0Var = (u0) udm$android_sdk_base_release;
                u0Var.getClass();
                BuildersKt__Builders_commonKt.launch$default(BrazeCoroutineScope.INSTANCE, null, null, new t0(u0Var, null), 3, null);
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String changeUser$lambda$138$lambda$131() {
        return "userId passed to changeUser was null or empty. The current user will remain the active user.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String changeUser$lambda$138$lambda$132(String str) {
        return j.a("Rejected user id with byte length longer than 997. Not changing user. Input user id: ", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String changeUser$lambda$138$lambda$133(String str) {
        return a.a("Received request to change current user ", str, " to the same user id. Not changing user.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String changeUser$lambda$138$lambda$134(String str) {
        return j.a("Set sdk auth signature on changeUser call: ", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String changeUser$lambda$138$lambda$135(String str) {
        return j.a("Changing anonymous user to ", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String changeUser$lambda$138$lambda$136(String str, String str2) {
        return "Changing current user " + str + " to new user " + str2 + '.';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String changeUser$lambda$138$lambda$137(String str) {
        return j.a("Set sdk auth signature on changeUser call: ", str);
    }

    @JvmStatic
    public static final void clearEndpointProvider() {
        INSTANCE.clearEndpointProvider();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String closeSession$lambda$41() {
        return "Failed to close session.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit closeSession$lambda$43(Activity activity, Braze braze) {
        if (activity == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) braze, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda150
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.closeSession$lambda$43$lambda$42();
                }
            }, 6, (Object) null);
            return Unit.INSTANCE;
        }
        ((u0) braze.getUdm$android_sdk_base_release()).w.a(activity);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String closeSession$lambda$43$lambda$42() {
        return "Cannot close session with null activity.";
    }

    @JvmStatic
    public static final boolean configure(Context context, BrazeConfig brazeConfig) {
        return INSTANCE.configure(context, brazeConfig);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String deserializeContentCard$lambda$146() {
        return "Cannot deserialize null content card json string. Returning null.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String deserializeContentCard$lambda$147(String str) {
        return j.a("Failed to deserialize content card json string. Payload: ", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String deserializeContentCard$lambda$148(JSONObject jSONObject) {
        return "Failed to deserialize content card json. Payload: " + jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String deserializeInAppMessageString$lambda$157(String str) {
        return j.a("Failed to deserialize in-app message json. Payload: ", str);
    }

    @JvmStatic
    public static final void disableSdk(Context context) {
        INSTANCE.disableSdk(context);
    }

    @JvmStatic
    public static final boolean enableMockNetworkRequestsAndDropEventsMode() {
        return INSTANCE.enableMockNetworkRequestsAndDropEventsMode();
    }

    @JvmStatic
    public static final void enableSdk(Context context) {
        INSTANCE.enableSdk(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getAllFeatureFlags$lambda$87() {
        return "Failed to get all feature flags";
    }

    @JvmStatic
    public static final Uri getApiEndpoint(Uri uri) {
        return INSTANCE.getApiEndpoint(uri);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getBanner$lambda$101(String str) {
        return j.a("Failed to get Banner ", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getCachedContentCards$lambda$144() {
        return "The ContentCardsUpdatedEvent was null. Returning null for the list of cached cards.";
    }

    private final ContentCardsUpdatedEvent getCachedContentCardsUpdatedEvent() {
        return (ContentCardsUpdatedEvent) runForResult$android_sdk_base_release$default(this, null, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda140
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze._get_cachedContentCardsUpdatedEvent_$lambda$37();
            }
        }, false, false, new d(this, null), 12, null);
    }

    public static /* synthetic */ void getConfigurationProvider$android_sdk_base_release$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getConfigurationProviderSafe$lambda$221() {
        return "ConfigurationProvider has not been initialized. Constructing a new one.";
    }

    @JvmStatic
    public static final String getConfiguredApiKey(BrazeConfigurationProvider brazeConfigurationProvider) {
        return INSTANCE.getConfiguredApiKey(brazeConfigurationProvider);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getContentCardCount$lambda$141() {
        return "The ContentCardsUpdatedEvent was null. Returning the default value for the card count.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getContentCardUnviewedCount$lambda$142() {
        return "The ContentCardsUpdatedEvent was null. Returning the default value for the unviewed card count.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getContentCardsLastUpdatedInSecondsFromEpoch$lambda$143() {
        return "The ContentCardsUpdatedEvent was null. Returning the default value for the last update timestamp.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getCurrentUser$lambda$139() {
        return "Failed to retrieve the current user.";
    }

    public static final IBrazeNotificationFactory getCustomBrazeNotificationFactory() {
        return INSTANCE.getCustomBrazeNotificationFactory();
    }

    private final com.braze.managers.d0 getDeviceDataProvider() {
        com.braze.managers.d0 tVar = deviceDataProvider;
        if (tVar == null) {
            tVar = new com.braze.managers.t(this.applicationContext, getConfigurationProvider$android_sdk_base_release());
        }
        deviceDataProvider = tVar;
        return tVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getDeviceIdAsync$lambda$140() {
        return "Failed to retrieve the current device id.";
    }

    public static /* synthetic */ void getDeviceIdProvider$android_sdk_base_release$annotations() {
    }

    public static /* synthetic */ void getExternalIEventMessenger$android_sdk_base_release$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getFeatureFlag$lambda$88(String str) {
        return j.a("Failed to get feature flag ", str);
    }

    @JvmStatic
    public static final Braze getInstance(Context context) {
        return INSTANCE.getInstance(context);
    }

    public static final boolean getOutboundNetworkRequestsOffline() {
        return INSTANCE.getOutboundNetworkRequestsOffline();
    }

    public static /* synthetic */ void getPushDeliveryManager$android_sdk_base_release$annotations() {
    }

    public static /* synthetic */ void getRegistrationDataProvider$android_sdk_base_release$annotations() {
    }

    public static /* synthetic */ void getUdm$android_sdk_base_release$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String handleInAppMessageTestPush$lambda$188() {
        return "Error handling test in-app message push";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit handleInAppMessageTestPush$lambda$189(Intent intent, Braze braze) {
        INSTANCE.requestTriggersIfInAppMessageTestPush$android_sdk_base_release(intent, ((u0) braze.getUdm$android_sdk_base_release()).w);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String handleInternalBannerRefresh$lambda$190() {
        return "Error handling banner push refresh";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit handleInternalBannerRefresh$lambda$191(Braze braze) {
        ((u0) braze.getUdm$android_sdk_base_release()).A.a(true);
        return Unit.INSTANCE;
    }

    public static /* synthetic */ void isApiKeyPresent$android_sdk_base_release$annotations() {
    }

    public static final boolean isDisabled() {
        return INSTANCE.isDisabled();
    }

    private final boolean isEphemeralEventKey(final String key) {
        if (!getConfigurationProvider$android_sdk_base_release().isEphemeralEventsEnabled()) {
            return false;
        }
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeLogger.Priority priority = BrazeLogger.Priority.V;
        BrazeLogger.brazelog$default(brazeLogger, (Object) this, priority, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.isEphemeralEventKey$lambda$217();
            }
        }, 6, (Object) null);
        final Set<String> ephemeralEventKeys = getConfigurationProvider$android_sdk_base_release().getEphemeralEventKeys();
        final boolean zContains = ephemeralEventKeys.contains(key);
        BrazeLogger.brazelog$default(brazeLogger, (Object) this, priority, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.isEphemeralEventKey$lambda$218(key, ephemeralEventKeys, zContains);
            }
        }, 6, (Object) null);
        return zContains;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String isEphemeralEventKey$lambda$217() {
        return "Ephemeral events enabled";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String isEphemeralEventKey$lambda$218(String str, Set set, boolean z) {
        return "Checking event key [" + str + "] against ephemeral event list " + set + " and got match?: " + z;
    }

    static final String lambda$27$lambda$10() {
        return "**                Replace \"rest\" with \"sdk\" in your configuration                    **";
    }

    static final String lambda$27$lambda$11() {
        return "**                                        See                                        **";
    }

    static final String lambda$27$lambda$12() {
        return "**  https://www.braze.com/docs/user_guide/administrative/access_braze/sdk_endpoints  **";
    }

    static final String lambda$27$lambda$13() {
        return "**                                                                                   **";
    }

    static final String lambda$27$lambda$14() {
        return "***************************************************************************************";
    }

    static final String lambda$27$lambda$15() {
        return "Firebase Cloud Messaging found. Setting up Firebase Cloud Messaging.";
    }

    static final String lambda$27$lambda$17() {
        return "Firebase Cloud Messaging requirements not met. Braze will not register for Firebase Cloud Messaging.";
    }

    static final String lambda$27$lambda$18() {
        return "Automatic Firebase Cloud Messaging registration not enabled in configuration. Braze will not register for Firebase Cloud Messaging.";
    }

    static final String lambda$27$lambda$19() {
        return "Amazon Device Messaging found. Setting up Amazon Device Messaging";
    }

    static final String lambda$27$lambda$20() {
        return "ADM manifest requirements not met. Braze will not register for ADM.";
    }

    static final String lambda$27$lambda$21() {
        return "Automatic ADM registration not enabled in configuration. Braze will not register for ADM.";
    }

    static final String lambda$27$lambda$22() {
        return "Failed to setup pre SDK tasks";
    }

    static final String lambda$27$lambda$23() {
        return "Starting up a new user dependency manager";
    }

    static final String lambda$27$lambda$24() {
        return "Finished UserDependencyManager creation.";
    }

    static final String lambda$27$lambda$25() {
        return "Failed to startup user dependency manager.";
    }

    static final String lambda$27$lambda$26() {
        return "Finished singleton setup.";
    }

    static final String lambda$27$lambda$4() {
        return "***************************************************************************************";
    }

    static final String lambda$27$lambda$5() {
        return "**                                                                                   **";
    }

    static final String lambda$27$lambda$6() {
        return "**                                   !! WARNING !!                                   **";
    }

    static final String lambda$27$lambda$7() {
        return "**                                                                                   **";
    }

    static final String lambda$27$lambda$8() {
        return "**                       You are using a Braze REST API endpoint                     **";
    }

    static final String lambda$27$lambda$9() {
        return "**                             instead of an SDK endpoint                            **";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logBannerClick$lambda$103(String str) {
        return b.a("Failed to log a Banner impression for ", str, '.');
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit logBannerClick$lambda$104(Braze braze, String str, String str2) {
        ((u0) braze.getUdm$android_sdk_base_release()).A.a(str, str2);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logBannerImpression$lambda$102(String str) {
        return b.a("Failed to log a Banner impression for ", str, '.');
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logCustomEvent$lambda$44(String str) {
        return j.a("Failed to log custom event: ", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [T, java.lang.String] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static final Unit logCustomEvent$lambda$50(Braze braze, final String str, BrazeProperties brazeProperties, final BrazeProperties brazeProperties2) {
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeLogger.Priority priority = BrazeLogger.Priority.V;
        BrazeLogger.brazelog$default(brazeLogger, (Object) braze, priority, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda171
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.logCustomEvent$lambda$50$lambda$45(str, brazeProperties2);
            }
        }, 6, (Object) null);
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = str;
        if (!ValidationUtils.isValidLogCustomEventInput(str, ((u0) braze.getUdm$android_sdk_base_release()).m)) {
            BrazeLogger.brazelog$default(brazeLogger, (Object) braze, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda172
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.logCustomEvent$lambda$50$lambda$46(objectRef);
                }
            }, 6, (Object) null);
            return Unit.INSTANCE;
        }
        if (brazeProperties != null && brazeProperties.isInvalid()) {
            BrazeLogger.brazelog$default(brazeLogger, (Object) braze, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda173
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.logCustomEvent$lambda$50$lambda$47(objectRef);
                }
            }, 6, (Object) null);
            return Unit.INSTANCE;
        }
        ?? EnsureBrazeFieldLength = ValidationUtils.ensureBrazeFieldLength((String) objectRef.element);
        objectRef.element = EnsureBrazeFieldLength;
        com.braze.models.i iVarA = com.braze.models.outgoing.event.b.g.a((String) EnsureBrazeFieldLength, brazeProperties);
        if (iVarA == null) {
            return Unit.INSTANCE;
        }
        BrazeLogger.brazelog$default(brazeLogger, (Object) braze, priority, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda175
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.logCustomEvent$lambda$50$lambda$48(str, brazeProperties2);
            }
        }, 6, (Object) null);
        if (braze.isEphemeralEventKey((String) objectRef.element) ? ((u0) braze.getUdm$android_sdk_base_release()).m.F() : ((u0) braze.getUdm$android_sdk_base_release()).w.a(iVarA)) {
            ((u0) braze.getUdm$android_sdk_base_release()).F.a((com.braze.triggers.events.i) new com.braze.triggers.events.a((String) objectRef.element, brazeProperties, iVarA));
        } else {
            BrazeLogger.brazelog$default(brazeLogger, (Object) braze, priority, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda176
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.logCustomEvent$lambda$50$lambda$49(objectRef);
                }
            }, 6, (Object) null);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logCustomEvent$lambda$50$lambda$45(String str, BrazeProperties brazeProperties) {
        return "Called logCustomEvent for custom event " + str + " and properties " + brazeProperties;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final String logCustomEvent$lambda$50$lambda$46(Ref.ObjectRef objectRef) {
        return c.a(new StringBuilder("Logged custom event with name "), (String) objectRef.element, " was invalid. Not logging custom event to Braze.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final String logCustomEvent$lambda$50$lambda$47(Ref.ObjectRef objectRef) {
        return c.a(new StringBuilder("Custom event with name "), (String) objectRef.element, " logged with invalid properties. Not logging custom event to Braze.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logCustomEvent$lambda$50$lambda$48(String str, BrazeProperties brazeProperties) {
        return "Logging custom event " + str + " and properties " + brazeProperties;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final String logCustomEvent$lambda$50$lambda$49(Ref.ObjectRef objectRef) {
        return c.a(new StringBuilder("Not passing event with name "), (String) objectRef.element, " to trigger manager");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logFeatureFlagImpression$lambda$89() {
        return "Failed to log a Feature Flag impression.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit logFeatureFlagImpression$lambda$90(Braze braze, String str) {
        ((u0) braze.getUdm$android_sdk_base_release()).z.c(str);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logFeedCardClick$lambda$153(String str) {
        return j.a("Failed to log feed card clicked. Card id: ", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit logFeedCardClick$lambda$156(String str, Braze braze) {
        if (str == null || StringsKt.isBlank(str)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) braze, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda16
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.logFeedCardClick$lambda$156$lambda$154();
                }
            }, 6, (Object) null);
            return Unit.INSTANCE;
        }
        com.braze.models.i iVarK = com.braze.models.outgoing.event.b.g.k(str);
        if (iVarK != null) {
            ((u0) braze.getUdm$android_sdk_base_release()).w.a(iVarK);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logFeedCardClick$lambda$156$lambda$154() {
        return "Card ID cannot be null or blank.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logFeedCardImpression$lambda$149(String str) {
        return j.a("Failed to log feed card impression. Card id: ", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit logFeedCardImpression$lambda$152(String str, Braze braze) {
        if (str == null || StringsKt.isBlank(str)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) braze, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda193
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.logFeedCardImpression$lambda$152$lambda$150();
                }
            }, 6, (Object) null);
            return Unit.INSTANCE;
        }
        com.braze.models.i iVarM = com.braze.models.outgoing.event.b.g.m(str);
        if (iVarM != null) {
            ((u0) braze.getUdm$android_sdk_base_release()).w.a(iVarM);
        }
        ((u0) braze.getUdm$android_sdk_base_release()).B.markCardAsViewed(str);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logFeedCardImpression$lambda$152$lambda$150() {
        return "Card ID cannot be null or blank.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logFeedDisplayed$lambda$72() {
        return "Failed to log that the feed was displayed.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit logFeedDisplayed$lambda$74(Braze braze) {
        com.braze.models.i iVarA = com.braze.models.outgoing.event.b.g.a();
        if (iVarA != null) {
            ((u0) braze.getUdm$android_sdk_base_release()).w.a(iVarA);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logLocationRecordedEventFromLocationUpdate$lambda$181() {
        return "Failed to log location recorded event.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit logLocationRecordedEventFromLocationUpdate$lambda$183(IBrazeLocation iBrazeLocation, Braze braze) {
        com.braze.models.i iVarA = com.braze.models.outgoing.event.b.g.a(iBrazeLocation);
        if (iVarA != null) {
            ((u0) braze.getUdm$android_sdk_base_release()).w.a(iVarA);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logPurchase$lambda$51(String str) {
        return j.a("Failed to log purchase event of: ", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit logPurchase$lambda$54(String str, String str2, BigDecimal bigDecimal, int i, Braze braze, BrazeProperties brazeProperties) {
        if (!ValidationUtils.isValidLogPurchaseInput(str, str2, bigDecimal, i, ((u0) braze.getUdm$android_sdk_base_release()).m)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) braze, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda80
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.logPurchase$lambda$54$lambda$52();
                }
            }, 6, (Object) null);
            return Unit.INSTANCE;
        }
        if (brazeProperties != null && brazeProperties.isInvalid()) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) braze, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda81
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.logPurchase$lambda$54$lambda$53();
                }
            }, 6, (Object) null);
            return Unit.INSTANCE;
        }
        String strEnsureBrazeFieldLength = ValidationUtils.ensureBrazeFieldLength(str);
        com.braze.models.outgoing.event.a aVar = com.braze.models.outgoing.event.b.g;
        Intrinsics.checkNotNull(str2);
        Intrinsics.checkNotNull(bigDecimal);
        com.braze.models.i iVarA = aVar.a(strEnsureBrazeFieldLength, str2, bigDecimal, i, brazeProperties);
        if (iVarA == null) {
            return Unit.INSTANCE;
        }
        if (((u0) braze.getUdm$android_sdk_base_release()).w.a(iVarA)) {
            ((u0) braze.getUdm$android_sdk_base_release()).F.a((com.braze.triggers.events.i) new com.braze.triggers.events.f(strEnsureBrazeFieldLength, brazeProperties, iVarA));
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logPurchase$lambda$54$lambda$52() {
        return "Log purchase input was invalid. Not logging in-app purchase to Braze.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logPurchase$lambda$54$lambda$53() {
        return "Purchase logged with invalid properties. Not logging custom event to Braze.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logPushDelivery$lambda$200(String str) {
        return j.a("Error logging Push Delivery ", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit logPushDelivery$lambda$201(Braze braze, String str, long j) {
        ((u0) braze.getUdm$android_sdk_base_release()).w.a(str);
        braze.schedulePushDelivery$android_sdk_base_release(j);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logPushMaxCampaign$lambda$206() {
        return "Failed to log push max campaign";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit logPushMaxCampaign$lambda$207(Braze braze, String str) {
        ((u0) braze.getUdm$android_sdk_base_release()).w.c(str);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logPushNotificationActionClicked$lambda$63() {
        return "Failed to log push notification action clicked.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit logPushNotificationActionClicked$lambda$67(String campaignId, Braze braze, String actionId, String actionType) throws JSONException {
        if (campaignId == null || StringsKt.isBlank(campaignId)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) braze, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda202
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.logPushNotificationActionClicked$lambda$67$lambda$64();
                }
            }, 6, (Object) null);
            return Unit.INSTANCE;
        }
        if (actionId == null || StringsKt.isBlank(actionId)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) braze, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda201
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.logPushNotificationActionClicked$lambda$67$lambda$65();
                }
            }, 6, (Object) null);
            return Unit.INSTANCE;
        }
        if (actionType == null || StringsKt.isBlank(actionType)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) braze, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda200
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.logPushNotificationActionClicked$lambda$67$lambda$66();
                }
            }, 6, (Object) null);
            return Unit.INSTANCE;
        }
        com.braze.managers.m mVar = ((u0) braze.getUdm$android_sdk_base_release()).w;
        int i = com.braze.models.outgoing.event.push.a.j;
        Intrinsics.checkNotNullParameter(campaignId, "campaignId");
        Intrinsics.checkNotNullParameter(actionId, "actionId");
        Intrinsics.checkNotNullParameter(actionType, "actionType");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(Constants.BRAZE_PUSH_CAMPAIGN_ID_KEY, campaignId);
        jSONObject.put(Constants.BRAZE_PUSH_CONTENT_KEY, actionId);
        com.braze.enums.d dVar = com.braze.enums.e.b;
        mVar.a(new com.braze.models.outgoing.event.push.a(jSONObject, actionType));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logPushNotificationActionClicked$lambda$67$lambda$64() {
        return "No campaign Id associated with this notification (this is expected for test sends). Not logging push notification action clicked.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logPushNotificationActionClicked$lambda$67$lambda$65() {
        return "Action ID cannot be null or blank.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logPushNotificationActionClicked$lambda$67$lambda$66() {
        return "Action Type cannot be null or blank.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logPushNotificationOpened$lambda$55(String str) {
        return b.a("Failed to log push open for '", str, '\'');
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit logPushNotificationOpened$lambda$57(String campaignId, Braze braze) throws JSONException {
        if (campaignId == null || StringsKt.isBlank(campaignId)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) braze, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda204
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.logPushNotificationOpened$lambda$57$lambda$56();
                }
            }, 6, (Object) null);
            return Unit.INSTANCE;
        }
        com.braze.managers.m mVar = ((u0) braze.getUdm$android_sdk_base_release()).w;
        int i = com.braze.models.outgoing.event.push.b.i;
        Intrinsics.checkNotNullParameter(campaignId, "campaignId");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(Constants.BRAZE_PUSH_CAMPAIGN_ID_KEY, campaignId);
        com.braze.enums.d dVar = com.braze.enums.e.b;
        mVar.a(new com.braze.models.outgoing.event.push.b(jSONObject));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logPushNotificationOpened$lambda$57$lambda$56() {
        return "No campaign Id associated with this notification (this is expected for test sends). Not logging push notification opened.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logPushNotificationOpened$lambda$58(Intent intent) {
        return "Error logging push notification with intent: " + intent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit logPushNotificationOpened$lambda$62(Intent intent, Braze braze) throws JSONException {
        if (intent == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) braze, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda55
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.logPushNotificationOpened$lambda$62$lambda$59();
                }
            }, 6, (Object) null);
            return Unit.INSTANCE;
        }
        final String campaignId = intent.getStringExtra(Constants.BRAZE_PUSH_CAMPAIGN_ID_KEY);
        if (campaignId == null || StringsKt.isBlank(campaignId)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) braze, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda77
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.logPushNotificationOpened$lambda$62$lambda$61();
                }
            }, 6, (Object) null);
        } else {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) braze, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda66
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.logPushNotificationOpened$lambda$62$lambda$60(campaignId);
                }
            }, 6, (Object) null);
            com.braze.managers.m mVar = ((u0) braze.getUdm$android_sdk_base_release()).w;
            int i = com.braze.models.outgoing.event.push.b.i;
            Intrinsics.checkNotNullParameter(campaignId, "campaignId");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(Constants.BRAZE_PUSH_CAMPAIGN_ID_KEY, campaignId);
            com.braze.enums.d dVar = com.braze.enums.e.b;
            mVar.a(new com.braze.models.outgoing.event.push.b(jSONObject));
        }
        INSTANCE.requestTriggersIfInAppMessageTestPush$android_sdk_base_release(intent, ((u0) braze.getUdm$android_sdk_base_release()).w);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logPushNotificationOpened$lambda$62$lambda$59() {
        return "Cannot logPushNotificationOpened with null intent. Not logging push click.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logPushNotificationOpened$lambda$62$lambda$60(String str) {
        return j.a("Logging push click. Campaign Id: ", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logPushNotificationOpened$lambda$62$lambda$61() {
        return "No campaign Id associated with this notification (this is expected for test sends). Not logging push click.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logPushStoryPageClicked$lambda$68(String str, String str2) {
        return "Failed to log push story page clicked for pageId: " + str + " campaignId: " + str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit logPushStoryPageClicked$lambda$71(String str, String str2, Braze braze) {
        if (!ValidationUtils.isValidPushStoryClickInput(str, str2)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) braze, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda125
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.logPushStoryPageClicked$lambda$71$lambda$69();
                }
            }, 6, (Object) null);
            return Unit.INSTANCE;
        }
        com.braze.models.outgoing.event.a aVar = com.braze.models.outgoing.event.b.g;
        Intrinsics.checkNotNull(str);
        Intrinsics.checkNotNull(str2);
        com.braze.models.i iVarO = aVar.o(str, str2);
        if (iVarO != null) {
            ((u0) braze.getUdm$android_sdk_base_release()).w.a(iVarO);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logPushStoryPageClicked$lambda$71$lambda$69() {
        return "Push story page click input was invalid. Not logging in-app purchase to Braze.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String openSession$lambda$38() {
        return "Failed to open session.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit openSession$lambda$40(Activity activity, Braze braze) {
        if (activity == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) braze, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda205
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.openSession$lambda$40$lambda$39();
                }
            }, 6, (Object) null);
            return Unit.INSTANCE;
        }
        ((u0) braze.getUdm$android_sdk_base_release()).w.c(activity);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String openSession$lambda$40$lambda$39() {
        return "Cannot open session with null activity.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String performPushDeliveryFlush$lambda$204() {
        return "Failed to flush push delivery events";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit performPushDeliveryFlush$lambda$205(Braze braze) {
        ((u0) braze.getUdm$android_sdk_base_release()).w.a(0L);
        return Unit.INSTANCE;
    }

    private final void publishError(final Throwable throwable) {
        if (this.udm == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, throwable, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.publishError$lambda$212();
                }
            }, 4, (Object) null);
            return;
        }
        try {
            ((u0) getUdm$android_sdk_base_release()).l.b(throwable, Throwable.class);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.publishError$lambda$213(throwable);
                }
            }, 4, (Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String publishError$lambda$212() {
        return "User dependency manager is uninitialized. Not publishing error.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String publishError$lambda$213(Throwable th) {
        return "Failed to log throwable: " + th;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String recordGeofenceTransition$lambda$171() {
        return "Failed to post geofence report.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit recordGeofenceTransition$lambda$172(String str, GeofenceTransitionType geofenceTransitionType, Braze braze) {
        if (str == null || StringsKt.isBlank(str) || geofenceTransitionType == null) {
            return Unit.INSTANCE;
        }
        ((u0) braze.getUdm$android_sdk_base_release()).x.postGeofenceReport(str, geofenceTransitionType);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String reenqueueInAppMessage$lambda$198(InAppMessageEvent inAppMessageEvent) {
        return "Error reenqueueing In-App Message from event " + inAppMessageEvent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit reenqueueInAppMessage$lambda$199(Braze braze, InAppMessageEvent inAppMessageEvent) {
        ((u0) braze.getUdm$android_sdk_base_release()).F.b(inAppMessageEvent.getTriggerAction());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String refreshFeatureFlags$lambda$84() {
        return "Failed to refresh feature flags.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit refreshFeatureFlags$lambda$86(Braze braze) {
        if (((u0) braze.getUdm$android_sdk_base_release()).m.G()) {
            ((u0) braze.getUdm$android_sdk_base_release()).z.f();
        } else {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) braze, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda84
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.refreshFeatureFlags$lambda$86$lambda$85();
                }
            }, 6, (Object) null);
            ((u0) braze.getUdm$android_sdk_base_release()).l.b(new com.braze.events.internal.j(), com.braze.events.internal.j.class);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String refreshFeatureFlags$lambda$86$lambda$85() {
        return "Feature flags not enabled. Not refreshing feature flags.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String removeSingleSubscription$lambda$128$lambda$126(Class cls, IEventSubscriber iEventSubscriber, boolean z) {
        return "Did remove the background " + cls + TokenParser.SP + iEventSubscriber + "? " + z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String removeSingleSubscription$lambda$128$lambda$127(Class cls, IEventSubscriber iEventSubscriber, boolean z) {
        return "Did remove the synchronous " + cls + TokenParser.SP + iEventSubscriber + "? " + z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String removeSingleSubscription$lambda$129(Class cls) {
        return "Failed to remove " + cls.getName() + " subscriber.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r2v4, types: [T, com.braze.Braze$$ExternalSyntheticLambda60] */
    /* JADX WARN: Type inference failed for: r2v5, types: [T, com.braze.Braze$$ExternalSyntheticLambda61] */
    public static final Unit requestBannersRefresh$lambda$100(List list, final Braze braze, final IValueCallback iValueCallback) {
        com.braze.managers.h.k.a(list);
        if (((u0) braze.getUdm$android_sdk_base_release()).m.d()) {
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            if (iValueCallback != null) {
                objectRef.element = new IFireOnceEventSubscriber() { // from class: com.braze.Braze$$ExternalSyntheticLambda60
                    @Override // com.braze.events.IEventSubscriber
                    public final void trigger(Object obj) {
                        Braze.requestBannersRefresh$lambda$100$lambda$98$lambda$94(iValueCallback, objectRef, objectRef2, braze, (BannersUpdatedEvent) obj);
                    }
                };
                objectRef2.element = new IFireOnceEventSubscriber() { // from class: com.braze.Braze$$ExternalSyntheticLambda61
                    @Override // com.braze.events.IEventSubscriber
                    public final void trigger(Object obj) {
                        Braze.requestBannersRefresh$lambda$100$lambda$98$lambda$95(iValueCallback, objectRef, objectRef2, braze, (com.braze.events.internal.b) obj);
                    }
                };
                IFireOnceEventSubscriber iFireOnceEventSubscriber = (IFireOnceEventSubscriber) objectRef.element;
                if (iFireOnceEventSubscriber != null) {
                    ((com.braze.events.d) braze.externalIEventMessenger).d(BannersUpdatedEvent.class, iFireOnceEventSubscriber);
                }
                IFireOnceEventSubscriber iFireOnceEventSubscriber2 = (IFireOnceEventSubscriber) objectRef2.element;
                if (iFireOnceEventSubscriber2 != null) {
                    ((com.braze.events.d) braze.externalIEventMessenger).d(com.braze.events.internal.b.class, iFireOnceEventSubscriber2);
                }
            }
            if (!((u0) braze.getUdm$android_sdk_base_release()).A.a(list, false)) {
                ((u0) braze.getUdm$android_sdk_base_release()).l.b(new com.braze.events.internal.b(), com.braze.events.internal.b.class);
                requestBannersRefresh$lambda$100$unsubscribeLocalListeners(objectRef, objectRef2, braze);
                if (iValueCallback != null) {
                    iValueCallback.onError();
                }
            }
        } else {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) braze, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda62
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.requestBannersRefresh$lambda$100$lambda$99();
                }
            }, 6, (Object) null);
            ((u0) braze.getUdm$android_sdk_base_release()).l.b(new com.braze.events.internal.b(), com.braze.events.internal.b.class);
            if (iValueCallback != null) {
                iValueCallback.onError();
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void requestBannersRefresh$lambda$100$lambda$98$lambda$94(IValueCallback iValueCallback, Ref.ObjectRef objectRef, Ref.ObjectRef objectRef2, Braze braze, BannersUpdatedEvent message) {
        Intrinsics.checkNotNullParameter(message, "message");
        requestBannersRefresh$lambda$100$unsubscribeLocalListeners(objectRef, objectRef2, braze);
        iValueCallback.onSuccess(message);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void requestBannersRefresh$lambda$100$lambda$98$lambda$95(IValueCallback iValueCallback, Ref.ObjectRef objectRef, Ref.ObjectRef objectRef2, Braze braze, com.braze.events.internal.b bVar) {
        Intrinsics.checkNotNullParameter(bVar, "<unused var>");
        requestBannersRefresh$lambda$100$unsubscribeLocalListeners(objectRef, objectRef2, braze);
        iValueCallback.onError();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestBannersRefresh$lambda$100$lambda$99() {
        return "Banners not enabled. Not refreshing banners. Make sure you have at least one campaign and relaunch the app.";
    }

    private static final void requestBannersRefresh$lambda$100$unsubscribeLocalListeners(Ref.ObjectRef<IFireOnceEventSubscriber<BannersUpdatedEvent>> objectRef, Ref.ObjectRef<IFireOnceEventSubscriber<com.braze.events.internal.b>> objectRef2, Braze braze) {
        IFireOnceEventSubscriber<BannersUpdatedEvent> iFireOnceEventSubscriber = objectRef.element;
        if (iFireOnceEventSubscriber != null) {
            ((com.braze.events.d) braze.externalIEventMessenger).a(BannersUpdatedEvent.class, (IEventSubscriber) iFireOnceEventSubscriber);
        }
        IFireOnceEventSubscriber<com.braze.events.internal.b> iFireOnceEventSubscriber2 = objectRef2.element;
        if (iFireOnceEventSubscriber2 != null) {
            ((com.braze.events.d) braze.externalIEventMessenger).a(com.braze.events.internal.b.class, (IEventSubscriber) iFireOnceEventSubscriber2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestBannersRefresh$lambda$91() {
        return "Failed to refresh banners.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestContentCardsRefresh$lambda$79() {
        return "Failed to request Content Cards refresh from Braze servers.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit requestContentCardsRefresh$lambda$81(Braze braze) {
        if (((u0) braze.getUdm$android_sdk_base_release()).m.D()) {
            ((u0) braze.getUdm$android_sdk_base_release()).w.a(((u0) braze.getUdm$android_sdk_base_release()).C.c, ((u0) braze.getUdm$android_sdk_base_release()).C.d, 0);
        } else {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) braze, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda104
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.requestContentCardsRefresh$lambda$81$lambda$80();
                }
            }, 7, (Object) null);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestContentCardsRefresh$lambda$81$lambda$80() {
        return "Content Cards is not enabled, skipping API call to refresh";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestContentCardsRefreshFromCache$lambda$82() {
        return "Failed to request Content Cards refresh from the cache.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit requestContentCardsRefreshFromCache$lambda$83(Braze braze) {
        ((com.braze.events.d) braze.externalIEventMessenger).b(((u0) braze.getUdm$android_sdk_base_release()).C.a(true), ContentCardsUpdatedEvent.class);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestFeedRefresh$lambda$77() {
        return "Failed to request refresh of feed.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit requestFeedRefresh$lambda$78(Braze braze) {
        com.braze.managers.m mVar = ((u0) braze.getUdm$android_sdk_base_release()).w;
        com.braze.models.outgoing.j jVar = new com.braze.models.outgoing.j();
        jVar.b = Boolean.TRUE;
        mVar.a(jVar);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestFeedRefreshFromCache$lambda$75() {
        return "Failed to retrieve and publish feed from offline cache.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit requestFeedRefreshFromCache$lambda$76(Braze braze) {
        com.braze.events.e eVar = braze.externalIEventMessenger;
        com.braze.storage.x xVar = ((u0) braze.getUdm$android_sdk_base_release()).B;
        com.braze.events.d dVar = (com.braze.events.d) eVar;
        dVar.b(xVar.a(new JSONArray(xVar.b.getString("cards", HttpUrl.PATH_SEGMENT_ENCODE_SET_URI)), xVar.b.getString("uid", ""), true, xVar.b.getLong("cards_timestamp", -1L)), FeedUpdatedEvent.class);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestGeofenceRefresh$lambda$173() {
        return "Failed to request geofence refresh.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit requestGeofenceRefresh$lambda$175(IBrazeLocation iBrazeLocation, Braze braze) {
        if (iBrazeLocation == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) braze, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda107
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.requestGeofenceRefresh$lambda$175$lambda$174();
                }
            }, 7, (Object) null);
            return Unit.INSTANCE;
        }
        ((u0) braze.getUdm$android_sdk_base_release()).x.requestGeofenceRefresh(iBrazeLocation);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestGeofenceRefresh$lambda$175$lambda$174() {
        return "Cannot request Geofence refresh with null location.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestGeofenceRefresh$lambda$176(boolean z) {
        return "Failed to request geofence refresh with rate limit ignore: " + z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit requestGeofenceRefresh$lambda$177(Braze braze, boolean z) {
        ((u0) braze.getUdm$android_sdk_base_release()).x.requestGeofenceRefresh(z);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestGeofences$lambda$158() {
        return "Failed to request geofence refresh.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit requestGeofences$lambda$161(final double d, final double d2, Braze braze) {
        if (!ValidationUtils.isValidLocation(d, d2)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) braze, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda113
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.requestGeofences$lambda$161$lambda$159(d, d2);
                }
            }, 6, (Object) null);
            return Unit.INSTANCE;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) braze, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda114
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.requestGeofences$lambda$161$lambda$160(d, d2);
            }
        }, 6, (Object) null);
        ((u0) braze.getUdm$android_sdk_base_release()).x.requestGeofenceRefresh(new BrazeLocation(d, d2, null, null, null, 28, null));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestGeofences$lambda$161$lambda$159(double d, double d2) {
        return "Location provided is invalid. Not requesting refresh of Braze Geofences. Provided latitude - longitude: " + d + " - " + d2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestGeofences$lambda$161$lambda$160(double d, double d2) {
        return "Manually requesting Geofence refresh of with provided latitude - longitude: " + d + " - " + d2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestGeofencesInitialization$lambda$184() {
        return "Failed to initialize geofences with the geofence manager.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit requestGeofencesInitialization$lambda$185(Braze braze) {
        ((u0) braze.getUdm$android_sdk_base_release()).x.initializeGeofences();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestImmediateDataFlush$lambda$105() {
        return "Failed to request data flush.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit requestImmediateDataFlush$lambda$107(Braze braze) {
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) braze, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda124
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.requestImmediateDataFlush$lambda$107$lambda$106();
            }
        }, 6, (Object) null);
        com.braze.managers.m mVar = ((u0) braze.getUdm$android_sdk_base_release()).w;
        mVar.getClass();
        mVar.a(new com.braze.models.outgoing.j());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestImmediateDataFlush$lambda$107$lambda$106() {
        return "requestImmediateDataFlush() called";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestLocationInitialization$lambda$162() {
        return "Location permissions were granted. Requesting geofence and location initialization.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestSingleLocationUpdate$lambda$186() {
        return "Failed to request single location update";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit requestSingleLocationUpdate$lambda$187(Braze braze) {
        ((u0) braze.getUdm$android_sdk_base_release()).y.g();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String retryInAppMessage$lambda$196(InAppMessageEvent inAppMessageEvent) {
        return "Error retrying In-App Message from event " + inAppMessageEvent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit retryInAppMessage$lambda$197(Braze braze, InAppMessageEvent inAppMessageEvent) {
        ((u0) braze.getUdm$android_sdk_base_release()).F.a(inAppMessageEvent.getTriggerEvent(), inAppMessageEvent.getTriggerAction());
        return Unit.INSTANCE;
    }

    public static /* synthetic */ void run$android_sdk_base_release$default(Braze braze, Function0 function0, boolean z, boolean z2, Function0 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        if ((i & 4) != 0) {
            z2 = true;
        }
        braze.run$android_sdk_base_release(function0, z, z2, function1);
    }

    public static /* synthetic */ Object runForResult$android_sdk_base_release$default(Braze braze, Object obj, Function0 function0, boolean z, boolean z2, Function2 function2, int i, Object obj2) {
        return braze.runForResult$android_sdk_base_release(obj, function0, (i & 4) != 0 ? true : z, (i & 8) != 0 ? true : z2, function2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String schedulePushDelivery$lambda$202() {
        return "Error scheduling push delivery";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit schedulePushDelivery$lambda$203(Braze braze, long j) {
        ((u0) braze.getUdm$android_sdk_base_release()).w.a(j);
        return Unit.INSTANCE;
    }

    public static final void setCustomBrazeNotificationFactory(IBrazeNotificationFactory iBrazeNotificationFactory) {
        INSTANCE.setCustomBrazeNotificationFactory(iBrazeNotificationFactory);
    }

    @JvmStatic
    public static final void setEndpointProvider(IBrazeEndpointProvider iBrazeEndpointProvider) {
        INSTANCE.setEndpointProvider(iBrazeEndpointProvider);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setGoogleAdvertisingId$lambda$163(String str, boolean z) {
        return "Failed to set Google Advertising ID data on device. Google Advertising ID: " + str + " and limit-ad-tracking: " + z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setGoogleAdvertisingId$lambda$166(final String str, Braze braze, final boolean z) {
        if (StringsKt.isBlank(str)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) braze, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda14
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.setGoogleAdvertisingId$lambda$166$lambda$164();
                }
            }, 6, (Object) null);
            return Unit.INSTANCE;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) braze, BrazeLogger.Priority.D, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda15
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.setGoogleAdvertisingId$lambda$166$lambda$165(str, z);
            }
        }, 6, (Object) null);
        ((com.braze.managers.t) braze.getDeviceDataProvider()).b(str);
        ((com.braze.managers.t) braze.getDeviceDataProvider()).a(z);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setGoogleAdvertisingId$lambda$166$lambda$164() {
        return "Google Advertising ID cannot be null or blank";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setGoogleAdvertisingId$lambda$166$lambda$165(String str, boolean z) {
        return "Setting Google Advertising ID: " + str + " and limit-ad-tracking: " + z;
    }

    public static final void setOutboundNetworkRequestsOffline(boolean z) {
        INSTANCE.setOutboundNetworkRequestsOffline(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setSdkAuthenticationSignature$lambda$167(String str) {
        return j.a("Failed to set SDK authentication signature on device.\n", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setSdkAuthenticationSignature$lambda$170(Braze braze, final String str) {
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeLogger.brazelog$default(brazeLogger, (Object) braze, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda118
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.setSdkAuthenticationSignature$lambda$170$lambda$168(str);
            }
        }, 6, (Object) null);
        if (StringsKt.isBlank(str)) {
            BrazeLogger.brazelog$default(brazeLogger, (Object) braze, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda119
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.setSdkAuthenticationSignature$lambda$170$lambda$169();
                }
            }, 6, (Object) null);
            return Unit.INSTANCE;
        }
        ((u0) braze.getUdm$android_sdk_base_release()).t.b(str);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setSdkAuthenticationSignature$lambda$170$lambda$168(String str) {
        return j.a("Got new sdk auth signature ", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setSdkAuthenticationSignature$lambda$170$lambda$169() {
        return "SDK authentication signature cannot be null or blank";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setSyncPolicyOfflineStatus(final boolean isOffline) {
        run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda151
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.setSyncPolicyOfflineStatus$lambda$209(isOffline);
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda153
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.setSyncPolicyOfflineStatus$lambda$211(this.f$0, isOffline);
            }
        }, 6, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setSyncPolicyOfflineStatus$lambda$209(boolean z) {
        return "Failed to set sync policy offline to " + z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setSyncPolicyOfflineStatus$lambda$211(Braze braze, final boolean z) {
        ((u0) braze.getUdm$android_sdk_base_release()).w.getClass();
        com.braze.dispatch.f fVar = ((u0) braze.getUdm$android_sdk_base_release()).p;
        synchronized (fVar) {
            fVar.l = z;
            fVar.b();
            if (z) {
                fVar.f();
            } else {
                fVar.c();
            }
        }
        if (braze.imageLoader != null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) braze, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda110
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.setSyncPolicyOfflineStatus$lambda$211$lambda$210(z);
                }
            }, 7, (Object) null);
            braze.getImageLoader().setOffline(z);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setSyncPolicyOfflineStatus$lambda$211$lambda$210(boolean z) {
        return "Setting the image loader deny network downloads to " + z;
    }

    private final void setUserSpecificMemberVariablesAndStartDispatch(u0 dependencyProvider) {
        setUdm$android_sdk_base_release(dependencyProvider);
        com.braze.coroutine.f fVar = com.braze.coroutine.f.a;
        com.braze.coroutine.f.b = ((u0) getUdm$android_sdk_base_release()).l;
        com.braze.storage.h0 h0VarA = ((u0) getUdm$android_sdk_base_release()).a();
        com.braze.managers.m mVar = ((u0) getUdm$android_sdk_base_release()).w;
        com.braze.configuration.e eVar = this.offlineUserStorageProvider;
        BrazeUser brazeUser = null;
        if (eVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("offlineUserStorageProvider");
            eVar = null;
        }
        this.brazeUser = new BrazeUser(h0VarA, mVar, eVar.a(), ((u0) getUdm$android_sdk_base_release()).y, ((u0) getUdm$android_sdk_base_release()).m);
        ((u0) getUdm$android_sdk_base_release()).o.a(((u0) getUdm$android_sdk_base_release()).l);
        ((u0) getUdm$android_sdk_base_release()).l.a();
        ((u0) getUdm$android_sdk_base_release()).r.a(((u0) getUdm$android_sdk_base_release()).l);
        ((u0) getUdm$android_sdk_base_release()).E.g();
        com.braze.events.e eVar2 = this.externalIEventMessenger;
        BrazeUser brazeUser2 = this.brazeUser;
        if (brazeUser2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("brazeUser");
            brazeUser2 = null;
        }
        ((com.braze.events.d) eVar2).b(new BrazeUserChangeEvent(brazeUser2.getUserId()), BrazeUserChangeEvent.class);
        com.braze.events.d dVar = ((u0) getUdm$android_sdk_base_release()).l;
        BrazeUser brazeUser3 = this.brazeUser;
        if (brazeUser3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("brazeUser");
        } else {
            brazeUser = brazeUser3;
        }
        dVar.b(new BrazeUserChangeEvent(brazeUser.getUserId()), BrazeUserChangeEvent.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String subscribeToBannersErrors$lambda$119() {
        return "Failed to add subscriber for Banner errors.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String subscribeToBannersUpdates$lambda$115() {
        return "Failed to send cached banners upon subscribeToBannersUpdates.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit subscribeToBannersUpdates$lambda$117(Braze braze) {
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) braze, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda72
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.subscribeToBannersUpdates$lambda$117$lambda$116();
            }
        }, 7, (Object) null);
        if (((u0) braze.getUdm$android_sdk_base_release()).m.d()) {
            com.braze.managers.h hVar = ((u0) braze.getUdm$android_sdk_base_release()).A;
            if (hVar.f.get()) {
                List list = hVar.e;
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(((Banner) it.next()).deepcopy$android_sdk_base_release());
                }
                ((com.braze.events.d) hVar.b).b(new BannersUpdatedEvent(arrayList), BannersUpdatedEvent.class);
            }
        } else {
            ((u0) braze.getUdm$android_sdk_base_release()).l.b(new BannersUpdatedEvent(CollectionsKt.emptyList()), BannersUpdatedEvent.class);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String subscribeToBannersUpdates$lambda$117$lambda$116() {
        return "Sending cached update upon banners subscription";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String subscribeToBannersUpdates$lambda$118() {
        return "Failed to add subscriber for Banner updates.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String subscribeToContentCardsUpdates$lambda$110() {
        return "Failed to add subscriber for Content Cards updates.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String subscribeToFeatureFlagsUpdates$lambda$111() {
        return "Failed to send cached feature flags upon subscribeToFeatureFlagsUpdates.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit subscribeToFeatureFlagsUpdates$lambda$113(Braze braze) {
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) braze, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda194
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.subscribeToFeatureFlagsUpdates$lambda$113$lambda$112();
            }
        }, 7, (Object) null);
        if (((u0) braze.getUdm$android_sdk_base_release()).m.G()) {
            com.braze.managers.a0 a0Var = ((u0) braze.getUdm$android_sdk_base_release()).z;
            if (a0Var.f.get()) {
                List list = a0Var.e;
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(((FeatureFlag) it.next()).deepcopy$android_sdk_base_release());
                }
                ((com.braze.events.d) a0Var.b).b(new FeatureFlagsUpdatedEvent(arrayList), FeatureFlagsUpdatedEvent.class);
            }
        } else {
            ((u0) braze.getUdm$android_sdk_base_release()).l.b(new com.braze.events.internal.j(), com.braze.events.internal.j.class);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String subscribeToFeatureFlagsUpdates$lambda$113$lambda$112() {
        return "Sending cached update upon feature flag subscription";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String subscribeToFeatureFlagsUpdates$lambda$114() {
        return "Failed to add subscriber for Feature Flags updates.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String subscribeToFeedUpdates$lambda$120() {
        return "Failed to add subscriber for feed updates.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String subscribeToNetworkFailures$lambda$122() {
        return "Failed to add subscriber for network failures.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String subscribeToNewInAppMessages$lambda$108() {
        return "Failed to add subscriber to new in-app messages.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String subscribeToNoMatchingTriggerForEvent$lambda$109() {
        return "Failed to add subscriber to no matching trigger events.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String subscribeToPushNotificationEvents$lambda$124() {
        return "Failed to add subscriber for push notification updates.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String subscribeToSdkAuthenticationFailures$lambda$123() {
        return "Failed to add subscriber for SDK authentication failures.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String subscribeToSessionUpdates$lambda$121() {
        return "Failed to add subscriber for session updates.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String validateAndStorePushId$lambda$208() {
        return "Failed to validate and store push identifier";
    }

    private final void verifyProperSdkSetup() {
        boolean z = true;
        for (final String str : NECESSARY_BRAZE_SDK_PERMISSIONS) {
            if (!PermissionUtils.hasPermission(this.applicationContext, str)) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda162
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Braze.verifyProperSdkSetup$lambda$214(str);
                    }
                }, 6, (Object) null);
                z = false;
            }
        }
        if (StringsKt.isBlank(getConfigurationProvider$android_sdk_base_release().getBrazeApiKey().a)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda164
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.verifyProperSdkSetup$lambda$215();
                }
            }, 6, (Object) null);
            z = false;
        }
        if (z) {
            return;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda165
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.verifyProperSdkSetup$lambda$216();
            }
        }, 6, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String verifyProperSdkSetup$lambda$214(String str) {
        return a.a("The Braze SDK requires the permission ", str, ". Check your AndroidManifest.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String verifyProperSdkSetup$lambda$215() {
        return "The Braze SDK requires a non-empty API key. Check your braze.xml or BrazeConfig.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String verifyProperSdkSetup$lambda$216() {
        return "The Braze SDK is not integrated correctly. Please visit https://www.braze.com/docs/developer_guide/platform_integration_guides/android/initial_sdk_setup/android_sdk_integration/";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String waitForUserDependencyThread$lambda$219() {
        return "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String waitForUserDependencyThread$lambda$220() {
        return "Caught exception while waiting for previous tasks in serial work queue to finish.";
    }

    @JvmStatic
    public static final void wipeData(Context context) {
        INSTANCE.wipeData(context);
    }

    public final /* synthetic */ void addSerializedCardJsonToStorage$android_sdk_base_release(final String serializedCardJson, final String userId) {
        Intrinsics.checkNotNullParameter(serializedCardJson, "serializedCardJson");
        run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda190
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.addSerializedCardJsonToStorage$lambda$178(userId, serializedCardJson);
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda191
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.addSerializedCardJsonToStorage$lambda$180(serializedCardJson, this, userId);
            }
        }, 6, null);
    }

    @Override // com.braze.IBraze
    public <T> void addSingleSynchronousSubscription(IEventSubscriber<T> subscriber, final Class<T> eventClass) {
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        Intrinsics.checkNotNullParameter(eventClass, "eventClass");
        try {
            ((com.braze.events.d) this.externalIEventMessenger).c((Class) eventClass, (IEventSubscriber) subscriber);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda192
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.addSingleSynchronousSubscription$lambda$125(eventClass);
                }
            }, 4, (Object) null);
            publishError(e);
        }
    }

    public final /* synthetic */ void applyPendingRuntimeConfiguration$android_sdk_base_release() {
        ReentrantLock reentrantLock = brazeClassLock;
        reentrantLock.lock();
        try {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda159
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.applyPendingRuntimeConfiguration$lambda$195$lambda$192();
                }
            }, 7, (Object) null);
            RuntimeAppConfigurationProvider runtimeAppConfigurationProvider = new RuntimeAppConfigurationProvider(this.applicationContext);
            for (final BrazeConfig brazeConfig : pendingConfigurations) {
                if (Intrinsics.areEqual(brazeConfig, clearConfigSentinel)) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda160
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return Braze.applyPendingRuntimeConfiguration$lambda$195$lambda$193();
                        }
                    }, 6, (Object) null);
                    runtimeAppConfigurationProvider.clearAllConfigurationValues();
                } else {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda161
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return Braze.applyPendingRuntimeConfiguration$lambda$195$lambda$194(brazeConfig);
                        }
                    }, 6, (Object) null);
                    runtimeAppConfigurationProvider.setConfiguration(brazeConfig);
                }
            }
            pendingConfigurations.clear();
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean areCachedContentCardsStale() {
        ContentCardsUpdatedEvent cachedContentCardsUpdatedEvent = getCachedContentCardsUpdatedEvent();
        if (cachedContentCardsUpdatedEvent != null) {
            return cachedContentCardsUpdatedEvent.isTimestampOlderThan(60L);
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda136
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.areCachedContentCardsStale$lambda$145();
            }
        }, 6, (Object) null);
        return false;
    }

    @Override // com.braze.IBraze
    public void changeUser(String userId) {
        changeUser(userId, null);
    }

    @Override // com.braze.IBraze
    public void closeSession(final Activity activity) {
        run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda154
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.closeSession$lambda$41();
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda155
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.closeSession$lambda$43(activity, this);
            }
        }, 6, null);
    }

    @Override // com.braze.IBraze
    public Card deserializeContentCard(final String contentCardString) {
        if (contentCardString == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda134
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.deserializeContentCard$lambda$146();
                }
            }, 6, (Object) null);
            return null;
        }
        try {
            return deserializeContentCard(new JSONObject(contentCardString));
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda135
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.deserializeContentCard$lambda$147(contentCardString);
                }
            }, 4, (Object) null);
            publishError(e);
            return null;
        }
    }

    @Override // com.braze.IBraze
    public IInAppMessage deserializeInAppMessageString(final String inAppMessageString) {
        return (IInAppMessage) runForResult$android_sdk_base_release$default(this, null, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda112
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.deserializeInAppMessageString$lambda$157(inAppMessageString);
            }
        }, false, false, new g(inAppMessageString, this, null), 12, null);
    }

    @Override // com.braze.IBraze
    public List<FeatureFlag> getAllFeatureFlags() {
        return (List) runForResult$android_sdk_base_release$default(this, CollectionsKt.emptyList(), new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda88
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.getAllFeatureFlags$lambda$87();
            }
        }, false, false, new i(this, null), 12, null);
    }

    @Override // com.braze.IBraze
    public Banner getBanner(final String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return (Banner) runForResult$android_sdk_base_release$default(this, null, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda109
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.getBanner$lambda$101(id);
            }
        }, false, false, new k(this, id, null), 12, null);
    }

    @Override // com.braze.IBraze
    public List<Card> getCachedContentCards() {
        ContentCardsUpdatedEvent cachedContentCardsUpdatedEvent = getCachedContentCardsUpdatedEvent();
        if (cachedContentCardsUpdatedEvent != null) {
            return cachedContentCardsUpdatedEvent.getAllCards();
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda87
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.getCachedContentCards$lambda$144();
            }
        }, 6, (Object) null);
        return null;
    }

    public final BrazeConfigurationProvider getConfigurationProvider$android_sdk_base_release() {
        BrazeConfigurationProvider brazeConfigurationProvider = this.configurationProvider;
        if (brazeConfigurationProvider != null) {
            return brazeConfigurationProvider;
        }
        Intrinsics.throwUninitializedPropertyAccessException("configurationProvider");
        return null;
    }

    public final BrazeConfigurationProvider getConfigurationProviderSafe$android_sdk_base_release(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (this.configurationProvider != null) {
            return getConfigurationProvider$android_sdk_base_release();
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda22
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.getConfigurationProviderSafe$lambda$221();
            }
        }, 7, (Object) null);
        return new BrazeConfigurationProvider(context);
    }

    @Override // com.braze.IBraze
    public int getContentCardCount() {
        ContentCardsUpdatedEvent cachedContentCardsUpdatedEvent = getCachedContentCardsUpdatedEvent();
        if (cachedContentCardsUpdatedEvent != null) {
            return cachedContentCardsUpdatedEvent.getCardCount();
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda168
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.getContentCardCount$lambda$141();
            }
        }, 6, (Object) null);
        return -1;
    }

    @Override // com.braze.IBraze
    public int getContentCardUnviewedCount() {
        ContentCardsUpdatedEvent cachedContentCardsUpdatedEvent = getCachedContentCardsUpdatedEvent();
        if (cachedContentCardsUpdatedEvent != null) {
            return cachedContentCardsUpdatedEvent.getUnviewedCardCount();
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda92
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.getContentCardUnviewedCount$lambda$142();
            }
        }, 6, (Object) null);
        return -1;
    }

    @Override // com.braze.IBraze
    public long getContentCardsLastUpdatedInSecondsFromEpoch() {
        ContentCardsUpdatedEvent cachedContentCardsUpdatedEvent = getCachedContentCardsUpdatedEvent();
        if (cachedContentCardsUpdatedEvent != null) {
            return cachedContentCardsUpdatedEvent.getTimestampSeconds();
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda43
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.getContentCardsLastUpdatedInSecondsFromEpoch$lambda$143();
            }
        }, 6, (Object) null);
        return -1L;
    }

    @Override // com.braze.IBraze
    public BrazeUser getCurrentUser() {
        return (BrazeUser) runForResult$android_sdk_base_release(null, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda163
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze._get_currentUser_$lambda$30();
            }
        }, false, true, new e(this, null));
    }

    @Override // com.braze.IBraze
    public String getDeviceId() {
        return (String) runForResult$android_sdk_base_release("", new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda133
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze._get_deviceId_$lambda$29();
            }
        }, false, false, new h(this, null));
    }

    @Override // com.braze.IBraze
    public void getDeviceIdAsync(IValueCallback<String> completionCallback) {
        Intrinsics.checkNotNullParameter(completionCallback, "completionCallback");
        try {
            BuildersKt__Builders_commonKt.launch$default(com.braze.coroutine.f.a, null, null, new o(completionCallback, this, null), 3, null);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda115
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.getDeviceIdAsync$lambda$140();
                }
            }, 4, (Object) null);
            completionCallback.onError();
            publishError(e);
        }
    }

    public final com.braze.managers.e0 getDeviceIdProvider$android_sdk_base_release() {
        com.braze.managers.e0 e0Var = this.deviceIdProvider;
        if (e0Var != null) {
            return e0Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("deviceIdProvider");
        return null;
    }

    /* JADX INFO: renamed from: getExternalIEventMessenger$android_sdk_base_release, reason: from getter */
    public final com.braze.events.e getExternalIEventMessenger() {
        return this.externalIEventMessenger;
    }

    @Override // com.braze.IBraze
    public FeatureFlag getFeatureFlag(final String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return (FeatureFlag) runForResult$android_sdk_base_release$default(this, null, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda41
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.getFeatureFlag$lambda$88(id);
            }
        }, false, false, new p(this, id, null), 12, null);
    }

    @Override // com.braze.IBraze
    public IBrazeImageLoader getImageLoader() {
        IBrazeImageLoader iBrazeImageLoader = this.imageLoader;
        if (iBrazeImageLoader != null) {
            return iBrazeImageLoader;
        }
        Intrinsics.throwUninitializedPropertyAccessException("imageLoader");
        return null;
    }

    public final com.braze.managers.i0 getPushDeliveryManager$android_sdk_base_release() {
        com.braze.managers.i0 i0Var = this.pushDeliveryManager;
        if (i0Var != null) {
            return i0Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("pushDeliveryManager");
        return null;
    }

    @Override // com.braze.IBraze
    public String getRegisteredPushToken() {
        return (String) runForResult$android_sdk_base_release$default(this, null, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda91
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze._get_registeredPushToken_$lambda$31();
            }
        }, false, false, new s(this, null), 12, null);
    }

    public final com.braze.managers.g0 getRegistrationDataProvider$android_sdk_base_release() {
        com.braze.managers.g0 g0Var = this.registrationDataProvider;
        if (g0Var != null) {
            return g0Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("registrationDataProvider");
        return null;
    }

    public final com.braze.managers.h0 getUdm$android_sdk_base_release() {
        com.braze.managers.h0 h0Var = this.udm;
        if (h0Var != null) {
            return h0Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("udm");
        return null;
    }

    public final /* synthetic */ void handleInAppMessageTestPush$android_sdk_base_release(final Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda145
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.handleInAppMessageTestPush$lambda$188();
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda146
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.handleInAppMessageTestPush$lambda$189(intent, this);
            }
        }, 6, null);
    }

    public final /* synthetic */ void handleInternalBannerRefresh$android_sdk_base_release() {
        run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda75
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.handleInternalBannerRefresh$lambda$190();
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda76
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.handleInternalBannerRefresh$lambda$191(this.f$0);
            }
        }, 6, null);
    }

    /* JADX INFO: renamed from: isApiKeyPresent$android_sdk_base_release, reason: from getter */
    public final Boolean getIsApiKeyPresent() {
        return this.isApiKeyPresent;
    }

    @Override // com.braze.IBraze
    public void logBannerClick(final String placementId, final String buttonId) {
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda70
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.logBannerClick$lambda$103(placementId);
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda71
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.logBannerClick$lambda$104(this.f$0, placementId, buttonId);
            }
        }, 6, null);
    }

    @Override // com.braze.IBraze
    public boolean logBannerImpression(final String placementId) {
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        return ((Boolean) runForResult$android_sdk_base_release$default(this, Boolean.FALSE, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda97
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.logBannerImpression$lambda$102(placementId);
            }
        }, false, false, new q(this, placementId, null), 12, null)).booleanValue();
    }

    @Override // com.braze.IBraze
    public void logCustomEvent(String eventName) {
        logCustomEvent(eventName, null);
    }

    @Override // com.braze.IBraze
    public void logFeatureFlagImpression(final String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda206
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.logFeatureFlagImpression$lambda$89();
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.logFeatureFlagImpression$lambda$90(this.f$0, id);
            }
        }, 6, null);
    }

    @Override // com.braze.IBraze
    @Deprecated(message = "Please call {@link Card#logClick()} instead to log a click.", replaceWith = @ReplaceWith(expression = "Card.logClick()", imports = {}))
    public void logFeedCardClick(final String cardId) {
        run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda65
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.logFeedCardClick$lambda$153(cardId);
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda67
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.logFeedCardClick$lambda$156(cardId, this);
            }
        }, 6, null);
    }

    @Override // com.braze.IBraze
    @Deprecated(message = "Please call {@link Card#logImpression()} instead to log an impression.", replaceWith = @ReplaceWith(expression = "Card.logImpression", imports = {}))
    public void logFeedCardImpression(final String cardId) {
        run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda156
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.logFeedCardImpression$lambda$149(cardId);
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda157
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.logFeedCardImpression$lambda$152(cardId, this);
            }
        }, 6, null);
    }

    @Override // com.braze.IBraze
    public void logFeedDisplayed() {
        run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda148
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.logFeedDisplayed$lambda$72();
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda149
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.logFeedDisplayed$lambda$74(this.f$0);
            }
        }, 6, null);
    }

    public final /* synthetic */ void logLocationRecordedEventFromLocationUpdate$android_sdk_base_release(final IBrazeLocation location) {
        Intrinsics.checkNotNullParameter(location, "location");
        run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda120
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.logLocationRecordedEventFromLocationUpdate$lambda$181();
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda121
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.logLocationRecordedEventFromLocationUpdate$lambda$183(location, this);
            }
        }, 6, null);
    }

    @Override // com.braze.IBraze
    public void logPurchase(String productId, String currencyCode, BigDecimal price) {
        logPurchase(productId, currencyCode, price, 1);
    }

    public final /* synthetic */ void logPushDelivery$android_sdk_base_release(final String campaignId, final long timeInMs) {
        Intrinsics.checkNotNullParameter(campaignId, "campaignId");
        run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda207
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.logPushDelivery$lambda$200(campaignId);
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.logPushDelivery$lambda$201(this.f$0, campaignId, timeInMs);
            }
        }, 6, null);
    }

    public final /* synthetic */ void logPushMaxCampaign$android_sdk_base_release(final String campaign) {
        Intrinsics.checkNotNullParameter(campaign, "campaign");
        run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda78
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.logPushMaxCampaign$lambda$206();
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda79
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.logPushMaxCampaign$lambda$207(this.f$0, campaign);
            }
        }, 6, null);
    }

    @Override // com.braze.IBraze
    public void logPushNotificationActionClicked(final String campaignId, final String actionId, final String actionType) {
        run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda63
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.logPushNotificationActionClicked$lambda$63();
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda64
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.logPushNotificationActionClicked$lambda$67(campaignId, this, actionId, actionType);
            }
        }, 6, null);
    }

    @Override // com.braze.IBraze
    public void logPushNotificationOpened(final String campaignId) {
        run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda127
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.logPushNotificationOpened$lambda$55(campaignId);
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda128
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.logPushNotificationOpened$lambda$57(campaignId, this);
            }
        }, 6, null);
    }

    @Override // com.braze.IBraze
    public void logPushStoryPageClicked(final String campaignId, final String pageId) {
        run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda180
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.logPushStoryPageClicked$lambda$68(pageId, campaignId);
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda181
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.logPushStoryPageClicked$lambda$71(campaignId, pageId, this);
            }
        }, 6, null);
    }

    @Override // com.braze.IBraze
    public void openSession(final Activity activity) {
        run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda166
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.openSession$lambda$38();
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda167
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.openSession$lambda$40(activity, this);
            }
        }, 6, null);
    }

    public final /* synthetic */ void performPushDeliveryFlush$android_sdk_base_release() {
        run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda89
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.performPushDeliveryFlush$lambda$204();
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda90
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.performPushDeliveryFlush$lambda$205(this.f$0);
            }
        }, 6, null);
    }

    public final /* synthetic */ void publishBrazePushAction$android_sdk_base_release(BrazePushEventType pushActionType, BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(pushActionType, "pushActionType");
        Intrinsics.checkNotNullParameter(payload, "payload");
        ((com.braze.events.d) this.externalIEventMessenger).b(new BrazePushEvent(pushActionType, payload), BrazePushEvent.class);
    }

    public final /* synthetic */ void recordGeofenceTransition$android_sdk_base_release(final String geofenceId, final GeofenceTransitionType transitionType) {
        run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda116
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.recordGeofenceTransition$lambda$171();
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda117
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.recordGeofenceTransition$lambda$172(geofenceId, transitionType, this);
            }
        }, 6, null);
    }

    public final void reenqueueInAppMessage$android_sdk_base_release(final InAppMessageEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda48
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.reenqueueInAppMessage$lambda$198(event);
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda49
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.reenqueueInAppMessage$lambda$199(this.f$0, event);
            }
        }, 6, null);
    }

    @Override // com.braze.IBraze
    public void refreshFeatureFlags() {
        run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda93
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.refreshFeatureFlags$lambda$84();
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda94
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.refreshFeatureFlags$lambda$86(this.f$0);
            }
        }, 6, null);
    }

    @Override // com.braze.IBraze
    public <T> void removeSingleSubscription(final IEventSubscriber<T> subscriber, final Class<T> eventClass) {
        Intrinsics.checkNotNullParameter(eventClass, "eventClass");
        if (subscriber != null) {
            try {
                final boolean zA = ((com.braze.events.d) this.externalIEventMessenger).a((Class) eventClass, (IEventSubscriber) subscriber);
                BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
                BrazeLogger.Priority priority = BrazeLogger.Priority.V;
                BrazeLogger.brazelog$default(brazeLogger, (Object) this, priority, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda187
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Braze.removeSingleSubscription$lambda$128$lambda$126(eventClass, subscriber, zA);
                    }
                }, 6, (Object) null);
                final boolean zB = ((com.braze.events.d) this.externalIEventMessenger).b((Class) eventClass, (IEventSubscriber) subscriber);
                BrazeLogger.brazelog$default(brazeLogger, (Object) this, priority, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda188
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Braze.removeSingleSubscription$lambda$128$lambda$127(eventClass, subscriber, zB);
                    }
                }, 6, (Object) null);
            } catch (Exception e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda189
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Braze.removeSingleSubscription$lambda$129(eventClass);
                    }
                }, 4, (Object) null);
                publishError(e);
            }
        }
    }

    @Override // com.braze.IBraze
    public void requestBannersRefresh(List<String> ids) {
        Intrinsics.checkNotNullParameter(ids, "ids");
        requestBannersRefresh(ids, null);
    }

    @Override // com.braze.IBraze
    @Deprecated(message = "Please call {@link IBraze#requestContentCardsRefresh()} or {@link IBraze#requestContentCardsRefreshFromCache()} instead to refresh Content Cards", replaceWith = @ReplaceWith(expression = "IBraze.requestContentCardsRefresh", imports = {}))
    public void requestContentCardsRefresh(boolean fromCache) {
        if (fromCache) {
            requestContentCardsRefreshFromCache();
        } else {
            requestContentCardsRefresh();
        }
    }

    @Override // com.braze.IBraze
    public void requestContentCardsRefreshFromCache() {
        run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda73
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.requestContentCardsRefreshFromCache$lambda$82();
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda74
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.requestContentCardsRefreshFromCache$lambda$83(this.f$0);
            }
        }, 6, null);
    }

    @Override // com.braze.IBraze
    public void requestFeedRefresh() {
        run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda195
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.requestFeedRefresh$lambda$77();
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda197
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.requestFeedRefresh$lambda$78(this.f$0);
            }
        }, 6, null);
    }

    @Override // com.braze.IBraze
    public void requestFeedRefreshFromCache() {
        run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda129
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.requestFeedRefreshFromCache$lambda$75();
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda131
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.requestFeedRefreshFromCache$lambda$76(this.f$0);
            }
        }, 6, null);
    }

    public final /* synthetic */ void requestGeofenceRefresh$android_sdk_base_release(final IBrazeLocation location) {
        run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.requestGeofenceRefresh$lambda$173();
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.requestGeofenceRefresh$lambda$175(location, this);
            }
        }, 6, null);
    }

    @Override // com.braze.IBraze
    public void requestGeofences(final double latitude, final double longitude) {
        run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.requestGeofences$lambda$158();
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.requestGeofences$lambda$161(latitude, longitude, this);
            }
        }, 6, null);
    }

    public final /* synthetic */ void requestGeofencesInitialization$android_sdk_base_release() {
        run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda169
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.requestGeofencesInitialization$lambda$184();
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda170
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.requestGeofencesInitialization$lambda$185(this.f$0);
            }
        }, 6, null);
    }

    @Override // com.braze.IBraze
    public void requestImmediateDataFlush() {
        run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda82
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.requestImmediateDataFlush$lambda$105();
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda83
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.requestImmediateDataFlush$lambda$107(this.f$0);
            }
        }, 6, null);
    }

    @Override // com.braze.IBraze
    public void requestLocationInitialization() {
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda158
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.requestLocationInitialization$lambda$162();
            }
        }, 7, (Object) null);
        requestGeofencesInitialization$android_sdk_base_release();
        requestSingleLocationUpdate$android_sdk_base_release();
    }

    public final /* synthetic */ void requestSingleLocationUpdate$android_sdk_base_release() {
        run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda85
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.requestSingleLocationUpdate$lambda$186();
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda86
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.requestSingleLocationUpdate$lambda$187(this.f$0);
            }
        }, 6, null);
    }

    public final /* synthetic */ void retryInAppMessage$android_sdk_base_release(final InAppMessageEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda105
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.retryInAppMessage$lambda$196(event);
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda106
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.retryInAppMessage$lambda$197(this.f$0, event);
            }
        }, 6, null);
    }

    public final /* synthetic */ void run$android_sdk_base_release(Function0 errorLog, boolean earlyReturnIfDisabled, boolean earlyReturnIfUdmUninitialized, Function0 block) {
        Intrinsics.checkNotNullParameter(errorLog, "errorLog");
        Intrinsics.checkNotNullParameter(block, "block");
        try {
            BuildersKt__Builders_commonKt.launch$default(com.braze.coroutine.f.a, null, null, new u(earlyReturnIfDisabled, earlyReturnIfUdmUninitialized, this, block, errorLog, null), 3, null);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, errorLog, 4, (Object) null);
            publishError(e);
        }
    }

    public final <T> T runForResult$android_sdk_base_release(T defaultValueOnException, Function0<String> errorLog, boolean earlyReturnIfDisabled, boolean earlyReturnIfUdmUninitialized, Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(errorLog, "errorLog");
        Intrinsics.checkNotNullParameter(block, "block");
        try {
            return (T) BuildersKt__BuildersKt.runBlocking$default(null, new x(earlyReturnIfDisabled, defaultValueOnException, earlyReturnIfUdmUninitialized, this, block, errorLog, null), 1, null);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, (Function0) errorLog, 4, (Object) null);
            publishError(e);
            return defaultValueOnException;
        }
    }

    public final /* synthetic */ void schedulePushDelivery$android_sdk_base_release(final long timeInMs) {
        run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda95
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.schedulePushDelivery$lambda$202();
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda96
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.schedulePushDelivery$lambda$203(this.f$0, timeInMs);
            }
        }, 6, null);
    }

    public final void setApiKeyPresent$android_sdk_base_release(Boolean bool) {
        this.isApiKeyPresent = bool;
    }

    public final void setConfigurationProvider$android_sdk_base_release(BrazeConfigurationProvider brazeConfigurationProvider) {
        Intrinsics.checkNotNullParameter(brazeConfigurationProvider, "<set-?>");
        this.configurationProvider = brazeConfigurationProvider;
    }

    public final void setDeviceIdProvider$android_sdk_base_release(com.braze.managers.e0 e0Var) {
        Intrinsics.checkNotNullParameter(e0Var, "<set-?>");
        this.deviceIdProvider = e0Var;
    }

    public final void setExternalIEventMessenger$android_sdk_base_release(com.braze.events.e eVar) {
        Intrinsics.checkNotNullParameter(eVar, "<set-?>");
        this.externalIEventMessenger = eVar;
    }

    @Override // com.braze.IBraze
    public void setGoogleAdvertisingId(final String googleAdvertisingId, final boolean isLimitAdTrackingEnabled) {
        Intrinsics.checkNotNullParameter(googleAdvertisingId, "googleAdvertisingId");
        run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda138
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.setGoogleAdvertisingId$lambda$163(googleAdvertisingId, isLimitAdTrackingEnabled);
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda139
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.setGoogleAdvertisingId$lambda$166(googleAdvertisingId, this, isLimitAdTrackingEnabled);
            }
        }, 6, null);
    }

    @Override // com.braze.IBraze
    public void setImageLoader(IBrazeImageLoader iBrazeImageLoader) {
        Intrinsics.checkNotNullParameter(iBrazeImageLoader, "<set-?>");
        this.imageLoader = iBrazeImageLoader;
    }

    public final void setPushDeliveryManager$android_sdk_base_release(com.braze.managers.i0 i0Var) {
        Intrinsics.checkNotNullParameter(i0Var, "<set-?>");
        this.pushDeliveryManager = i0Var;
    }

    @Override // com.braze.IBraze
    public void setRegisteredPushToken(final String str) {
        run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda33
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze._set_registeredPushToken_$lambda$32(str);
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda44
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze._set_registeredPushToken_$lambda$36(this.f$0, str);
            }
        }, 6, null);
    }

    public final void setRegistrationDataProvider$android_sdk_base_release(com.braze.managers.g0 g0Var) {
        Intrinsics.checkNotNullParameter(g0Var, "<set-?>");
        this.registrationDataProvider = g0Var;
    }

    @Override // com.braze.IBraze
    public void setSdkAuthenticationSignature(final String signature) {
        Intrinsics.checkNotNullParameter(signature, "signature");
        run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda182
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.setSdkAuthenticationSignature$lambda$167(signature);
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda183
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.setSdkAuthenticationSignature$lambda$170(this.f$0, signature);
            }
        }, 6, null);
    }

    public final void setUdm$android_sdk_base_release(com.braze.managers.h0 h0Var) {
        Intrinsics.checkNotNullParameter(h0Var, "<set-?>");
        this.udm = h0Var;
    }

    @Override // com.braze.IBraze
    public void subscribeToBannersErrors(IEventSubscriber<com.braze.events.internal.b> subscriber) {
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        try {
            ((com.braze.events.d) this.externalIEventMessenger).d(com.braze.events.internal.b.class, subscriber);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda126
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.subscribeToBannersErrors$lambda$119();
                }
            }, 4, (Object) null);
            publishError(e);
        }
    }

    @Override // com.braze.IBraze
    public void subscribeToBannersUpdates(IEventSubscriber<BannersUpdatedEvent> subscriber) {
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        try {
            ((com.braze.events.d) this.externalIEventMessenger).d(BannersUpdatedEvent.class, subscriber);
            run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda45
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.subscribeToBannersUpdates$lambda$115();
                }
            }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda46
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.subscribeToBannersUpdates$lambda$117(this.f$0);
                }
            }, 6, null);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda47
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.subscribeToBannersUpdates$lambda$118();
                }
            }, 4, (Object) null);
            publishError(e);
        }
    }

    @Override // com.braze.IBraze
    public void subscribeToContentCardsUpdates(IEventSubscriber<ContentCardsUpdatedEvent> subscriber) {
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        try {
            ((com.braze.events.d) this.externalIEventMessenger).d(ContentCardsUpdatedEvent.class, subscriber);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda142
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.subscribeToContentCardsUpdates$lambda$110();
                }
            }, 4, (Object) null);
            publishError(e);
        }
    }

    @Override // com.braze.IBraze
    public void subscribeToFeatureFlagsUpdates(IEventSubscriber<FeatureFlagsUpdatedEvent> subscriber) {
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        try {
            ((com.braze.events.d) this.externalIEventMessenger).d(FeatureFlagsUpdatedEvent.class, subscriber);
            run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda101
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.subscribeToFeatureFlagsUpdates$lambda$111();
                }
            }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda102
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.subscribeToFeatureFlagsUpdates$lambda$113(this.f$0);
                }
            }, 6, null);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda103
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.subscribeToFeatureFlagsUpdates$lambda$114();
                }
            }, 4, (Object) null);
            publishError(e);
        }
    }

    @Override // com.braze.IBraze
    public void subscribeToFeedUpdates(IEventSubscriber<FeedUpdatedEvent> subscriber) {
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        try {
            ((com.braze.events.d) this.externalIEventMessenger).d(FeedUpdatedEvent.class, subscriber);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda10
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.subscribeToFeedUpdates$lambda$120();
                }
            }, 4, (Object) null);
            publishError(e);
        }
    }

    @Override // com.braze.IBraze
    public void subscribeToNetworkFailures(IEventSubscriber<BrazeNetworkFailureEvent> subscriber) {
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        try {
            ((com.braze.events.d) this.externalIEventMessenger).d(BrazeNetworkFailureEvent.class, subscriber);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda99
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.subscribeToNetworkFailures$lambda$122();
                }
            }, 4, (Object) null);
            publishError(e);
        }
    }

    @Override // com.braze.IBraze
    public void subscribeToNewInAppMessages(IEventSubscriber<InAppMessageEvent> subscriber) {
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        try {
            ((com.braze.events.d) this.externalIEventMessenger).d(InAppMessageEvent.class, subscriber);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda196
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.subscribeToNewInAppMessages$lambda$108();
                }
            }, 4, (Object) null);
            publishError(e);
        }
    }

    @Override // com.braze.IBraze
    public void subscribeToNoMatchingTriggerForEvent(IEventSubscriber<NoMatchingTriggerEvent> subscriber) {
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        try {
            ((com.braze.events.d) this.externalIEventMessenger).d(NoMatchingTriggerEvent.class, subscriber);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda147
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.subscribeToNoMatchingTriggerForEvent$lambda$109();
                }
            }, 4, (Object) null);
            publishError(e);
        }
    }

    @Override // com.braze.IBraze
    public void subscribeToPushNotificationEvents(IEventSubscriber<BrazePushEvent> subscriber) {
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        try {
            ((com.braze.events.d) this.externalIEventMessenger).d(BrazePushEvent.class, subscriber);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda68
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.subscribeToPushNotificationEvents$lambda$124();
                }
            }, 4, (Object) null);
            publishError(e);
        }
    }

    @Override // com.braze.IBraze
    public void subscribeToSdkAuthenticationFailures(IEventSubscriber<BrazeSdkAuthenticationErrorEvent> subscriber) {
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        try {
            ((com.braze.events.d) this.externalIEventMessenger).d(BrazeSdkAuthenticationErrorEvent.class, subscriber);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda132
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.subscribeToSdkAuthenticationFailures$lambda$123();
                }
            }, 4, (Object) null);
            publishError(e);
        }
    }

    @Override // com.braze.IBraze
    public void subscribeToSessionUpdates(IEventSubscriber<SessionStateChangedEvent> subscriber) {
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        try {
            ((com.braze.events.d) this.externalIEventMessenger).d(SessionStateChangedEvent.class, subscriber);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda42
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.subscribeToSessionUpdates$lambda$121();
                }
            }, 4, (Object) null);
            publishError(e);
        }
    }

    public final /* synthetic */ boolean validateAndStorePushId$android_sdk_base_release(String pushId) {
        Intrinsics.checkNotNullParameter(pushId, "pushId");
        return ((Boolean) runForResult$android_sdk_base_release$default(this, Boolean.TRUE, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda203
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.validateAndStorePushId$lambda$208();
            }
        }, false, false, new y(this, pushId, null), 12, null)).booleanValue();
    }

    public final /* synthetic */ void waitForUserDependencyThread$android_sdk_base_release() {
        try {
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda199
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.waitForUserDependencyThread$lambda$220();
                }
            }, 4, (Object) null);
        }
    }

    @Override // com.braze.IBraze
    public void changeUser(final String userId, final String sdkAuthSignature) {
        run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda122
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.changeUser$lambda$130(userId);
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda123
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.changeUser$lambda$138(userId, this, sdkAuthSignature);
            }
        }, 6, null);
    }

    @Override // com.braze.IBraze
    public void logCustomEvent(final String eventName, final BrazeProperties properties) {
        final BrazeProperties brazePropertiesClone = properties != null ? properties.clone() : null;
        run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda174
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.logCustomEvent$lambda$44(eventName);
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda185
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.logCustomEvent$lambda$50(this.f$0, eventName, brazePropertiesClone, properties);
            }
        }, 6, null);
    }

    @Override // com.braze.IBraze
    public void logPurchase(String productId, String currencyCode, BigDecimal price, BrazeProperties properties) {
        logPurchase(productId, currencyCode, price, 1, properties);
    }

    @Override // com.braze.IBraze
    public void logPushNotificationOpened(final Intent intent) {
        run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda184
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.logPushNotificationOpened$lambda$58(intent);
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda186
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.logPushNotificationOpened$lambda$62(intent, this);
            }
        }, 6, null);
    }

    @Override // com.braze.IBraze
    public void requestBannersRefresh(final List<String> ids, final IValueCallback<BannersUpdatedEvent> completionCallback) {
        Intrinsics.checkNotNullParameter(ids, "ids");
        run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda143
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.requestBannersRefresh$lambda$91();
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda144
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.requestBannersRefresh$lambda$100(ids, this, completionCallback);
            }
        }, 6, null);
    }

    public final /* synthetic */ void requestGeofenceRefresh$android_sdk_base_release(final boolean ignoreRateLimit) {
        run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.requestGeofenceRefresh$lambda$176(ignoreRateLimit);
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.requestGeofenceRefresh$lambda$177(this.f$0, ignoreRateLimit);
            }
        }, 6, null);
    }

    @Override // com.braze.IBraze
    public void getCurrentUser(IValueCallback<BrazeUser> completionCallback) {
        Intrinsics.checkNotNullParameter(completionCallback, "completionCallback");
        try {
            BuildersKt__Builders_commonKt.launch$default(com.braze.coroutine.f.a, null, null, new m(completionCallback, this, null), 3, null);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda108
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Braze.getCurrentUser$lambda$139();
                }
            }, 4, (Object) null);
            completionCallback.onError();
            publishError(e);
        }
    }

    @Override // com.braze.IBraze
    public void logPurchase(String productId, String currencyCode, BigDecimal price, int quantity) {
        logPurchase(productId, currencyCode, price, quantity, null);
    }

    @Override // com.braze.IBraze
    public void logPurchase(final String productId, final String currencyCode, final BigDecimal price, final int quantity, BrazeProperties properties) {
        final BrazeProperties brazePropertiesClone = properties != null ? properties.clone() : null;
        run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda98
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.logPurchase$lambda$51(productId);
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda100
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.logPurchase$lambda$54(productId, currencyCode, price, quantity, this, brazePropertiesClone);
            }
        }, 6, null);
    }

    @Override // com.braze.IBraze
    public void requestContentCardsRefresh() {
        run$android_sdk_base_release$default(this, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda58
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.requestContentCardsRefresh$lambda$79();
            }
        }, false, false, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda59
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.requestContentCardsRefresh$lambda$81(this.f$0);
            }
        }, 6, null);
    }

    @Override // com.braze.IBraze
    public Card deserializeContentCard(final JSONObject contentCardJson) {
        return (Card) runForResult$android_sdk_base_release$default(this, null, new Function0() { // from class: com.braze.Braze$$ExternalSyntheticLambda137
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Braze.deserializeContentCard$lambda$148(contentCardJson);
            }
        }, false, false, new f(this, contentCardJson, null), 12, null);
    }
}
