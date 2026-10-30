.class public Lcom/google/androidgamesdk/GameActivity;
.super Landroidx/appcompat/app/AppCompatActivity;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;
.implements Lcom/google/androidgamesdk/gametextinput/Listener;
.implements Landroidx/core/view/OnApplyWindowInsetsListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/androidgamesdk/GameActivity$InputEnabledSurfaceView;
    }
.end annotation


# static fields
.field private static final DEFAULT_NATIVE_LIB_NAME:Ljava/lang/String; = "main"

.field private static final KEY_NATIVE_SAVED_STATE:Ljava/lang/String; = "android:native_state"

.field private static final LOG_TAG:Ljava/lang/String; = "GameActivity"

.field public static final META_DATA_LIB_NAME:Ljava/lang/String; = "android.app.lib_name"


# instance fields
.field protected contentViewId:I

.field private imeEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field private mCurSurfaceHolder:Landroid/view/SurfaceHolder;

.field protected mDestroyed:Z

.field protected mLastContentHeight:I

.field protected mLastContentWidth:I

.field protected mLastContentX:I

.field protected mLastContentY:I

.field protected final mLocation:[I

.field private mNativeHandle:J

.field protected mSurfaceView:Lcom/google/androidgamesdk/GameActivity$InputEnabledSurfaceView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x2

    .line 173
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/androidgamesdk/GameActivity;->mLocation:[I

    return-void
.end method

.method private static getAbsolutePath(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 369
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method protected createSurfaceView()Lcom/google/androidgamesdk/GameActivity$InputEnabledSurfaceView;
    .locals 1

    .line 251
    new-instance v0, Lcom/google/androidgamesdk/GameActivity$InputEnabledSurfaceView;

    invoke-direct {v0, p0, p0}, Lcom/google/androidgamesdk/GameActivity$InputEnabledSurfaceView;-><init>(Lcom/google/androidgamesdk/GameActivity;Lcom/google/androidgamesdk/GameActivity;)V

    return-object v0
.end method

.method protected native getDlError()Ljava/lang/String;
.end method

.method public getGameActivityNativeHandle()J
    .locals 2

    .line 239
    iget-wide v0, p0, Lcom/google/androidgamesdk/GameActivity;->mNativeHandle:J

    return-wide v0
.end method

.method public getImeEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .locals 2

    .line 544
    iget-object v0, p0, Lcom/google/androidgamesdk/GameActivity;->imeEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-nez v0, :cond_0

    .line 545
    new-instance v0, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v0}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    iput-object v0, p0, Lcom/google/androidgamesdk/GameActivity;->imeEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const/4 v1, 0x1

    .line 547
    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 548
    iget-object v0, p0, Lcom/google/androidgamesdk/GameActivity;->imeEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const/4 v1, 0x6

    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 549
    iget-object v0, p0, Lcom/google/androidgamesdk/GameActivity;->imeEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const v1, 0x2000006

    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/google/androidgamesdk/GameActivity;->imeEditorInfo:Landroid/view/inputmethod/EditorInfo;

    return-object v0
.end method

.method public getWaterfallInsets()Landroidx/core/graphics/Insets;
    .locals 2

    .line 507
    iget-object v0, p0, Lcom/google/androidgamesdk/GameActivity;->mSurfaceView:Lcom/google/androidgamesdk/GameActivity$InputEnabledSurfaceView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 510
    :cond_0
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getDisplayCutout()Landroidx/core/view/DisplayCutoutCompat;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 512
    invoke-virtual {v0}, Landroidx/core/view/DisplayCutoutCompat;->getWaterfallInsets()Landroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getWindowInsets(I)Landroidx/core/graphics/Insets;
    .locals 2

    .line 495
    iget-object v0, p0, Lcom/google/androidgamesdk/GameActivity;->mSurfaceView:Lcom/google/androidgamesdk/GameActivity$InputEnabledSurfaceView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 498
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    .line 499
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    if-ne p1, v0, :cond_1

    return-object v1

    :cond_1
    return-object p1
.end method

.method protected native initializeNativeCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/AssetManager;[BLandroid/content/res/Configuration;)J
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    .line 484
    iget-object v0, p0, Lcom/google/androidgamesdk/GameActivity;->mSurfaceView:Lcom/google/androidgamesdk/GameActivity$InputEnabledSurfaceView;

    iget-object v0, v0, Lcom/google/androidgamesdk/GameActivity$InputEnabledSurfaceView;->mInputConnection:Lcom/google/androidgamesdk/gametextinput/InputConnection;

    invoke-virtual {v0, p1, p2}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    .line 485
    iget-wide v0, p0, Lcom/google/androidgamesdk/GameActivity;->mNativeHandle:J

    invoke-virtual {p0, v0, v1}, Lcom/google/androidgamesdk/GameActivity;->onWindowInsetsChangedNative(J)V

    .line 488
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    return-object p2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 419
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 420
    iget-boolean v0, p0, Lcom/google/androidgamesdk/GameActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 421
    iget-wide v0, p0, Lcom/google/androidgamesdk/GameActivity;->mNativeHandle:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/androidgamesdk/GameActivity;->onConfigurationChangedNative(JLandroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected native onConfigurationChangedNative(JLandroid/content/res/Configuration;)V
.end method

.method protected native onContentRectChangedNative(JIIII)V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 300
    invoke-virtual {p0}, Lcom/google/androidgamesdk/GameActivity;->onCreateSurfaceView()V

    .line 302
    iget-object v0, p0, Lcom/google/androidgamesdk/GameActivity;->mSurfaceView:Lcom/google/androidgamesdk/GameActivity$InputEnabledSurfaceView;

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v0}, Lcom/google/androidgamesdk/GameActivity$InputEnabledSurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/google/androidgamesdk/GameActivity;->onSetUpWindow()V

    .line 308
    new-instance v0, Ljava/lang/String;

    const-string v1, "main"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 311
    :try_start_0
    invoke-virtual {p0}, Lcom/google/androidgamesdk/GameActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 312
    invoke-virtual {p0}, Lcom/google/androidgamesdk/GameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    const/16 v4, 0x80

    .line 311
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 313
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 314
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "android.app.lib_name"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    move-object v0, v2

    .line 322
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lib"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 323
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Looking for library "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GameActivity"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-virtual {p0}, Lcom/google/androidgamesdk/GameActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    check-cast v3, Ldalvik/system/BaseDexClassLoader;

    .line 326
    invoke-virtual {v3, v0}, Ldalvik/system/BaseDexClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Found library "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Loading..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0

    .line 334
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Application should have loaded the native library "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " explicitly by now. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 345
    const-string v1, "android:native_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    move-object v11, v1

    goto :goto_1

    :cond_3
    move-object v11, v0

    .line 347
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/androidgamesdk/GameActivity;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 348
    array-length v2, v1

    if-lez v2, :cond_4

    const/4 v0, 0x0

    .line 349
    aget-object v0, v1, v0

    .line 351
    :cond_4
    invoke-virtual {p0}, Lcom/google/androidgamesdk/GameActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/google/androidgamesdk/GameActivity;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    .line 352
    invoke-virtual {p0}, Lcom/google/androidgamesdk/GameActivity;->getObbDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/google/androidgamesdk/GameActivity;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0}, Lcom/google/androidgamesdk/GameActivity;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/androidgamesdk/GameActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    .line 353
    invoke-virtual {p0}, Lcom/google/androidgamesdk/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    move-object v6, p0

    .line 351
    invoke-virtual/range {v6 .. v12}, Lcom/google/androidgamesdk/GameActivity;->initializeNativeCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/AssetManager;[BLandroid/content/res/Configuration;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/androidgamesdk/GameActivity;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_6

    .line 361
    iget-object v2, p0, Lcom/google/androidgamesdk/GameActivity;->mSurfaceView:Lcom/google/androidgamesdk/GameActivity$InputEnabledSurfaceView;

    if-eqz v2, :cond_5

    .line 362
    iget-object v2, v2, Lcom/google/androidgamesdk/GameActivity$InputEnabledSurfaceView;->mInputConnection:Lcom/google/androidgamesdk/gametextinput/InputConnection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/androidgamesdk/GameActivity;->setInputConnectionNative(JLcom/google/androidgamesdk/gametextinput/InputConnection;)V

    .line 365
    :cond_5
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    return-void

    .line 356
    :cond_6
    new-instance p1, Ljava/lang/UnsatisfiedLinkError;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to initialize native code \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 357
    invoke-virtual {p0}, Lcom/google/androidgamesdk/GameActivity;->getDlError()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 335
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unable to find native library "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " using classloader: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 336
    invoke-virtual {v3}, Ldalvik/system/BaseDexClassLoader;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 319
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error getting activity info"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected onCreateSurfaceView()V
    .locals 2

    .line 260
    invoke-virtual {p0}, Lcom/google/androidgamesdk/GameActivity;->createSurfaceView()Lcom/google/androidgamesdk/GameActivity$InputEnabledSurfaceView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/androidgamesdk/GameActivity;->mSurfaceView:Lcom/google/androidgamesdk/GameActivity$InputEnabledSurfaceView;

    if-nez v0, :cond_0

    return-void

    .line 266
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 267
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v1

    iput v1, p0, Lcom/google/androidgamesdk/GameActivity;->contentViewId:I

    .line 268
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 269
    iget-object v1, p0, Lcom/google/androidgamesdk/GameActivity;->mSurfaceView:Lcom/google/androidgamesdk/GameActivity$InputEnabledSurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 271
    invoke-virtual {p0, v0}, Lcom/google/androidgamesdk/GameActivity;->setContentView(Landroid/view/View;)V

    .line 272
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 274
    iget-object v0, p0, Lcom/google/androidgamesdk/GameActivity;->mSurfaceView:Lcom/google/androidgamesdk/GameActivity$InputEnabledSurfaceView;

    invoke-virtual {v0}, Lcom/google/androidgamesdk/GameActivity$InputEnabledSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 283
    iget-object v0, p0, Lcom/google/androidgamesdk/GameActivity;->mSurfaceView:Lcom/google/androidgamesdk/GameActivity$InputEnabledSurfaceView;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v0, 0x1

    .line 374
    iput-boolean v0, p0, Lcom/google/androidgamesdk/GameActivity;->mDestroyed:Z

    .line 375
    iget-object v0, p0, Lcom/google/androidgamesdk/GameActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 376
    iget-wide v0, p0, Lcom/google/androidgamesdk/GameActivity;->mNativeHandle:J

    invoke-virtual {p0, v0, v1}, Lcom/google/androidgamesdk/GameActivity;->onSurfaceDestroyedNative(J)V

    const/4 v0, 0x0

    .line 377
    iput-object v0, p0, Lcom/google/androidgamesdk/GameActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 380
    :cond_0
    iget-wide v0, p0, Lcom/google/androidgamesdk/GameActivity;->mNativeHandle:J

    invoke-virtual {p0, v0, v1}, Lcom/google/androidgamesdk/GameActivity;->terminateNativeCode(J)V

    .line 381
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onEditorAction(I)V
    .locals 2

    .line 534
    iget-wide v0, p0, Lcom/google/androidgamesdk/GameActivity;->mNativeHandle:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/androidgamesdk/GameActivity;->onEditorActionNative(JI)V

    return-void
.end method

.method protected native onEditorActionNative(JI)V
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 107
    invoke-virtual {p0, p1}, Lcom/google/androidgamesdk/GameActivity;->processMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 110
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onGlobalLayout()V
    .locals 8

    .line 140
    iget-object v0, p0, Lcom/google/androidgamesdk/GameActivity;->mSurfaceView:Lcom/google/androidgamesdk/GameActivity$InputEnabledSurfaceView;

    iget-object v1, p0, Lcom/google/androidgamesdk/GameActivity;->mLocation:[I

    invoke-virtual {v0, v1}, Lcom/google/androidgamesdk/GameActivity$InputEnabledSurfaceView;->getLocationInWindow([I)V

    .line 141
    iget-object v0, p0, Lcom/google/androidgamesdk/GameActivity;->mSurfaceView:Lcom/google/androidgamesdk/GameActivity$InputEnabledSurfaceView;

    invoke-virtual {v0}, Lcom/google/androidgamesdk/GameActivity$InputEnabledSurfaceView;->getWidth()I

    move-result v6

    .line 142
    iget-object v0, p0, Lcom/google/androidgamesdk/GameActivity;->mSurfaceView:Lcom/google/androidgamesdk/GameActivity$InputEnabledSurfaceView;

    invoke-virtual {v0}, Lcom/google/androidgamesdk/GameActivity$InputEnabledSurfaceView;->getHeight()I

    move-result v7

    .line 144
    iget-object v0, p0, Lcom/google/androidgamesdk/GameActivity;->mLocation:[I

    const/4 v1, 0x0

    aget v4, v0, v1

    iget v1, p0, Lcom/google/androidgamesdk/GameActivity;->mLastContentX:I

    const/4 v2, 0x1

    if-ne v4, v1, :cond_0

    aget v1, v0, v2

    iget v3, p0, Lcom/google/androidgamesdk/GameActivity;->mLastContentY:I

    if-ne v1, v3, :cond_0

    iget v1, p0, Lcom/google/androidgamesdk/GameActivity;->mLastContentWidth:I

    if-ne v6, v1, :cond_0

    iget v1, p0, Lcom/google/androidgamesdk/GameActivity;->mLastContentHeight:I

    if-eq v7, v1, :cond_1

    .line 146
    :cond_0
    iput v4, p0, Lcom/google/androidgamesdk/GameActivity;->mLastContentX:I

    .line 147
    aget v5, v0, v2

    iput v5, p0, Lcom/google/androidgamesdk/GameActivity;->mLastContentY:I

    .line 148
    iput v6, p0, Lcom/google/androidgamesdk/GameActivity;->mLastContentWidth:I

    .line 149
    iput v7, p0, Lcom/google/androidgamesdk/GameActivity;->mLastContentHeight:I

    .line 151
    iget-boolean v0, p0, Lcom/google/androidgamesdk/GameActivity;->mDestroyed:Z

    if-nez v0, :cond_1

    .line 152
    iget-wide v2, p0, Lcom/google/androidgamesdk/GameActivity;->mNativeHandle:J

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/google/androidgamesdk/GameActivity;->onContentRectChangedNative(JIIII)V

    :cond_1
    return-void
.end method

.method public onImeInsetsChanged(Landroidx/core/graphics/Insets;)V
    .locals 1

    .line 521
    const-string p1, "GameActivity"

    const-string v0, "onImeInsetsChanged from Text Listener"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 125
    iget-wide v0, p0, Lcom/google/androidgamesdk/GameActivity;->mNativeHandle:J

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/androidgamesdk/GameActivity;->onKeyDownNative(JLandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 128
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected native onKeyDownNative(JLandroid/view/KeyEvent;)Z
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 116
    iget-wide v0, p0, Lcom/google/androidgamesdk/GameActivity;->mNativeHandle:J

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/androidgamesdk/GameActivity;->onKeyUpNative(JLandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 119
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected native onKeyUpNative(JLandroid/view/KeyEvent;)Z
.end method

.method protected onPause()V
    .locals 2

    .line 386
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 387
    iget-wide v0, p0, Lcom/google/androidgamesdk/GameActivity;->mNativeHandle:J

    invoke-virtual {p0, v0, v1}, Lcom/google/androidgamesdk/GameActivity;->onPauseNative(J)V

    return-void
.end method

.method protected native onPauseNative(J)V
.end method

.method protected onResume()V
    .locals 2

    .line 392
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 393
    iget-wide v0, p0, Lcom/google/androidgamesdk/GameActivity;->mNativeHandle:J

    invoke-virtual {p0, v0, v1}, Lcom/google/androidgamesdk/GameActivity;->onResumeNative(J)V

    return-void
.end method

.method protected native onResumeNative(J)V
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 398
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 399
    iget-wide v0, p0, Lcom/google/androidgamesdk/GameActivity;->mNativeHandle:J

    invoke-virtual {p0, v0, v1}, Lcom/google/androidgamesdk/GameActivity;->onSaveInstanceStateNative(J)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    const-string v1, "android:native_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method

.method protected native onSaveInstanceStateNative(J)[B
.end method

.method protected onSetUpWindow()V
    .locals 2

    .line 293
    invoke-virtual {p0}, Lcom/google/androidgamesdk/GameActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 294
    invoke-virtual {p0}, Lcom/google/androidgamesdk/GameActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public onSoftwareKeyboardVisibilityChanged(Z)V
    .locals 2

    .line 527
    iget-wide v0, p0, Lcom/google/androidgamesdk/GameActivity;->mNativeHandle:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/androidgamesdk/GameActivity;->onSoftwareKeyboardVisibilityChangedNative(JZ)V

    return-void
.end method

.method protected native onSoftwareKeyboardVisibilityChangedNative(JZ)V
.end method

.method protected onStart()V
    .locals 2

    .line 407
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 408
    iget-wide v0, p0, Lcom/google/androidgamesdk/GameActivity;->mNativeHandle:J

    invoke-virtual {p0, v0, v1}, Lcom/google/androidgamesdk/GameActivity;->onStartNative(J)V

    return-void
.end method

.method protected native onStartNative(J)V
.end method

.method protected onStop()V
    .locals 2

    .line 413
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 414
    iget-wide v0, p0, Lcom/google/androidgamesdk/GameActivity;->mNativeHandle:J

    invoke-virtual {p0, v0, v1}, Lcom/google/androidgamesdk/GameActivity;->onStopNative(J)V

    return-void
.end method

.method protected native onStopNative(J)V
.end method

.method protected native onSurfaceChangedNative(JLandroid/view/Surface;III)V
.end method

.method protected native onSurfaceCreatedNative(JLandroid/view/Surface;)V
.end method

.method protected native onSurfaceDestroyedNative(J)V
.end method

.method protected native onSurfaceRedrawNeededNative(JLandroid/view/Surface;)V
.end method

.method protected native onTextInputEventNative(JLcom/google/androidgamesdk/gametextinput/State;)V
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 98
    invoke-virtual {p0, p1}, Lcom/google/androidgamesdk/GameActivity;->processMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 101
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected native onTouchEventNative(JLandroid/view/MotionEvent;IIIIIJJIIIIIIFF)Z
.end method

.method public onTrimMemory(I)V
    .locals 2

    .line 427
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onTrimMemory(I)V

    .line 428
    iget-boolean v0, p0, Lcom/google/androidgamesdk/GameActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 429
    iget-wide v0, p0, Lcom/google/androidgamesdk/GameActivity;->mNativeHandle:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/androidgamesdk/GameActivity;->onTrimMemoryNative(JI)V

    :cond_0
    return-void
.end method

.method protected native onTrimMemoryNative(JI)V
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 435
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onWindowFocusChanged(Z)V

    .line 436
    iget-boolean v0, p0, Lcom/google/androidgamesdk/GameActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 437
    iget-wide v0, p0, Lcom/google/androidgamesdk/GameActivity;->mNativeHandle:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/androidgamesdk/GameActivity;->onWindowFocusChangedNative(JZ)V

    :cond_0
    return-void
.end method

.method protected native onWindowFocusChangedNative(JZ)V
.end method

.method protected native onWindowInsetsChangedNative(J)V
.end method

.method protected processMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 21

    .line 87
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v15

    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object/from16 v3, p0

    move/from16 v17, v0

    .line 90
    iget-wide v1, v3, Lcom/google/androidgamesdk/GameActivity;->mNativeHandle:J

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v5

    .line 91
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    .line 92
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v16

    .line 93
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v20

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    .line 90
    invoke-virtual/range {v0 .. v20}, Lcom/google/androidgamesdk/GameActivity;->onTouchEventNative(JLandroid/view/MotionEvent;IIIIIJJIIIIIIFF)Z

    move-result v0

    return v0
.end method

.method public setImeEditorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 1

    .line 561
    iput-object p1, p0, Lcom/google/androidgamesdk/GameActivity;->imeEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 562
    iget-object v0, p0, Lcom/google/androidgamesdk/GameActivity;->mSurfaceView:Lcom/google/androidgamesdk/GameActivity$InputEnabledSurfaceView;

    iget-object v0, v0, Lcom/google/androidgamesdk/GameActivity$InputEnabledSurfaceView;->mInputConnection:Lcom/google/androidgamesdk/gametextinput/InputConnection;

    invoke-virtual {v0, p1}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->setEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    return-void
.end method

.method public setImeEditorInfoFields(III)V
    .locals 1

    .line 573
    invoke-virtual {p0}, Lcom/google/androidgamesdk/GameActivity;->getImeEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 574
    iput p1, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 575
    iput p2, v0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 576
    iput p3, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 577
    iget-object p1, p0, Lcom/google/androidgamesdk/GameActivity;->mSurfaceView:Lcom/google/androidgamesdk/GameActivity$InputEnabledSurfaceView;

    iget-object p1, p1, Lcom/google/androidgamesdk/GameActivity$InputEnabledSurfaceView;->mInputConnection:Lcom/google/androidgamesdk/gametextinput/InputConnection;

    invoke-virtual {p1, v0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->setEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    return-void
.end method

.method protected native setInputConnectionNative(JLcom/google/androidgamesdk/gametextinput/InputConnection;)V
.end method

.method public setTextInputState(Lcom/google/androidgamesdk/gametextinput/State;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/google/androidgamesdk/GameActivity;->mSurfaceView:Lcom/google/androidgamesdk/GameActivity$InputEnabledSurfaceView;

    if-nez v0, :cond_0

    return-void

    .line 163
    :cond_0
    iget-object v0, v0, Lcom/google/androidgamesdk/GameActivity$InputEnabledSurfaceView;->mInputConnection:Lcom/google/androidgamesdk/gametextinput/InputConnection;

    if-nez v0, :cond_1

    .line 164
    const-string p1, "GameActivity"

    const-string v0, "No input connection has been set yet"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/google/androidgamesdk/GameActivity;->mSurfaceView:Lcom/google/androidgamesdk/GameActivity$InputEnabledSurfaceView;

    iget-object v0, v0, Lcom/google/androidgamesdk/GameActivity$InputEnabledSurfaceView;->mInputConnection:Lcom/google/androidgamesdk/gametextinput/InputConnection;

    invoke-virtual {v0, p1}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->setState(Lcom/google/androidgamesdk/gametextinput/State;)V

    :goto_0
    return-void
.end method

.method setWindowFlags(II)V
    .locals 1

    .line 475
    invoke-virtual {p0}, Lcom/google/androidgamesdk/GameActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method setWindowFormat(I)V
    .locals 1

    .line 479
    invoke-virtual {p0}, Lcom/google/androidgamesdk/GameActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setFormat(I)V

    return-void
.end method

.method public stateChanged(Lcom/google/androidgamesdk/gametextinput/State;Z)V
    .locals 2

    .line 135
    iget-wide v0, p0, Lcom/google/androidgamesdk/GameActivity;->mNativeHandle:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/androidgamesdk/GameActivity;->onTextInputEventNative(JLcom/google/androidgamesdk/gametextinput/State;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 8

    .line 451
    iget-boolean v0, p0, Lcom/google/androidgamesdk/GameActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 452
    iput-object p1, p0, Lcom/google/androidgamesdk/GameActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 453
    iget-wide v2, p0, Lcom/google/androidgamesdk/GameActivity;->mNativeHandle:J

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v4

    move-object v1, p0

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/google/androidgamesdk/GameActivity;->onSurfaceChangedNative(JLandroid/view/Surface;III)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 443
    iget-boolean v0, p0, Lcom/google/androidgamesdk/GameActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 444
    iput-object p1, p0, Lcom/google/androidgamesdk/GameActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 445
    iget-wide v0, p0, Lcom/google/androidgamesdk/GameActivity;->mNativeHandle:J

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/androidgamesdk/GameActivity;->onSurfaceCreatedNative(JLandroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    const/4 p1, 0x0

    .line 467
    iput-object p1, p0, Lcom/google/androidgamesdk/GameActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 468
    iget-boolean p1, p0, Lcom/google/androidgamesdk/GameActivity;->mDestroyed:Z

    if-nez p1, :cond_0

    .line 469
    iget-wide v0, p0, Lcom/google/androidgamesdk/GameActivity;->mNativeHandle:J

    invoke-virtual {p0, v0, v1}, Lcom/google/androidgamesdk/GameActivity;->onSurfaceDestroyedNative(J)V

    :cond_0
    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 459
    iget-boolean v0, p0, Lcom/google/androidgamesdk/GameActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 460
    iput-object p1, p0, Lcom/google/androidgamesdk/GameActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 461
    iget-wide v0, p0, Lcom/google/androidgamesdk/GameActivity;->mNativeHandle:J

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/androidgamesdk/GameActivity;->onSurfaceRedrawNeededNative(JLandroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method protected native terminateNativeCode(J)V
.end method
