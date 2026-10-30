.class public final Ldev/blaze/launcher/databinding/FragmentFirstBinding;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final start:Landroidx/core/widget/NestedScrollView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Landroidx/core/widget/NestedScrollView;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Ldev/blaze/launcher/databinding/FragmentFirstBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 25
    iput-object p2, p0, Ldev/blaze/launcher/databinding/FragmentFirstBinding;->start:Landroidx/core/widget/NestedScrollView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ldev/blaze/launcher/databinding/FragmentFirstBinding;
    .locals 1

    if-eqz p0, :cond_0

    .line 55
    check-cast p0, Landroidx/core/widget/NestedScrollView;

    .line 57
    new-instance v0, Ldev/blaze/launcher/databinding/FragmentFirstBinding;

    invoke-direct {v0, p0, p0}, Ldev/blaze/launcher/databinding/FragmentFirstBinding;-><init>(Landroidx/core/widget/NestedScrollView;Landroidx/core/widget/NestedScrollView;)V

    return-object v0

    .line 52
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "rootView"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ldev/blaze/launcher/databinding/FragmentFirstBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-static {p0, v0, v1}, Ldev/blaze/launcher/databinding/FragmentFirstBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ldev/blaze/launcher/databinding/FragmentFirstBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ldev/blaze/launcher/databinding/FragmentFirstBinding;
    .locals 2

    .line 42
    sget v0, Ldev/blaze/launcher/R$layout;->fragment_first:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 44
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 46
    :cond_0
    invoke-static {p0}, Ldev/blaze/launcher/databinding/FragmentFirstBinding;->bind(Landroid/view/View;)Ldev/blaze/launcher/databinding/FragmentFirstBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 15
    invoke-virtual {p0}, Ldev/blaze/launcher/databinding/FragmentFirstBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 31
    iget-object v0, p0, Ldev/blaze/launcher/databinding/FragmentFirstBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
