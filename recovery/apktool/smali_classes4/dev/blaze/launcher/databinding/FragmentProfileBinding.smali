.class public final Ldev/blaze/launcher/databinding/FragmentProfileBinding;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ExitLogin:Landroid/widget/Button;

.field public final Login:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final Profile:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final Register:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final Settings:Landroid/widget/Button;

.field public final emailDisplay:Landroid/widget/TextView;

.field public final imageView:Landroid/widget/ImageView;

.field public final login:Landroid/widget/Button;

.field public final password:Landroid/widget/EditText;

.field public final passwordr:Landroid/widget/EditText;

.field public final register:Landroid/widget/Button;

.field public final registerText:Landroid/widget/TextView;

.field private final rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final textView2:Landroid/widget/TextView;

.field public final toLogin:Landroid/widget/Button;

.field public final toRegister:Landroid/widget/Button;

.field public final userNameDisplay:Landroid/widget/TextView;

.field public final username:Landroid/widget/EditText;

.field public final usernamer:Landroid/widget/EditText;


# direct methods
.method private constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/Button;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 2

    move-object v0, p0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 87
    iput-object v1, v0, Ldev/blaze/launcher/databinding/FragmentProfileBinding;->rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-object v1, p2

    .line 88
    iput-object v1, v0, Ldev/blaze/launcher/databinding/FragmentProfileBinding;->ExitLogin:Landroid/widget/Button;

    move-object v1, p3

    .line 89
    iput-object v1, v0, Ldev/blaze/launcher/databinding/FragmentProfileBinding;->Login:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p4

    .line 90
    iput-object v1, v0, Ldev/blaze/launcher/databinding/FragmentProfileBinding;->Profile:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p5

    .line 91
    iput-object v1, v0, Ldev/blaze/launcher/databinding/FragmentProfileBinding;->Register:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p6

    .line 92
    iput-object v1, v0, Ldev/blaze/launcher/databinding/FragmentProfileBinding;->Settings:Landroid/widget/Button;

    move-object v1, p7

    .line 93
    iput-object v1, v0, Ldev/blaze/launcher/databinding/FragmentProfileBinding;->emailDisplay:Landroid/widget/TextView;

    move-object v1, p8

    .line 94
    iput-object v1, v0, Ldev/blaze/launcher/databinding/FragmentProfileBinding;->imageView:Landroid/widget/ImageView;

    move-object v1, p9

    .line 95
    iput-object v1, v0, Ldev/blaze/launcher/databinding/FragmentProfileBinding;->login:Landroid/widget/Button;

    move-object v1, p10

    .line 96
    iput-object v1, v0, Ldev/blaze/launcher/databinding/FragmentProfileBinding;->password:Landroid/widget/EditText;

    move-object v1, p11

    .line 97
    iput-object v1, v0, Ldev/blaze/launcher/databinding/FragmentProfileBinding;->passwordr:Landroid/widget/EditText;

    move-object v1, p12

    .line 98
    iput-object v1, v0, Ldev/blaze/launcher/databinding/FragmentProfileBinding;->register:Landroid/widget/Button;

    move-object v1, p13

    .line 99
    iput-object v1, v0, Ldev/blaze/launcher/databinding/FragmentProfileBinding;->registerText:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 100
    iput-object v1, v0, Ldev/blaze/launcher/databinding/FragmentProfileBinding;->textView2:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 101
    iput-object v1, v0, Ldev/blaze/launcher/databinding/FragmentProfileBinding;->toLogin:Landroid/widget/Button;

    move-object/from16 v1, p16

    .line 102
    iput-object v1, v0, Ldev/blaze/launcher/databinding/FragmentProfileBinding;->toRegister:Landroid/widget/Button;

    move-object/from16 v1, p17

    .line 103
    iput-object v1, v0, Ldev/blaze/launcher/databinding/FragmentProfileBinding;->userNameDisplay:Landroid/widget/TextView;

    move-object/from16 v1, p18

    .line 104
    iput-object v1, v0, Ldev/blaze/launcher/databinding/FragmentProfileBinding;->username:Landroid/widget/EditText;

    move-object/from16 v1, p19

    .line 105
    iput-object v1, v0, Ldev/blaze/launcher/databinding/FragmentProfileBinding;->usernamer:Landroid/widget/EditText;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ldev/blaze/launcher/databinding/FragmentProfileBinding;
    .locals 23

    move-object/from16 v0, p0

    .line 135
    sget v1, Ldev/blaze/launcher/R$id;->ExitLogin:I

    .line 136
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    .line 141
    sget v1, Ldev/blaze/launcher/R$id;->Login:I

    .line 142
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v6, :cond_0

    .line 147
    sget v1, Ldev/blaze/launcher/R$id;->Profile:I

    .line 148
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v7, :cond_0

    .line 153
    sget v1, Ldev/blaze/launcher/R$id;->Register:I

    .line 154
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v8, :cond_0

    .line 159
    sget v1, Ldev/blaze/launcher/R$id;->Settings:I

    .line 160
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/Button;

    if-eqz v9, :cond_0

    .line 165
    sget v1, Ldev/blaze/launcher/R$id;->emailDisplay:I

    .line 166
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 171
    sget v1, Ldev/blaze/launcher/R$id;->imageView:I

    .line 172
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    .line 177
    sget v1, Ldev/blaze/launcher/R$id;->login:I

    .line 178
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/Button;

    if-eqz v12, :cond_0

    .line 183
    sget v1, Ldev/blaze/launcher/R$id;->password:I

    .line 184
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/EditText;

    if-eqz v13, :cond_0

    .line 189
    sget v1, Ldev/blaze/launcher/R$id;->passwordr:I

    .line 190
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/EditText;

    if-eqz v14, :cond_0

    .line 195
    sget v1, Ldev/blaze/launcher/R$id;->register:I

    .line 196
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/Button;

    if-eqz v15, :cond_0

    .line 201
    sget v1, Ldev/blaze/launcher/R$id;->registerText:I

    .line 202
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 207
    sget v1, Ldev/blaze/launcher/R$id;->textView2:I

    .line 208
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 213
    sget v1, Ldev/blaze/launcher/R$id;->toLogin:I

    .line 214
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/Button;

    if-eqz v18, :cond_0

    .line 219
    sget v1, Ldev/blaze/launcher/R$id;->toRegister:I

    .line 220
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/Button;

    if-eqz v19, :cond_0

    .line 225
    sget v1, Ldev/blaze/launcher/R$id;->userNameDisplay:I

    .line 226
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    .line 231
    sget v1, Ldev/blaze/launcher/R$id;->username:I

    .line 232
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/EditText;

    if-eqz v21, :cond_0

    .line 237
    sget v1, Ldev/blaze/launcher/R$id;->usernamer:I

    .line 238
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/EditText;

    if-eqz v22, :cond_0

    .line 243
    new-instance v1, Ldev/blaze/launcher/databinding/FragmentProfileBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-direct/range {v3 .. v22}, Ldev/blaze/launcher/databinding/FragmentProfileBinding;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/Button;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;)V

    return-object v1

    .line 247
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 248
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ldev/blaze/launcher/databinding/FragmentProfileBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 116
    invoke-static {p0, v0, v1}, Ldev/blaze/launcher/databinding/FragmentProfileBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ldev/blaze/launcher/databinding/FragmentProfileBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ldev/blaze/launcher/databinding/FragmentProfileBinding;
    .locals 2

    .line 122
    sget v0, Ldev/blaze/launcher/R$layout;->fragment_profile:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 124
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 126
    :cond_0
    invoke-static {p0}, Ldev/blaze/launcher/databinding/FragmentProfileBinding;->bind(Landroid/view/View;)Ldev/blaze/launcher/databinding/FragmentProfileBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Ldev/blaze/launcher/databinding/FragmentProfileBinding;->getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .locals 1

    .line 111
    iget-object v0, p0, Ldev/blaze/launcher/databinding/FragmentProfileBinding;->rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    return-object v0
.end method
