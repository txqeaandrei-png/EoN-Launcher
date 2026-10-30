.class public final Ldev/blaze/launcher/databinding/ConfigModuleBinding;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final configName:Landroid/widget/TextView;

.field public final imageButton:Landroid/widget/ImageButton;

.field private final rootView:Lcom/google/android/material/card/MaterialCardView;


# direct methods
.method private constructor <init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Landroid/widget/ImageButton;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Ldev/blaze/launcher/databinding/ConfigModuleBinding;->rootView:Lcom/google/android/material/card/MaterialCardView;

    .line 32
    iput-object p2, p0, Ldev/blaze/launcher/databinding/ConfigModuleBinding;->configName:Landroid/widget/TextView;

    .line 33
    iput-object p3, p0, Ldev/blaze/launcher/databinding/ConfigModuleBinding;->imageButton:Landroid/widget/ImageButton;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ldev/blaze/launcher/databinding/ConfigModuleBinding;
    .locals 3

    .line 63
    sget v0, Ldev/blaze/launcher/R$id;->configName:I

    .line 64
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 69
    sget v0, Ldev/blaze/launcher/R$id;->imageButton:I

    .line 70
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    .line 75
    new-instance v0, Ldev/blaze/launcher/databinding/ConfigModuleBinding;

    check-cast p0, Lcom/google/android/material/card/MaterialCardView;

    invoke-direct {v0, p0, v1, v2}, Ldev/blaze/launcher/databinding/ConfigModuleBinding;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Landroid/widget/ImageButton;)V

    return-object v0

    .line 77
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 78
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ldev/blaze/launcher/databinding/ConfigModuleBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-static {p0, v0, v1}, Ldev/blaze/launcher/databinding/ConfigModuleBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ldev/blaze/launcher/databinding/ConfigModuleBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ldev/blaze/launcher/databinding/ConfigModuleBinding;
    .locals 2

    .line 50
    sget v0, Ldev/blaze/launcher/R$layout;->config_module:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 54
    :cond_0
    invoke-static {p0}, Ldev/blaze/launcher/databinding/ConfigModuleBinding;->bind(Landroid/view/View;)Ldev/blaze/launcher/databinding/ConfigModuleBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Ldev/blaze/launcher/databinding/ConfigModuleBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/google/android/material/card/MaterialCardView;
    .locals 1

    .line 39
    iget-object v0, p0, Ldev/blaze/launcher/databinding/ConfigModuleBinding;->rootView:Lcom/google/android/material/card/MaterialCardView;

    return-object v0
.end method
