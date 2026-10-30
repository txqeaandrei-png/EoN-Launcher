.class public Ldev/blaze/launcher/ui/WheelConfigManager;
.super Ljava/lang/Object;


# static fields
.field public static wheels:[Ldev/blaze/launcher/ui/WheelInstance;


# direct methods
.method static constructor <clinit>()V
    .locals 52

    return-void
.end method

.method public constructor <init>()V
    .locals 51

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerWheel(Landroid/content/Context;Ljava/lang/String;Ldev/blaze/launcher/ui/OnWheelClickListener;)V
    .locals 51

    move-object/from16 v2, p2

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    new-instance v1, Ldev/blaze/launcher/ui/CircleWheelView;

    invoke-direct {v1, v0}, Ldev/blaze/launcher/ui/CircleWheelView;-><init>(Landroid/content/Context;)V

    return-void
.end method
