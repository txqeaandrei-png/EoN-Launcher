.class public Lcom/mojang/minecraftpe/MainActivity;
.super Lcom/google/androidgamesdk/GameActivity;

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/mojang/minecraftpe/FilePickerManagerHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mojang/minecraftpe/MainActivity$IncomingHandler;,
        Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;,
        Lcom/mojang/minecraftpe/MainActivity$HeadsetConnectionReceiver;
    }
.end annotation


# static fields
.field static final MSG_CORRELATION_CHECK:I = 0x2a0

.field static final MSG_CORRELATION_RESPONSE:I = 0x345

.field static final OPEN_FILE_RESULT_CODE:I = 0x5

.field private static final POST_NOTIFICATIONS_PERMISSION_ID:I = 0x2

.field public static RESULT_PICK_IMAGE:I = 0x1

.field static final SAVE_FILE_RESULT_CODE:I = 0x4

.field private static final SESSION_HISTORY_SEP:Ljava/lang/String; = "&"

.field private static final STORAGE_PERMISSION_ID:I = 0x1

.field private static _isPowerVr:Z

.field private static mHasStoragePermission:Z

.field public static mInstance:Lcom/mojang/minecraftpe/MainActivity;


# instance fields
.field SystemProperties:Ljava/lang/Class;

.field private _fromOnCreate:Z

.field private _userInputStatus:I

.field private _userInputText:[Ljava/lang/String;

.field private final _userInputValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mojang/android/StringValue;",
            ">;"
        }
    .end annotation
.end field

.field private clipboardManager:Landroid/content/ClipboardManager;

.field private deviceManager:Lcom/mojang/minecraftpe/input/InputDeviceManager;

.field getPropMethod:Ljava/lang/reflect/Method;

.field headsetConnectionReceiver:Lcom/mojang/minecraftpe/MainActivity$HeadsetConnectionReceiver;

.field private initialUserLocale:Ljava/util/Locale;

.field mActivityListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mojang/minecraftpe/ActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAppExitInfoHelper:Lcom/mojang/minecraftpe/AppExitInfoHelper;

.field private mBatteryMonitor:Lcom/mojang/minecraftpe/BatteryMonitor;

.field mBound:Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;

.field private mBrazeManager:Lcom/mojang/minecraftpe/BrazeManager;

.field mCachedDebugMemoryInfo:Landroid/os/Debug$MemoryInfo;

.field mCachedDebugMemoryUpdateTime:J

.field mCachedMemoryInfo:Landroid/app/ActivityManager$MemoryInfo;

.field mCachedMemoryInfoUpdateTime:J

.field mCachedUsedMemory:J

.field mCachedUsedMemoryUpdateTime:J

.field private mCallback:J

.field mCaretPositionMirror:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mConnection:Landroid/content/ServiceConnection;

.field mCurrentTextMirror:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCursorLocked:Z

.field private mDialog:Landroidx/appcompat/app/AlertDialog;

.field private mFileDialogCallback:J

.field private mFilePickerManager:Lcom/mojang/minecraftpe/FilePickerManager;

.field private mHardwareInformation:Lcom/mojang/minecraftpe/HardwareInformation;

.field private mIsRunningInAppCenter:Z

.field private mIsSoftKeyboardVisible:Z

.field public mLastPermissionRequestReason:I

.field private mMainThread:Ljava/lang/Thread;

.field final mMessenger:Landroid/os/Messenger;

.field private mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

.field private mNetworkMonitor:Lcom/mojang/minecraftpe/NetworkMonitor;

.field public mPickedFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field mService:Landroid/os/Messenger;

.field private mThermalMonitor:Lcom/mojang/minecraftpe/ThermalMonitor;

.field private mVolume:F

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWorldRecovery:Lcom/mojang/minecraftpe/WorldRecovery;

.field public originalRect:Landroid/graphics/Rect;

.field platform:Lcom/mojang/minecraftpe/platforms/Platform;

.field textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

.field private textToSpeechManager:Landroid/speech/tts/TextToSpeech;

.field public virtualKeyboardHeight:I


