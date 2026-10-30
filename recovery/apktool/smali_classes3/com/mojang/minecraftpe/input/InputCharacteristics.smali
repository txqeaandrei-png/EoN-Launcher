.class public Lcom/mojang/minecraftpe/input/InputCharacteristics;
.super Ljava/lang/Object;


# static fields
.field private static final DUALSENSE_DEVICE_ID:I = 0xce6

.field private static final SONY_VENDOR_ID:I = 0x54c


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allControllersHaveDoubleTriggers()Z
    .locals 10

    .line 15
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_6

    aget v5, v0, v3

    .line 16
    invoke-static {v5}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 17
    invoke-virtual {v5}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v5}, Landroid/view/InputDevice;->getControllerNumber()I

    move-result v6

    if-lez v6, :cond_5

    invoke-virtual {v5}, Landroid/view/InputDevice;->getSources()I

    move-result v6

    and-int/lit16 v6, v6, 0x401

    if-eqz v6, :cond_5

    const/16 v4, 0x68

    const/16 v6, 0x69

    const/16 v7, 0x66

    const/16 v8, 0x67

    .line 18
    filled-new-array {v7, v8, v4, v6}, [I

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/view/InputDevice;->hasKeys([I)[Z

    move-result-object v6

    .line 19
    array-length v4, v6

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-ne v4, v7, :cond_0

    move v7, v8

    goto :goto_1

    :cond_0
    move v7, v2

    :goto_1
    move v4, v2

    .line 22
    :goto_2
    array-length v9, v6

    if-lt v4, v9, :cond_1

    goto :goto_3

    .line 25
    :cond_1
    aget-boolean v9, v6, v4

    if-nez v9, :cond_4

    move v7, v2

    :goto_3
    if-nez v7, :cond_2

    .line 31
    aget-boolean v4, v6, v2

    if-eqz v4, :cond_2

    aget-boolean v4, v6, v8

    if-eqz v4, :cond_2

    .line 32
    invoke-static {v5}, Lcom/mojang/minecraftpe/input/InputCharacteristics;->supportsAnalogTriggers(Landroid/view/InputDevice;)Z

    move-result v7

    :cond_2
    if-eqz v7, :cond_3

    .line 34
    invoke-virtual {v5}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "EI-GP20"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_4

    :cond_3
    move v4, v7

    :goto_4
    if-nez v4, :cond_5

    goto :goto_5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_5
    return v4
.end method

.method public static isCreteController(I)Z
    .locals 6

    .line 44
    invoke-static {p0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 45
    invoke-virtual {p0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/view/InputDevice;->getControllerNumber()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p0}, Landroid/view/InputDevice;->getSources()I

    move-result v1

    and-int/lit16 v1, v1, 0x401

    if-eqz v1, :cond_4

    .line 46
    invoke-virtual {p0}, Landroid/view/InputDevice;->getProductId()I

    move-result v1

    const/16 v2, 0x2e0

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/InputDevice;->getVendorId()I

    move-result p0

    const/16 v2, 0x45e

    if-ne p0, v2, :cond_1

    move p0, v3

    goto :goto_1

    :cond_1
    move p0, v0

    :goto_1
    and-int/2addr p0, v1

    if-eqz p0, :cond_4

    const/4 p0, 0x2

    .line 47
    new-array v1, p0, [Ljava/lang/String;

    const-string v2, "/system/usr/keylayout/Vendor_045e_Product_02e0.kl"

    aput-object v2, v1, v0

    const-string v2, "/data/system/devices/keylayout/Vendor_045e_Product_02e0.kl"

    aput-object v2, v1, v3

    move v2, v0

    :goto_2
    if-ge v2, p0, :cond_3

    .line 49
    new-instance v4, Ljava/io/File;

    aget-object v5, v1, v2

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    return v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return v3

    :cond_4
    return v0
.end method

.method public static isDualsenseController(I)Z
    .locals 2

    .line 82
    invoke-static {p0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 83
    invoke-virtual {p0}, Landroid/view/InputDevice;->getSources()I

    move-result v0

    const/16 v1, 0x401

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/InputDevice;->getVendorId()I

    move-result v0

    const/16 v1, 0x54c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/InputDevice;->getProductId()I

    move-result p0

    const/16 v0, 0xce6

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPlaystationController(I)Z
    .locals 2

    .line 77
    invoke-static {p0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 78
    invoke-virtual {p0}, Landroid/view/InputDevice;->getSources()I

    move-result v0

    const/16 v1, 0x401

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/InputDevice;->getVendorId()I

    move-result p0

    const/16 v0, 0x54c

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isXboxController(I)Z
    .locals 2

    .line 72
    invoke-static {p0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 73
    invoke-virtual {p0}, Landroid/view/InputDevice;->getSources()I

    move-result v0

    const/16 v1, 0x401

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/InputDevice;->getVendorId()I

    move-result p0

    const/16 v0, 0x45e

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static supportsAnalogTriggers(I)Z
    .locals 0

    .line 60
    invoke-static {p0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 62
    invoke-static {p0}, Lcom/mojang/minecraftpe/input/InputCharacteristics;->supportsAnalogTriggers(Landroid/view/InputDevice;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static supportsAnalogTriggers(Landroid/view/InputDevice;)Z
    .locals 1

    const/16 v0, 0x11

    .line 68
    invoke-virtual {p0, v0}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v0

    if-nez v0, :cond_2

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
