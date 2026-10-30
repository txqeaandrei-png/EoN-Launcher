package com.braze.models.inappmessage;

import android.graphics.Color;
import com.braze.enums.inappmessage.ImageStyle;
import com.braze.enums.inappmessage.TextAlign;
import com.braze.events.internal.f0;
import com.braze.managers.c0;
import com.braze.managers.m;
import com.braze.support.BrazeLogger;
import com.braze.support.n;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IndexedValue;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0010\n\u0002\u0010 \n\u0002\b\u001c\b'\u0018\u0000 E2\u00020\u00012\u00020\u0002:\u0001FB\t\b\u0014¢\u0006\u0004\b\u0003\u0010\u0004B\u0019\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0003\u0010\tBI\b\u0012\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000e\u001a\u00020\f\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0013\u001a\u00020\u0011¢\u0006\u0004\b\u0003\u0010\u0014J\u0017\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001b\u0010\u0004J\u000f\u0010\u001c\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u0004J\u000f\u0010\u001d\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001d\u0010\u001eR\"\u0010\r\u001a\u00020\f8\u0016@\u0016X\u0097\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\"\u0010\u000e\u001a\u00020\f8\u0016@\u0016X\u0097\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u001f\u001a\u0004\b$\u0010!\"\u0004\b%\u0010#R$\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R(\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00150+8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\"\u0010\u0010\u001a\u00020\u000f8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0010\u00102\u001a\u0004\b3\u00104\"\u0004\b5\u00106R$\u00107\u001a\u0004\u0018\u00010\f8\u0016@\u0016X\u0097\u000e¢\u0006\u0012\n\u0004\b7\u00108\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\"\u0010\u0012\u001a\u00020\u00118\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010=\u001a\u0004\b>\u0010?\"\u0004\b@\u0010AR\u0016\u0010B\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010CR\u0018\u0010D\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010&¨\u0006G"}, d2 = {"Lcom/braze/models/inappmessage/InAppMessageImmersiveBase;", "Lcom/braze/models/inappmessage/InAppMessageWithImageBase;", "Lcom/braze/models/inappmessage/IInAppMessageImmersive;", "<init>", "()V", "Lorg/json/JSONObject;", "jsonObject", "Lcom/braze/managers/c0;", "brazeManager", "(Lorg/json/JSONObject;Lcom/braze/managers/c0;)V", "", InAppMessageImmersiveBase.HEADER, "", "headerTextColor", "closeButtonColor", "Lcom/braze/enums/inappmessage/ImageStyle;", "imageStyle", "Lcom/braze/enums/inappmessage/TextAlign;", "headerTextAlign", "messageTextAlign", "(Lorg/json/JSONObject;Lcom/braze/managers/c0;Ljava/lang/String;IILcom/braze/enums/inappmessage/ImageStyle;Lcom/braze/enums/inappmessage/TextAlign;Lcom/braze/enums/inappmessage/TextAlign;)V", "Lcom/braze/models/inappmessage/MessageButton;", "messageButton", "", "logButtonClick", "(Lcom/braze/models/inappmessage/MessageButton;)Z", "", "onAfterClosed", "enableDarkTheme", "forJsonPut", "()Lorg/json/JSONObject;", "I", "getHeaderTextColor", "()I", "setHeaderTextColor", "(I)V", "getCloseButtonColor", "setCloseButtonColor", "Ljava/lang/String;", "getHeader", "()Ljava/lang/String;", "setHeader", "(Ljava/lang/String;)V", "", "messageButtons", "Ljava/util/List;", "getMessageButtons", "()Ljava/util/List;", "setMessageButtons", "(Ljava/util/List;)V", "Lcom/braze/enums/inappmessage/ImageStyle;", "getImageStyle", "()Lcom/braze/enums/inappmessage/ImageStyle;", "setImageStyle", "(Lcom/braze/enums/inappmessage/ImageStyle;)V", "frameColor", "Ljava/lang/Integer;", "getFrameColor", "()Ljava/lang/Integer;", "setFrameColor", "(Ljava/lang/Integer;)V", "Lcom/braze/enums/inappmessage/TextAlign;", "getHeaderTextAlign", "()Lcom/braze/enums/inappmessage/TextAlign;", "setHeaderTextAlign", "(Lcom/braze/enums/inappmessage/TextAlign;)V", "wasButtonClickLogged", "Z", "buttonIdClicked", "Companion", "com/braze/models/inappmessage/f", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class InAppMessageImmersiveBase extends InAppMessageWithImageBase implements IInAppMessageImmersive {
    private static final String BUTTONS = "btns";
    private static final String CLOSE_BUTTON_COLOR = "close_btn_color";
    public static final f Companion = new f();
    private static final String FRAME_COLOR = "frame_color";
    private static final String HEADER = "header";
    private static final String HEADER_TEXT_ALIGN = "text_align_header";
    private static final String HEADER_TEXT_COLOR = "header_text_color";
    private static final String IMAGE_STYLE = "image_style";
    private String buttonIdClicked;
    private int closeButtonColor;
    private Integer frameColor;
    private String header;
    private TextAlign headerTextAlign;
    private int headerTextColor;
    private ImageStyle imageStyle;
    private List<? extends MessageButton> messageButtons;
    private boolean wasButtonClickLogged;

    public InAppMessageImmersiveBase() {
        this.headerTextColor = Color.parseColor("#333333");
        this.closeButtonColor = Color.parseColor("#9B9B9B");
        this.messageButtons = CollectionsKt.emptyList();
        this.imageStyle = ImageStyle.TOP;
        this.headerTextAlign = TextAlign.CENTER;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String enableDarkTheme$lambda$5() {
        return "Cannot apply dark theme with a null themes wrapper";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logButtonClick$lambda$1() {
        return "Trigger id not found (this is expected for test sends). Not logging button click.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logButtonClick$lambda$2() {
        return "Button click already logged for this message. Ignoring.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logButtonClick$lambda$3() {
        return "Cannot log a button click because the BrazeManager is null.";
    }

    @Override // com.braze.models.inappmessage.InAppMessageBase, com.braze.models.inappmessage.IInAppMessageThemeable
    public void enableDarkTheme() {
        super.enableDarkTheme();
        com.braze.models.theme.a inAppMessageDarkThemeWrapper = getInAppMessageDarkThemeWrapper();
        if (inAppMessageDarkThemeWrapper == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.models.inappmessage.InAppMessageImmersiveBase$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return InAppMessageImmersiveBase.enableDarkTheme$lambda$5();
                }
            }, 7, (Object) null);
            return;
        }
        Integer num = inAppMessageDarkThemeWrapper.g;
        if (num != null) {
            setFrameColor(num);
        }
        Integer num2 = inAppMessageDarkThemeWrapper.c;
        if (num2 != null) {
            setCloseButtonColor(num2.intValue());
        }
        Integer num3 = inAppMessageDarkThemeWrapper.f;
        if (num3 != null) {
            setHeaderTextColor(num3.intValue());
        }
        Iterator<MessageButton> it = getMessageButtons().iterator();
        while (it.hasNext()) {
            it.next().enableDarkTheme();
        }
    }

    @Override // com.braze.models.inappmessage.IInAppMessageImmersive
    public int getCloseButtonColor() {
        return this.closeButtonColor;
    }

    @Override // com.braze.models.inappmessage.IInAppMessageImmersive
    public Integer getFrameColor() {
        return this.frameColor;
    }

    @Override // com.braze.models.inappmessage.IInAppMessageImmersive
    public String getHeader() {
        return this.header;
    }

    @Override // com.braze.models.inappmessage.IInAppMessageImmersive
    public TextAlign getHeaderTextAlign() {
        return this.headerTextAlign;
    }

    @Override // com.braze.models.inappmessage.IInAppMessageImmersive
    public int getHeaderTextColor() {
        return this.headerTextColor;
    }

    @Override // com.braze.models.inappmessage.IInAppMessageImmersive
    public ImageStyle getImageStyle() {
        return this.imageStyle;
    }

    @Override // com.braze.models.inappmessage.IInAppMessageImmersive
    public List<MessageButton> getMessageButtons() {
        return this.messageButtons;
    }

    @Override // com.braze.models.inappmessage.IInAppMessageImmersive
    public boolean logButtonClick(MessageButton messageButton) {
        Intrinsics.checkNotNullParameter(messageButton, "messageButton");
        c0 brazeManager = getBrazeManager();
        String triggerId = getTriggerId();
        if (triggerId == null || StringsKt.isBlank(triggerId)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.models.inappmessage.InAppMessageImmersiveBase$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return InAppMessageImmersiveBase.logButtonClick$lambda$1();
                }
            }, 7, (Object) null);
            return false;
        }
        if (this.wasButtonClickLogged) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.models.inappmessage.InAppMessageImmersiveBase$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return InAppMessageImmersiveBase.logButtonClick$lambda$2();
                }
            }, 6, (Object) null);
            return false;
        }
        if (brazeManager == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.models.inappmessage.InAppMessageImmersiveBase$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return InAppMessageImmersiveBase.logButtonClick$lambda$3();
                }
            }, 6, (Object) null);
            return false;
        }
        this.buttonIdClicked = messageButton.getStringId();
        com.braze.models.outgoing.event.a aVar = com.braze.models.outgoing.event.b.g;
        aVar.getClass();
        Intrinsics.checkNotNullParameter(triggerId, "triggerId");
        Intrinsics.checkNotNullParameter(messageButton, "messageButton");
        com.braze.models.i iVarI = aVar.i(triggerId, messageButton.getStringId());
        if (iVarI != null) {
            ((m) brazeManager).a(iVarI);
        }
        this.wasButtonClickLogged = true;
        return true;
    }

    @Override // com.braze.models.inappmessage.InAppMessageBase, com.braze.models.inappmessage.IInAppMessage
    public void onAfterClosed() {
        String triggerId;
        String str;
        super.onAfterClosed();
        c0 brazeManager = getBrazeManager();
        if (!this.wasButtonClickLogged || (triggerId = getTriggerId()) == null || StringsKt.isBlank(triggerId) || (str = this.buttonIdClicked) == null || StringsKt.isBlank(str) || brazeManager == null) {
            return;
        }
        com.braze.triggers.events.d triggerEvent = new com.braze.triggers.events.d(getTriggerId(), this.buttonIdClicked);
        Intrinsics.checkNotNullParameter(triggerEvent, "triggerEvent");
        ((m) brazeManager).d.b(new f0(triggerEvent), f0.class);
    }

    @Override // com.braze.models.inappmessage.IInAppMessageImmersive
    public void setCloseButtonColor(int i) {
        this.closeButtonColor = i;
    }

    @Override // com.braze.models.inappmessage.IInAppMessageImmersive
    public void setFrameColor(Integer num) {
        this.frameColor = num;
    }

    @Override // com.braze.models.inappmessage.IInAppMessageImmersive
    public void setHeader(String str) {
        this.header = str;
    }

    @Override // com.braze.models.inappmessage.IInAppMessageImmersive
    public void setHeaderTextAlign(TextAlign textAlign) {
        Intrinsics.checkNotNullParameter(textAlign, "<set-?>");
        this.headerTextAlign = textAlign;
    }

    @Override // com.braze.models.inappmessage.IInAppMessageImmersive
    public void setHeaderTextColor(int i) {
        this.headerTextColor = i;
    }

    @Override // com.braze.models.inappmessage.IInAppMessageImmersive
    public void setImageStyle(ImageStyle imageStyle) {
        Intrinsics.checkNotNullParameter(imageStyle, "<set-?>");
        this.imageStyle = imageStyle;
    }

    @Override // com.braze.models.inappmessage.IInAppMessageImmersive
    public void setMessageButtons(List<? extends MessageButton> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.messageButtons = list;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.braze.models.inappmessage.InAppMessageWithImageBase, com.braze.models.inappmessage.InAppMessageBase, com.braze.models.IPutIntoJson
    /* JADX INFO: renamed from: forJsonPut */
    public JSONObject getJsonKey() {
        JSONObject jsonObject = getJsonObject();
        if (jsonObject != null) {
            return jsonObject;
        }
        JSONObject jsonKey = super.getJsonKey();
        try {
            jsonKey.putOpt(HEADER, getHeader());
            jsonKey.put(HEADER_TEXT_COLOR, getHeaderTextColor());
            jsonKey.put(CLOSE_BUTTON_COLOR, getCloseButtonColor());
            jsonKey.putOpt(IMAGE_STYLE, getImageStyle().toString());
            jsonKey.putOpt(HEADER_TEXT_ALIGN, getHeaderTextAlign().toString());
            Integer frameColor = getFrameColor();
            if (frameColor != null) {
                jsonKey.put(FRAME_COLOR, frameColor.intValue());
            }
            JSONArray jSONArray = new JSONArray();
            Iterator<MessageButton> it = getMessageButtons().iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next().getJsonKey());
            }
            jsonKey.put(BUTTONS, jSONArray);
        } catch (JSONException unused) {
        }
        return jsonKey;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public InAppMessageImmersiveBase(JSONObject inAppMessageJson, c0 brazeManager) {
        ImageStyle imageStyle;
        TextAlign textAlign;
        TextAlign textAlign2;
        Iterator it;
        JSONObject jSONObjectOptJSONObject;
        String upperCase;
        TextAlign[] textAlignArrValues;
        int length;
        int i;
        Intrinsics.checkNotNullParameter(inAppMessageJson, "jsonObject");
        Intrinsics.checkNotNullParameter(brazeManager, "brazeManager");
        String strOptString = inAppMessageJson.optString(HEADER);
        Intrinsics.checkNotNullExpressionValue(strOptString, "optString(...)");
        int iOptInt = inAppMessageJson.optInt(HEADER_TEXT_COLOR);
        int iOptInt2 = inAppMessageJson.optInt(CLOSE_BUTTON_COLOR);
        ImageStyle imageStyle2 = ImageStyle.TOP;
        try {
            try {
                String string = inAppMessageJson.getString(IMAGE_STYLE);
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                Locale US = Locale.US;
                Intrinsics.checkNotNullExpressionValue(US, "US");
                String upperCase2 = string.toUpperCase(US);
                Intrinsics.checkNotNullExpressionValue(upperCase2, "toUpperCase(...)");
                ImageStyle[] imageStyleArrValues = ImageStyle.values();
                int length2 = imageStyleArrValues.length;
                int i2 = 0;
                while (true) {
                    if (i2 < length2) {
                        imageStyle = imageStyleArrValues[i2];
                        if (Intrinsics.areEqual(imageStyle.name(), upperCase2)) {
                            break;
                        } else {
                            i2++;
                        }
                    } else {
                        throw new NoSuchElementException("Array contains no element matching the predicate.");
                    }
                }
                while (true) {
                    if (i < length) {
                        textAlign2 = textAlignArrValues[i];
                        if (Intrinsics.areEqual(textAlign2.name(), upperCase)) {
                            break;
                        } else {
                            i++;
                        }
                    } else {
                        throw new NoSuchElementException("Array contains no element matching the predicate.");
                    }
                }
            } catch (Exception unused) {
                imageStyle = imageStyle2;
            }
            String string2 = inAppMessageJson.getString(HEADER_TEXT_ALIGN);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            Locale US2 = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US2, "US");
            upperCase = string2.toUpperCase(US2);
            Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
            textAlignArrValues = TextAlign.values();
            length = textAlignArrValues.length;
            i = 0;
        } catch (Exception unused2) {
            textAlign2 = textAlign;
        }
        textAlign = TextAlign.CENTER;
        TextAlign textAlign3 = TextAlign.CENTER;
        try {
            String string3 = inAppMessageJson.getString(InAppMessageBase.MESSAGE_TEXT_ALIGN);
            Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
            Locale US3 = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US3, "US");
            String upperCase3 = string3.toUpperCase(US3);
            Intrinsics.checkNotNullExpressionValue(upperCase3, "toUpperCase(...)");
            TextAlign[] textAlignArrValues2 = TextAlign.values();
            int length3 = textAlignArrValues2.length;
            int i3 = 0;
            while (true) {
                if (i3 < length3) {
                    TextAlign textAlign4 = textAlignArrValues2[i3];
                    if (Intrinsics.areEqual(textAlign4.name(), upperCase3)) {
                        textAlign3 = textAlign4;
                        break;
                    }
                    i3++;
                } else {
                    throw new NoSuchElementException("Array contains no element matching the predicate.");
                }
            }
        } catch (Exception unused3) {
        }
        this(inAppMessageJson, brazeManager, strOptString, iOptInt, iOptInt2, imageStyle, textAlign2, textAlign3);
        JSONArray jSONArrayOptJSONArray = inAppMessageJson.optJSONArray(BUTTONS);
        String str = n.a;
        Intrinsics.checkNotNullParameter(inAppMessageJson, "inAppMessageJson");
        JSONObject jSONObjectOptJSONObject2 = inAppMessageJson.optJSONObject("themes");
        JSONArray jSONArray = (jSONObjectOptJSONObject2 == null || (jSONObjectOptJSONObject = jSONObjectOptJSONObject2.optJSONObject("dark")) == null || (jSONArray = jSONObjectOptJSONObject.optJSONArray(BUTTONS)) == null) ? new JSONArray() : jSONArray;
        ArrayList arrayList = new ArrayList();
        if (jSONArrayOptJSONArray == null) {
            it = CollectionsKt.emptyList().iterator();
        } else {
            it = SequencesKt.map(SequencesKt.filter(CollectionsKt.asSequence(RangesKt.until(0, jSONArrayOptJSONArray.length())), new g(jSONArrayOptJSONArray)), new h(jSONArrayOptJSONArray)).iterator();
        }
        Iterator itWithIndex = CollectionsKt.withIndex(it);
        while (itWithIndex.hasNext()) {
            IndexedValue indexedValue = (IndexedValue) itWithIndex.next();
            arrayList.add(new MessageButton((JSONObject) indexedValue.getValue(), jSONArray.optJSONObject(indexedValue.getIndex())));
        }
        setMessageButtons(arrayList);
    }

    private InAppMessageImmersiveBase(JSONObject jSONObject, c0 c0Var, String str, int i, int i2, ImageStyle imageStyle, TextAlign textAlign, TextAlign textAlign2) {
        super(jSONObject, c0Var);
        this.headerTextColor = Color.parseColor("#333333");
        this.closeButtonColor = Color.parseColor("#9B9B9B");
        this.messageButtons = CollectionsKt.emptyList();
        this.imageStyle = ImageStyle.TOP;
        this.headerTextAlign = TextAlign.CENTER;
        setHeader(str);
        setHeaderTextColor(i);
        setCloseButtonColor(i2);
        if (jSONObject.has(FRAME_COLOR)) {
            setFrameColor(Integer.valueOf(jSONObject.optInt(FRAME_COLOR)));
        }
        setImageStyle(imageStyle);
        setHeaderTextAlign(textAlign);
        setMessageTextAlign(textAlign2);
    }
}
