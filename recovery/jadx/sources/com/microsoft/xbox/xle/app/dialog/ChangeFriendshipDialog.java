package com.microsoft.xbox.xle.app.dialog;

import android.content.Context;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import android.widget.Toast;
import com.microsoft.xbox.telemetry.helpers.UTCChangeRelationship;
import com.microsoft.xbox.toolkit.DialogManager;
import com.microsoft.xbox.toolkit.JavaUtil;
import com.microsoft.xbox.toolkit.XLEException;
import com.microsoft.xbox.toolkit.XLEManagedDialog;
import com.microsoft.xbox.toolkit.network.ListState;
import com.microsoft.xbox.toolkit.ui.CustomTypefaceTextView;
import com.microsoft.xbox.toolkit.ui.FastProgressBar;
import com.microsoft.xbox.toolkit.ui.NavigationManager;
import com.microsoft.xbox.toolkit.ui.SwitchPanel;
import com.microsoft.xbox.toolkit.ui.XLEButton;
import com.microsoft.xbox.toolkit.ui.XLECheckBox;
import com.microsoft.xbox.toolkit.ui.XLEClickableLayout;
import com.microsoft.xbox.toolkit.ui.XLEUniversalImageView;
import com.microsoft.xbox.xle.app.ImageUtil;
import com.microsoft.xbox.xle.app.SGProjectSpecificDialogManager;
import com.microsoft.xbox.xle.app.XLEUtil;
import com.microsoft.xbox.xle.viewmodel.ChangeFriendshipDialogViewModel;
import com.microsoft.xbox.xle.viewmodel.ViewModelBase;
import com.microsoft.xboxtcui.R;
import com.microsoft.xboxtcui.XboxTcuiSdk;

/* JADX INFO: loaded from: classes4.dex */
public class ChangeFriendshipDialog extends XLEManagedDialog {
    private RadioButton addFavorite;
    private RadioButton addFriend;
    private XLEButton cancelButton;
    public SwitchPanel changeFriendshipSwitchPanel;
    private XLEButton confirmButton;
    private CustomTypefaceTextView favoriteIconView;
    private CustomTypefaceTextView gamertag;
    private FastProgressBar overlayLoadingIndicator;
    private final ViewModelBase previousVM;
    private TextView profileAccountTier;
    private CustomTypefaceTextView profileGamerScore;
    private XLEUniversalImageView profilePic;
    private CustomTypefaceTextView realName;
    private XLEClickableLayout removeFriendLayout;
    private XLECheckBox shareRealNameCheckbox;
    public ChangeFriendshipDialogViewModel vm;

    @Override // android.app.Dialog
    public void onStop() {
    }

    public ChangeFriendshipDialog(Context context, ChangeFriendshipDialogViewModel changeFriendshipDialogViewModel, ViewModelBase viewModelBase) {
        super(context, R.style.TcuiDialog);
        this.previousVM = viewModelBase;
        this.vm = changeFriendshipDialogViewModel;
    }

