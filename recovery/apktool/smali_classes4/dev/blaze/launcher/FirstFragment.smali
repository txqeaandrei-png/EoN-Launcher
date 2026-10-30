.class public Ldev/blaze/launcher/FirstFragment;
.super Landroidx/fragment/app/Fragment;


# instance fields
.field private binding:Ldev/blaze/launcher/databinding/FragmentFirstBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$onViewCreated$0(Landroid/view/View;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p3, 0x0

    .line 24
    invoke-static {p1, p2, p3}, Ldev/blaze/launcher/databinding/FragmentFirstBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ldev/blaze/launcher/databinding/FragmentFirstBinding;

    move-result-object p1

    iput-object p1, p0, Ldev/blaze/launcher/FirstFragment;->binding:Ldev/blaze/launcher/databinding/FragmentFirstBinding;

    .line 25
    invoke-virtual {p1}, Ldev/blaze/launcher/databinding/FragmentFirstBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 40
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Ldev/blaze/launcher/FirstFragment;->binding:Ldev/blaze/launcher/databinding/FragmentFirstBinding;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 29
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 31
    iget-object p1, p0, Ldev/blaze/launcher/FirstFragment;->binding:Ldev/blaze/launcher/databinding/FragmentFirstBinding;

    iget-object p1, p1, Ldev/blaze/launcher/databinding/FragmentFirstBinding;->start:Landroidx/core/widget/NestedScrollView;

    new-instance p2, Ldev/blaze/launcher/FirstFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Ldev/blaze/launcher/FirstFragment$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/core/widget/NestedScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