# direct methods
.method public static synthetic $r8$lambda$5NuN-2u-w3oogAENiXdK9PUQnpA(Lcom/mojang/minecraftpe/MainActivity;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static synthetic $r8$lambda$9Qg2Q23IoQmLnaePBGqxzCmzAaY(Lcom/mojang/minecraftpe/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mojang/minecraftpe/MainActivity;->lambda$updateLocalization$6(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AqloQqt0AMDTIzk__5rigqajC_g(Lcom/mojang/minecraftpe/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mojang/minecraftpe/MainActivity;->lambda$createAlertDialog$10(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$BNMxZHck0kAO6diXW7why5cV9es(Lcom/mojang/minecraftpe/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->lambda$setTextBoxBackend$13(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CXl8q4FtxjdngFQdJEjQiHH3zCA(Lcom/mojang/minecraftpe/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->lambda$updateTextboxText$8(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CiLQ-nYeDenUcz5MDAPuJuIg19Q(Lcom/mojang/minecraftpe/MainActivity;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/mojang/minecraftpe/MainActivity;->lambda$onCreate$1(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$FyaA5Y8txkYopmQRv5tbzsshp3I(Lcom/mojang/minecraftpe/MainActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->lambda$setKeepScreenOnFlag$17(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$UKRfkh17hIYYQFi1SbKF2UZObrM(Lcom/mojang/minecraftpe/MainActivity;J)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mojang/minecraftpe/MainActivity;->lambda$runNativeCallbackOnUiThread$12(J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VfdKAOvjgjHlCmhzo5cpJzNlQ1U(Lcom/mojang/minecraftpe/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/mojang/minecraftpe/MainActivity;->lambda$requestPushPermission$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$a60xS_ww9GK8Yblxg9vwyDBKTiI(Lcom/mojang/minecraftpe/MainActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->lambda$createAlertDialog$9(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mPfov7zUQEmAc0PA32wbzLxYYQM(Lcom/mojang/minecraftpe/MainActivity;J)Ljava/lang/Long;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mojang/minecraftpe/MainActivity;->lambda$initializeLibHttpClient$15(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rXIaX4-TKJTTz0-8wt3rsUpd2ZE(Lcom/mojang/minecraftpe/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->lambda$createTextWidget$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tH-L4DlCV5QUHVjI6HrMMtKkE30(Lcom/mojang/minecraftpe/MainActivity;Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mojang/minecraftpe/MainActivity;->lambda$createTextWidget$4(Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$tWrx37I4pF7WLRSZKUCdMqilTJo(Lcom/mojang/minecraftpe/MainActivity;Ljava/lang/String;IZZZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/mojang/minecraftpe/MainActivity;->lambda$showKeyboard$7(Ljava/lang/String;IZZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$tXIxALkv2F2rWvNwX97HmvXNTcw(Lcom/mojang/minecraftpe/MainActivity;JJ)Ljava/lang/Long;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mojang/minecraftpe/MainActivity;->lambda$initializeXboxLive$16(JJ)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vG6Ej-4wVMr-m6PXrxdZOz57vTc(Lcom/mojang/minecraftpe/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mojang/minecraftpe/MainActivity;->lambda$createAlertDialog$11(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zYHztfLx1gu2XdEUQbn7ljIc0oA(Lcom/mojang/minecraftpe/MainActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->lambda$setCaretPosition$14(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmConnection(Lcom/mojang/minecraftpe/MainActivity;)Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/mojang/minecraftpe/MainActivity;->mConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 71
    invoke-direct {p0}, Lcom/google/androidgamesdk/GameActivity;-><init>()V

    .line 83
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/mojang/minecraftpe/MainActivity$IncomingHandler;

    invoke-direct {v1, p0}, Lcom/mojang/minecraftpe/MainActivity$IncomingHandler;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mMessenger:Landroid/os/Messenger;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputValues:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lcom/mojang/minecraftpe/MainActivity;->virtualKeyboardHeight:I

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->mActivityListeners:Ljava/util/List;

    const/4 v1, 0x0

    .line 94
    iput-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->mService:Landroid/os/Messenger;

    .line 95
    sget-object v2, Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;->NOTSET:Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;

    iput-object v2, p0, Lcom/mojang/minecraftpe/MainActivity;->mBound:Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;

    .line 96
    new-instance v2, Lcom/mojang/minecraftpe/MainActivity$1;

    invoke-direct {v2, p0}, Lcom/mojang/minecraftpe/MainActivity$1;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    iput-object v2, p0, Lcom/mojang/minecraftpe/MainActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 116
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/mojang/minecraftpe/MainActivity;->mCaretPositionMirror:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 117
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/mojang/minecraftpe/MainActivity;->mCurrentTextMirror:Ljava/util/concurrent/atomic/AtomicReference;

    .line 118
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iput-object v2, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedMemoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    const-wide/16 v2, 0x0

    .line 119
    iput-wide v2, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedMemoryInfoUpdateTime:J

    .line 120
    iput-wide v2, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedUsedMemory:J

    .line 121
    iput-wide v2, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedUsedMemoryUpdateTime:J

    .line 122
    new-instance v4, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v4}, Landroid/os/Debug$MemoryInfo;-><init>()V

    iput-object v4, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedDebugMemoryInfo:Landroid/os/Debug$MemoryInfo;

    .line 123
    iput-wide v2, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedDebugMemoryUpdateTime:J

    .line 132
    iput-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->mMainThread:Ljava/lang/Thread;

    .line 133
    iput-boolean v0, p0, Lcom/mojang/minecraftpe/MainActivity;->_fromOnCreate:Z

    .line 134
    iput-boolean v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mCursorLocked:Z

    .line 135
    iput-boolean v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mIsSoftKeyboardVisible:Z

    .line 136
    iput-wide v2, p0, Lcom/mojang/minecraftpe/MainActivity;->mFileDialogCallback:J

    const/high16 v4, 0x3f800000    # 1.0f

    .line 137
    iput v4, p0, Lcom/mojang/minecraftpe/MainActivity;->mVolume:F

    .line 138
    iput-boolean v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mIsRunningInAppCenter:Z

    .line 139
    iput-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->mFilePickerManager:Lcom/mojang/minecraftpe/FilePickerManager;

    .line 140
    iput-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->mWorldRecovery:Lcom/mojang/minecraftpe/WorldRecovery;

    .line 141
    iput-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 142
    iput-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    const/4 v0, -0x1

    .line 143
    iput v0, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputStatus:I

    .line 144
    iput-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputText:[Ljava/lang/String;

    .line 145
    iput-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->mAppExitInfoHelper:Lcom/mojang/minecraftpe/AppExitInfoHelper;

    .line 146
    iput-wide v2, p0, Lcom/mojang/minecraftpe/MainActivity;->mCallback:J

    .line 147
    iput-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->mBrazeManager:Lcom/mojang/minecraftpe/BrazeManager;

    .line 586
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->originalRect:Landroid/graphics/Rect;

    return-void
.end method

.method private assertIsMainThread()V
    .locals 0

    return-void
.end method

.method private configureBrazeAtRuntime()V
    .locals 0

    return-void
.end method

.method private copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    .line 866
    new-array v0, v0, [B

    .line 867
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 869
    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 870
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    goto :goto_0

    .line 872
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 873
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method private createAlertDialog(ZZZ)V
    .locals 2

    .line 789
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v0, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 790
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    .line 792
    invoke-virtual {v0, p3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 794
    :cond_0
    new-instance p3, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda11;

    invoke-direct {p3, p0}, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda11;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {v0, p3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    if-eqz p1, :cond_1

    .line 796
    new-instance p1, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda12;

    invoke-direct {p1, p0}, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda12;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    const-string p3, "Ok"

    invoke-virtual {v0, p3, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    :cond_1
    if-eqz p2, :cond_2

    .line 799
    new-instance p1, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda13;

    invoke-direct {p1, p0}, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda13;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    const-string p2, "Cancel"

    invoke-virtual {v0, p2, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 801
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 802
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    .line 803
    invoke-virtual {p1, p0}, Landroidx/appcompat/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    return-void
.end method

.method private getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .line 785
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method public static isPowerVR()Z
    .locals 1

    .line 157
    sget-boolean v0, Lcom/mojang/minecraftpe/MainActivity;->_isPowerVr:Z

    return v0
.end method

.method private synthetic lambda$createAlertDialog$10(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 796
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->onDialogCompleted()V

    return-void
.end method

.method private synthetic lambda$createAlertDialog$11(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 799
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->onDialogCanceled()V

    return-void
.end method

.method private synthetic lambda$createAlertDialog$9(Landroid/content/DialogInterface;)V
    .locals 0

    .line 794
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->onDialogCanceled()V

    return-void
.end method

.method private synthetic lambda$createTextWidget$4(Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 637
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onEditorAction: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BlazeLauncher - keyboard"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p3, p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    if-nez p3, :cond_1

    if-eqz p4, :cond_1

    .line 639
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getAction()I

    move-result p4

    if-nez p4, :cond_1

    move p4, v0

    goto :goto_1

    :cond_1
    move p4, v1

    :goto_1
    if-nez p2, :cond_4

    if-eqz p4, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x7

    if-eq p3, p1, :cond_3

    return v1

    .line 656
    :cond_3
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->nativeBackPressed()V

    goto :goto_3

    :cond_4
    :goto_2
    if-eqz p2, :cond_5

    .line 642
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->nativeReturnKeyPressed()V

    .line 644
    :cond_5
    invoke-virtual {p1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 645
    invoke-virtual {p1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->getSelectionEnd()I

    move-result p3

    if-ltz p3, :cond_6

    .line 646
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p4

    if-le p3, p4, :cond_7

    .line 647
    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    :cond_7
    const/high16 p4, 0x20000

    .line 649
    invoke-virtual {p1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->getInputType()I

    move-result v2

    and-int/2addr p4, v2

    if-eqz p4, :cond_8

    .line 650
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v1, "\n"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setText(Ljava/lang/CharSequence;)V

    add-int/2addr p3, v0

    .line 651
    invoke-virtual {p1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setSelection(I)V

    :cond_8
    :goto_3
    return v0
.end method

.method private synthetic lambda$createTextWidget$5(Landroid/view/View;)V
    .locals 3

    .line 708
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 709
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 710
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/mojang/minecraftpe/MainActivity;->virtualKeyboardHeight:I

    .line 711
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v0

    if-lez p1, :cond_1

    .line 712
    iget-boolean p1, p0, Lcom/mojang/minecraftpe/MainActivity;->mIsSoftKeyboardVisible:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 715
    iput-boolean p1, p0, Lcom/mojang/minecraftpe/MainActivity;->mIsSoftKeyboardVisible:Z

    goto :goto_0

    .line 716
    :cond_1
    iget-boolean p1, p0, Lcom/mojang/minecraftpe/MainActivity;->mIsSoftKeyboardVisible:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 717
    iput-boolean p1, p0, Lcom/mojang/minecraftpe/MainActivity;->mIsSoftKeyboardVisible:Z

    .line 718
    sget-object p1, Ldev/blaze/launcher/Start;->vTouch:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->openView(Landroid/view/View;)V

    .line 719
    sget-object p1, Ldev/blaze/launcher/Start;->display:Ldev/blaze/launcher/GLES3JNIView;

    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->openView(Landroid/view/View;)V

    .line 720
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->onSoftKeyboardClosed()V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$initializeLibHttpClient$15(J)Ljava/lang/Long;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1787
    invoke-virtual {p0, p1, p2}, Lcom/mojang/minecraftpe/MainActivity;->nativeInitializeLibHttpClient(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$initializeXboxLive$16(JJ)Ljava/lang/Long;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1800
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;

    .line 1801
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mojang/minecraftpe/MainActivity;->nativeInitializeXboxLive(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 452
    invoke-virtual {p0, p4, p5}, Lcom/mojang/minecraftpe/MainActivity;->nativeResize(II)V

    return-void
.end method

.method private synthetic lambda$requestPushPermission$3()V
    .locals 3

    const/4 v0, 0x1

    .line 564
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.POST_NOTIFICATIONS"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$runNativeCallbackOnUiThread$12(J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1137
    invoke-virtual {p0, p1, p2}, Lcom/mojang/minecraftpe/MainActivity;->nativeRunNativeCallbackOnUiThread(J)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$setCaretPosition$14(I)V
    .locals 1

    .line 1409
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    :cond_0
    move p1, v0

    .line 1413
    :cond_1
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {v0, p1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setSelection(I)V

    .line 1414
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mCaretPositionMirror:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method private synthetic lambda$setKeepScreenOnFlag$17(Z)V
    .locals 1

    const/16 v0, 0x80

    if-eqz p1, :cond_0

    .line 1851
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 1853
    :cond_0
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$setTextBoxBackend$13(Ljava/lang/String;)V
    .locals 1

    .line 1396
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mCurrentTextMirror:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1397
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {v0, p1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    .line 1398
    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->setCaretPosition(I)V

    return-void
.end method

.method static synthetic lambda$setTextToSpeechEnabled$2(I)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$showKeyboard$7(Ljava/lang/String;IZZZ)V
    .locals 0

    .line 739
    invoke-virtual/range {p0 .. p5}, Lcom/mojang/minecraftpe/MainActivity;->setupKeyboardViews(Ljava/lang/String;IZZZ)V

    return-void
.end method

.method static synthetic lambda$throwRuntimeExceptionFromNative$0(Ljava/lang/String;)V
    .locals 1

    .line 363
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private synthetic lambda$updateLocalization$6(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 729
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 731
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    .line 732
    iput-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 733
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method private synthetic lambda$updateTextboxText$8(Ljava/lang/String;)V
    .locals 1

    .line 765
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isTextWidgetActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {v0, p1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setTextFromGame(Ljava/lang/String;)V

    .line 767
    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {p1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setSelection(I)V

    :cond_0
    return-void
.end method

.method private static native nativeWaitCrashManagementSetupComplete()V
.end method

.method private processIntent(Landroid/content/Intent;)V
    .locals 10

    .line 1465
    const-string v0, "IOException while closing input stream\n"

    if-nez p1, :cond_0

    return-void

    .line 1468
    :cond_0
    const-string v1, "intent_cmd"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1469
    const-string v2, "BlazeLauncher"

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1471
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1472
    const-string v0, "Command"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1473
    const-string v1, "keyboardResult"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1474
    const-string v0, "Text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->nativeSetTextboxText(Ljava/lang/String;)V

    return-void

    .line 1476
    :cond_1
    const-string v1, "fileDialogResult"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mFileDialogCallback:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_2

    goto :goto_1

    .line 1479
    :cond_2
    const-string v0, "Result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1480
    iget-wide v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mFileDialogCallback:J

    const-string v5, "Path"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/mojang/minecraftpe/MainActivity;->nativeOnPickImageSuccess(JLjava/lang/String;)V

    goto :goto_0

    .line 1482
    :cond_3
    iget-wide v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mFileDialogCallback:J

    invoke-virtual {p0, v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->nativeOnPickImageCanceled(J)V

    .line 1484
    :goto_0
    iput-wide v3, p0, Lcom/mojang/minecraftpe/MainActivity;->mFileDialogCallback:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    return-void

    :catch_0
    move-exception p1

    .line 1488
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JSONObject exception:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1492
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1493
    const-string/jumbo v3, "xbox_live_game_invite"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1494
    const-string/jumbo v0, "xbl"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1495
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[XboxLive] Received Invite "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    invoke-virtual {p0, v1, p1}, Lcom/mojang/minecraftpe/MainActivity;->nativeProcessIntentUriQuery(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1497
    :cond_6
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "org.chromium.arc.intent.action.VIEW"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_5

    .line 1499
    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 1500
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_8

    return-void

    .line 1504
    :cond_8
    const-string v3, "minecraft"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "minecraftedu"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto/16 :goto_4

    .line 1511
    :cond_9
    const-string v3, "file"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "&"

    if-eqz v3, :cond_a

    .line 1512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fileIntent"

    invoke-virtual {p0, v0, p1}, Lcom/mojang/minecraftpe/MainActivity;->nativeProcessIntentUriQuery(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1513
    :cond_a
    const-string v3, "content"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_5

    .line 1515
    :cond_b
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1516
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1518
    :try_start_1
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 1521
    :try_start_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 v6, 0x100000

    .line 1522
    new-array v6, v6, [B

    .line 1524
    :goto_2
    invoke-virtual {v1, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_c

    const/4 v8, 0x0

    .line 1526
    invoke-virtual {v5, v6, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_2

    .line 1528
    :cond_c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 1529
    const-string v7, "contentIntent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/mojang/minecraftpe/MainActivity;->nativeProcessIntentUriQuery(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1531
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catch_1
    move-exception v7

    .line 1534
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 1540
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception v4

    .line 1542
    :try_start_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    :goto_3
    throw p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    move-exception p1

    .line 1547
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException while copying file from content intent\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 1549
    :try_start_8
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 1553
    :catch_4
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_5

    :catch_5
    move-exception p1

    .line 1555
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_5

    :catch_6
    move-exception p1

    .line 1559
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IOException while opening file from content intent\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1505
    :cond_d
    :goto_4
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 1506
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p1

    if-nez v0, :cond_e

    if-nez p1, :cond_e

    return-void

    .line 1510
    :cond_e
    invoke-virtual {p0, v0, p1}, Lcom/mojang/minecraftpe/MainActivity;->nativeProcessIntentUriQuery(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-void
.end method

.method public static saveScreenshot(Ljava/lang/String;II[I)V
    .locals 1

    .line 169
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 171
    :try_start_0
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 172
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x55

    invoke-virtual {p1, p3, v0, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 174
    :try_start_1
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 176
    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 179
    :goto_0
    :try_start_3
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    move-exception p1

    .line 181
    :try_start_4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 184
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 185
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Couldn\'t create file: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private showFilePickerDialog(Ljava/lang/String;I)V
    .locals 2

    .line 1617
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1618
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1619
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1620
    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/mojang/minecraftpe/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public MC_CheckIfTestsAreFinished()Ljava/lang/String;
    .locals 1

    .line 1748
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isTestInfrastructureDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->nativeCheckIfTestsAreFinished()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public MC_GetActiveScreen()Ljava/lang/String;
    .locals 1

    .line 1740
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isTestInfrastructureDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->nativeGetActiveScreen()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public MC_GetDevConsoleLogName()Ljava/lang/String;
    .locals 1

    .line 1752
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isTestInfrastructureDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->nativeGetDevConsoleLogName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public MC_GetLogText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1756
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isTestInfrastructureDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->nativeGetLogText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public MC_SetOptions(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1744
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isTestInfrastructureDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->nativeSetOptions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public acquireMulticast()V
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isMulticastHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    :cond_1
    :goto_0
    return-void
.end method

.method public addListener(Lcom/mojang/minecraftpe/ActivityListener;)V
    .locals 1

    .line 1680
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mActivityListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public buyGame()V
    .locals 0

    return-void
.end method

.method public calculateAvailableDiskFreeSpace(Ljava/lang/String;)J
    .locals 2

    .line 1340
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public checkLicense()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method chromebookCompatibilityIP()Ljava/lang/String;
    .locals 1

    .line 1198
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isChromebook()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "arc.net.ipv4.host_address"

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public clearLoginInformation()V
    .locals 2

    .line 1111
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1112
    const-string v1, "accessToken"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1113
    const-string v1, "clientId"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1114
    const-string v1, "profileId"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1115
    const-string v1, "profileName"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1116
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public closeView(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 592
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    const/16 v1, 0x8

    .line 593
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 594
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 595
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public copyFromPickedFile(Ljava/lang/String;)V
    .locals 2

    .line 854
    :try_start_0
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->mPickedFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 855
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 856
    invoke-direct {p0, v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 857
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 858
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 860
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    .line 862
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->mPickedFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method public copyToPickedFile(Ljava/lang/String;)V
    .locals 2

    .line 841
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 842
    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->mPickedFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p1, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 843
    invoke-direct {p0, v0, p1}, Lcom/mojang/minecraftpe/MainActivity;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 844
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    .line 845
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 847
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    .line 849
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->mPickedFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method public createAndroidLaunchIntent()Landroid/content/Intent;
    .locals 2

    .line 1579
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1580
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public createTextWidget()Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;
    .locals 6

    .line 631
    new-instance v0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x8

    .line 632
    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setVisibility(I)V

    const/4 v1, 0x1

    .line 633
    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setFocusable(Z)V

    .line 634
    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setFocusableInTouchMode(Z)V

    const v1, 0x10000005

    .line 635
    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setImeOptions(I)V

    .line 636
    new-instance v1, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/mojang/minecraftpe/MainActivity;Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;)V

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 660
    new-instance v1, Lcom/mojang/minecraftpe/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/mojang/minecraftpe/MainActivity$2;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 679
    new-instance v1, Lcom/mojang/minecraftpe/MainActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/mojang/minecraftpe/MainActivity$3;-><init>(Lcom/mojang/minecraftpe/MainActivity;Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;)V

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 690
    new-instance v1, Lcom/mojang/minecraftpe/MainActivity$4;

    invoke-direct {v1, p0}, Lcom/mojang/minecraftpe/MainActivity$4;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setOnMCPEKeyWatcher(Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;)V

    const v1, 0x1020002

    .line 705
    invoke-virtual {p0, v1}, Lcom/mojang/minecraftpe/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/16 v4, 0x140

    const/16 v5, 0x32

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 706
    invoke-virtual {p0, v1}, Lcom/mojang/minecraftpe/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 707
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v1}, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda3;-><init>(Lcom/mojang/minecraftpe/MainActivity;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-object v0
.end method

.method public createUUID()Ljava/lang/String;
    .locals 3

    .line 1575
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deviceIdCorrelationStart()V
    .locals 7

    .line 368
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/16 v1, 0xa

    .line 369
    const-string v2, "correlationAttempts"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 373
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 374
    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "trial"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    const-string v5, "com.mojang.minecrafttrialpe"

    :goto_0
    const-string v6, "com.mojang.minecraftpe.ImportService"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 375
    iget-object v4, p0, Lcom/mojang/minecraftpe/MainActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lcom/mojang/minecraftpe/MainActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 376
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sub-int/2addr v1, v5

    .line 377
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 378
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public disableBrazeSDK()V
    .locals 0

    return-void
.end method

.method public dismissTextWidget()V
    .locals 3

    .line 756
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isTextWidgetActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    invoke-direct {p0}, Lcom/mojang/minecraftpe/MainActivity;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {v1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 758
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setInputType(I)V

    .line 759
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 515
    iget-boolean v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mCursorLocked:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v1, 0x2002

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 516
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->lockCursor()V

    .line 518
    :cond_0
    invoke-super {p0, p1}, Lcom/google/androidgamesdk/GameActivity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 523
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->nativeKeyHandler(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 526
    :cond_0
    invoke-super {p0, p1}, Lcom/google/androidgamesdk/GameActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public displayDialog(I)V
    .locals 0

    return-void
.end method

.method public enableBrazeSDK()V
    .locals 0

    return-void
.end method

.method public getAPIVersion(Ljava/lang/String;)I
    .locals 7

    .line 1719
    const-string v0, ")"

    const-class v1, Landroid/os/Build$VERSION_CODES;

    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    const-string v4, "BlazeLauncher"

    if-ge v3, v2, :cond_1

    aget-object v5, v1, v3

    .line 1720
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1722
    :try_start_0
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 1728
    :catch_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "NullPointerException in getApiVersion("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1726
    :catch_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IllegalArgumentException in getApiVersion("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1724
    :catch_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IllegalAccessException in getApiVersion("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1732
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to find API version for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 3

    .line 1120
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "accessToken"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllocatableBytes(Ljava/lang/String;)J
    .locals 4

    .line 1830
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const-wide/16 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 1832
    :try_start_0
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 1833
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->getAllocatableBytes(Ljava/util/UUID;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 1835
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IOException while attempting to get allocatable bytes\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BlazeLauncher"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-wide v2
.end method

.method public getAndroidVersion()I
    .locals 1

    .line 972
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public getBatteryMonitor()Lcom/mojang/minecraftpe/BatteryMonitor;
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mBatteryMonitor:Lcom/mojang/minecraftpe/BatteryMonitor;

    if-nez v0, :cond_0

    .line 383
    new-instance v0, Lcom/mojang/minecraftpe/BatteryMonitor;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/BatteryMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mBatteryMonitor:Lcom/mojang/minecraftpe/BatteryMonitor;

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mBatteryMonitor:Lcom/mojang/minecraftpe/BatteryMonitor;

    return-object v0
.end method

.method public getBroadcastAddresses()[Ljava/lang/String;
    .locals 5

    .line 1148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1150
    :try_start_0
    const-string v1, "java.net.preferIPv4Stack"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1151
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 1152
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1153
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 1154
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1155
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InterfaceAddress;

    .line 1156
    invoke-virtual {v3}, Ljava/net/InterfaceAddress;->getBroadcast()Ljava/net/InetAddress;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1157
    invoke-virtual {v3}, Ljava/net/InterfaceAddress;->getBroadcast()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1163
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1165
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getCaretPosition()I
    .locals 1

    .line 1403
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mCaretPositionMirror:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 3

    .line 1124
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "clientId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCursorPosition()I
    .locals 1

    .line 773
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isTextWidgetActive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public getDebugMemoryInfo(Ljava/lang/String;)J
    .locals 6

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    .line 1288
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1289
    iget-wide v4, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedDebugMemoryUpdateTime:J

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    .line 1290
    iget-object v4, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedDebugMemoryInfo:Landroid/os/Debug$MemoryInfo;

    invoke-static {v4}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    .line 1291
    iput-wide v2, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedDebugMemoryUpdateTime:J

    .line 1294
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "TotalSwappablePss"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "TotalPrivateDirty"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "TotalPss"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 1327
    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedDebugMemoryInfo:Landroid/os/Debug$MemoryInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "summary."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1329
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :cond_5
    return-wide v0

    .line 1323
    :pswitch_0
    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedDebugMemoryInfo:Landroid/os/Debug$MemoryInfo;

    invoke-virtual {p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result p1

    goto :goto_1

    .line 1320
    :pswitch_1
    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedDebugMemoryInfo:Landroid/os/Debug$MemoryInfo;

    invoke-virtual {p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result p1

    goto :goto_1

    .line 1317
    :pswitch_2
    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedDebugMemoryInfo:Landroid/os/Debug$MemoryInfo;

    invoke-virtual {p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result p1

    :goto_1
    int-to-long v0, p1

    return-wide v0

    :sswitch_data_0
    .sparse-switch
        -0x2ece32f4 -> :sswitch_2
        0x75ac3153 -> :sswitch_1
        0x7f80887d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 976
    invoke-static {}, Lcom/mojang/minecraftpe/HardwareInformation;->getDeviceModelName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayHeight()I
    .locals 2

    .line 963
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 964
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 965
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 966
    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayWidth()I
    .locals 2

    .line 954
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 955
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 956
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 957
    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getExternalStoragePath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 984
    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileDataBytes(Ljava/lang/String;)[B
    .locals 6

    const-string v0, "getAssets returned null: Could not getFileDataBytes "

    .line 877
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 882
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    if-nez v1, :cond_1

    .line 884
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v2

    .line 888
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 889
    :try_start_2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x1000

    .line 890
    new-array v3, v3, [B

    .line 893
    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x0

    .line 894
    invoke-virtual {v1, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 897
    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 898
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    return-object v1

    :catchall_0
    move-exception v1

    .line 888
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_0
    move-exception v0

    .line 899
    :try_start_6
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 902
    :catch_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getAssets threw NPE: Could not getFileDataBytes "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_2
    return-object v2
.end method

.method public getFreeMemory()J
    .locals 5

    .line 1267
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getMemoryInfo()Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v0

    .line 1268
    iget-wide v1, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    iget-wide v3, v0, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    sub-long/2addr v1, v3

    return-wide v1
.end method

.method public getHardwareInfo()Lcom/mojang/minecraftpe/HardwareInformation;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mHardwareInformation:Lcom/mojang/minecraftpe/HardwareInformation;

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Lcom/mojang/minecraftpe/HardwareInformation;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/HardwareInformation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mHardwareInformation:Lcom/mojang/minecraftpe/HardwareInformation;

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mHardwareInformation:Lcom/mojang/minecraftpe/HardwareInformation;

    return-object v0
.end method

.method public getIPAddresses()[Ljava/lang/String;
    .locals 6

    .line 1202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1203
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->chromebookCompatibilityIP()Ljava/lang/String;

    move-result-object v1

    .line 1204
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1205
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1208
    :cond_0
    :try_start_0
    const-string v1, "java.net.preferIPv4Stack"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1209
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 1210
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1211
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 1212
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1213
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InterfaceAddress;

    .line 1214
    invoke-virtual {v3}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1215
    invoke-virtual {v4}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1216
    invoke-virtual {v3}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1222
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1224
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getImageData(Ljava/lang/String;)[I
    .locals 11

    const-string v0, "getImageData: Could not open image "

    const-string v1, "getAssets returned null: Could not open image "

    .line 909
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 912
    :try_start_0
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    .line 915
    :try_start_1
    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 917
    :catch_0
    :try_start_2
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v2

    .line 921
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v2

    .line 925
    :catch_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getAssets threw NPE: Could not open image "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v2

    :cond_1
    :goto_0
    move-object v3, v2

    .line 930
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 931
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    mul-int p1, v9, v10

    add-int/lit8 p1, p1, 0x2

    .line 932
    new-array p1, p1, [I

    const/4 v0, 0x0

    .line 933
    aput v9, p1, v0

    const/4 v0, 0x1

    .line 934
    aput v10, p1, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x2

    move-object v4, p1

    move v6, v9

    .line 935
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    return-object p1
.end method

.method public getInternalStoragePath()Ljava/lang/String;
    .locals 1

    .line 1035
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getDataDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsRunningInAppCenter()Z
    .locals 1

    .line 1760
    iget-boolean v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mIsRunningInAppCenter:Z

    return v0
.end method

.method public getIsRunningInBrowserStack()Z
    .locals 3

    .line 1764
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "IS_BROWSERSTACK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getKeyFromKeyCode(III)I
    .locals 2

    const/4 v0, 0x0

    if-gez p3, :cond_1

    .line 826
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object p3

    .line 827
    array-length v1, p3

    if-nez v1, :cond_0

    return v0

    .line 830
    :cond_0
    aget p3, p3, v0

    .line 832
    :cond_1
    invoke-static {p3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object p3

    if-nez p3, :cond_2

    return v0

    .line 836
    :cond_2
    invoke-virtual {p3}, Landroid/view/InputDevice;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result p1

    return p1
.end method

.method public getKeyboardHeight()F
    .locals 1

    .line 340
    iget v0, p0, Lcom/mojang/minecraftpe/MainActivity;->virtualKeyboardHeight:I

    int-to-float v0, v0

    return v0
.end method

.method public getLegacyDeviceID()Ljava/lang/String;
    .locals 3

    .line 1571
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "snooperId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLegacyExternalStorageDirWritable_debug()Z
    .locals 1

    .line 1008
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    return v0
.end method

.method public getLegacyExternalStorageGameFolderReadable_debug(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    .line 1017
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p1, "minecraftpe/clientId.txt"

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x400

    .line 1018
    new-array p1, p1, [B

    invoke-virtual {v1, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    .line 1019
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public getLegacyExternalStorageGameFolderWritable_debug(Ljava/lang/String;)Z
    .locals 2

    .line 1012
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result p1

    return p1
.end method

.method public getLegacyExternalStoragePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 989
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 991
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p1, "test"

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 996
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public getLegacyExternalStorageReadable_debug()Z
    .locals 1

    .line 1004
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    return v0
.end method

.method public getLegacyExternalStorage_debug()Ljava/lang/String;
    .locals 1

    .line 1000
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListener()V
    .locals 2

    .line 1688
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mActivityListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mojang/minecraftpe/ActivityListener;

    invoke-interface {v0}, Lcom/mojang/minecraftpe/ActivityListener;->onShowedAds()V

    return-void
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 980
    invoke-static {}, Lcom/mojang/minecraftpe/HardwareInformation;->getLocale()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getMemoryInfo()Landroid/app/ActivityManager$MemoryInfo;
    .locals 4

    .line 1249
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1250
    iget-wide v2, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedMemoryInfoUpdateTime:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 1251
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/mojang/minecraftpe/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedMemoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    const-wide/16 v2, 0x7d0

    add-long/2addr v0, v2

    .line 1252
    iput-wide v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedMemoryInfoUpdateTime:J

    .line 1254
    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedMemoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    return-object v0
.end method

.method public getMemoryLimit()J
    .locals 4

    .line 1272
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getTotalMemory()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getMemoryInfo()Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v2

    iget-wide v2, v2, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getObbDirPath()Ljava/lang/String;
    .locals 1

    .line 1041
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getObbDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPixelsPerMillimeter()F
    .locals 2

    .line 1045
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1046
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1047
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v1, v0

    const v0, 0x41cb3333    # 25.4f

    div-float/2addr v1, v0

    return v1
.end method

.method public getPlatformDpi()I
    .locals 2

    .line 1843
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1844
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1845
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method public getPlatformStringVar(I)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 1066
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getProfileId()Ljava/lang/String;
    .locals 3

    .line 1128
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "profileId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProfileName()Ljava/lang/String;
    .locals 3

    .line 1132
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "profileName"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1185
    :try_start_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->getPropMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->SystemProperties:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 1186
    :cond_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1187
    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->SystemProperties:Ljava/lang/Class;

    .line 1188
    const-string v1, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->getPropMethod:Ljava/lang/reflect/Method;

    .line 1190
    :cond_1
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->getPropMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->SystemProperties:Ljava/lang/Class;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1192
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception occured while getting a property ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "]\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BlazeLauncher"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    const-string p1, ""

    return-object p1
.end method

.method public getScreenHeight()I
    .locals 4

    .line 947
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 948
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 949
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getheight: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0
.end method

.method public getScreenWidth()I
    .locals 4

    .line 940
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 941
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 942
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getwidth: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0
.end method

.method public getSecureStorageKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1055
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTextBoxBackend()Ljava/lang/String;
    .locals 1

    .line 1391
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mCurrentTextMirror:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getThermalMonitor()Lcom/mojang/minecraftpe/ThermalMonitor;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mThermalMonitor:Lcom/mojang/minecraftpe/ThermalMonitor;

    if-nez v0, :cond_0

    .line 397
    new-instance v0, Lcom/mojang/minecraftpe/ThermalMonitor;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/ThermalMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mThermalMonitor:Lcom/mojang/minecraftpe/ThermalMonitor;

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mThermalMonitor:Lcom/mojang/minecraftpe/ThermalMonitor;

    return-object v0
.end method

.method public getTimeFromProcessStart()J
    .locals 4

    .line 1860
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Process;->getStartElapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalMemory()J
    .locals 5

    .line 1258
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getMemoryInfo()Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v0

    .line 1259
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 1260
    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v2

    if-nez v2, :cond_1

    const-wide v2, 0x100000000L

    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    return-wide v2

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public getUsedMemory()J
    .locals 4

    .line 1276
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1277
    iget-wide v2, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedUsedMemoryUpdateTime:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 1278
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedUsedMemory:J

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    .line 1279
    iput-wide v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedUsedMemoryUpdateTime:J

    .line 1281
    :cond_0
    iget-wide v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedUsedMemory:J

    return-wide v0
.end method

.method public getUserInputStatus()I
    .locals 1

    .line 1233
    iget v0, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputStatus:I

    return v0
.end method

.method public getUserInputString()[Ljava/lang/String;
    .locals 1

    .line 1237
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputText:[Ljava/lang/String;

    return-object v0
.end method

.method public hasBuyButtonWhenInvalidLicense()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method hasHardwareChanged()Z
    .locals 4

    .line 1584
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1585
    const-string v1, ""

    const-string v2, "lastAndroidVersion"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1586
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 1588
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1589
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1590
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    return v1
.end method

.method public hasHardwareKeyboard()Z
    .locals 2

    .line 583
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWriteExternalStoragePermission()Z
    .locals 3

    .line 577
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v2, v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 578
    :goto_0
    sput-boolean v0, Lcom/mojang/minecraftpe/MainActivity;->mHasStoragePermission:Z

    return v0
.end method

.method public hideKeyboard()V
    .locals 1

    .line 743
    new-instance v0, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda9;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initializeAppExitInfoHelper()Lcom/mojang/minecraftpe/AppExitInfoHelper;
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mAppExitInfoHelper:Lcom/mojang/minecraftpe/AppExitInfoHelper;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/mojang/minecraftpe/AppExitInfoHelper;

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mojang/minecraftpe/AppExitInfoHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mAppExitInfoHelper:Lcom/mojang/minecraftpe/AppExitInfoHelper;

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mAppExitInfoHelper:Lcom/mojang/minecraftpe/AppExitInfoHelper;

    return-object v0
.end method

.method public initializeCrashManager(Ljava/lang/String;Ljava/lang/String;)Lcom/mojang/minecraftpe/CrashManager;
    .locals 0

    .line 403
    new-instance p1, Lcom/mojang/minecraftpe/CrashManager;

    invoke-direct {p1}, Lcom/mojang/minecraftpe/CrashManager;-><init>()V

    return-object p1
.end method

.method public initializeCrashManager()V
    .locals 0

    return-void
.end method

.method public initializeLibHttpClient(J)J
    .locals 2

    .line 1787
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, p1, p2}, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda18;-><init>(Lcom/mojang/minecraftpe/MainActivity;J)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1788
    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1790
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 1792
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to initialize libHttpClient: \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BlazeLauncher"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 p1, -0x7fffbffb

    return-wide p1
.end method

.method public initializeMulticast()V
    .locals 2

    .line 464
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 465
    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 467
    const-string v1, "MinecraftMCLock"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    const/4 v0, 0x0

    .line 468
    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->setMulticastReferenceCounting(Z)V

    :cond_0
    return-void
.end method

.method public initializeXboxLive(JJ)J
    .locals 8

    .line 1798
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isEduMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1799
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v7, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda17;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda17;-><init>(Lcom/mojang/minecraftpe/MainActivity;JJ)V

    invoke-direct {v0, v7}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1803
    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1805
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 1807
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed to initialize xbox live: \'"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BlazeLauncher"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 p1, -0x7fffbffb

    return-wide p1

    :cond_0
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public initiateUserInput(I)V
    .locals 0

    const/4 p1, 0x0

    .line 1228
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputText:[Ljava/lang/String;

    const/4 p1, -0x1

    .line 1229
    iput p1, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputStatus:I

    return-void
.end method

.method native isAndroidAmazon()Z
.end method

.method native isAndroidChromebook()Z
.end method

.method native isAndroidTrial()Z
.end method

.method native isBrazeEnabled()Z
.end method

.method public isBrazeSDKDisabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method isChromebook()Z
    .locals 2

    .line 1180
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.pc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isDemo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public native isEduMode()Z
.end method

.method public isExternalStorageLegacy_debug()I
    .locals 2

    .line 1027
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 1028
    invoke-static {}, Landroid/os/Environment;->isExternalStorageLegacy()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public isFirstSnooperStart()Z
    .locals 3

    .line 1567
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "snooperId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    return v0
.end method

.method isHardwareKeyboardHidden()Z
    .locals 2

    .line 1169
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMulticastHeld()Z
    .locals 1

    .line 1596
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :cond_0

    .line 1598
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNetworkEnabled(Z)Z
    .locals 3

    .line 1072
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/16 v1, 0x9

    .line 1073
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1074
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    .line 1075
    :cond_1
    :goto_0
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1076
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 1079
    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1080
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public isOnWifi()Z
    .locals 2

    .line 1086
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    return v0
.end method

.method public native isPublishBuild()Z
.end method

.method public isSoftKeyboardVisible()Z
    .locals 1

    .line 747
    iget-boolean v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mIsSoftKeyboardVisible:Z

    return v0
.end method

.method public isTTSEnabled()Z
    .locals 3

    .line 1777
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1778
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isTestInfrastructureDisabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/mojang/minecraftpe/MainActivity;->mIsRunningInAppCenter:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 1782
    :cond_0
    const-string v0, "BlazeLauncher"

    const-string v1, "Automation: We are running in AppCenter, forcing isTTSEnabled to false to avoid screen reader popup"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1780
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v2, v1

    :cond_2
    return v2
.end method

.method public isTTSInstalled()Z
    .locals 3

    .line 1768
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1769
    iget v1, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method isTablet()Z
    .locals 2

    .line 1173
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isChromebook()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1174
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isHardwareKeyboardHidden()Z

    move-result v0

    return v0

    .line 1176
    :cond_0
    const-string v0, "ro.build.characteristics"

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method native isTestInfrastructureDisabled()Z
.end method

.method public isTextToSpeechInProgress()Z
    .locals 1

    .line 1711
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->textToSpeechManager:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 1713
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTextWidgetActive()Z
    .locals 1

    .line 751
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    if-eqz v0, :cond_0

    .line 752
    invoke-virtual {v0}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public launchUri(Ljava/lang/String;)V
    .locals 2

    .line 314
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public lockCursor()V
    .locals 3

    .line 494
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const v0, 0x1020002

    .line 495
    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    .line 496
    iput-boolean v2, p0, Lcom/mojang/minecraftpe/MainActivity;->mCursorLocked:Z

    .line 497
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_0

    .line 498
    invoke-virtual {v0}, Landroid/view/View;->requestPointerCapture()V

    :cond_0
    return-void
.end method

.method native nativeBackPressed()V
.end method

.method native nativeBackSpacePressed()V
.end method

.method native nativeCaretPosition(I)V
.end method

.method native nativeCheckIfTestsAreFinished()Ljava/lang/String;
.end method

.method native nativeClearAButtonState()V
.end method

.method native nativeDeviceCorrelation(JLjava/lang/String;JLjava/lang/String;)V
.end method

.method native nativeFireNetworkChangedEvent(Ljava/lang/String;)V
.end method

.method native nativeGetActiveScreen()Ljava/lang/String;
.end method

.method native nativeGetDevConsoleLogName()Ljava/lang/String;
.end method

.method native nativeGetDeviceId()Ljava/lang/String;
.end method

.method native nativeGetLogText(Ljava/lang/String;)Ljava/lang/String;
.end method

.method native nativeInitializeLibHttpClient(J)J
.end method

.method native nativeInitializeXboxLive(JJ)J
.end method

.method public native nativeKeyHandler(II)Z
.end method

.method native nativeOnDestroy()V
.end method

.method native nativeOnPickFileCanceled()V
.end method

.method native nativeOnPickFileSuccess(Ljava/lang/String;)V
.end method

.method native nativeOnPickImageCanceled(J)V
.end method

.method native nativeOnPickImageSuccess(JLjava/lang/String;)V
.end method

.method native nativeProcessIntentUriQuery(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method native nativeResize(II)V
.end method

.method native nativeReturnKeyPressed()V
.end method

.method native nativeRunNativeCallbackOnUiThread(J)V
.end method

.method native nativeSetHeadphonesConnected(Z)V
.end method

.method native nativeSetIntegrityToken(Ljava/lang/String;)V
.end method

.method native nativeSetIntegrityTokenErrorMessage(Ljava/lang/String;)V
.end method

.method native nativeSetOptions(Ljava/lang/String;)Ljava/lang/String;
.end method

.method native nativeSetTextboxText(Ljava/lang/String;)V
.end method

.method native nativeShutdown()V
.end method

.method native nativeStopThis()V
.end method

.method native nativeStoragePermissionRequestResult(ZI)V
.end method

.method native nativeSuspend()V
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 1645
    invoke-super {p0, p1, p2, p3}, Lcom/google/androidgamesdk/GameActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p2, :cond_0

    .line 1647
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->nativeOnPickFileCanceled()V

    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    if-eqz p3, :cond_5

    .line 1650
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 1651
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 p2, 0x1

    const/4 p3, 0x0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    goto :goto_0

    .line 1656
    :cond_1
    :try_start_0
    sget v0, Lcom/mojang/minecraftpe/MainActivity;->RESULT_PICK_IMAGE:I

    if-ne p1, v0, :cond_6

    .line 1657
    new-array p1, p2, [Ljava/lang/String;

    const-string p2, "_data"

    aput-object p2, p1, p3

    .line 1658
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 1659
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1660
    aget-object p1, p1, p3

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1661
    iget-wide v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mCallback:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/mojang/minecraftpe/MainActivity;->nativeOnPickImageSuccess(JLjava/lang/String;)V

    .line 1662
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 1654
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-ne p1, v0, :cond_3

    const-string v3, "r"

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "w"

    :goto_1
    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->mPickedFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    move p2, p3

    .line 1655
    :goto_2
    invoke-virtual {p0, p2}, Lcom/mojang/minecraftpe/MainActivity;->onPickFileSuccess(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 1666
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1668
    :cond_5
    sget p2, Lcom/mojang/minecraftpe/MainActivity;->RESULT_PICK_IMAGE:I

    if-ne p1, p2, :cond_6

    .line 1669
    iget-wide p1, p0, Lcom/mojang/minecraftpe/MainActivity;->mCallback:J

    invoke-virtual {p0, p1, p2}, Lcom/mojang/minecraftpe/MainActivity;->nativeOnPickImageCanceled(J)V

    :cond_6
    :goto_3
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 412
    const-string v0, "MinecraftPlatform"

    const-string v1, "MainActivity::onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mMainThread:Ljava/lang/Thread;

    .line 414
    new-instance v0, Lcom/mojang/minecraftpe/BrazeManager;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/BrazeManager;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mBrazeManager:Lcom/mojang/minecraftpe/BrazeManager;

    .line 415
    invoke-super {p0, p1}, Lcom/google/androidgamesdk/GameActivity;->onCreate(Landroid/os/Bundle;)V

    .line 416
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-nez p1, :cond_0

    .line 417
    const-string p1, "BlazeLauncher - replacing"

    const-string v0, "App is installing/replacing. Killing..."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    .line 420
    :cond_0
    invoke-static {}, Lcom/mojang/minecraftpe/MainActivity;->nativeWaitCrashManagementSetupComplete()V

    .line 421
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isEduMode()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 423
    :try_start_0
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v2, "com.microsoft.applications.events.HttpClient"

    invoke-virtual {p1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 425
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 428
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt p1, v2, :cond_2

    .line 429
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->requestPushPermission()V

    .line 433
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->mBrazeManager:Lcom/mojang/minecraftpe/BrazeManager;

    invoke-virtual {p1}, Lcom/mojang/minecraftpe/BrazeManager;->configureBrazeAtRuntime()V

    .line 434
    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->mBrazeManager:Lcom/mojang/minecraftpe/BrazeManager;

    invoke-virtual {p1}, Lcom/mojang/minecraftpe/BrazeManager;->requestPushPermission()V

    .line 435
    invoke-static {v1}, Lcom/mojang/minecraftpe/platforms/Platform;->createPlatform(Z)Lcom/mojang/minecraftpe/platforms/Platform;

    move-result-object p1

    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->platform:Lcom/mojang/minecraftpe/platforms/Platform;

    const/4 p1, 0x3

    .line 436
    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->setVolumeControlStream(I)V

    .line 437
    invoke-static {p0}, Lorg/fmod/FMOD;->init(Landroid/content/Context;)V

    .line 438
    invoke-static {p0}, Lcom/mojang/minecraftpe/input/InputDeviceManager;->create(Landroid/content/Context;)Lcom/mojang/minecraftpe/input/InputDeviceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->deviceManager:Lcom/mojang/minecraftpe/input/InputDeviceManager;

    .line 439
    new-instance p1, Lcom/mojang/minecraftpe/MainActivity$HeadsetConnectionReceiver;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v2}, Lcom/mojang/minecraftpe/MainActivity$HeadsetConnectionReceiver;-><init>(Lcom/mojang/minecraftpe/MainActivity;Lcom/mojang/minecraftpe/MainActivity$HeadsetConnectionReceiver-IA;)V

    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->headsetConnectionReceiver:Lcom/mojang/minecraftpe/MainActivity$HeadsetConnectionReceiver;

    .line 440
    new-instance p1, Lcom/mojang/minecraftpe/NetworkMonitor;

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/mojang/minecraftpe/NetworkMonitor;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->mNetworkMonitor:Lcom/mojang/minecraftpe/NetworkMonitor;

    .line 441
    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->platform:Lcom/mojang/minecraftpe/platforms/Platform;

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/mojang/minecraftpe/platforms/Platform;->onAppStart(Landroid/view/View;)V

    .line 442
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v3, p1, v2}, Lcom/mojang/minecraftpe/MainActivity;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_3

    move v0, v1

    :cond_3
    sput-boolean v0, Lcom/mojang/minecraftpe/MainActivity;->mHasStoragePermission:Z

    .line 443
    const-string p1, "audio"

    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->nativeSetHeadphonesConnected(Z)V

    .line 444
    const-string p1, "clipboard"

    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->clipboardManager:Landroid/content/ClipboardManager;

    .line 445
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->initialUserLocale:Ljava/util/Locale;

    .line 446
    new-instance p1, Lcom/mojang/minecraftpe/FilePickerManager;

    invoke-direct {p1, p0}, Lcom/mojang/minecraftpe/FilePickerManager;-><init>(Lcom/mojang/minecraftpe/FilePickerManagerHandler;)V

    .line 447
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->mFilePickerManager:Lcom/mojang/minecraftpe/FilePickerManager;

    .line 448
    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->addListener(Lcom/mojang/minecraftpe/ActivityListener;)V

    .line 449
    sput-object p0, Lcom/mojang/minecraftpe/MainActivity;->mInstance:Lcom/mojang/minecraftpe/MainActivity;

    .line 450
    iput-boolean v1, p0, Lcom/mojang/minecraftpe/MainActivity;->_fromOnCreate:Z

    .line 451
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->createTextWidget()Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    move-result-object p1

    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    const p1, 0x1020002

    .line 452
    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda5;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 453
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isEduMode()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 454
    new-instance p1, Lcom/mojang/minecraftpe/python/PythonPackageLoader;

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Lcom/mojang/minecraftpe/python/PythonPackageLoader;-><init>(Landroid/content/res/AssetManager;Ljava/io/File;)V

    invoke-virtual {p1}, Lcom/mojang/minecraftpe/python/PythonPackageLoader;->unpack()V

    .line 456
    :cond_4
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isTestInfrastructureDisabled()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {}, Lcom/mojang/minecraftpe/InstrumentationRegistryHelper;->getIsRunningInAppCenter()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 457
    iput-boolean v1, p0, Lcom/mojang/minecraftpe/MainActivity;->mIsRunningInAppCenter:Z

    .line 458
    const-string p1, "BlazeLauncher"

    const-string v0, "Automation: in MainActivity::onCreate, we are running in AppCenter"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_5
    new-instance p1, Lcom/mojang/minecraftpe/WorldRecovery;

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/mojang/minecraftpe/WorldRecovery;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;)V

    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->mWorldRecovery:Lcom/mojang/minecraftpe/WorldRecovery;

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 1441
    const-string v0, "BlazeLauncher"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isChangingConfigurations()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1443
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unhandled changing configurations, changingConfigurations="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getChangingConfigurations()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 1445
    sput-object v0, Lcom/mojang/minecraftpe/MainActivity;->mInstance:Lcom/mojang/minecraftpe/MainActivity;

    .line 1446
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1447
    invoke-static {}, Lorg/fmod/FMOD;->close()V

    .line 1448
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity;->mActivityListeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mojang/minecraftpe/ActivityListener;

    .line 1449
    invoke-interface {v2}, Lcom/mojang/minecraftpe/ActivityListener;->onDestroy()V

    goto :goto_0

    .line 1451
    :cond_1
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->mFilePickerManager:Lcom/mojang/minecraftpe/FilePickerManager;

    invoke-virtual {p0, v1}, Lcom/mojang/minecraftpe/MainActivity;->removeListener(Lcom/mojang/minecraftpe/ActivityListener;)V

    .line 1452
    sput-object v0, Lcom/mojang/minecraftpe/MainActivity;->mInstance:Lcom/mojang/minecraftpe/MainActivity;

    .line 1453
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->nativeOnDestroy()V

    .line 1454
    invoke-super {p0}, Lcom/google/androidgamesdk/GameActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 1455
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public onDialogCanceled()V
    .locals 1

    const/4 v0, 0x0

    .line 1245
    iput v0, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputStatus:I

    return-void
.end method

.method public onDialogCompleted()V
    .locals 7

    .line 1347
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1348
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputText:[Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1350
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputText:[Ljava/lang/String;

    iget-object v4, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputValues:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mojang/android/StringValue;

    invoke-interface {v4}, Lcom/mojang/android/StringValue;->getStringValue()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1352
    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputText:[Ljava/lang/String;

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1353
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "js: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 1355
    iput v0, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputStatus:I

    .line 1356
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/mojang/minecraftpe/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 821
    invoke-super {p0, p1, p2}, Lcom/google/androidgamesdk/GameActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 0

    .line 781
    invoke-super {p0, p1, p2, p3}, Lcom/google/androidgamesdk/GameActivity;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->platform:Lcom/mojang/minecraftpe/platforms/Platform;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/platforms/Platform;->onVolumePressed()V

    .line 534
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/androidgamesdk/GameActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1460
    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->setIntent(Landroid/content/Intent;)V

    .line 1461
    invoke-direct {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->processIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1420
    const-string v0, "BlazeLauncher"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->nativeSuspend()V

    .line 1422
    invoke-super {p0}, Lcom/google/androidgamesdk/GameActivity;->onPause()V

    .line 1423
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1424
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->nativeShutdown()V

    :cond_0
    return-void
.end method

.method onPickFileSuccess(Z)V
    .locals 2

    .line 1636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tempPickedFile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 1638
    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->copyFromPickedFile(Ljava/lang/String;)V

    .line 1640
    :cond_0
    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->nativeOnPickFileSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 571
    array-length p1, p3

    const/4 v0, 0x0

    if-lez p1, :cond_0

    aget p1, p3, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    sput-boolean p2, Lcom/mojang/minecraftpe/MainActivity;->mHasStoragePermission:Z

    .line 572
    iget p1, p0, Lcom/mojang/minecraftpe/MainActivity;->mLastPermissionRequestReason:I

    invoke-virtual {p0, p2, p1}, Lcom/mojang/minecraftpe/MainActivity;->nativeStoragePermissionRequestResult(ZI)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 7

    .line 1372
    const-string v0, "BlazeLauncher"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    invoke-super {p0}, Lcom/google/androidgamesdk/GameActivity;->onResume()V

    .line 1374
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->headsetConnectionReceiver:Lcom/mojang/minecraftpe/MainActivity$HeadsetConnectionReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1375
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isTextWidgetActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1376
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1377
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    iget v3, v0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->allowedLength:I

    .line 1378
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->getInputType()I

    move-result v0

    and-int/lit8 v1, v0, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ne v1, v6, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v5

    .line 1382
    :goto_1
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->dismissTextWidget()V

    const/4 v4, 0x0

    move-object v1, p0

    move v5, v6

    move v6, v0

    .line 1383
    invoke-virtual/range {v1 .. v6}, Lcom/mojang/minecraftpe/MainActivity;->showKeyboard(Ljava/lang/String;IZZZ)V

    .line 1385
    :cond_2
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mActivityListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mojang/minecraftpe/ActivityListener;

    .line 1386
    invoke-interface {v1}, Lcom/mojang/minecraftpe/ActivityListener;->onResume()V

    goto :goto_2

    :cond_3
    return-void
.end method

.method native onSoftKeyboardClosed()V
.end method

.method protected onStart()V
    .locals 2

    .line 1361
    const-string v0, "BlazeLauncher"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    invoke-super {p0}, Lcom/google/androidgamesdk/GameActivity;->onStart()V

    .line 1363
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->deviceManager:Lcom/mojang/minecraftpe/input/InputDeviceManager;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/input/InputDeviceManager;->register()V

    .line 1364
    iget-boolean v0, p0, Lcom/mojang/minecraftpe/MainActivity;->_fromOnCreate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1365
    iput-boolean v0, p0, Lcom/mojang/minecraftpe/MainActivity;->_fromOnCreate:Z

    .line 1366
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->processIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 1430
    const-string v0, "BlazeLauncher"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->nativeStopThis()V

    .line 1432
    invoke-super {p0}, Lcom/google/androidgamesdk/GameActivity;->onStop()V

    .line 1433
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->deviceManager:Lcom/mojang/minecraftpe/input/InputDeviceManager;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/input/InputDeviceManager;->unregister()V

    .line 1434
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mActivityListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mojang/minecraftpe/ActivityListener;

    .line 1435
    invoke-interface {v1}, Lcom/mojang/minecraftpe/ActivityListener;->onStop()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 812
    iget-boolean v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mCursorLocked:Z

    if-eqz v0, :cond_0

    .line 813
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->lockCursor()V

    .line 815
    :cond_0
    invoke-super {p0, p1}, Lcom/google/androidgamesdk/GameActivity;->onWindowFocusChanged(Z)V

    .line 816
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->platform:Lcom/mojang/minecraftpe/platforms/Platform;

    invoke-virtual {v0, p1}, Lcom/mojang/minecraftpe/platforms/Platform;->onViewFocusChanged(Z)V

    return-void
.end method

.method public openAndroidAppSettings()V
    .locals 4

    const-string v0, "package:"

    .line 329
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/mojang/minecraftpe/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "openAndroidAppSettings: Failed to open android app settings: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlazeLauncher"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method openFile()V
    .locals 2

    .line 1624
    const-string v0, "Select a file"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->showFilePickerDialog(Ljava/lang/String;I)V

    return-void
.end method

.method public openView(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 602
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    const/4 v1, 0x0

    .line 603
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 604
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 605
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method pickImage(J)V
    .locals 1

    .line 1604
    iput-wide p1, p0, Lcom/mojang/minecraftpe/MainActivity;->mCallback:J

    .line 1606
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.PICK"

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget p2, Lcom/mojang/minecraftpe/MainActivity;->RESULT_PICK_IMAGE:I

    invoke-virtual {p0, p1, p2}, Lcom/mojang/minecraftpe/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1608
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public postScreenshotToFacebook(Ljava/lang/String;II[I)V
    .locals 0

    return-void
.end method

.method public quit()V
    .locals 1

    .line 1051
    new-instance v0, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public releaseMulticast()V
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isMulticastHeld()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    :cond_1
    :goto_0
    return-void
.end method

.method public removeListener(Lcom/mojang/minecraftpe/ActivityListener;)V
    .locals 1

    .line 1684
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mActivityListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestPushPermission()V
    .locals 3

    .line 562
    const-string v0, "BlazeLauncher"

    const-string v1, "MainActivity::requestPushPermission"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const-string v2, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p0, v2, v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    new-instance v0, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda16;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public requestStoragePermission(I)V
    .locals 3

    .line 554
    iput p1, p0, Lcom/mojang/minecraftpe/MainActivity;->mLastPermissionRequestReason:I

    const/4 p1, 0x1

    .line 556
    new-array v0, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/mojang/minecraftpe/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public runNativeCallbackOnUiThread(J)V
    .locals 2

    .line 1136
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, p1, p2}, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda19;-><init>(Lcom/mojang/minecraftpe/MainActivity;J)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1140
    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1142
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method saveFile(Ljava/lang/String;)V
    .locals 2

    .line 1628
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1629
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1630
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1631
    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x4

    .line 1632
    invoke-virtual {p0, v0, p1}, Lcom/mojang/minecraftpe/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public setBrazeID(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setCachedDeviceId(Ljava/lang/String;)V
    .locals 2

    .line 356
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 357
    const-string v1, "deviceId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 358
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setCaretPosition(I)V
    .locals 1

    .line 1407
    new-instance v0, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda4;-><init>(Lcom/mojang/minecraftpe/MainActivity;I)V

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setClipboard(Ljava/lang/String;)V
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->clipboardManager:Landroid/content/ClipboardManager;

    const-string v1, "BlazeLauncher-Clipdata"

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method setFileDialogCallback(J)V
    .locals 0

    .line 1613
    iput-wide p1, p0, Lcom/mojang/minecraftpe/MainActivity;->mFileDialogCallback:J

    return-void
.end method

.method public setIsPowerVR(Z)V
    .locals 0

    .line 807
    sput-boolean p1, Lcom/mojang/minecraftpe/MainActivity;->_isPowerVr:Z

    return-void
.end method

.method public setKeepScreenOnFlag(Z)V
    .locals 1

    .line 1849
    new-instance v0, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1}, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda14;-><init>(Lcom/mojang/minecraftpe/MainActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLoginInformation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1102
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1103
    const-string v1, "accessToken"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1104
    const-string p1, "clientId"

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1105
    const-string p1, "profileId"

    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1106
    const-string p1, "profileName"

    invoke-interface {v0, p1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1107
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setMulticastReferenceCounting(Z)V
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :cond_0

    .line 489
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    :cond_0
    return-void
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 2

    .line 1096
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1097
    const-string v1, "refreshToken"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1098
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSecureStorageKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1059
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1060
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1061
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSession(Ljava/lang/String;)V
    .locals 2

    .line 1090
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1091
    const-string v1, "sessionID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1092
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setTextBoxBackend(Ljava/lang/String;)V
    .locals 1

    .line 1395
    new-instance v0, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1}, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda15;-><init>(Lcom/mojang/minecraftpe/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTextToSpeechEnabled(Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 539
    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->textToSpeechManager:Landroid/speech/tts/TextToSpeech;

    if-eqz p1, :cond_0

    return-void

    .line 543
    :cond_0
    :try_start_0
    new-instance p1, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda10;-><init>()V

    invoke-direct {p1, v0, v1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->textToSpeechManager:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 550
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->textToSpeechManager:Landroid/speech/tts/TextToSpeech;

    return-void
.end method

.method public setVolume(F)V
    .locals 0

    .line 1692
    iput p1, p0, Lcom/mojang/minecraftpe/MainActivity;->mVolume:F

    return-void
.end method

.method public setupKeyboardViews(Ljava/lang/String;IZZZ)V
    .locals 1

    .line 609
    sget-object p3, Ldev/blaze/launcher/Start;->display:Ldev/blaze/launcher/GLES3JNIView;

    invoke-virtual {p0, p3}, Lcom/mojang/minecraftpe/MainActivity;->closeView(Landroid/view/View;)V

    .line 610
    sget-object p3, Ldev/blaze/launcher/Start;->vTouch:Landroid/view/View;

    invoke-virtual {p0, p3}, Lcom/mojang/minecraftpe/MainActivity;->closeView(Landroid/view/View;)V

    .line 611
    iget-object p3, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    if-nez p3, :cond_0

    .line 612
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->createTextWidget()Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    move-result-object p3

    iput-object p3, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    .line 614
    :cond_0
    iget-object p3, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    xor-int/lit8 v0, p5, 0x1

    invoke-virtual {p3, p2, v0}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->updateFilters(IZ)V

    .line 615
    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->setTextBoxBackend(Ljava/lang/String;)V

    .line 616
    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setVisibility(I)V

    .line 617
    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    if-eqz p5, :cond_1

    const/high16 p3, 0x20000

    goto :goto_0

    :cond_1
    const/high16 p3, 0x80000

    :goto_0
    invoke-virtual {p1, p3}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setInputType(I)V

    .line 618
    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    if-eqz p4, :cond_2

    .line 620
    invoke-virtual {p1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->getInputType()I

    move-result p3

    or-int/lit8 p3, p3, 0x2

    invoke-virtual {p1, p3}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setInputType(I)V

    goto :goto_1

    .line 622
    :cond_2
    invoke-virtual {p1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->getInputType()I

    move-result p3

    or-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p3}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setInputType(I)V

    .line 624
    :goto_1
    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {p1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->requestFocus()Z

    .line 625
    invoke-direct {p0}, Lcom/mojang/minecraftpe/MainActivity;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    iget-object p3, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {p1, p3, p2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method public share(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 318
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 319
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    const-string p2, "android.intent.extra.TEXT"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const-string p2, "text/plain"

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public shareFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1872
    const-string p1, "BlazeLauncher"

    const-string p2, "Mojang Called Share File"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showKeyboard(Ljava/lang/String;IZZZ)V
    .locals 8

    .line 738
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->nativeClearAButtonState()V

    .line 739
    new-instance v7, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda7;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda7;-><init>(Lcom/mojang/minecraftpe/MainActivity;Ljava/lang/String;IZZZ)V

    invoke-virtual {p0, v7}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startPickerActivity(Landroid/content/Intent;I)V
    .locals 0

    .line 1676
    invoke-virtual {p0, p1, p2}, Lcom/mojang/minecraftpe/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startPlayIntegrityCheck()V
    .locals 0

    return-void
.end method

.method public startTextToSpeech(Ljava/lang/String;)V
    .locals 4

    .line 1696
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->textToSpeechManager:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 1697
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1698
    const-string/jumbo v1, "volume"

    iget v2, p0, Lcom/mojang/minecraftpe/MainActivity;->mVolume:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1699
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->textToSpeechManager:Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v0, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public statsTrackEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public statsUpdateUserData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public stopTextToSpeech()V
    .locals 1

    .line 1704
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->textToSpeechManager:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 1706
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    :cond_0
    return-void
.end method

.method public supportsSizeQuery(Ljava/lang/String;)Z
    .locals 2

    .line 1818
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 1820
    :try_start_0
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 1823
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public throwRuntimeExceptionFromNative(Ljava/lang/String;)V
    .locals 2

    .line 362
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public tick()V
    .locals 0

    return-void
.end method

.method public trackPurchaseEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public unlockCursor()V
    .locals 3

    .line 504
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const v0, 0x1020002

    .line 505
    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    .line 506
    iput-boolean v2, p0, Lcom/mojang/minecraftpe/MainActivity;->mCursorLocked:Z

    .line 507
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_0

    .line 508
    invoke-virtual {v0}, Landroid/view/View;->releasePointerCapture()V

    :cond_0
    return-void
.end method

.method public updateLocalization(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 728
    new-instance v0, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/mojang/minecraftpe/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateTextboxText(Ljava/lang/String;)V
    .locals 1

    .line 764
    new-instance v0, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda8;-><init>(Lcom/mojang/minecraftpe/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public vibrate(I)V
    .locals 3

    .line 1241
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method