    public String getActivityName() {
        return "ChangeRelationship Info";
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setLayout(-1, -1);
        getWindow().setFlags(1024, 1024);
        setContentView(R.layout.change_friendship_dialog);
        this.profilePic = (XLEUniversalImageView) findViewById(R.id.change_friendship_profile_pic);
        this.gamertag = (CustomTypefaceTextView) findViewById(R.id.gamertag_text);
        this.realName = (CustomTypefaceTextView) findViewById(R.id.realname_text);
        this.profileAccountTier = (TextView) findViewById(R.id.peoplehub_info_gamerscore_icon);
        this.profileGamerScore = (CustomTypefaceTextView) findViewById(R.id.peoplehub_info_gamerscore);
        this.addFriend = (RadioButton) findViewById(R.id.add_as_friend);
        this.addFavorite = (RadioButton) findViewById(R.id.add_as_favorite);
        this.shareRealNameCheckbox = (XLECheckBox) findViewById(R.id.share_real_name_checkbox);
        this.confirmButton = (XLEButton) findViewById(R.id.submit_button);
        this.cancelButton = (XLEButton) findViewById(R.id.cancel_button);
        this.changeFriendshipSwitchPanel = (SwitchPanel) findViewById(R.id.change_friendship_switch_panel);
        this.removeFriendLayout = (XLEClickableLayout) findViewById(R.id.remove_friend_btn_layout);
        this.favoriteIconView = (CustomTypefaceTextView) findViewById(R.id.people_favorites_icon);
        this.overlayLoadingIndicator = (FastProgressBar) findViewById(R.id.overlay_loading_indicator);
        FrameLayout frameLayout = new FrameLayout(getContext());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 5;
        XLEButton xLEButton = new XLEButton(getContext());
        xLEButton.setPadding(60, 0, 0, 0);
        xLEButton.setBackgroundResource(R.drawable.common_button_background);
        xLEButton.setText(R.string.ic_Close);
        xLEButton.setTextColor(-1);
        xLEButton.setTextSize(2, 14.0f);
        xLEButton.setTypeFace("fonts/SegXboxSymbol.ttf");
        xLEButton.setContentDescription(getContext().getResources().getString(R.string.TextInput_Confirm));
        xLEButton.setOnClickListener(new View.OnClickListener() { // from class: com.microsoft.xbox.xle.app.dialog.ChangeFriendshipDialog$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onCreate$0(view);
            }
        });
        xLEButton.setOnKeyListener(new View.OnKeyListener() { // from class: com.microsoft.xbox.xle.app.dialog.ChangeFriendshipDialog$$ExternalSyntheticLambda1
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i, KeyEvent keyEvent) {
                return this.f$0.lambda$onCreate$1(view, i, keyEvent);
            }
        });
        frameLayout.addView(xLEButton);
        addContentView(frameLayout, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$0(View view) {
        try {
            dismiss();
            NavigationManager.getInstance().PopAllScreens();
        } catch (XLEException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$onCreate$1(View view, int i, KeyEvent keyEvent) {
        if (i != 4 || keyEvent.getAction() != 1) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // android.app.Dialog
    public void onStart() {
        this.vm.load();
        updateView();
        this.changeFriendshipSwitchPanel.setBackgroundColor(this.vm.getPreferredColor());
        UTCChangeRelationship.trackChangeRelationshipView(getActivityName(), this.vm.getXuid());
    }

    public void updateView() {
        if (this.vm.getViewModelState() == ListState.ValidContentState) {
            setDialogValidContentView();
            XLEUtil.updateAndShowTextViewUnlessEmpty(this.gamertag, this.vm.getGamerTag());
            XLEUniversalImageView xLEUniversalImageView = this.profilePic;
            if (xLEUniversalImageView != null) {
                xLEUniversalImageView.setImageURI2(ImageUtil.getMedium(this.vm.getGamerPicUrl()), R.drawable.gamerpic_missing, R.drawable.gamerpic_missing);
            }
            XLEUtil.updateAndShowTextViewUnlessEmpty(this.realName, this.vm.getRealName());
            XLEUtil.updateVisibilityIfNotNull(this.favoriteIconView, this.vm.getIsFavorite() ? 0 : 4);
            if (this.vm.getIsFavorite()) {
                this.favoriteIconView.setTextColor(getContext().getResources().getColor(R.color.XboxGreen));
            }
            String gamerScore = this.vm.getGamerScore();
            if (gamerScore != null && !gamerScore.equalsIgnoreCase("0")) {
                XLEUtil.updateAndShowTextViewUnlessEmpty(this.profileGamerScore, this.vm.getGamerScore());
                XLEUtil.updateVisibilityIfNotNull(this.profileAccountTier, 0);
            }
            if (this.addFriend != null) {
                if (this.vm.getIsFollowing()) {
                    this.addFriend.setChecked(true);
                } else {
                    this.vm.setShouldAddUserToFriendList(true);
                    this.addFriend.setChecked(true);
                }
                this.addFriend.setOnClickListener(new View.OnClickListener() { // from class: com.microsoft.xbox.xle.app.dialog.ChangeFriendshipDialog$$ExternalSyntheticLambda2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$updateView$2(view);
                    }
                });
            }
            if (this.addFavorite != null) {
                if (this.vm.getIsFavorite()) {
                    this.addFavorite.setChecked(true);
                }
                this.addFavorite.setOnClickListener(new View.OnClickListener() { // from class: com.microsoft.xbox.xle.app.dialog.ChangeFriendshipDialog$$ExternalSyntheticLambda3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$updateView$3(view);
                    }
                });
            }
            XLEButton xLEButton = this.confirmButton;
            if (xLEButton != null) {
                xLEButton.setOnClickListener(new View.OnClickListener() { // from class: com.microsoft.xbox.xle.app.dialog.ChangeFriendshipDialog$$ExternalSyntheticLambda4
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$updateView$4(view);
                    }
                });
            }
            XLEButton xLEButton2 = this.cancelButton;
            if (xLEButton2 != null) {
                xLEButton2.setOnClickListener(new View.OnClickListener() { // from class: com.microsoft.xbox.xle.app.dialog.ChangeFriendshipDialog$$ExternalSyntheticLambda5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$updateView$5(view);
                    }
                });
            }
            XLECheckBox xLECheckBox = this.shareRealNameCheckbox;
            if (xLECheckBox != null) {
                xLECheckBox.setChecked(this.vm.getCallerMarkedTargetAsIdentityShared());
                this.shareRealNameCheckbox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.microsoft.xbox.xle.app.dialog.ChangeFriendshipDialog$$ExternalSyntheticLambda6
                    @Override // android.widget.CompoundButton.OnCheckedChangeListener
                    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                        this.f$0.lambda$updateView$6(compoundButton, z);
                    }
                });
                updateShareIdentityCheckboxStatus();
            }
            if (this.removeFriendLayout != null) {
                if (this.vm.getIsFollowing()) {
                    this.removeFriendLayout.setVisibility(0);
                    this.removeFriendLayout.setOnClickListener(new View.OnClickListener() { // from class: com.microsoft.xbox.xle.app.dialog.ChangeFriendshipDialog$$ExternalSyntheticLambda7
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$updateView$7(view);
                        }
                    });
                } else {
                    this.removeFriendLayout.setEnabled(false);
                    this.removeFriendLayout.setVisibility(8);
                }
                this.confirmButton.setText(this.vm.getDialogButtonText());
            }
            updateShareIdentityCheckboxStatus();
            return;
        }
        if (this.vm.getViewModelState() == ListState.LoadingState) {
            setDialogLoadingView();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateView$2(View view) {
        if (!this.vm.getIsFollowing()) {
            this.vm.setShouldAddUserToFriendList(true);
        }
        if (this.vm.getIsFavorite()) {
            this.vm.setShouldRemoveUserFromFavoriteList(true);
        }
        this.vm.setShouldAddUserToFavoriteList(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateView$3(View view) {
        if (!this.vm.getIsFavorite()) {
            this.vm.setShouldAddUserToFavoriteList(true);
        }
        this.vm.setShouldRemoveUserFromFavoriteList(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateView$4(View view) {
        this.changeFriendshipSwitchPanel.setState(1);
        this.vm.onChangeRelationshipCompleted();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateView$5(View view) {
        dismissSelf();
        this.vm.clearChangeFriendshipForm();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateView$6(CompoundButton compoundButton, boolean z) {
        this.vm.setIsSharingRealNameEnd(z);
        if (z) {
            if (!this.vm.getCallerMarkedTargetAsIdentityShared()) {
                this.vm.setShouldAddUserToShareIdentityList(true);
            }
            this.vm.setShouldRemoveUserFroShareIdentityList(false);
        } else {
            if (this.vm.getCallerMarkedTargetAsIdentityShared()) {
                this.vm.setShouldRemoveUserFroShareIdentityList(true);
            }
            this.vm.setShouldAddUserToShareIdentityList(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateView$7(View view) {
        UTCChangeRelationship.trackChangeRelationshipRemoveFriend();
        this.changeFriendshipSwitchPanel.setState(1);
        this.vm.removeFollowingUser();
    }

    private void setDialogValidContentView() {
        XLEUtil.updateVisibilityIfNotNull(this.overlayLoadingIndicator, 8);
        XLEButton xLEButton = this.confirmButton;
        if (xLEButton != null) {
            xLEButton.setEnabled(true);
        }
        XLEButton xLEButton2 = this.cancelButton;
        if (xLEButton2 != null) {
            xLEButton2.setEnabled(true);
        }
    }

    private void setDialogLoadingView() {
        XLEUtil.updateVisibilityIfNotNull(this.overlayLoadingIndicator, 0);
        XLEButton xLEButton = this.confirmButton;
        if (xLEButton != null) {
            xLEButton.setEnabled(false);
        }
        XLEButton xLEButton2 = this.cancelButton;
        if (xLEButton2 != null) {
            xLEButton2.setEnabled(false);
        }
    }

    public void closeDialog() {
        dismissSelf();
        this.previousVM.load(true);
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        dismissSelf();
    }

    public void dismissSelf() {
        ((SGProjectSpecificDialogManager) DialogManager.getInstance().getManager()).dismissChangeFriendshipDialog();
    }

    public void setVm(ChangeFriendshipDialogViewModel changeFriendshipDialogViewModel) {
        this.vm = changeFriendshipDialogViewModel;
    }

    public void updateShareIdentityCheckboxStatus() {
        String callerShareRealNameStatus = this.vm.getCallerShareRealNameStatus();
        if (callerShareRealNameStatus != null) {
            boolean zEqualsIgnoreCase = callerShareRealNameStatus.equalsIgnoreCase("Blocked");
            this.shareRealNameCheckbox.setVisibility(zEqualsIgnoreCase ? 8 : 0);
            if (zEqualsIgnoreCase) {
                return;
            }
            boolean z = !JavaUtil.isNullOrEmpty(this.vm.getRealName());
            if (callerShareRealNameStatus.compareToIgnoreCase("Everyone") == 0) {
                this.shareRealNameCheckbox.setChecked(true);
                this.vm.setInitialRealNameSharingState(true);
                this.shareRealNameCheckbox.setEnabled(false);
                this.shareRealNameCheckbox.setSubText(XboxTcuiSdk.getResources().getString(R.string.ChangeRelationship_Checkbox_Subtext_ShareRealName_Everyone));
            }
            if (callerShareRealNameStatus.compareToIgnoreCase("PeopleOnMyList") == 0) {
                this.shareRealNameCheckbox.setChecked(true);
                this.vm.setInitialRealNameSharingState(true);
                this.shareRealNameCheckbox.setEnabled(false);
                this.shareRealNameCheckbox.setSubText(XboxTcuiSdk.getResources().getString(R.string.ChangeRelationship_Checkbox_Subtext_ShareRealName_Friends));
            }
            if (callerShareRealNameStatus.compareToIgnoreCase("FriendCategoryShareIdentity") == 0) {
                if (this.vm.getIsFollowing()) {
                    if (this.vm.getCallerMarkedTargetAsIdentityShared()) {
                        this.shareRealNameCheckbox.setChecked(true);
                        this.vm.setInitialRealNameSharingState(true);
                    } else {
                        this.shareRealNameCheckbox.setChecked(false);
                        this.vm.setInitialRealNameSharingState(false);
                    }
                } else if (z) {
                    this.shareRealNameCheckbox.setChecked(true);
                    this.vm.setInitialRealNameSharingState(true);
                    this.vm.setShouldAddUserToShareIdentityList(true);
                } else {
                    this.shareRealNameCheckbox.setChecked(false);
                    this.vm.setInitialRealNameSharingState(false);
                }
                this.shareRealNameCheckbox.setSubText(String.format(XboxTcuiSdk.getResources().getString(R.string.ChangeRelationship_Checkbox_Subtext_ShareRealName), this.vm.getGamerTag()));
                this.shareRealNameCheckbox.setEnabled(true);
            }
        }
    }

    public void reportAsyncTaskCompleted() {
        if (this.vm.isBusy() || this.changeFriendshipSwitchPanel.getState() != 1) {
            return;
        }
        closeDialog();
    }

    public void reportAsyncTaskFailed(String str) {
        if (this.changeFriendshipSwitchPanel.getState() == 1) {
            this.changeFriendshipSwitchPanel.setState(0);
            Toast.makeText(XboxTcuiSdk.getActivity(), str, 0).show();
        }
        updateView();
    }
}
