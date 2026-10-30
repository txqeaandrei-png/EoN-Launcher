.class public interface abstract Lcom/mojang/minecraftpe/packagesource/PackageSourceListener;
.super Ljava/lang/Object;


# static fields
.field public static final DOWNLOADFAILEDREASON_CANCELED:I = 0x5

.field public static final DOWNLOADFAILEDREASON_CONTENTVERIFY_ERROR:I = 0x8

.field public static final DOWNLOADFAILEDREASON_CONTENTVERIFY_MISMATCH:I = 0x6

.field public static final DOWNLOADFAILEDREASON_CONTENTVERIFY_RETRY:I = 0x7

.field public static final DOWNLOADFAILEDREASON_FETCHING_URL:I = 0x3

.field public static final DOWNLOADFAILEDREASON_SDCARD_FULL:I = 0x4

.field public static final DOWNLOADFAILEDREASON_STORAGE_PERMISSION:I = 0x1

.field public static final DOWNLOADFAILEDREASON_UNKNOWN:I = 0x0

.field public static final DOWNLOADFAILEDREASON_UNLICENSED:I = 0x2

.field public static final DOWNLOADPAUSEDREASON_BY_REQUEST:I = 0x2

.field public static final DOWNLOADPAUSEDREASON_NEED_CELLULAR_PERMISSION:I = 0x4

.field public static final DOWNLOADPAUSEDREASON_NEED_WIFI:I = 0x6

.field public static final DOWNLOADPAUSEDREASON_NETWORK_SETUP_FAILURE:I = 0x8

.field public static final DOWNLOADPAUSEDREASON_NETWORK_UNAVAILABLE:I = 0x1

.field public static final DOWNLOADPAUSEDREASON_ROAMING:I = 0x7

.field public static final DOWNLOADPAUSEDREASON_SDCARD_UNAVAILABLE:I = 0x9

.field public static final DOWNLOADPAUSEDREASON_UNKNOWN:I = 0x0

.field public static final DOWNLOADPAUSEDREASON_WIFI_DISABLED:I = 0x5

.field public static final DOWNLOADPAUSEDREASON_WIFI_DISABLED_NEED_CELLULAR_PERMISSION:I = 0x3

.field public static final MOUNTSTATE_ERROR_ALREADY_MOUNTED:I = 0x1

.field public static final MOUNTSTATE_ERROR_COULD_NOT_MOUNT:I = 0x2

.field public static final MOUNTSTATE_ERROR_COULD_NOT_UNMOUNT:I = 0x3

.field public static final MOUNTSTATE_ERROR_INTERNAL:I = 0x4

.field public static final MOUNTSTATE_ERROR_NOT_MOUNTED:I = 0x5

.field public static final MOUNTSTATE_ERROR_PERMISSION_DENIED:I = 0x6

.field public static final MOUNTSTATE_MOUNTED:I = 0x7

.field public static final MOUNTSTATE_UNKNOWN:I = 0x0

.field public static final MOUNTSTATE_UNMOUNTED:I = 0x8


# virtual methods
.method public abstract onDownloadProgress(JJFJ)V
.end method

.method public abstract onDownloadStarted()V
.end method

.method public abstract onDownloadStateChanged(ZZZZZII)V
.end method

.method public abstract onMountStateChanged(Ljava/lang/String;I)V
.end method
