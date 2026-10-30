package dev.blaze.launcher;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.Html;
import android.text.Spanned;
import android.util.Log;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.firebase.messaging.Constants;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\b\u0010\u0007\u001a\u00020\bH\u0002J\b\u0010\t\u001a\u00020\nH\u0002J\u0012\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\u000e\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0017J\b\u0010\u0011\u001a\u00020\fH\u0017J\u0010\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\nH\u0002J\b\u0010\u0014\u001a\u00020\fH\u0002¨\u0006\u0015"}, d2 = {"Ldev/blaze/launcher/GameActivity;", "Ldev/blaze/launcher/AdActivity;", "()V", "fromHtml", "Landroid/text/Spanned;", Constants.ScionAnalytics.PARAM_SOURCE, "", "getPreferences", "Landroid/content/SharedPreferences;", "isAgreePrivacyPolice", "", "launchUri", "", "uri", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onResume", "setAgreePrivacyPolice", "mode", "showAgreeDialog", "app_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class GameActivity extends AdActivity {
    @Override // dev.blaze.launcher.AdActivity, com.mojang.minecraftpe.MainActivity, com.google.androidgamesdk.GameActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        showAgreeDialog();
        System.loadLibrary("blaze");
        Start._Start(this);
        Start.__Start(this);
        Log.d("BlazeLauncherNative", "Load blaze (Java Message)");
    }

    @Override // com.mojang.minecraftpe.MainActivity
    public void launchUri(String uri) {
        if (uri != null) {
            System.out.println((Object) uri);
            List<String> redirect_minecraft_urls = App.INSTANCE.getREDIRECT_MINECRAFT_URLS();
            if (!(redirect_minecraft_urls instanceof Collection) || !redirect_minecraft_urls.isEmpty()) {
                Iterator<T> it = redirect_minecraft_urls.iterator();
                while (it.hasNext()) {
                    if (StringsKt.startsWith$default((String) it.next(), uri, false, 2, (Object) null)) {
                        super.launchUri("https://t.me/blazelauncher");
                        return;
                    }
                }
            }
        }
        super.launchUri(uri);
    }

    @Override // com.mojang.minecraftpe.MainActivity, com.google.androidgamesdk.GameActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    private final void showAgreeDialog() {
        if (isAgreePrivacyPolice()) {
            final MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(this);
            materialAlertDialogBuilder.setTitle((CharSequence) "BlazeLauncher Privacy Policy");
            materialAlertDialogBuilder.setMessage((CharSequence) fromHtml("<p>Xbox Privacy Policy</p><p>BlazeLauncher collects account information to allow autocompleting Xbox Login details,and the information is only used to login Xbox.</p><p>The Xbox Login functionality's privacy policy can be found at <a href=\"https://privacy.microsoft.com/en-us/privacystatement\">https://privacy.microsoft.com/en-us/privacystatement</a></p><br><p>MinecraftPE Privacy Policy</p><p>Some anonymous information is collected and sent to Mojang to improve MinecraftPE.</p><p>Mojang's Privacy Policy can be found at <a href=\"https://account.mojang.com/terms#privacy\">https://account.mojang.com/terms#privacy</a></p></body>"));
            materialAlertDialogBuilder.setCancelable(false);
            materialAlertDialogBuilder.setNeutralButton((CharSequence) "Privacy Policy", new DialogInterface.OnClickListener() { // from class: dev.blaze.launcher.GameActivity$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    GameActivity.showAgreeDialog$lambda$3$lambda$1(this.f$0, materialAlertDialogBuilder, dialogInterface, i);
                }
            });
            materialAlertDialogBuilder.setPositiveButton((CharSequence) "Agree", new DialogInterface.OnClickListener() { // from class: dev.blaze.launcher.GameActivity$$ExternalSyntheticLambda1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    GameActivity.showAgreeDialog$lambda$3$lambda$2(this.f$0, dialogInterface, i);
                }
            });
            materialAlertDialogBuilder.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showAgreeDialog$lambda$3$lambda$1(GameActivity this$0, MaterialAlertDialogBuilder this_apply, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(dialogInterface, "<anonymous parameter 0>");
        this$0.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://account.mojang.com/terms#privacy")));
        this_apply.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showAgreeDialog$lambda$3$lambda$2(GameActivity this$0, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(dialogInterface, "dialogInterface");
        this$0.setAgreePrivacyPolice(false);
        dialogInterface.dismiss();
    }

    private final SharedPreferences getPreferences() {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        Intrinsics.checkNotNullExpressionValue(defaultSharedPreferences, "getDefaultSharedPreferences(...)");
        return defaultSharedPreferences;
    }

    private final boolean isAgreePrivacyPolice() {
        return getPreferences().getBoolean("privacyAcc", true);
    }

    private final void setAgreePrivacyPolice(boolean mode) {
        SharedPreferences.Editor editorEdit = getPreferences().edit();
        editorEdit.putBoolean("privacyAcc", mode);
        editorEdit.apply();
    }

    private final Spanned fromHtml(String source) {
        Spanned spannedFromHtml = Html.fromHtml(source, 0);
        Intrinsics.checkNotNull(spannedFromHtml);
        return spannedFromHtml;
    }
}
