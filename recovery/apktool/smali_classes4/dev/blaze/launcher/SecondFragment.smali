.class public Ldev/blaze/launcher/SecondFragment;
.super Landroidx/fragment/app/Fragment;


# instance fields
.field private binding:Ldev/blaze/launcher/databinding/FragmentSecondBinding;


# direct methods
.method public static synthetic $r8$lambda$9Wfvxvc0GYhCJeZt9gKHPMG98dA(Ldev/blaze/launcher/SecondFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/blaze/launcher/SecondFragment;->lambda$onViewCreated$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$0(Landroid/view/View;)V
    .locals 1

    .line 33
    invoke-static {p0}, Landroidx/navigation/fragment/NavHostFragment;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p1

    sget v0, Ldev/blaze/launcher/R$id;->action_SecondFragment_to_FirstFragment:I

    .line 34
    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->navigate(I)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p3, 0x0

    .line 24
    invoke-static {p1, p2, p3}, Ldev/blaze/launcher/databinding/FragmentSecondBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ldev/blaze/launcher/databinding/FragmentSecondBinding;

    move-result-object p1

    iput-object p1, p0, Ldev/blaze/launcher/SecondFragment;->binding:Ldev/blaze/launcher/databinding/FragmentSecondBinding;

    .line 25
    invoke-virtual {p1}, Ldev/blaze/launcher/databinding/FragmentSecondBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 40
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Ldev/blaze/launcher/SecondFragment;->binding:Ldev/blaze/launcher/databinding/FragmentSecondBinding;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 30
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 32
    iget-object p1, p0, Ldev/blaze/launcher/SecondFragment;->binding:Ldev/blaze/launcher/databinding/FragmentSecondBinding;

    iget-object p1, p1, Ldev/blaze/launcher/databinding/FragmentSecondBinding;->buttonSecond:Landroid/widget/Button;

    new-instance p2, Ldev/blaze/launcher/SecondFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Ldev/blaze/launcher/SecondFragment$$ExternalSyntheticLambda0;-><init>(Ldev/blaze/launcher/SecondFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
