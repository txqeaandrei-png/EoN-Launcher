.class public Ldev/blaze/launcher/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;


# static fields
.field private static final short:[S


# instance fields
.field private appBarConfiguration:Landroidx/navigation/ui/AppBarConfiguration;

.field private binding:Ldev/blaze/launcher/databinding/ActivityMainBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 52

    const v0, 0x1c

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Ldev/blaze/launcher/MainActivity;->short:[S

    return-void

    nop

    :array_0
    .array-data 2
        0x7c8s
        0x7d8s
        0x789s
        0x7d8s
        0x789s
        0x7d8s
        0x789s
        0x1d8s
        0x1c9s
        0x19ds
        0x1c9s
        0x19ds
        0x1c9s
        0x19ds
        0xa56s
        0xa45s
        0xa45s
        0xa13s
        0xa13s
        0xa16s
        0xa13s
        0x399s
        0x3dcs
        0x3dcs
        0x3dcs
        0x3dcs
        0x3dcs
        0x3dcs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 51

    move-object/from16 v0, p0

    invoke-direct {v0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static ۟ۥۢۤ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/microsoft/xbox/idp/interop/ۣۧۨۥ;->ۣۤۡۢ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    check-cast p1, Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۠ۦ۟ۡ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/ActivityMainBinding;
    .locals 2

    invoke-static {}, Lkotlin/io/encoding/۟ۧۢ۠ۥ;->۟۠ۢ۟ۦ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/MainActivity;

    iget-object v1, p0, Ldev/blaze/launcher/MainActivity;->binding:Ldev/blaze/launcher/databinding/ActivityMainBinding;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۡ۟ۢۤ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lkotlin/math/۟ۡۡۦۧ;->۠۟ۥۢ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/MainActivity;

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Ldev/blaze/launcher/MainActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۥۡۡ۟(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lorg/spongycastle/asn1/eac/ۣۣۢۤ;->ۥۧۦ۟()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    check-cast p1, Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۥۤۥۦ()[S
    .locals 1

    invoke-static {}, Landroidx/vectordrawable/۟ۦۨۦۤ;->۟ۤ۠ۨۦ()I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Ldev/blaze/launcher/MainActivity;->short:[S

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 52

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-super {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {v1}, Lorg/apache/commons/codec/net/۟۟ۡۤ;->ۥۡۥۤ(Ljava/lang/Object;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/icao/ۣۤۨۨ;->۟ۤۦۡۡ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/ActivityMainBinding;

    move-result-object v2

    iput-object v2, v1, Ldev/blaze/launcher/MainActivity;->binding:Ldev/blaze/launcher/databinding/ActivityMainBinding;

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/ui/util/۠ۦۧ;->ۢ۟ۤ۟(Ljava/lang/Object;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    invoke-static/range {}, Ldev/blaze/launcher/MainActivity;->ۥۤۥۦ()[S

    move-result-object v40

    const v43, 0x7eb

    const v41, 0x0

    const v42, 0x7

    invoke-static/range {v40 .. v43}, Lorg/spongycastle/dvcs/۠ۨۨۤ;->ۦۡۦۦ([SIII)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-static {v0}, Landroidx/drawerlayout/ۡ۠۠ۢ;->ۥۧۢۡ(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v2, v0}, Lcom/google/firebase/iid/internal/۟۟ۢۤۧ;->ۤۥۦۢ(Ljava/lang/Object;I)V

    invoke-static {v1}, Ldev/blaze/launcher/MainActivity;->۠ۦ۟ۡ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/ActivityMainBinding;

    move-result-object v2

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/ui/util/۠ۦۧ;->ۢ۟ۤ۟(Ljava/lang/Object;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/collection/internal/ۣ۟۟ۧۥ;->ۥۣۢۨ(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Landroidx/appcompat/widget/Toolbar;

    invoke-direct {v2, v1}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Ldev/blaze/launcher/MainActivity;->ۡ۟ۢۤ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/material/search/ۦۣ۟ۦ;->ۦۢۤۢ()I

    move-result v2

    invoke-static {v1, v2}, Lorg/spongycastle/crypto/parsers/ۢۢۤۥ;->۟ۦۤۨۡ(Ljava/lang/Object;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-static/range {}, Ldev/blaze/launcher/MainActivity;->ۥۤۥۦ()[S

    move-result-object v26

    const v29, 0x1fb

    const v27, 0x7

    const v28, 0x7

    invoke-static/range {v26 .. v29}, Lcom/google/firebase/installations/time/ۡۤۢ;->۟ۥۣۧۥ([SIII)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v0}, Landroidx/drawerlayout/ۡ۠۠ۢ;->ۥۧۢۡ(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v2, v0}, Lorg/simpleframework/xml/convert/ۥۣۣ۠;->ۣ۟ۡۡۤ(Ljava/lang/Object;I)V

    invoke-static/range {}, Ldev/blaze/launcher/MainActivity;->ۥۤۥۦ()[S

    move-result-object v11

    const v14, 0xa75

    const v12, 0xe

    const v13, 0x7

    invoke-static/range {v11 .. v14}, Lkotlin/jvm/ۦۧۦۧ;->ۣۣ۟ۨۥ([SIII)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v11

    invoke-static {v0}, Landroidx/drawerlayout/ۡ۠۠ۢ;->ۥۧۢۡ(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/ۣ۟ۡۦۢ;->ۨ۟ۥۧ(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {v2, v0}, Ldev/blaze/launcher/MainActivity;->ۥۡۡ۟(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static/range {}, Ldev/blaze/launcher/MainActivity;->ۥۤۥۦ()[S

    move-result-object v32

    const v35, 0x3ba

    const v33, 0x15

    const v34, 0x7

    invoke-static/range {v32 .. v35}, Lcom/google/android/material/canvas/ۧۧ۠ۦ;->۟ۤۥۡۢ([SIII)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-static {v0}, Landroidx/drawerlayout/ۡ۠۠ۢ;->ۥۧۢۡ(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/ۣ۟ۡۦۢ;->ۨ۟ۥۧ(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {v2, v0}, Ldev/blaze/launcher/MainActivity;->۟ۥۢۤ(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Landroidx/navigation/ui/AppBarConfiguration$Builder;

    invoke-static {}, Lkotlin/math/۟ۡۡۦۧ;->ۧۧۦۧ()I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-direct {v2, v0}, Landroidx/navigation/ui/AppBarConfiguration$Builder;-><init>([I)V

    invoke-static {v2}, Lkotlin/jdk7/ۦۥۥۣ;->۟ۥۧۦ(Ljava/lang/Object;)Landroidx/navigation/ui/AppBarConfiguration;

    move-result-object v2

    invoke-static {}, Lorg/spongycastle/crypto/kems/ۥۧۢۥ;->۟ۧۢ۠ۥ()I

    move-result v0

    invoke-static {v1, v0}, Lcom/braze/models/response/ۣ۟۠ۧۧ;->۟ۡۦۡ(Ljava/lang/Object;I)Landroidx/navigation/NavController;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/braze/communication/dust/ۣۣۢ۟;->۟ۢ۠۟۠(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Ldev/blaze/launcher/MainActivity;->۠ۦ۟ۡ(Ljava/lang/Object;)Ldev/blaze/launcher/databinding/ActivityMainBinding;

    move-result-object v2

    invoke-static {v2}, Lorg/xmlpull/v1/ۥ۠ۦۡ;->ۣۣ۟ۢۥ(Ljava/lang/Object;)Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    move-result-object v2

    invoke-static {v2, v0}, Landroidx/startup/ۢۥۣۣ;->ۥۦۤۡ(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 52

    move-object/from16 v1, p0

    invoke-super {v1}, Landroidx/appcompat/app/AppCompatActivity;->onSupportNavigateUp()Z

    move-result v0

    return v0
.end method
