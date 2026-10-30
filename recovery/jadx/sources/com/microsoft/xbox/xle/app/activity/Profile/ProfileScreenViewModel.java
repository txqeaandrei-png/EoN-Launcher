package com.microsoft.xbox.xle.app.activity.Profile;

import android.app.AlertDialog;
import android.content.DialogInterface;
import com.microsoft.xbox.service.model.FollowersData;
import com.microsoft.xbox.service.model.ProfileModel;
import com.microsoft.xbox.service.network.managers.AddFollowingUserResponseContainer;
import com.microsoft.xbox.service.network.managers.MutedListResultContainer;
import com.microsoft.xbox.service.network.managers.NeverListResultContainer;
import com.microsoft.xbox.telemetry.helpers.UTCChangeRelationship;
import com.microsoft.xbox.telemetry.helpers.UTCPeopleHub;
import com.microsoft.xbox.toolkit.AsyncActionStatus;
import com.microsoft.xbox.toolkit.DialogManager;
import com.microsoft.xbox.toolkit.NetworkAsyncTask;
import com.microsoft.xbox.toolkit.ThreadManager;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xbox.toolkit.XLEException;
import com.microsoft.xbox.toolkit.ui.NavigationManager;
import com.microsoft.xbox.toolkit.ui.ScreenLayout;
import com.microsoft.xbox.xle.app.SGProjectSpecificDialogManager;
import com.microsoft.xbox.xle.app.activity.ReportUserScreen;
import com.microsoft.xbox.xle.app.adapter.ProfileScreenAdapter;
import com.microsoft.xbox.xle.viewmodel.ChangeFriendshipDialogViewModel;
import com.microsoft.xbox.xle.viewmodel.ViewModelBase;
import com.microsoft.xbox.xle.viewmodel.XLEGlobalData;
import com.microsoft.xboxtcui.R;
import com.microsoft.xboxtcui.XboxAppDeepLinker;
import com.microsoft.xboxtcui.XboxTcuiSdk;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public class ProfileScreenViewModel extends ViewModelBase {
    private static final String TAG = "ProfileScreenViewModel";
    private AddUserToFollowingListAsyncTask addUserToFollowingListAsyncTask;
    private AddUserToMutedListAsyncTask addUserToMutedListAsyncTask;
    private AddUserToNeverListAsyncTask addUserToNeverListAsyncTask;
    private AddUserToShareIdentityListAsyncTask addUserToShareIdentityListAsyncTask;
    private FollowersData basicData;
    private ChangeFriendshipDialogViewModel changeFriendshipDialogViewModel;
    private final HashSet<ChangeFriendshipFormOptions> changeFriendshipForm;
    public boolean isAddingUserToBlockList;
    public boolean isAddingUserToFollowingList;
    public boolean isAddingUserToMutedList;
    public boolean isAddingUserToShareIdentityList;
    private boolean isBlocked;
    private final boolean isFavorite;
    private boolean isFollowing;
    public boolean isLoadingUserMutedList;
    public boolean isLoadingUserNeverList;
    public boolean isLoadingUserProfile;
    private boolean isMuted;
    public boolean isRemovingUserFromBlockList;
    public boolean isRemovingUserFromMutedList;
    private boolean isShowingFailureDialog;
    private LoadUserProfileAsyncTask loadMeProfileTask;
    private LoadUserMutedListAsyncTask loadUserMutedListTask;
    private LoadUserNeverListAsyncTask loadUserNeverListTask;
    private LoadUserProfileAsyncTask loadUserProfileTask;
    protected ProfileModel model;
    private RemoveUserFromMutedListAsyncTask removeUserFromMutedListAsyncTask;
    private RemoveUserToNeverListAsyncTask removeUserToNeverListAsyncTask;

    /* JADX INFO: loaded from: classes3.dex */
    public enum ChangeFriendshipFormOptions {
        ShouldAddUserToFriendList,
        ShouldRemoveUserFromFriendList,
        ShouldAddUserToFavoriteList,
        ShouldRemoveUserFromFavoriteList,
        ShouldAddUserToShareIdentityList,
        ShouldRemoveUserFromShareIdentityList
    }

    public boolean isFacebookFriend() {
        return false;
    }

    public ProfileScreenViewModel(ScreenLayout screenLayout) {
        super(screenLayout);
        this.changeFriendshipForm = new HashSet<>();
        this.isFavorite = false;
        this.model = ProfileModel.getProfileModel(NavigationManager.getInstance().getActivityParameters().getSelectedProfile());
        this.isBlocked = false;
        this.isFollowing = false;
        this.isMuted = false;
        this.adapter = new ProfileScreenAdapter(this);
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    public void onRehydrate() {
        this.adapter = new ProfileScreenAdapter(this);
    }

    public String getGamerTag() {
        return this.model.getGamerTag();
    }

    public String getGamerScore() {
        return this.model.getGamerScore();
    }

    public String getGamerPicUrl() {
        return this.model.getGamerPicImageUrl();
    }

    public String getXuid() {
        return this.model.getXuid();
    }

    public String getRealName() {
        return this.model.getRealName();
    }

    public boolean isCallerFollowingTarget() {
        return this.isFollowing;
    }

    public int getPreferredColor() {
        return this.model.getPreferedColor();
    }

    public boolean isMeProfile() {
        return this.model.isMeProfile();
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    public void onStartOverride() {
        this.isShowingFailureDialog = false;
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    public boolean isBusy() {
        return this.isLoadingUserProfile || this.isLoadingUserNeverList || this.isLoadingUserMutedList || this.isAddingUserToFollowingList || this.isAddingUserToShareIdentityList || this.isRemovingUserFromBlockList || this.isAddingUserToBlockList || this.isAddingUserToMutedList || this.isRemovingUserFromMutedList;
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    public void onStopOverride() {
        LoadUserProfileAsyncTask loadUserProfileAsyncTask = this.loadMeProfileTask;
        if (loadUserProfileAsyncTask != null) {
            loadUserProfileAsyncTask.cancel();
        }
        LoadUserNeverListAsyncTask loadUserNeverListAsyncTask = this.loadUserNeverListTask;
        if (loadUserNeverListAsyncTask != null) {
            loadUserNeverListAsyncTask.cancel();
        }
        LoadUserMutedListAsyncTask loadUserMutedListAsyncTask = this.loadUserMutedListTask;
        if (loadUserMutedListAsyncTask != null) {
            loadUserMutedListAsyncTask.cancel();
        }
        LoadUserProfileAsyncTask loadUserProfileAsyncTask2 = this.loadUserProfileTask;
        if (loadUserProfileAsyncTask2 != null) {
            loadUserProfileAsyncTask2.cancel();
        }
        AddUserToFollowingListAsyncTask addUserToFollowingListAsyncTask = this.addUserToFollowingListAsyncTask;
        if (addUserToFollowingListAsyncTask != null) {
            addUserToFollowingListAsyncTask.cancel();
        }
        AddUserToShareIdentityListAsyncTask addUserToShareIdentityListAsyncTask = this.addUserToShareIdentityListAsyncTask;
        if (addUserToShareIdentityListAsyncTask != null) {
            addUserToShareIdentityListAsyncTask.cancel();
        }
        AddUserToNeverListAsyncTask addUserToNeverListAsyncTask = this.addUserToNeverListAsyncTask;
        if (addUserToNeverListAsyncTask != null) {
            addUserToNeverListAsyncTask.cancel();
        }
        RemoveUserToNeverListAsyncTask removeUserToNeverListAsyncTask = this.removeUserToNeverListAsyncTask;
        if (removeUserToNeverListAsyncTask != null) {
            removeUserToNeverListAsyncTask.cancel();
        }
        AddUserToMutedListAsyncTask addUserToMutedListAsyncTask = this.addUserToMutedListAsyncTask;
        if (addUserToMutedListAsyncTask != null) {
            addUserToMutedListAsyncTask.cancel();
        }
        RemoveUserFromMutedListAsyncTask removeUserFromMutedListAsyncTask = this.removeUserFromMutedListAsyncTask;
        if (removeUserFromMutedListAsyncTask != null) {
            removeUserFromMutedListAsyncTask.cancel();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    public void load(boolean z) {
        LoadUserProfileAsyncTask loadUserProfileAsyncTask = this.loadUserProfileTask;
        if (loadUserProfileAsyncTask != null) {
            loadUserProfileAsyncTask.cancel();
        }
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        LoadUserProfileAsyncTask loadUserProfileAsyncTask2 = new LoadUserProfileAsyncTask(ProfileModel.getMeProfileModel());
        this.loadMeProfileTask = loadUserProfileAsyncTask2;
        loadUserProfileAsyncTask2.load(true);
        if (isMeProfile()) {
            return;
        }
        LoadUserNeverListAsyncTask loadUserNeverListAsyncTask = this.loadUserNeverListTask;
        if (loadUserNeverListAsyncTask != null) {
            loadUserNeverListAsyncTask.cancel();
        }
        LoadUserNeverListAsyncTask loadUserNeverListAsyncTask2 = new LoadUserNeverListAsyncTask(ProfileModel.getMeProfileModel());
        this.loadUserNeverListTask = loadUserNeverListAsyncTask2;
        loadUserNeverListAsyncTask2.load(true);
        LoadUserMutedListAsyncTask loadUserMutedListAsyncTask = this.loadUserMutedListTask;
        if (loadUserMutedListAsyncTask != null) {
            loadUserMutedListAsyncTask.cancel();
        }
        LoadUserMutedListAsyncTask loadUserMutedListAsyncTask2 = new LoadUserMutedListAsyncTask(ProfileModel.getMeProfileModel());
        this.loadUserMutedListTask = loadUserMutedListAsyncTask2;
        loadUserMutedListAsyncTask2.load(true);
        LoadUserProfileAsyncTask loadUserProfileAsyncTask3 = new LoadUserProfileAsyncTask(this.model);
        this.loadUserProfileTask = loadUserProfileAsyncTask3;
        loadUserProfileAsyncTask3.load(true);
    }

    public boolean getIsFavorite() {
        Objects.requireNonNull(this);
        return false;
    }

    public boolean getIsBlocked() {
        return this.isBlocked;
    }

    public boolean getIsMuted() {
        return this.isMuted;
    }

    public boolean getIsAddingUserToBlockList() {
        return this.isAddingUserToBlockList;
    }

    public boolean getIsRemovingUserFromBlockList() {
        return this.isRemovingUserFromBlockList;
    }

    public boolean getIsAddingUserToMutedList() {
        return this.isAddingUserToMutedList;
    }

    public boolean getIsRemovingUserFromMutedList() {
        return this.isRemovingUserFromMutedList;
    }

    public void navigateToChangeRelationship() {
        if (ProfileModel.hasPrivilegeToAddFriend()) {
            UTCChangeRelationship.trackChangeRelationshipAction(getScreen().getName(), getXuid(), isCallerFollowingTarget(), isFacebookFriend());
            showChangeFriendshipDialog();
        } else {
            showError(R.string.Global_MissingPrivilegeError_DialogBody);
        }
    }

    public void addFollowingUser() {
        if (ProfileModel.hasPrivilegeToAddFriend()) {
            AddUserToFollowingListAsyncTask addUserToFollowingListAsyncTask = this.addUserToFollowingListAsyncTask;
            if (addUserToFollowingListAsyncTask != null) {
                addUserToFollowingListAsyncTask.cancel();
            }
            AddUserToFollowingListAsyncTask addUserToFollowingListAsyncTask2 = new AddUserToFollowingListAsyncTask(this.model.getXuid());
            this.addUserToFollowingListAsyncTask = addUserToFollowingListAsyncTask2;
            addUserToFollowingListAsyncTask2.load(true);
            return;
        }
        showError(R.string.Global_MissingPrivilegeError_DialogBody);
    }

    public void addUserToShareIdentityList() {
        AddUserToShareIdentityListAsyncTask addUserToShareIdentityListAsyncTask = this.addUserToShareIdentityListAsyncTask;
        if (addUserToShareIdentityListAsyncTask != null) {
            addUserToShareIdentityListAsyncTask.cancel();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.model.getXuid());
        AddUserToShareIdentityListAsyncTask addUserToShareIdentityListAsyncTask2 = new AddUserToShareIdentityListAsyncTask(arrayList);
        this.addUserToShareIdentityListAsyncTask = addUserToShareIdentityListAsyncTask2;
        addUserToShareIdentityListAsyncTask2.load(true);
    }

    private void notifyDialogAsyncTaskCompleted() {
        ((SGProjectSpecificDialogManager) DialogManager.getInstance().getManager()).notifyChangeFriendshipDialogAsyncTaskCompleted();
    }

    private void notifyDialogAsyncTaskFailed(String str) {
        ((SGProjectSpecificDialogManager) DialogManager.getInstance().getManager()).notifyChangeFriendshipDialogAsyncTaskFailed(str);
    }

    public void showChangeFriendshipDialog() {
        if (this.changeFriendshipDialogViewModel == null) {
            this.changeFriendshipDialogViewModel = new ChangeFriendshipDialogViewModel(this.model);
        }
        ((SGProjectSpecificDialogManager) DialogManager.getInstance().getManager()).showChangeFriendshipDialog(this.changeFriendshipDialogViewModel, this);
    }

    public void blockUser() {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        showOkCancelDialog(XboxTcuiSdk.getResources().getString(R.string.Messages_BlockUserConfirmation_DialogTitle), XboxTcuiSdk.getResources().getString(R.string.Messages_BlockUserConfirmation_DialogBody), XboxTcuiSdk.getResources().getString(R.string.OK_Text), new Runnable() { // from class: com.microsoft.xbox.xle.app.activity.Profile.ProfileScreenViewModel$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$blockUser$0();
            }
        }, XboxTcuiSdk.getResources().getString(R.string.MessageDialog_Cancel), null);
        updateAdapter();
    }

    /* JADX INFO: renamed from: blockUserInternal, reason: merged with bridge method [inline-methods] */
    public void lambda$blockUser$0() {
        UTCPeopleHub.trackBlockDialogComplete();
        AddUserToNeverListAsyncTask addUserToNeverListAsyncTask = this.addUserToNeverListAsyncTask;
        if (addUserToNeverListAsyncTask != null) {
            addUserToNeverListAsyncTask.cancel();
        }
        AddUserToNeverListAsyncTask addUserToNeverListAsyncTask2 = new AddUserToNeverListAsyncTask(this.model.getXuid());
        this.addUserToNeverListAsyncTask = addUserToNeverListAsyncTask2;
        addUserToNeverListAsyncTask2.load(true);
    }

    public void unblockUser() {
        RemoveUserToNeverListAsyncTask removeUserToNeverListAsyncTask = this.removeUserToNeverListAsyncTask;
        if (removeUserToNeverListAsyncTask != null) {
            removeUserToNeverListAsyncTask.cancel();
        }
        RemoveUserToNeverListAsyncTask removeUserToNeverListAsyncTask2 = new RemoveUserToNeverListAsyncTask(this.model.getXuid());
        this.removeUserToNeverListAsyncTask = removeUserToNeverListAsyncTask2;
        removeUserToNeverListAsyncTask2.load(true);
    }

    public void muteUser() {
        AddUserToMutedListAsyncTask addUserToMutedListAsyncTask = this.addUserToMutedListAsyncTask;
        if (addUserToMutedListAsyncTask != null) {
            addUserToMutedListAsyncTask.cancel();
        }
        AddUserToMutedListAsyncTask addUserToMutedListAsyncTask2 = new AddUserToMutedListAsyncTask(this.model.getXuid());
        this.addUserToMutedListAsyncTask = addUserToMutedListAsyncTask2;
        addUserToMutedListAsyncTask2.load(true);
    }

    public void unmuteUser() {
        RemoveUserFromMutedListAsyncTask removeUserFromMutedListAsyncTask = this.removeUserFromMutedListAsyncTask;
        if (removeUserFromMutedListAsyncTask != null) {
            removeUserFromMutedListAsyncTask.cancel();
        }
        RemoveUserFromMutedListAsyncTask removeUserFromMutedListAsyncTask2 = new RemoveUserFromMutedListAsyncTask(this.model.getXuid());
        this.removeUserFromMutedListAsyncTask = removeUserFromMutedListAsyncTask2;
        removeUserFromMutedListAsyncTask2.load(true);
    }

    public void showReportDialog() {
        try {
            NavigationManager.getInstance().PopScreensAndReplace(0, ReportUserScreen.class, false, false, false, NavigationManager.getInstance().getActivityParameters());
        } catch (XLEException unused) {
        }
    }

    public void launchXboxApp() {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        showOkCancelDialog(XboxTcuiSdk.getResources().getString(R.string.Messages_BlockUserConfirmation_DialogTitle), XboxTcuiSdk.getResources().getString(R.string.Messages_ViewInXboxApp_DialogBody), XboxTcuiSdk.getResources().getString(R.string.ConnectDialog_ContinueAsGuest), new Runnable() { // from class: com.microsoft.xbox.xle.app.activity.Profile.ProfileScreenViewModel.1
            @Override // java.lang.Runnable
            public void run() {
                UTCPeopleHub.trackViewInXboxAppDialogComplete();
                XboxAppDeepLinker.showUserProfile(XboxTcuiSdk.getActivity(), ProfileScreenViewModel.this.model.getXuid());
            }
        }, XboxTcuiSdk.getResources().getString(R.string.MessageDialog_Cancel), null);
        updateAdapter();
    }

    /* JADX INFO: renamed from: com.microsoft.xbox.xle.app.activity.Profile.ProfileScreenViewModel$2, reason: invalid class name */
    /* JADX INFO: loaded from: classes3.dex */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus;

        static {
            int[] iArr = new int[AsyncActionStatus.values().length];
            $SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus = iArr;
            try {
                iArr[AsyncActionStatus.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus[AsyncActionStatus.NO_CHANGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus[AsyncActionStatus.NO_OP_SUCCESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus[AsyncActionStatus.FAIL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus[AsyncActionStatus.NO_OP_FAIL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0030  */
    /* JADX WARN: Code duplicated, block: B:20:0x0034  */
    public void onLoadUserProfileCompleted(AsyncActionStatus asyncActionStatus) {
        this.isLoadingUserProfile = false;
        int i = AnonymousClass2.$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus[asyncActionStatus.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            if (!isMeProfile() && ProfileModel.getMeProfileModel() != null) {
                this.isFollowing = this.model.isCallerFollowingTarget();
            } else if (!this.isShowingFailureDialog) {
                this.isShowingFailureDialog = true;
                AlertDialog.Builder builder = new AlertDialog.Builder(XboxTcuiSdk.getActivity());
                builder.setMessage(R.string.Service_ErrorText);
                builder.setCancelable(false);
                builder.setPositiveButton(R.string.OK_Text, new DialogInterface.OnClickListener() { // from class: com.microsoft.xbox.xle.app.activity.Profile.ProfileScreenViewModel$$ExternalSyntheticLambda0
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        ProfileScreenViewModel.lambda$onLoadUserProfileCompleted$1(dialogInterface, i2);
                    }
                });
                builder.create().show();
            }
        } else if (i == 4 || i == 5) {
            if (!this.isShowingFailureDialog) {
                this.isShowingFailureDialog = true;
                AlertDialog.Builder builder2 = new AlertDialog.Builder(XboxTcuiSdk.getActivity());
                builder2.setMessage(R.string.Service_ErrorText);
                builder2.setCancelable(false);
                builder2.setPositiveButton(R.string.OK_Text, new DialogInterface.OnClickListener() { // from class: com.microsoft.xbox.xle.app.activity.Profile.ProfileScreenViewModel$$ExternalSyntheticLambda0
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        ProfileScreenViewModel.lambda$onLoadUserProfileCompleted$1(dialogInterface, i2);
                    }
                });
                builder2.create().show();
            }
        }
        updateAdapter();
    }

    static /* synthetic */ void lambda$onLoadUserProfileCompleted$1(DialogInterface dialogInterface, int i) {
        try {
            NavigationManager.getInstance().PopAllScreens();
        } catch (XLEException e) {
            e.printStackTrace();
        }
    }

    public void onLoadUserNeverListCompleted(AsyncActionStatus asyncActionStatus) {
        this.isLoadingUserNeverList = false;
        int i = AnonymousClass2.$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus[asyncActionStatus.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            ProfileModel meProfileModel = ProfileModel.getMeProfileModel();
            if (!isMeProfile() && meProfileModel != null) {
                this.isBlocked = false;
                NeverListResultContainer.NeverListResult neverListData = meProfileModel.getNeverListData();
                if (neverListData != null) {
                    this.isBlocked = neverListData.contains(this.model.getXuid());
                }
            }
        }
        updateAdapter();
    }

    public void onLoadUserMutedListCompleted(AsyncActionStatus asyncActionStatus) {
        this.isLoadingUserMutedList = false;
        int i = AnonymousClass2.$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus[asyncActionStatus.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            ProfileModel meProfileModel = ProfileModel.getMeProfileModel();
            if (!isMeProfile() && meProfileModel != null) {
                this.isMuted = false;
                MutedListResultContainer.MutedListResult mutedList = meProfileModel.getMutedList();
                if (mutedList != null) {
                    this.isMuted = mutedList.contains(this.model.getXuid());
                }
            }
        }
        updateAdapter();
    }

    public void onAddUserToFollowingListCompleted(AsyncActionStatus asyncActionStatus, boolean z) {
        this.isAddingUserToFollowingList = false;
        int i = AnonymousClass2.$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus[asyncActionStatus.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            this.isFollowing = z;
            XLEGlobalData.getInstance().AddForceRefresh(ProfileScreenViewModel.class);
            notifyDialogAsyncTaskCompleted();
        } else if (i == 4 || i == 5) {
            ProfileModel meProfileModel = ProfileModel.getMeProfileModel();
            AddFollowingUserResponseContainer.AddFollowingUserResponse addUserToFollowingResult = meProfileModel != null ? meProfileModel.getAddUserToFollowingResult() : null;
            if (addUserToFollowingResult != null && !addUserToFollowingResult.getAddFollowingRequestStatus() && addUserToFollowingResult.code == 1028) {
                notifyDialogAsyncTaskFailed(addUserToFollowingResult.description);
            } else {
                notifyDialogAsyncTaskFailed(XboxTcuiSdk.getResources().getString(R.string.RealNameSharing_ErrorAddingFriend));
            }
        }
        updateAdapter();
    }

    public void onAddUseToShareIdentityListCompleted(AsyncActionStatus asyncActionStatus) {
        this.isAddingUserToShareIdentityList = false;
        int i = AnonymousClass2.$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus[asyncActionStatus.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            notifyDialogAsyncTaskCompleted();
        } else if (i == 4 || i == 5) {
            notifyDialogAsyncTaskFailed(XboxTcuiSdk.getResources().getString(R.string.RealNameSharing_ErrorChangeRemove));
        }
        updateAdapter();
    }

    public void onAddUserToBlockListCompleted(AsyncActionStatus asyncActionStatus) {
        this.isAddingUserToBlockList = false;
        int i = AnonymousClass2.$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus[asyncActionStatus.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            ProfileModel meProfileModel = ProfileModel.getMeProfileModel();
            if (meProfileModel != null) {
                this.isBlocked = false;
                NeverListResultContainer.NeverListResult neverListData = meProfileModel.getNeverListData();
                if (neverListData != null) {
                    this.isBlocked = neverListData.contains(this.model.getXuid());
                }
                this.isFollowing = false;
            }
        } else if (i == 4 || i == 5) {
            showError(R.string.Messages_Error_FailedToBlockUser);
        }
        updateAdapter();
    }

    public void onRemoveUserFromBlockListCompleted(AsyncActionStatus asyncActionStatus) {
        this.isRemovingUserFromBlockList = false;
        int i = AnonymousClass2.$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus[asyncActionStatus.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            ProfileModel meProfileModel = ProfileModel.getMeProfileModel();
            if (meProfileModel != null) {
                this.isBlocked = false;
                NeverListResultContainer.NeverListResult neverListData = meProfileModel.getNeverListData();
                if (neverListData != null) {
                    this.isBlocked = neverListData.contains(this.model.getXuid());
                }
            }
        } else if (i == 4 || i == 5) {
            showError(R.string.Messages_Error_FailedToUnblockUser);
        }
        updateAdapter();
    }

    public void onAddUserToMutedListCompleted(AsyncActionStatus asyncActionStatus) {
        this.isAddingUserToMutedList = false;
        int i = AnonymousClass2.$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus[asyncActionStatus.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            if (ProfileModel.getMeProfileModel() != null) {
                this.isMuted = true;
            }
        } else if (i == 4 || i == 5) {
            showError(R.string.Messages_Error_FailedToMuteUser);
        }
        updateAdapter();
    }

    public void onRemoveUserFromMutedListCompleted(AsyncActionStatus asyncActionStatus) {
        this.isRemovingUserFromMutedList = false;
        int i = AnonymousClass2.$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus[asyncActionStatus.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            if (ProfileModel.getMeProfileModel() != null) {
                this.isMuted = false;
            }
        } else if (i == 4 || i == 5) {
            showError(R.string.Messages_Error_FailedToUnmuteUser);
        }
        updateAdapter();
    }

    private class LoadUserProfileAsyncTask extends NetworkAsyncTask<AsyncActionStatus> {
        private final ProfileModel model;

        private LoadUserProfileAsyncTask(ProfileModel profileModel) {
            this.model = profileModel;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public boolean checkShouldExecute() {
            XLEAssert.assertIsUIThread();
            return this.model.shouldRefresh() || this.model.shouldRefreshProfileSummary();
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public void onNoAction() {
            XLEAssert.assertIsUIThread();
            ProfileScreenViewModel.this.onLoadUserProfileCompleted(AsyncActionStatus.NO_CHANGE);
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPreExecute() {
            XLEAssert.assertIsUIThread();
            ProfileScreenViewModel.this.isLoadingUserProfile = true;
            ProfileScreenViewModel.this.updateAdapter();
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPostExecute(AsyncActionStatus asyncActionStatus) {
            ProfileScreenViewModel.this.onLoadUserProfileCompleted(asyncActionStatus);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus onError() {
            return AsyncActionStatus.FAIL;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus loadDataInBackground() {
            XLEAssert.assertNotNull(this.model);
            AsyncActionStatus status = this.model.loadSync(this.forceLoad).getStatus();
            return (status == AsyncActionStatus.SUCCESS || status == AsyncActionStatus.NO_CHANGE || status == AsyncActionStatus.NO_OP_SUCCESS) ? this.model.loadProfileSummary(this.forceLoad).getStatus() : status;
        }
    }

    private class LoadUserNeverListAsyncTask extends NetworkAsyncTask<AsyncActionStatus> {
        private final ProfileModel model;

        private LoadUserNeverListAsyncTask(ProfileModel profileModel) {
            this.model = profileModel;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public boolean checkShouldExecute() {
            XLEAssert.assertIsUIThread();
            return this.model.shouldRefresh();
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public void onNoAction() {
            XLEAssert.assertIsUIThread();
            ProfileScreenViewModel.this.onLoadUserProfileCompleted(AsyncActionStatus.NO_CHANGE);
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPreExecute() {
            XLEAssert.assertIsUIThread();
            ProfileScreenViewModel.this.isLoadingUserNeverList = true;
            ProfileScreenViewModel.this.updateAdapter();
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPostExecute(AsyncActionStatus asyncActionStatus) {
            ProfileScreenViewModel.this.onLoadUserNeverListCompleted(asyncActionStatus);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus onError() {
            return AsyncActionStatus.FAIL;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus loadDataInBackground() {
            XLEAssert.assertNotNull(this.model);
            AsyncActionStatus status = this.model.loadSync(this.forceLoad).getStatus();
            return (status == AsyncActionStatus.SUCCESS || status == AsyncActionStatus.NO_CHANGE || status == AsyncActionStatus.NO_OP_SUCCESS) ? this.model.loadUserNeverList(true).getStatus() : status;
        }
    }

    private class LoadUserMutedListAsyncTask extends NetworkAsyncTask<AsyncActionStatus> {
        private final ProfileModel model;

        private LoadUserMutedListAsyncTask(ProfileModel profileModel) {
            this.model = profileModel;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public boolean checkShouldExecute() {
            XLEAssert.assertIsUIThread();
            return this.model.shouldRefresh();
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public void onNoAction() {
            XLEAssert.assertIsUIThread();
            ProfileScreenViewModel.this.onLoadUserProfileCompleted(AsyncActionStatus.NO_CHANGE);
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPreExecute() {
            XLEAssert.assertIsUIThread();
            ProfileScreenViewModel.this.isLoadingUserMutedList = true;
            ProfileScreenViewModel.this.updateAdapter();
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPostExecute(AsyncActionStatus asyncActionStatus) {
            ProfileScreenViewModel.this.onLoadUserMutedListCompleted(asyncActionStatus);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus onError() {
            return AsyncActionStatus.FAIL;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus loadDataInBackground() {
            XLEAssert.assertNotNull(this.model);
            AsyncActionStatus status = this.model.loadSync(this.forceLoad).getStatus();
            return (status == AsyncActionStatus.SUCCESS || status == AsyncActionStatus.NO_CHANGE || status == AsyncActionStatus.NO_OP_SUCCESS) ? this.model.loadUserMutedList(true).getStatus() : status;
        }
    }

    private class AddUserToFollowingListAsyncTask extends NetworkAsyncTask<AsyncActionStatus> {
        private final String followingUserXuid;
        private boolean isFollowingUser = false;

        public AddUserToFollowingListAsyncTask(String str) {
            this.followingUserXuid = str;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public boolean checkShouldExecute() {
            XLEAssert.assertIsUIThread();
            return true;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public void onNoAction() {
            XLEAssert.assertIsUIThread();
            ProfileScreenViewModel.this.onAddUserToFollowingListCompleted(AsyncActionStatus.NO_CHANGE, this.isFollowingUser);
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPreExecute() {
            XLEAssert.assertIsUIThread();
            ProfileScreenViewModel.this.isAddingUserToFollowingList = true;
            ProfileScreenViewModel.this.updateAdapter();
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPostExecute(AsyncActionStatus asyncActionStatus) {
            ProfileScreenViewModel.this.onAddUserToFollowingListCompleted(asyncActionStatus, this.isFollowingUser);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus onError() {
            return AsyncActionStatus.FAIL;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus loadDataInBackground() {
            ProfileModel meProfileModel = ProfileModel.getMeProfileModel();
            if (meProfileModel == null) {
                return AsyncActionStatus.FAIL;
            }
            AsyncActionStatus status = meProfileModel.addUserToFollowingList(this.forceLoad, this.followingUserXuid).getStatus();
            if (!AsyncActionStatus.getIsFail(status)) {
                AddFollowingUserResponseContainer.AddFollowingUserResponse addUserToFollowingResult = meProfileModel.getAddUserToFollowingResult();
                if (addUserToFollowingResult != null && !addUserToFollowingResult.getAddFollowingRequestStatus() && addUserToFollowingResult.code == 1028) {
                    return AsyncActionStatus.FAIL;
                }
                ProfileScreenViewModel.this.model.loadProfileSummary(true);
                meProfileModel.loadProfileSummary(true);
                ArrayList<FollowersData> followingData = meProfileModel.getFollowingData();
                if (followingData != null) {
                    Iterator<FollowersData> it = followingData.iterator();
                    while (it.hasNext()) {
                        if (it.next().xuid.equals(this.followingUserXuid)) {
                            this.isFollowingUser = true;
                            break;
                        }
                    }
                }
            }
            return status;
        }
    }

    private class AddUserToShareIdentityListAsyncTask extends NetworkAsyncTask<AsyncActionStatus> {
        private final ArrayList<String> usersToAdd;

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public boolean checkShouldExecute() {
            return true;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public void onNoAction() {
        }

        public AddUserToShareIdentityListAsyncTask(ArrayList<String> arrayList) {
            this.usersToAdd = arrayList;
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPreExecute() {
            XLEAssert.assertIsUIThread();
            ProfileScreenViewModel.this.isAddingUserToShareIdentityList = true;
            ProfileScreenViewModel.this.updateAdapter();
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPostExecute(AsyncActionStatus asyncActionStatus) {
            ProfileScreenViewModel.this.onAddUseToShareIdentityListCompleted(asyncActionStatus);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus onError() {
            return AsyncActionStatus.FAIL;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus loadDataInBackground() {
            ProfileModel meProfileModel = ProfileModel.getMeProfileModel();
            if (meProfileModel != null) {
                return meProfileModel.addUserToShareIdentity(this.forceLoad, this.usersToAdd).getStatus();
            }
            return AsyncActionStatus.FAIL;
        }
    }

    private class AddUserToNeverListAsyncTask extends NetworkAsyncTask<AsyncActionStatus> {
        private final String blockUserXuid;

        public AddUserToNeverListAsyncTask(String str) {
            this.blockUserXuid = str;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public boolean checkShouldExecute() {
            XLEAssert.assertIsUIThread();
            return true;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public void onNoAction() {
            XLEAssert.assertIsUIThread();
            ProfileScreenViewModel.this.onAddUserToBlockListCompleted(AsyncActionStatus.NO_CHANGE);
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPreExecute() {
            XLEAssert.assertIsUIThread();
            ProfileScreenViewModel.this.isAddingUserToBlockList = true;
            ProfileScreenViewModel.this.updateAdapter();
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPostExecute(AsyncActionStatus asyncActionStatus) {
            ProfileScreenViewModel.this.onAddUserToBlockListCompleted(asyncActionStatus);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus onError() {
            return AsyncActionStatus.FAIL;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus loadDataInBackground() {
            ProfileModel meProfileModel = ProfileModel.getMeProfileModel();
            if (meProfileModel != null) {
                return meProfileModel.addUserToNeverList(this.forceLoad, this.blockUserXuid).getStatus();
            }
            return AsyncActionStatus.FAIL;
        }
    }

    private class RemoveUserToNeverListAsyncTask extends NetworkAsyncTask<AsyncActionStatus> {
        private final String unblockUserXuid;

        public RemoveUserToNeverListAsyncTask(String str) {
            this.unblockUserXuid = str;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public boolean checkShouldExecute() {
            XLEAssert.assertIsUIThread();
            return true;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public void onNoAction() {
            XLEAssert.assertIsUIThread();
            ProfileScreenViewModel.this.onRemoveUserFromBlockListCompleted(AsyncActionStatus.NO_CHANGE);
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPreExecute() {
            XLEAssert.assertIsUIThread();
            ProfileScreenViewModel.this.isRemovingUserFromBlockList = true;
            ProfileScreenViewModel.this.updateAdapter();
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPostExecute(AsyncActionStatus asyncActionStatus) {
            ProfileScreenViewModel.this.onRemoveUserFromBlockListCompleted(asyncActionStatus);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus onError() {
            return AsyncActionStatus.FAIL;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus loadDataInBackground() {
            ProfileModel meProfileModel = ProfileModel.getMeProfileModel();
            if (meProfileModel != null) {
                return meProfileModel.removeUserFromNeverList(this.forceLoad, this.unblockUserXuid).getStatus();
            }
            return AsyncActionStatus.FAIL;
        }
    }

    private class AddUserToMutedListAsyncTask extends NetworkAsyncTask<AsyncActionStatus> {
        private final String mutedUserXuid;

        public AddUserToMutedListAsyncTask(String str) {
            this.mutedUserXuid = str;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public boolean checkShouldExecute() {
            XLEAssert.assertIsUIThread();
            return true;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public void onNoAction() {
            XLEAssert.assertIsUIThread();
            ProfileScreenViewModel.this.onAddUserToMutedListCompleted(AsyncActionStatus.NO_CHANGE);
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPreExecute() {
            XLEAssert.assertIsUIThread();
            ProfileScreenViewModel.this.isAddingUserToMutedList = true;
            ProfileScreenViewModel.this.updateAdapter();
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPostExecute(AsyncActionStatus asyncActionStatus) {
            ProfileScreenViewModel.this.onAddUserToMutedListCompleted(asyncActionStatus);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus onError() {
            return AsyncActionStatus.FAIL;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus loadDataInBackground() {
            ProfileModel meProfileModel = ProfileModel.getMeProfileModel();
            if (meProfileModel != null) {
                return meProfileModel.addUserToMutedList(this.forceLoad, this.mutedUserXuid).getStatus();
            }
            return AsyncActionStatus.FAIL;
        }
    }

    private class RemoveUserFromMutedListAsyncTask extends NetworkAsyncTask<AsyncActionStatus> {
        private final String mutedUserXuid;

        public RemoveUserFromMutedListAsyncTask(String str) {
            this.mutedUserXuid = str;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public boolean checkShouldExecute() {
            XLEAssert.assertIsUIThread();
            return true;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public void onNoAction() {
            XLEAssert.assertIsUIThread();
            ProfileScreenViewModel.this.onRemoveUserFromMutedListCompleted(AsyncActionStatus.NO_CHANGE);
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPreExecute() {
            XLEAssert.assertIsUIThread();
            ProfileScreenViewModel.this.isRemovingUserFromMutedList = true;
            ProfileScreenViewModel.this.updateAdapter();
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPostExecute(AsyncActionStatus asyncActionStatus) {
            ProfileScreenViewModel.this.onRemoveUserFromMutedListCompleted(asyncActionStatus);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus onError() {
            return AsyncActionStatus.FAIL;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus loadDataInBackground() {
            ProfileModel meProfileModel = ProfileModel.getMeProfileModel();
            if (meProfileModel != null) {
                return meProfileModel.removeUserFromMutedList(this.forceLoad, this.mutedUserXuid).getStatus();
            }
            return AsyncActionStatus.FAIL;
        }
    }
}
