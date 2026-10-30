.class public final Lcom/microsoft/xboxtcui/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xboxtcui/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static SwitchButton:[I = null

.field public static SwitchButton_sb_background:I = 0x0

.field public static SwitchButton_sb_border_width:I = 0x1

.field public static SwitchButton_sb_button_color:I = 0x2

.field public static SwitchButton_sb_checked:I = 0x3

.field public static SwitchButton_sb_checked_color:I = 0x4

.field public static SwitchButton_sb_checkedbutton_color:I = 0x5

.field public static SwitchButton_sb_checkline_color:I = 0x6

.field public static SwitchButton_sb_checkline_width:I = 0x7

.field public static SwitchButton_sb_effect_duration:I = 0x8

.field public static SwitchButton_sb_enable_effect:I = 0x9

.field public static SwitchButton_sb_shadow_color:I = 0xa

.field public static SwitchButton_sb_shadow_effect:I = 0xb

.field public static SwitchButton_sb_shadow_offset:I = 0xc

.field public static SwitchButton_sb_shadow_radius:I = 0xd

.field public static SwitchButton_sb_show_indicator:I = 0xe

.field public static SwitchButton_sb_uncheck_color:I = 0xf

.field public static SwitchButton_sb_uncheckbutton_color:I = 0x10

.field public static SwitchButton_sb_uncheckcircle_color:I = 0x11

.field public static SwitchButton_sb_uncheckcircle_radius:I = 0x12

.field public static SwitchButton_sb_uncheckcircle_width:I = 0x13

.field public static SwitchIconView:[I = null

.field public static SwitchIconView_si_animation_duration:I = 0x0

.field public static SwitchIconView_si_disabled_alpha:I = 0x1

.field public static SwitchIconView_si_disabled_color:I = 0x2

.field public static SwitchIconView_si_enabled:I = 0x3

.field public static SwitchIconView_si_no_dash:I = 0x4

.field public static SwitchIconView_si_tint_color:I = 0x5


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/microsoft/xboxtcui/R$styleable;->SwitchButton:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/microsoft/xboxtcui/R$styleable;->SwitchIconView:[I

    return-void

    :array_0
    .array-data 4
        0x7f030400
        0x7f030401
        0x7f030402
        0x7f030403
        0x7f030404
        0x7f030405
        0x7f030406
        0x7f030407
        0x7f030408
        0x7f030409
        0x7f03040a
        0x7f03040b
        0x7f03040c
        0x7f03040d
        0x7f03040e
        0x7f03040f
        0x7f030410
        0x7f030411
        0x7f030412
        0x7f030413
    .end array-data

    :array_1
    .array-data 4
        0x7f030440
        0x7f030441
        0x7f030442
        0x7f030443
        0x7f030444
        0x7f030445
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
