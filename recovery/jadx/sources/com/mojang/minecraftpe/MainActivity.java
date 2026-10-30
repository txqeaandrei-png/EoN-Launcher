package com.mojang.minecraftpe;

import android.R;
import android.accessibilityservice.AccessibilityServiceInfo;
import android.app.ActivityManager;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Point;
import android.graphics.Rect;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Debug;
import android.os.Environment;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.RemoteException;
import android.os.StatFs;
import android.os.SystemClock;
import android.os.Vibrator;
import android.os.storage.StorageManager;
import android.preference.PreferenceManager;
import android.provider.MediaStore;
import android.speech.tts.TextToSpeech;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.InputDevice;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import com.google.android.gms.location.DeviceOrientationRequest;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.androidgamesdk.GameActivity;
import com.google.firebase.FirebaseApp;
import com.mojang.android.StringValue;
import com.mojang.minecraftpe.input.InputDeviceManager;
import com.mojang.minecraftpe.platforms.Platform;
import com.mojang.minecraftpe.python.PythonPackageLoader;
import dev.blaze.launcher.Start;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.InterfaceAddress;
import java.net.NetworkInterface;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.fmod.FMOD;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class MainActivity extends GameActivity implements View.OnKeyListener, FilePickerManagerHandler {
    static final int MSG_CORRELATION_CHECK = 672;
    static final int MSG_CORRELATION_RESPONSE = 837;
    static final int OPEN_FILE_RESULT_CODE = 5;
    private static final int POST_NOTIFICATIONS_PERMISSION_ID = 2;
    public static int RESULT_PICK_IMAGE = 1;
    static final int SAVE_FILE_RESULT_CODE = 4;
    private static final String SESSION_HISTORY_SEP = "&";
    private static final int STORAGE_PERMISSION_ID = 1;
    private static boolean _isPowerVr;
    private static boolean mHasStoragePermission;
    public static MainActivity mInstance;
    Class SystemProperties;
    private ClipboardManager clipboardManager;
    private InputDeviceManager deviceManager;
    Method getPropMethod;
    HeadsetConnectionReceiver headsetConnectionReceiver;
    private Locale initialUserLocale;
    private BatteryMonitor mBatteryMonitor;
    private AlertDialog mDialog;
    private HardwareInformation mHardwareInformation;
    public int mLastPermissionRequestReason;
    private NetworkMonitor mNetworkMonitor;
    public ParcelFileDescriptor mPickedFileDescriptor;
    private ThermalMonitor mThermalMonitor;
    Platform platform;
    TextInputProxyEditTextbox textInputWidget;
    private TextToSpeech textToSpeechManager;
    final Messenger mMessenger = new Messenger(new IncomingHandler());
    private final ArrayList<StringValue> _userInputValues = new ArrayList<>();
    public int virtualKeyboardHeight = 0;
    List<ActivityListener> mActivityListeners = new ArrayList();
    Messenger mService = null;
    MessageConnectionStatus mBound = MessageConnectionStatus.NOTSET;
    private final ServiceConnection mConnection = new ServiceConnection() { // from class: com.mojang.minecraftpe.MainActivity.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            MainActivity.this.mService = new Messenger(iBinder);
            MainActivity.this.mBound = MessageConnectionStatus.CONNECTED;
            Message messageObtain = Message.obtain(null, MainActivity.MSG_CORRELATION_CHECK, 0, 0);
            messageObtain.replyTo = MainActivity.this.mMessenger;
            try {
                MainActivity.this.mService.send(messageObtain);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            MainActivity.this.mService = null;
            MainActivity.this.mBound = MessageConnectionStatus.DISCONNECTED;
        }
    };
    AtomicInteger mCaretPositionMirror = new AtomicInteger(0);
    AtomicReference<String> mCurrentTextMirror = new AtomicReference<>("");
    ActivityManager.MemoryInfo mCachedMemoryInfo = new ActivityManager.MemoryInfo();
    long mCachedMemoryInfoUpdateTime = 0;
    long mCachedUsedMemory = 0;
    long mCachedUsedMemoryUpdateTime = 0;
    Debug.MemoryInfo mCachedDebugMemoryInfo = new Debug.MemoryInfo();
    long mCachedDebugMemoryUpdateTime = 0;
    private Thread mMainThread = null;
    private boolean _fromOnCreate = false;
    private boolean mCursorLocked = false;
    private boolean mIsSoftKeyboardVisible = false;
    private long mFileDialogCallback = 0;
    private float mVolume = 1.0f;
    private boolean mIsRunningInAppCenter = false;
    private FilePickerManager mFilePickerManager = null;
    private WorldRecovery mWorldRecovery = null;
    private WifiManager mWifiManager = null;
    private WifiManager.MulticastLock mMulticastLock = null;
    private int _userInputStatus = -1;
    private String[] _userInputText = null;
    private AppExitInfoHelper mAppExitInfoHelper = null;
    private long mCallback = 0;
    private BrazeManager mBrazeManager = null;
    public Rect originalRect = new Rect();

    /* JADX INFO: loaded from: classes3.dex */
    enum MessageConnectionStatus {
        NOTSET,
        CONNECTED,
        DISCONNECTED
    }

    private void assertIsMainThread() {
    }

    private void configureBrazeAtRuntime() {
    }

    static /* synthetic */ void lambda$setTextToSpeechEnabled$2(int i) {
    }

    private static native void nativeWaitCrashManagementSetupComplete();

    public void buyGame() {
    }

    public int checkLicense() {
        return 0;
    }

    public void disableBrazeSDK() {
    }

    public void displayDialog(int i) {
    }

    public void enableBrazeSDK() {
    }

    public boolean hasBuyButtonWhenInvalidLicense() {
        return true;
    }

    public void initializeCrashManager() {
    }

    native boolean isAndroidAmazon();

    native boolean isAndroidChromebook();

    native boolean isAndroidTrial();

    native boolean isBrazeEnabled();

    public boolean isBrazeSDKDisabled() {
        return true;
    }

    protected boolean isDemo() {
        return false;
    }

    public native boolean isEduMode();

    public native boolean isPublishBuild();

    native boolean isTestInfrastructureDisabled();

    native void nativeBackPressed();

    native void nativeBackSpacePressed();

    native void nativeCaretPosition(int i);

    native String nativeCheckIfTestsAreFinished();

    native void nativeClearAButtonState();

    native void nativeDeviceCorrelation(long j, String str, long j2, String str2);

    native void nativeFireNetworkChangedEvent(String str);

    native String nativeGetActiveScreen();

    native String nativeGetDevConsoleLogName();

    native String nativeGetDeviceId();

    native String nativeGetLogText(String str);

    native long nativeInitializeLibHttpClient(long j);

    native long nativeInitializeXboxLive(long j, long j2);

    public native boolean nativeKeyHandler(int i, int i2);

    native void nativeOnDestroy();

    native void nativeOnPickFileCanceled();

    native void nativeOnPickFileSuccess(String str);

    native void nativeOnPickImageCanceled(long j);

    native void nativeOnPickImageSuccess(long j, String str);

    native void nativeProcessIntentUriQuery(String str, String str2);

    native void nativeResize(int i, int i2);

    native void nativeReturnKeyPressed();

    native void nativeRunNativeCallbackOnUiThread(long j);

    native void nativeSetHeadphonesConnected(boolean z);

    native void nativeSetIntegrityToken(String str);

    native void nativeSetIntegrityTokenErrorMessage(String str);

    native String nativeSetOptions(String str);

    native void nativeSetTextboxText(String str);

    native void nativeShutdown();

    native void nativeStopThis();

    native void nativeStoragePermissionRequestResult(boolean z, int i);

    native void nativeSuspend();

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        return false;
    }

    native void onSoftKeyboardClosed();

    public void postScreenshotToFacebook(String str, int i, int i2, int[] iArr) {
    }

    public void setBrazeID(String str) {
    }

    public void startPlayIntegrityCheck() {
    }

    public void statsTrackEvent(String str, String str2) {
    }

    public void statsUpdateUserData(String str, String str2) {
    }

    public void tick() {
    }

    public void trackPurchaseEvent(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
    }

    public static boolean isPowerVR() {
        return _isPowerVr;
    }

    public AppExitInfoHelper initializeAppExitInfoHelper() {
        if (this.mAppExitInfoHelper == null) {
            this.mAppExitInfoHelper = new AppExitInfoHelper(getApplicationContext());
        }
        return this.mAppExitInfoHelper;
    }

    public static void saveScreenshot(String str, int i, int i2, int[] iArr) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iArr, i, i2, Bitmap.Config.ARGB_8888);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(str);
            bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, 85, fileOutputStream);
            try {
                fileOutputStream.flush();
            } catch (IOException e) {
                e.printStackTrace();
            }
            try {
                fileOutputStream.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        } catch (FileNotFoundException e3) {
            System.err.println("Couldn't create file: " + str);
            e3.printStackTrace();
        }
    }

    public void launchUri(String str) {
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
    }

    public void share(String str, String str2, String str3) {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.SUBJECT", str);
        intent.putExtra("android.intent.extra.TITLE", str2);
        intent.putExtra("android.intent.extra.TEXT", str3);
        intent.setType("text/plain");
        startActivity(Intent.createChooser(intent, str));
    }

    public void openAndroidAppSettings() {
        try {
            startActivity(new Intent("android.settings.APPLICATION_DETAILS_SETTINGS", Uri.parse("package:" + getPackageName())));
        } catch (ActivityNotFoundException e) {
            Log.e("BlazeLauncher", "openAndroidAppSettings: Failed to open android app settings: " + e);
        }
    }

    public void setClipboard(String str) {
        this.clipboardManager.setPrimaryClip(ClipData.newPlainText("BlazeLauncher-Clipdata", str));
    }

    public float getKeyboardHeight() {
        return this.virtualKeyboardHeight;
    }

    public void setCachedDeviceId(String str) {
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(this).edit();
        editorEdit.putString("deviceId", str);
        editorEdit.apply();
    }

    public void throwRuntimeExceptionFromNative(final String str) {
        new Handler(getMainLooper()).post(new Runnable() { // from class: com.mojang.minecraftpe.MainActivity$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.lambda$throwRuntimeExceptionFromNative$0(str);
            }
        });
    }

    static /* synthetic */ void lambda$throwRuntimeExceptionFromNative$0(String str) {
        throw new RuntimeException(str);
    }

    public void deviceIdCorrelationStart() {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(getApplicationContext());
        int i = defaultSharedPreferences.getInt("correlationAttempts", 10);
        if (i == 0) {
            return;
        }
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(getPackageName().contains("trial") ? getPackageName() : "com.mojang.minecrafttrialpe", "com.mojang.minecraftpe.ImportService"));
        bindService(intent, this.mConnection, 1);
        SharedPreferences.Editor editorEdit = defaultSharedPreferences.edit();
        editorEdit.putInt("correlationAttempts", i - 1);
        editorEdit.apply();
    }

    public BatteryMonitor getBatteryMonitor() {
        if (this.mBatteryMonitor == null) {
            this.mBatteryMonitor = new BatteryMonitor(this);
        }
        return this.mBatteryMonitor;
    }

    public HardwareInformation getHardwareInfo() {
        if (this.mHardwareInformation == null) {
            this.mHardwareInformation = new HardwareInformation(this);
        }
        return this.mHardwareInformation;
    }

    public ThermalMonitor getThermalMonitor() {
        if (this.mThermalMonitor == null) {
            this.mThermalMonitor = new ThermalMonitor(this);
        }
        return this.mThermalMonitor;
    }

    public CrashManager initializeCrashManager(String str, String str2) {
        return new CrashManager();
    }

    @Override // com.google.androidgamesdk.GameActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        Log.i("MinecraftPlatform", "MainActivity::onCreate");
        this.mMainThread = Thread.currentThread();
        this.mBrazeManager = new BrazeManager(this);
        super.onCreate(bundle);
        if (getResources() == null) {
            Log.w("BlazeLauncher - replacing", "App is installing/replacing. Killing...");
            Process.killProcess(Process.myPid());
        }
        nativeWaitCrashManagementSetupComplete();
        if (isEduMode()) {
            try {
                getClassLoader().loadClass("com.microsoft.applications.events.HttpClient").getConstructor(Context.class).newInstance(getApplicationContext());
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        } else if (Build.VERSION.SDK_INT >= 33) {
            requestPushPermission();
        }
        this.mBrazeManager.configureBrazeAtRuntime();
        this.mBrazeManager.requestPushPermission();
        this.platform = Platform.createPlatform(true);
        setVolumeControlStream(3);
        FMOD.init(this);
        this.deviceManager = InputDeviceManager.create(this);
        this.headsetConnectionReceiver = new HeadsetConnectionReceiver();
        this.mNetworkMonitor = new NetworkMonitor(getApplicationContext());
        this.platform.onAppStart(getWindow().getDecorView());
        mHasStoragePermission = checkPermission("android.permission.WRITE_EXTERNAL_STORAGE", Process.myPid(), Process.myUid()) == 0;
        nativeSetHeadphonesConnected(((AudioManager) getSystemService("audio")).isWiredHeadsetOn());
        this.clipboardManager = (ClipboardManager) getSystemService("clipboard");
        this.initialUserLocale = Locale.getDefault();
        FilePickerManager filePickerManager = new FilePickerManager(this);
        this.mFilePickerManager = filePickerManager;
        addListener(filePickerManager);
        mInstance = this;
        this._fromOnCreate = true;
        this.textInputWidget = createTextWidget();
        findViewById(R.id.content).getRootView().addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.mojang.minecraftpe.MainActivity$$ExternalSyntheticLambda5
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                this.f$0.lambda$onCreate$1(view, i, i2, i3, i4, i5, i6, i7, i8);
            }
        });
        if (isEduMode()) {
            new PythonPackageLoader(getApplicationContext().getAssets(), getFilesDir()).unpack();
        }
        if (!isTestInfrastructureDisabled() && InstrumentationRegistryHelper.getIsRunningInAppCenter()) {
            this.mIsRunningInAppCenter = true;
            Log.w("BlazeLauncher", "Automation: in MainActivity::onCreate, we are running in AppCenter");
        }
        this.mWorldRecovery = new WorldRecovery(getApplicationContext(), getApplicationContext().getContentResolver());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$1(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        nativeResize(i3 - i, i4 - i2);
    }

    public void initializeMulticast() {
        WifiManager wifiManager = (WifiManager) getApplicationContext().getSystemService("wifi");
        this.mWifiManager = wifiManager;
        if (wifiManager != null) {
            this.mMulticastLock = wifiManager.createMulticastLock("MinecraftMCLock");
            setMulticastReferenceCounting(false);
        }
    }

    public void releaseMulticast() {
        if (this.mMulticastLock == null || !isMulticastHeld()) {
            return;
        }
        this.mMulticastLock.release();
    }

    public void acquireMulticast() {
        if (this.mMulticastLock == null || isMulticastHeld()) {
            return;
        }
        this.mMulticastLock.acquire();
    }

    public void setMulticastReferenceCounting(boolean z) {
        WifiManager.MulticastLock multicastLock = this.mMulticastLock;
        if (multicastLock != null) {
            multicastLock.setReferenceCounted(z);
        }
    }

    public void lockCursor() {
        if (getAndroidVersion() >= 26) {
            View rootView = findViewById(R.id.content).getRootView();
            this.mCursorLocked = true;
            if (Build.VERSION.SDK_INT >= 26) {
                rootView.requestPointerCapture();
            }
        }
    }

    public void unlockCursor() {
        if (getAndroidVersion() >= 26) {
            View rootView = findViewById(R.id.content).getRootView();
            this.mCursorLocked = false;
            if (Build.VERSION.SDK_INT >= 26) {
                rootView.releasePointerCapture();
            }
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        if (this.mCursorLocked && (motionEvent.getSource() & 8194) == 8194) {
            lockCursor();
        }
        return super.dispatchGenericMotionEvent(motionEvent);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.core.app.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (nativeKeyHandler(keyEvent.getKeyCode(), keyEvent.getAction())) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // com.google.androidgamesdk.GameActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i == 25 || i == 24) {
            this.platform.onVolumePressed();
        }
        return super.onKeyUp(i, keyEvent);
    }

    public void setTextToSpeechEnabled(boolean z) {
        if (z) {
            if (this.textToSpeechManager != null) {
                return;
            }
            try {
                this.textToSpeechManager = new TextToSpeech(getApplicationContext(), new TextToSpeech.OnInitListener() { // from class: com.mojang.minecraftpe.MainActivity$$ExternalSyntheticLambda10
                    @Override // android.speech.tts.TextToSpeech.OnInitListener
                    public final void onInit(int i) {
                        MainActivity.lambda$setTextToSpeechEnabled$2(i);
                    }
                });
                return;
            } catch (Exception unused) {
                return;
            }
        }
        this.textToSpeechManager = null;
    }

    public void requestStoragePermission(int i) {
        this.mLastPermissionRequestReason = i;
        requestPermissions(new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 1);
    }

    public void requestPushPermission() {
        Log.i("BlazeLauncher", "MainActivity::requestPushPermission");
        if (checkPermission("android.permission.POST_NOTIFICATIONS", Process.myPid(), Process.myUid()) != 0) {
            runOnUiThread(new Runnable() { // from class: com.mojang.minecraftpe.MainActivity$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$requestPushPermission$3();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestPushPermission$3() {
        requestPermissions(new String[]{"android.permission.POST_NOTIFICATIONS"}, 2);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i == 1) {
            boolean z = iArr.length > 0 && iArr[0] == 0;
            mHasStoragePermission = z;
            nativeStoragePermissionRequestResult(z, this.mLastPermissionRequestReason);
        }
    }

    public boolean hasWriteExternalStoragePermission() {
        boolean z = checkPermission("android.permission.WRITE_EXTERNAL_STORAGE", Process.myPid(), Process.myUid()) == 0;
        mHasStoragePermission = z;
        return z;
    }

    public boolean hasHardwareKeyboard() {
        return getResources().getConfiguration().keyboard == 2;
    }

    public void closeView(View view) {
        if (view == null) {
            return;
        }
        view.setEnabled(false);
        view.setVisibility(8);
        view.setFocusable(false);
        view.setClickable(false);
    }

    public void openView(View view) {
        if (view == null) {
            return;
        }
        view.setEnabled(true);
        view.setVisibility(0);
        view.setFocusable(true);
        view.setClickable(true);
    }

    /* JADX INFO: renamed from: setupKeyboardViews, reason: merged with bridge method [inline-methods] */
    public void lambda$showKeyboard$7(String str, int i, boolean z, boolean z2, boolean z3) {
        closeView(Start.display);
        closeView(Start.vTouch);
        if (this.textInputWidget == null) {
            this.textInputWidget = createTextWidget();
        }
        this.textInputWidget.updateFilters(i, !z3);
        setTextBoxBackend(str);
        this.textInputWidget.setVisibility(0);
        this.textInputWidget.setInputType(z3 ? 131072 : 524288);
        TextInputProxyEditTextbox textInputProxyEditTextbox = this.textInputWidget;
        if (z2) {
            textInputProxyEditTextbox.setInputType(textInputProxyEditTextbox.getInputType() | 2);
        } else {
            textInputProxyEditTextbox.setInputType(textInputProxyEditTextbox.getInputType() | 1);
        }
        this.textInputWidget.requestFocus();
        getInputMethodManager().showSoftInput(this.textInputWidget, 0);
    }

    public TextInputProxyEditTextbox createTextWidget() {
        final TextInputProxyEditTextbox textInputProxyEditTextbox = new TextInputProxyEditTextbox(this);
        textInputProxyEditTextbox.setVisibility(8);
        textInputProxyEditTextbox.setFocusable(true);
        textInputProxyEditTextbox.setFocusableInTouchMode(true);
        textInputProxyEditTextbox.setImeOptions(268435461);
        textInputProxyEditTextbox.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.mojang.minecraftpe.MainActivity$$ExternalSyntheticLambda2
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                return this.f$0.lambda$createTextWidget$4(textInputProxyEditTextbox, textView, i, keyEvent);
            }
        });
        textInputProxyEditTextbox.addTextChangedListener(new TextWatcher() { // from class: com.mojang.minecraftpe.MainActivity.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                String string = editable.toString();
                if (string.equals(MainActivity.this.mCurrentTextMirror.get())) {
                    return;
                }
                MainActivity.this.mCurrentTextMirror.set(string);
                MainActivity.this.nativeSetTextboxText(string);
            }
        });
        textInputProxyEditTextbox.setAccessibilityDelegate(new View.AccessibilityDelegate() { // from class: com.mojang.minecraftpe.MainActivity.3
            @Override // android.view.View.AccessibilityDelegate
            public void sendAccessibilityEvent(View view, int i) {
                super.sendAccessibilityEvent(view, i);
                if (i == 8192) {
                    int selectionStart = textInputProxyEditTextbox.getSelectionStart();
                    MainActivity.this.mCaretPositionMirror.set(selectionStart);
                    MainActivity.this.nativeCaretPosition(selectionStart);
                }
            }
        });
        textInputProxyEditTextbox.setOnMCPEKeyWatcher(new AnonymousClass4());
        ((ViewGroup) findViewById(R.id.content)).addView(textInputProxyEditTextbox, new ViewGroup.LayoutParams(320, 50));
        final View rootView = findViewById(R.id.content).getRootView();
        rootView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.mojang.minecraftpe.MainActivity$$ExternalSyntheticLambda3
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                this.f$0.lambda$createTextWidget$5(rootView);
            }
        });
        return textInputProxyEditTextbox;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createTextWidget$4(TextInputProxyEditTextbox textInputProxyEditTextbox, TextView textView, int i, KeyEvent keyEvent) {
        Log.w("BlazeLauncher - keyboard", "onEditorAction: " + i);
        boolean z = i == 5;
        boolean z2 = i == 0 && keyEvent != null && keyEvent.getAction() == 0;
        if (z || z2) {
            if (z) {
                nativeReturnKeyPressed();
            }
            String string = textInputProxyEditTextbox.getText().toString();
            int selectionEnd = textInputProxyEditTextbox.getSelectionEnd();
            if (selectionEnd < 0 || selectionEnd > string.length()) {
                selectionEnd = string.length();
            }
            if ((131072 & textInputProxyEditTextbox.getInputType()) != 0) {
                textInputProxyEditTextbox.setText(string.substring(0, selectionEnd) + "\n" + string.substring(selectionEnd));
                textInputProxyEditTextbox.setSelection(Math.min(selectionEnd + 1, textInputProxyEditTextbox.getText().length()));
            }
        } else {
            if (i != 7) {
                return false;
            }
            nativeBackPressed();
        }
        return true;
    }

    /* JADX INFO: renamed from: com.mojang.minecraftpe.MainActivity$4, reason: invalid class name */
    class AnonymousClass4 implements TextInputProxyEditTextbox.MCPEKeyWatcher {
        AnonymousClass4() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onDeleteKeyPressed$0() {
            MainActivity.this.nativeBackSpacePressed();
        }

        @Override // com.mojang.minecraftpe.TextInputProxyEditTextbox.MCPEKeyWatcher
        public void onDeleteKeyPressed() {
            MainActivity.this.runOnUiThread(new Runnable() { // from class: com.mojang.minecraftpe.MainActivity$4$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onDeleteKeyPressed$0();
                }
            });
        }

        @Override // com.mojang.minecraftpe.TextInputProxyEditTextbox.MCPEKeyWatcher
        public boolean onBackKeyPressed() {
            MainActivity.this.runOnUiThread(new Runnable() { // from class: com.mojang.minecraftpe.MainActivity$4$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onBackKeyPressed$1();
                }
            });
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBackKeyPressed$1() {
            Log.w("BlazeLauncher - keyboard", "textInputWidget.onBackPressed");
            MainActivity.this.nativeBackPressed();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createTextWidget$5(View view) {
        Rect rect = new Rect();
        view.getWindowVisibleDisplayFrame(rect);
        this.virtualKeyboardHeight = view.getRootView().getHeight() - rect.height();
        if (view.getRootView().getHeight() - rect.bottom > 0) {
            if (this.mIsSoftKeyboardVisible) {
                return;
            }
            this.mIsSoftKeyboardVisible = true;
        } else if (this.mIsSoftKeyboardVisible) {
            this.mIsSoftKeyboardVisible = false;
            openView(Start.vTouch);
            openView(Start.display);
            onSoftKeyboardClosed();
        }
    }

    public void updateLocalization(final String str, final String str2) {
        runOnUiThread(new Runnable() { // from class: com.mojang.minecraftpe.MainActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$updateLocalization$6(str, str2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateLocalization$6(String str, String str2) {
        Locale locale = new Locale(str, str2);
        Locale.setDefault(locale);
        Configuration configuration = new Configuration();
        configuration.locale = locale;
        getResources().updateConfiguration(configuration, getResources().getDisplayMetrics());
    }

    public void showKeyboard(final String str, final int i, final boolean z, final boolean z2, final boolean z3) {
        nativeClearAButtonState();
        runOnUiThread(new Runnable() { // from class: com.mojang.minecraftpe.MainActivity$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showKeyboard$7(str, i, z, z2, z3);
            }
        });
    }

    public void hideKeyboard() {
        runOnUiThread(new Runnable() { // from class: com.mojang.minecraftpe.MainActivity$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.dismissTextWidget();
            }
        });
    }

    public boolean isSoftKeyboardVisible() {
        return this.mIsSoftKeyboardVisible;
    }

    public boolean isTextWidgetActive() {
        TextInputProxyEditTextbox textInputProxyEditTextbox = this.textInputWidget;
        return textInputProxyEditTextbox != null && textInputProxyEditTextbox.getVisibility() == 0;
    }

    public void dismissTextWidget() {
        if (isTextWidgetActive()) {
            getInputMethodManager().hideSoftInputFromWindow(this.textInputWidget.getWindowToken(), 0);
            this.textInputWidget.setInputType(524288);
            this.textInputWidget.setVisibility(8);
        }
    }

    public void updateTextboxText(final String str) {
        runOnUiThread(new Runnable() { // from class: com.mojang.minecraftpe.MainActivity$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$updateTextboxText$8(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateTextboxText$8(String str) {
        if (isTextWidgetActive()) {
            this.textInputWidget.setTextFromGame(str);
            TextInputProxyEditTextbox textInputProxyEditTextbox = this.textInputWidget;
            textInputProxyEditTextbox.setSelection(textInputProxyEditTextbox.length());
        }
    }

    public int getCursorPosition() {
        if (isTextWidgetActive()) {
            return this.textInputWidget.getSelectionStart();
        }
        return -1;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyMultiple(int i, int i2, KeyEvent keyEvent) {
        return super.onKeyMultiple(i, i2, keyEvent);
    }

    private InputMethodManager getInputMethodManager() {
        return (InputMethodManager) getSystemService("input_method");
    }

    private void createAlertDialog(boolean z, boolean z2, boolean z3) {
        MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(this);
        materialAlertDialogBuilder.setTitle((CharSequence) "");
        if (z3) {
            materialAlertDialogBuilder.setCancelable(false);
        }
        materialAlertDialogBuilder.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.mojang.minecraftpe.MainActivity$$ExternalSyntheticLambda11
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                this.f$0.lambda$createAlertDialog$9(dialogInterface);
            }
        });
        if (z) {
            materialAlertDialogBuilder.setPositiveButton((CharSequence) "Ok", new DialogInterface.OnClickListener() { // from class: com.mojang.minecraftpe.MainActivity$$ExternalSyntheticLambda12
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f$0.lambda$createAlertDialog$10(dialogInterface, i);
                }
            });
        }
        if (z2) {
            materialAlertDialogBuilder.setNegativeButton((CharSequence) "Cancel", new DialogInterface.OnClickListener() { // from class: com.mojang.minecraftpe.MainActivity$$ExternalSyntheticLambda13
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f$0.lambda$createAlertDialog$11(dialogInterface, i);
                }
            });
        }
        AlertDialog alertDialogCreate = materialAlertDialogBuilder.create();
        this.mDialog = alertDialogCreate;
        alertDialogCreate.setOwnerActivity(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createAlertDialog$9(DialogInterface dialogInterface) {
        onDialogCanceled();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createAlertDialog$10(DialogInterface dialogInterface, int i) {
        onDialogCompleted();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createAlertDialog$11(DialogInterface dialogInterface, int i) {
        onDialogCanceled();
    }

    public void setIsPowerVR(boolean z) {
        _isPowerVr = z;
    }

    @Override // com.google.androidgamesdk.GameActivity, android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        if (z && this.mCursorLocked) {
            lockCursor();
        }
        super.onWindowFocusChanged(z);
        this.platform.onViewFocusChanged(z);
    }

    @Override // com.google.androidgamesdk.GameActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return super.onKeyDown(i, keyEvent);
    }

    public int getKeyFromKeyCode(int i, int i2, int i3) {
        if (i3 < 0) {
            int[] deviceIds = InputDevice.getDeviceIds();
            if (deviceIds.length == 0) {
                return 0;
            }
            i3 = deviceIds[0];
        }
        InputDevice device = InputDevice.getDevice(i3);
        if (device == null) {
            return 0;
        }
        return device.getKeyCharacterMap().get(i, i2);
    }

    public void copyToPickedFile(String str) {
        try {
            FileInputStream fileInputStream = new FileInputStream(str);
            ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(this.mPickedFileDescriptor);
            copyFile(fileInputStream, autoCloseOutputStream);
            autoCloseOutputStream.close();
            fileInputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        this.mPickedFileDescriptor = null;
    }

    public void copyFromPickedFile(String str) {
        try {
            ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(this.mPickedFileDescriptor);
            FileOutputStream fileOutputStream = new FileOutputStream(str);
            copyFile(autoCloseInputStream, fileOutputStream);
            fileOutputStream.close();
            autoCloseInputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        this.mPickedFileDescriptor = null;
    }

    private void copyFile(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[1024];
        int i = inputStream.read(bArr);
        while (i != -1) {
            outputStream.write(bArr, 0, i);
            i = inputStream.read(bArr);
        }
        inputStream.close();
        outputStream.close();
    }

    public byte[] getFileDataBytes(String str) {
        if (str.isEmpty()) {
            return null;
        }
        try {
            AssetManager assets = getApplicationContext().getAssets();
            if (assets == null) {
                System.err.println("getAssets returned null: Could not getFileDataBytes " + str);
                return null;
            }
            try {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(assets.open(str));
                try {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int i = bufferedInputStream.read(bArr);
                        if (i != -1) {
                            byteArrayOutputStream.write(bArr, 0, i);
                        } else {
                            byte[] byteArray = byteArrayOutputStream.toByteArray();
                            bufferedInputStream.close();
                            return byteArray;
                        }
                    }
                } catch (Throwable th) {
                    try {
                        bufferedInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (IOException e) {
                System.err.println("Error reading file " + str + ": " + e.getMessage());
                return null;
            }
        } catch (NullPointerException unused) {
            System.err.println("getAssets threw NPE: Could not getFileDataBytes " + str);
            return null;
        }
    }

    public int[] getImageData(String str) {
        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str);
        if (bitmapDecodeFile == null) {
            try {
                AssetManager assets = getApplicationContext().getAssets();
                if (assets != null) {
                    try {
                        bitmapDecodeFile = BitmapFactory.decodeStream(assets.open(str));
                    } catch (IOException unused) {
                        System.err.println("getImageData: Could not open image " + str);
                        return null;
                    }
                } else {
                    System.err.println("getAssets returned null: Could not open image " + str);
                    return null;
                }
            } catch (NullPointerException unused2) {
                System.err.println("getAssets threw NPE: Could not open image " + str);
                return null;
            }
        }
        Bitmap bitmap = bitmapDecodeFile;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[] iArr = new int[(width * height) + 2];
        iArr[0] = width;
        iArr[1] = height;
        bitmap.getPixels(iArr, 2, width, 0, 0, width, height);
        return iArr;
    }

    public int getScreenWidth() {
        Display defaultDisplay = ((WindowManager) getSystemService("window")).getDefaultDisplay();
        int iMax = Math.max(defaultDisplay.getWidth(), defaultDisplay.getHeight());
        System.out.println("getwidth: " + iMax);
        return iMax;
    }

    public int getScreenHeight() {
        Display defaultDisplay = ((WindowManager) getSystemService("window")).getDefaultDisplay();
        int iMin = Math.min(defaultDisplay.getWidth(), defaultDisplay.getHeight());
        System.out.println("getheight: " + iMin);
        return iMin;
    }

    public int getDisplayWidth() {
        if (getAndroidVersion() < 17) {
            return 0;
        }
        Point point = new Point();
        getWindowManager().getDefaultDisplay().getRealSize(point);
        return point.x;
    }

    public int getDisplayHeight() {
        if (getAndroidVersion() < 17) {
            return 0;
        }
        Point point = new Point();
        getWindowManager().getDefaultDisplay().getRealSize(point);
        return point.y;
    }

    public int getAndroidVersion() {
        return Build.VERSION.SDK_INT;
    }

    public String getDeviceModel() {
        return HardwareInformation.getDeviceModelName();
    }

    public String getLocale() {
        return HardwareInformation.getLocale();
    }

    public String getExternalStoragePath() {
        return getExternalFilesDir(null).getAbsolutePath();
    }

    public String getLegacyExternalStoragePath(String str) {
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        try {
            new FileOutputStream(new File(new File(externalStorageDirectory, str), "test")).close();
            return externalStorageDirectory.getAbsolutePath();
        } catch (Exception unused) {
            return "";
        }
    }

    public String getLegacyExternalStorage_debug() {
        return Environment.getExternalStorageDirectory().getAbsolutePath();
    }

    public boolean getLegacyExternalStorageReadable_debug() {
        return Environment.getExternalStorageDirectory().canRead();
    }

    public boolean getLegacyExternalStorageDirWritable_debug() {
        return Environment.getExternalStorageDirectory().canWrite();
    }

    public boolean getLegacyExternalStorageGameFolderWritable_debug(String str) {
        return new File(Environment.getExternalStorageDirectory(), str).canWrite();
    }

    public boolean getLegacyExternalStorageGameFolderReadable_debug(String str) {
        try {
            FileInputStream fileInputStream = new FileInputStream(new File(new File(Environment.getExternalStorageDirectory(), str), "minecraftpe/clientId.txt"));
            int i = fileInputStream.read(new byte[1024]);
            fileInputStream.close();
            return i > 0;
        } catch (Exception unused) {
            return false;
        }
    }

    public int isExternalStorageLegacy_debug() {
        if (Build.VERSION.SDK_INT >= 29) {
            return Environment.isExternalStorageLegacy() ? 1 : 0;
        }
        return -1;
    }

    public String getInternalStoragePath() {
        return getDataDir().getAbsolutePath();
    }

    public String getObbDirPath() {
        return getApplicationContext().getObbDir().getAbsolutePath();
    }

    public float getPixelsPerMillimeter() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return ((displayMetrics.xdpi + displayMetrics.ydpi) * 0.5f) / 25.4f;
    }

    public void quit() {
        runOnUiThread(new Runnable() { // from class: com.mojang.minecraftpe.MainActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.finish();
            }
        });
    }

    public String getSecureStorageKey(String str) {
        return PreferenceManager.getDefaultSharedPreferences(this).getString(str, "");
    }

    public void setSecureStorageKey(String str, String str2) {
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(this).edit();
        editorEdit.putString(str, str2);
        editorEdit.apply();
    }

    public String getPlatformStringVar(int i) {
        if (i == 0) {
            return Build.MODEL;
        }
        return null;
    }

    public boolean isNetworkEnabled(boolean z) {
        ConnectivityManager connectivityManager = (ConnectivityManager) getSystemService("connectivity");
        NetworkInfo networkInfo = connectivityManager.getNetworkInfo(9);
        if (networkInfo != null && networkInfo.isConnected()) {
            return true;
        }
        NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(1);
        if (networkInfo2 != null && networkInfo2.isConnected()) {
            return true;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        return (activeNetworkInfo == null || !activeNetworkInfo.isConnected() || z) ? false : true;
    }

    public boolean isOnWifi() {
        return ((ConnectivityManager) getSystemService("connectivity")).getNetworkInfo(1).isConnectedOrConnecting();
    }

    public void setSession(String str) {
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(this).edit();
        editorEdit.putString("sessionID", str);
        editorEdit.apply();
    }

    public void setRefreshToken(String str) {
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(this).edit();
        editorEdit.putString("refreshToken", str);
        editorEdit.apply();
    }

    public void setLoginInformation(String str, String str2, String str3, String str4) {
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(this).edit();
        editorEdit.putString("accessToken", str);
        editorEdit.putString("clientId", str2);
        editorEdit.putString("profileId", str3);
        editorEdit.putString("profileName", str4);
        editorEdit.apply();
    }

    public void clearLoginInformation() {
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(this).edit();
        editorEdit.remove("accessToken");
        editorEdit.remove("clientId");
        editorEdit.remove("profileId");
        editorEdit.remove("profileName");
        editorEdit.apply();
    }

    public String getAccessToken() {
        return PreferenceManager.getDefaultSharedPreferences(this).getString("accessToken", "");
    }

    public String getClientId() {
        return PreferenceManager.getDefaultSharedPreferences(this).getString("clientId", "");
    }

    public String getProfileId() {
        return PreferenceManager.getDefaultSharedPreferences(this).getString("profileId", "");
    }

    public String getProfileName() {
        return PreferenceManager.getDefaultSharedPreferences(this).getString("profileName", "");
    }

    public void runNativeCallbackOnUiThread(final long j) {
        FutureTask futureTask = new FutureTask(new Callable() { // from class: com.mojang.minecraftpe.MainActivity$$ExternalSyntheticLambda19
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f$0.lambda$runNativeCallbackOnUiThread$12(j);
            }
        });
        runOnUiThread(futureTask);
        try {
            futureTask.get();
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$runNativeCallbackOnUiThread$12(long j) throws Exception {
        nativeRunNativeCallbackOnUiThread(j);
        return null;
    }

    public String[] getBroadcastAddresses() {
        ArrayList arrayList = new ArrayList();
        try {
            System.setProperty("java.net.preferIPv4Stack", "true");
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                if (!networkInterfaceNextElement.isLoopback()) {
                    for (InterfaceAddress interfaceAddress : networkInterfaceNextElement.getInterfaceAddresses()) {
                        if (interfaceAddress.getBroadcast() != null) {
                            arrayList.add(interfaceAddress.getBroadcast().toString().substring(1));
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    boolean isHardwareKeyboardHidden() {
        return getWindow().getContext().getResources().getConfiguration().hardKeyboardHidden == 2;
    }

    boolean isTablet() {
        if (isChromebook()) {
            return isHardwareKeyboardHidden();
        }
        return getProp("ro.build.characteristics").contains("tablet");
    }

    boolean isChromebook() {
        return getWindow().getContext().getPackageManager().hasSystemFeature("android.hardware.type.pc");
    }

    String getProp(String str) {
        try {
            if (this.getPropMethod == null || this.SystemProperties == null) {
                Class<?> cls = Class.forName("android.os.SystemProperties");
                this.SystemProperties = cls;
                this.getPropMethod = cls.getMethod("get", String.class);
            }
            return (String) this.getPropMethod.invoke(this.SystemProperties, str);
        } catch (Exception e) {
            Log.e("BlazeLauncher", "Exception occured while getting a property [" + str + "]\n" + e.getMessage());
            return "";
        }
    }

    String chromebookCompatibilityIP() {
        return isChromebook() ? getProp("arc.net.ipv4.host_address") : "";
    }

    public String[] getIPAddresses() {
        ArrayList arrayList = new ArrayList();
        String strChromebookCompatibilityIP = chromebookCompatibilityIP();
        if (!strChromebookCompatibilityIP.isEmpty()) {
            arrayList.add(strChromebookCompatibilityIP);
        }
        try {
            System.setProperty("java.net.preferIPv4Stack", "true");
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                if (!networkInterfaceNextElement.isLoopback() && networkInterfaceNextElement.isUp()) {
                    for (InterfaceAddress interfaceAddress : networkInterfaceNextElement.getInterfaceAddresses()) {
                        InetAddress address = interfaceAddress.getAddress();
                        if (address != null && !address.isAnyLocalAddress() && !address.isMulticastAddress() && !address.isLinkLocalAddress()) {
                            arrayList.add(interfaceAddress.getAddress().toString().substring(1));
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public void initiateUserInput(int i) {
        this._userInputText = null;
        this._userInputStatus = -1;
    }

    public int getUserInputStatus() {
        return this._userInputStatus;
    }

    public String[] getUserInputString() {
        return this._userInputText;
    }

    public void vibrate(int i) {
        ((Vibrator) getSystemService("vibrator")).vibrate(i);
    }

    public void onDialogCanceled() {
        this._userInputStatus = 0;
    }

    ActivityManager.MemoryInfo getMemoryInfo() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        if (jUptimeMillis >= this.mCachedMemoryInfoUpdateTime) {
            ((ActivityManager) getSystemService("activity")).getMemoryInfo(this.mCachedMemoryInfo);
            this.mCachedMemoryInfoUpdateTime = jUptimeMillis + 2000;
        }
        return this.mCachedMemoryInfo;
    }

    public long getTotalMemory() {
        long j = getMemoryInfo().totalMem;
        if (Process.is64Bit() || 4294967296L >= j) {
            return j;
        }
        return 4294967296L;
    }

    public long getFreeMemory() {
        ActivityManager.MemoryInfo memoryInfo = getMemoryInfo();
        return memoryInfo.availMem - memoryInfo.threshold;
    }

    public long getMemoryLimit() {
        return getTotalMemory() - getMemoryInfo().threshold;
    }

    public long getUsedMemory() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        if (jUptimeMillis >= this.mCachedUsedMemoryUpdateTime) {
            this.mCachedUsedMemory = Debug.getNativeHeapAllocatedSize();
            this.mCachedUsedMemoryUpdateTime = jUptimeMillis + DeviceOrientationRequest.OUTPUT_PERIOD_MEDIUM;
        }
        return this.mCachedUsedMemory;
    }

    public long getDebugMemoryInfo(String str) {
        int totalPss;
        if (str == null) {
            return 0L;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        if (jUptimeMillis >= this.mCachedDebugMemoryUpdateTime) {
            Debug.getMemoryInfo(this.mCachedDebugMemoryInfo);
            this.mCachedDebugMemoryUpdateTime = jUptimeMillis + 1000;
        }
        str.hashCode();
        switch (str) {
            case "TotalPss":
                totalPss = this.mCachedDebugMemoryInfo.getTotalPss();
                break;
            case "TotalPrivateDirty":
                totalPss = this.mCachedDebugMemoryInfo.getTotalPrivateDirty();
                break;
            case "TotalSwappablePss":
                totalPss = this.mCachedDebugMemoryInfo.getTotalSwappablePss();
                break;
            default:
                String memoryStat = this.mCachedDebugMemoryInfo.getMemoryStat("summary." + str);
                if (memoryStat != null) {
                    return Long.parseLong(memoryStat);
                }
                return 0L;
        }
        return totalPss;
    }

    public long calculateAvailableDiskFreeSpace(String str) {
        try {
            return new StatFs(str).getAvailableBytes();
        } catch (Exception unused) {
            return 0L;
        }
    }

    public void onDialogCompleted() {
        int size = this._userInputValues.size();
        this._userInputText = new String[size];
        for (int i = 0; i < size; i++) {
            this._userInputText[i] = this._userInputValues.get(i).getStringValue();
        }
        for (String str : this._userInputText) {
            System.out.println("js: " + str);
        }
        this._userInputStatus = 1;
        ((InputMethodManager) getSystemService("input_method")).showSoftInput(getCurrentFocus(), 1);
    }

    @Override // com.google.androidgamesdk.GameActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        Log.d("BlazeLauncher", "onStart");
        super.onStart();
        this.deviceManager.register();
        if (this._fromOnCreate) {
            this._fromOnCreate = false;
            processIntent(getIntent());
        }
    }

    @Override // com.google.androidgamesdk.GameActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        Log.d("BlazeLauncher", "onResume");
        super.onResume();
        registerReceiver(this.headsetConnectionReceiver, new IntentFilter("android.intent.action.HEADSET_PLUG"));
        if (isTextWidgetActive()) {
            String string = this.textInputWidget.getText().toString();
            int i = this.textInputWidget.allowedLength;
            int inputType = this.textInputWidget.getInputType();
            boolean z = (inputType & 2) == 2;
            boolean z2 = (inputType & 131072) == 131072;
            dismissTextWidget();
            showKeyboard(string, i, false, z, z2);
        }
        Iterator<ActivityListener> it = this.mActivityListeners.iterator();
        while (it.hasNext()) {
            it.next().onResume();
        }
    }

    public String getTextBoxBackend() {
        return this.mCurrentTextMirror.get();
    }

    public void setTextBoxBackend(final String str) {
        runOnUiThread(new Runnable() { // from class: com.mojang.minecraftpe.MainActivity$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setTextBoxBackend$13(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setTextBoxBackend$13(String str) {
        this.mCurrentTextMirror.set(str);
        this.textInputWidget.setText(str);
        setCaretPosition(-1);
    }

    public int getCaretPosition() {
        return this.mCaretPositionMirror.get();
    }

    public void setCaretPosition(final int i) {
        runOnUiThread(new Runnable() { // from class: com.mojang.minecraftpe.MainActivity$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setCaretPosition$14(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setCaretPosition$14(int i) {
        int length = this.textInputWidget.getText().toString().length();
        if (i < 0 || i > length) {
            i = length;
        }
        this.textInputWidget.setSelection(i);
        this.mCaretPositionMirror.set(i);
    }

    @Override // com.google.androidgamesdk.GameActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        Log.d("BlazeLauncher", "onPause");
        nativeSuspend();
        super.onPause();
        if (isFinishing()) {
            nativeShutdown();
        }
    }

    @Override // com.google.androidgamesdk.GameActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        Log.d("BlazeLauncher", "onStop");
        nativeStopThis();
        super.onStop();
        this.deviceManager.unregister();
        Iterator<ActivityListener> it = this.mActivityListeners.iterator();
        while (it.hasNext()) {
            it.next().onStop();
        }
    }

    @Override // com.google.androidgamesdk.GameActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        Log.d("BlazeLauncher", "onDestroy");
        if (isChangingConfigurations()) {
            Log.d("BlazeLauncher", "Unhandled changing configurations, changingConfigurations=" + getChangingConfigurations());
        }
        mInstance = null;
        System.out.println("onDestroy");
        FMOD.close();
        Iterator it = new ArrayList(this.mActivityListeners).iterator();
        while (it.hasNext()) {
            ((ActivityListener) it.next()).onDestroy();
        }
        removeListener(this.mFilePickerManager);
        mInstance = null;
        nativeOnDestroy();
        super.onDestroy();
        System.exit(0);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        setIntent(intent);
        processIntent(intent);
    }

    private void processIntent(Intent intent) {
        if (intent == null) {
            return;
        }
        String stringExtra = intent.getStringExtra("intent_cmd");
        if (stringExtra != null && !stringExtra.isEmpty()) {
            try {
                JSONObject jSONObject = new JSONObject(stringExtra);
                String string = jSONObject.getString("Command");
                if (string.equals("keyboardResult")) {
                    nativeSetTextboxText(jSONObject.getString("Text"));
                    return;
                }
                if (string.equals("fileDialogResult") && this.mFileDialogCallback != 0) {
                    if (jSONObject.getString("Result").equals("Ok")) {
                        nativeOnPickImageSuccess(this.mFileDialogCallback, jSONObject.getString("Path"));
                    } else {
                        nativeOnPickImageCanceled(this.mFileDialogCallback);
                    }
                    this.mFileDialogCallback = 0L;
                    return;
                }
                return;
            } catch (JSONException e) {
                Log.d("BlazeLauncher", "JSONObject exception:" + e);
                return;
            }
        }
        String action = intent.getAction();
        if ("xbox_live_game_invite".equals(action)) {
            String stringExtra2 = intent.getStringExtra("xbl");
            Log.d("BlazeLauncher", "[XboxLive] Received Invite " + stringExtra2);
            nativeProcessIntentUriQuery(action, stringExtra2);
            return;
        }
        if (!"android.intent.action.VIEW".equals(action) && !"org.chromium.arc.intent.action.VIEW".equals(action)) {
            return;
        }
        String scheme = intent.getScheme();
        Uri data = intent.getData();
        if (data == null) {
            return;
        }
        if ("minecraft".equalsIgnoreCase(scheme) || "minecraftedu".equalsIgnoreCase(scheme)) {
            String host = data.getHost();
            String query = data.getQuery();
            if (host == null && query == null) {
                return;
            }
            nativeProcessIntentUriQuery(host, query);
            return;
        }
        if ("file".equalsIgnoreCase(scheme)) {
            nativeProcessIntentUriQuery("fileIntent", data.getPath() + SESSION_HISTORY_SEP + data.getPath());
            return;
        }
        if (!"content".equalsIgnoreCase(scheme)) {
            return;
        }
        File file = new File(getApplicationContext().getCacheDir() + "/" + new File(data.getPath()).getName());
        try {
            InputStream inputStreamOpenInputStream = getContentResolver().openInputStream(data);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                byte[] bArr = new byte[1048576];
                while (true) {
                    int i = inputStreamOpenInputStream.read(bArr);
                    if (i != -1) {
                        fileOutputStream.write(bArr, 0, i);
                    } else {
                        fileOutputStream.close();
                        nativeProcessIntentUriQuery("contentIntent", data.getPath() + SESSION_HISTORY_SEP + file.getAbsolutePath());
                        try {
                            inputStreamOpenInputStream.close();
                            return;
                        } catch (IOException e2) {
                            Log.e("BlazeLauncher", "IOException while closing input stream\n" + e2.toString());
                        }
                    }
                }
            } catch (Throwable th) {
                try {
                    try {
                        inputStreamOpenInputStream.close();
                    } catch (IOException e3) {
                        Log.e("BlazeLauncher", "IOException while copying file from content intent\n" + e3);
                        try {
                            file.delete();
                        } catch (Exception unused) {
                        }
                        try {
                            inputStreamOpenInputStream.close();
                            return;
                        } catch (IOException e4) {
                            Log.e("BlazeLauncher", "IOException while closing input stream\n" + e4.toString());
                            return;
                        }
                    }
                } catch (IOException e5) {
                    Log.e("BlazeLauncher", "IOException while closing input stream\n" + e5);
                }
                throw th;
            }
        } catch (IOException e6) {
            Log.e("BlazeLauncher", "IOException while opening file from content intent\n" + e6);
        }
    }

    public boolean isFirstSnooperStart() {
        return PreferenceManager.getDefaultSharedPreferences(this).getString("snooperId", "").isEmpty();
    }

    public String getLegacyDeviceID() {
        return PreferenceManager.getDefaultSharedPreferences(this).getString("snooperId", "");
    }

    public String createUUID() {
        return UUID.randomUUID().toString().replaceAll("-", "");
    }

    public Intent createAndroidLaunchIntent() {
        Context applicationContext = getApplicationContext();
        return applicationContext.getPackageManager().getLaunchIntentForPackage(applicationContext.getPackageName());
    }

    boolean hasHardwareChanged() {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        String string = defaultSharedPreferences.getString("lastAndroidVersion", "");
        boolean z = string.isEmpty() || !string.equals(Build.VERSION.RELEASE);
        if (z) {
            SharedPreferences.Editor editorEdit = defaultSharedPreferences.edit();
            editorEdit.putString("lastAndroidVersion", Build.VERSION.RELEASE);
            editorEdit.apply();
        }
        return z;
    }

    public boolean isMulticastHeld() {
        WifiManager.MulticastLock multicastLock = this.mMulticastLock;
        if (multicastLock != null) {
            return multicastLock.isHeld();
        }
        return false;
    }

    void pickImage(long j) {
        this.mCallback = j;
        try {
            startActivityForResult(new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI), RESULT_PICK_IMAGE);
        } catch (ActivityNotFoundException e) {
            e.printStackTrace();
        }
    }

    void setFileDialogCallback(long j) {
        this.mFileDialogCallback = j;
    }

    private void showFilePickerDialog(String str, int i) {
        Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT");
        intent.addCategory("android.intent.category.OPENABLE");
        intent.setType("*/*");
        startActivityForResult(Intent.createChooser(intent, str), i);
    }

    void openFile() {
        showFilePickerDialog("Select a file", 5);
    }

    void saveFile(String str) {
        Intent intent = new Intent("android.intent.action.CREATE_DOCUMENT");
        intent.addCategory("android.intent.category.OPENABLE");
        intent.setType("*/*");
        intent.putExtra("android.intent.extra.TITLE", str);
        startActivityForResult(intent, 4);
    }

    void onPickFileSuccess(boolean z) {
        String str = getApplicationContext().getCacheDir() + "/tempPickedFile";
        if (z) {
            copyFromPickedFile(str);
        }
        nativeOnPickFileSuccess(str);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == 0) {
            nativeOnPickFileCanceled();
            return;
        }
        if (i2 == -1 && intent != null && intent.getData() != null) {
            Uri data = intent.getData();
            boolean z = true;
            try {
                if (i == 5 || i == 4) {
                    this.mPickedFileDescriptor = getContentResolver().openFileDescriptor(data, i == 5 ? "r" : "w");
                    if (i != 5) {
                        z = false;
                    }
                    onPickFileSuccess(z);
                } else if (i == RESULT_PICK_IMAGE) {
                    String[] strArr = {"_data"};
                    Cursor cursorQuery = getContentResolver().query(data, strArr, null, null, null);
                    if (cursorQuery != null && cursorQuery.moveToFirst()) {
                        nativeOnPickImageSuccess(this.mCallback, cursorQuery.getString(cursorQuery.getColumnIndexOrThrow(strArr[0])));
                        cursorQuery.close();
                    }
                }
                return;
            } catch (IOException e) {
                e.printStackTrace();
                return;
            }
        }
        if (i == RESULT_PICK_IMAGE) {
            nativeOnPickImageCanceled(this.mCallback);
        }
    }

    @Override // com.mojang.minecraftpe.FilePickerManagerHandler
    public void startPickerActivity(Intent intent, int i) {
        startActivityForResult(intent, i);
    }

    public void addListener(ActivityListener activityListener) {
        this.mActivityListeners.add(activityListener);
    }

    public void removeListener(ActivityListener activityListener) {
        this.mActivityListeners.remove(activityListener);
    }

    public void getListener() {
        List<ActivityListener> list = this.mActivityListeners;
        list.get(list.size() - 2).onShowedAds();
    }

    public void setVolume(float f) {
        this.mVolume = f;
    }

    public void startTextToSpeech(String str) {
        if (this.textToSpeechManager != null) {
            Bundle bundle = new Bundle();
            bundle.putFloat("volume", this.mVolume);
            this.textToSpeechManager.speak(str, 0, bundle, null);
        }
    }

    public void stopTextToSpeech() {
        TextToSpeech textToSpeech = this.textToSpeechManager;
        if (textToSpeech != null) {
            textToSpeech.stop();
        }
    }

    public boolean isTextToSpeechInProgress() {
        TextToSpeech textToSpeech = this.textToSpeechManager;
        if (textToSpeech != null) {
            return textToSpeech.isSpeaking();
        }
        return false;
    }

    public int getAPIVersion(String str) {
        for (Field field : Build.VERSION_CODES.class.getFields()) {
            if (field.getName().equals(str)) {
                try {
                    return field.getInt(new Object());
                } catch (IllegalAccessException unused) {
                    Log.e("BlazeLauncher", "IllegalAccessException in getApiVersion(" + str + ")");
                } catch (IllegalArgumentException unused2) {
                    Log.e("BlazeLauncher", "IllegalArgumentException in getApiVersion(" + str + ")");
                } catch (NullPointerException unused3) {
                    Log.e("BlazeLauncher", "NullPointerException in getApiVersion(" + str + ")");
                }
            }
        }
        Log.e("BlazeLauncher", "Failed to find API version for: " + str);
        return -1;
    }

    public String MC_GetActiveScreen() {
        return isTestInfrastructureDisabled() ? "" : nativeGetActiveScreen();
    }

    public String MC_SetOptions(String str) {
        return isTestInfrastructureDisabled() ? "" : nativeSetOptions(str);
    }

    public String MC_CheckIfTestsAreFinished() {
        return isTestInfrastructureDisabled() ? "" : nativeCheckIfTestsAreFinished();
    }

    public String MC_GetDevConsoleLogName() {
        return isTestInfrastructureDisabled() ? "" : nativeGetDevConsoleLogName();
    }

    public String MC_GetLogText(String str) {
        return isTestInfrastructureDisabled() ? "" : nativeGetLogText(str);
    }

    public boolean getIsRunningInAppCenter() {
        return this.mIsRunningInAppCenter;
    }

    public boolean getIsRunningInBrowserStack() {
        return getIntent().getBooleanExtra("IS_BROWSERSTACK", false);
    }

    public boolean isTTSInstalled() {
        Iterator<AccessibilityServiceInfo> it = ((AccessibilityManager) getSystemService("accessibility")).getInstalledAccessibilityServiceList().iterator();
        while (it.hasNext()) {
            if ((it.next().feedbackType & 1) != 0) {
                return true;
            }
        }
        return false;
    }

    public boolean isTTSEnabled() {
        AccessibilityManager accessibilityManager;
        Context applicationContext = getApplicationContext();
        if (isTestInfrastructureDisabled() || !this.mIsRunningInAppCenter) {
            return (applicationContext == null || (accessibilityManager = (AccessibilityManager) getSystemService("accessibility")) == null || !accessibilityManager.isEnabled() || accessibilityManager.getEnabledAccessibilityServiceList(1).isEmpty()) ? false : true;
        }
        Log.w("BlazeLauncher", "Automation: We are running in AppCenter, forcing isTTSEnabled to false to avoid screen reader popup");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Long lambda$initializeLibHttpClient$15(long j) throws Exception {
        return Long.valueOf(nativeInitializeLibHttpClient(j));
    }

    public long initializeLibHttpClient(final long j) {
        FutureTask futureTask = new FutureTask(new Callable() { // from class: com.mojang.minecraftpe.MainActivity$$ExternalSyntheticLambda18
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f$0.lambda$initializeLibHttpClient$15(j);
            }
        });
        runOnUiThread(futureTask);
        try {
            return ((Long) futureTask.get()).longValue();
        } catch (Exception e) {
            Log.e("BlazeLauncher", "Failed to initialize libHttpClient: '" + e.getMessage() + "'");
            return -2147467259L;
        }
    }

    public long initializeXboxLive(final long j, final long j2) {
        if (isEduMode()) {
            return 0L;
        }
        FutureTask futureTask = new FutureTask(new Callable() { // from class: com.mojang.minecraftpe.MainActivity$$ExternalSyntheticLambda17
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f$0.lambda$initializeXboxLive$16(j, j2);
            }
        });
        runOnUiThread(futureTask);
        try {
            return ((Long) futureTask.get()).longValue();
        } catch (Exception e) {
            Log.e("BlazeLauncher", "Failed to initialize xbox live: '" + e.getMessage() + "'");
            return -2147467259L;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Long lambda$initializeXboxLive$16(long j, long j2) throws Exception {
        FirebaseApp.initializeApp(getApplicationContext());
        return Long.valueOf(nativeInitializeXboxLive(j, j2));
    }

    public boolean supportsSizeQuery(String str) {
        if (Build.VERSION.SDK_INT < 26) {
            return false;
        }
        try {
            ((StorageManager) getApplicationContext().getSystemService(StorageManager.class)).getUuidForPath(new File(str));
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    public long getAllocatableBytes(String str) {
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                StorageManager storageManager = (StorageManager) getApplicationContext().getSystemService(StorageManager.class);
                return storageManager.getAllocatableBytes(storageManager.getUuidForPath(new File(str)));
            } catch (IOException e) {
                Log.e("BlazeLauncher", "IOException while attempting to get allocatable bytes\n" + e);
            }
        }
        return 0L;
    }

    public int getPlatformDpi() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return (int) ((displayMetrics.xdpi + displayMetrics.ydpi) * 0.5f);
    }

    public void setKeepScreenOnFlag(final boolean z) {
        runOnUiThread(new Runnable() { // from class: com.mojang.minecraftpe.MainActivity$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setKeepScreenOnFlag$17(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setKeepScreenOnFlag$17(boolean z) {
        if (z) {
            getWindow().addFlags(128);
        } else {
            getWindow().clearFlags(128);
        }
    }

    public long getTimeFromProcessStart() {
        return SystemClock.elapsedRealtime() - Process.getStartElapsedRealtime();
    }

    public void shareFile(String str, String str2, String str3) {
        Log.i("BlazeLauncher", "Mojang Called Share File");
    }

    /* JADX INFO: loaded from: classes3.dex */
    class IncomingHandler extends Handler {
        IncomingHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == MainActivity.MSG_CORRELATION_RESPONSE) {
                String packageName = MainActivity.this.getApplicationContext().getPackageName();
                SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(MainActivity.this.getApplicationContext());
                defaultSharedPreferences.getString("deviceId", "");
                try {
                    long j = MainActivity.this.getPackageManager().getPackageInfo(packageName, 0).firstInstallTime;
                    String string = message.getData().getString("deviceId");
                    String string2 = message.getData().getString("sessionId");
                    long j2 = message.getData().getLong("time");
                    if (j > j2) {
                        defaultSharedPreferences.edit().apply();
                        MainActivity.this.nativeDeviceCorrelation(j, string, j2, string2);
                    }
                    SharedPreferences.Editor editorEdit = defaultSharedPreferences.edit();
                    editorEdit.putInt("correlationAttempts", 0);
                    editorEdit.apply();
                    if (MainActivity.this.mBound != MessageConnectionStatus.CONNECTED) {
                        return;
                    }
                    MainActivity mainActivity = MainActivity.this;
                    mainActivity.unbindService(mainActivity.mConnection);
                    return;
                } catch (PackageManager.NameNotFoundException unused) {
                    return;
                }
            }
            super.handleMessage(message);
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    private class HeadsetConnectionReceiver extends BroadcastReceiver {
        private HeadsetConnectionReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.intent.action.HEADSET_PLUG")) {
                int intExtra = intent.getIntExtra("state", -1);
                if (intExtra == 0) {
                    Log.d("BlazeLauncher", "Headset unplugged");
                    MainActivity.this.nativeSetHeadphonesConnected(false);
                } else {
                    if (intExtra != 1) {
                        return;
                    }
                    Log.d("BlazeLauncher", "Headset plugged in");
                    MainActivity.this.nativeSetHeadphonesConnected(true);
                }
            }
        }
    }
}
