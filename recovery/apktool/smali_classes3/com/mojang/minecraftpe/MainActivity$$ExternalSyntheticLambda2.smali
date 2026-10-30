.class public final synthetic Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic f$0:Lcom/mojang/minecraftpe/MainActivity;

.field public final synthetic f$1:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;


# direct methods
.method public synthetic constructor <init>(Lcom/mojang/minecraftpe/MainActivity;Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda2;->f$0:Lcom/mojang/minecraftpe/MainActivity;

    iput-object p2, p0, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda2;->f$1:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda2;->f$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda2;->f$1:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/mojang/minecraftpe/MainActivity;->$r8$lambda$tH-L4DlCV5QUHVjI6HrMMtKkE30(Lcom/mojang/minecraftpe/MainActivity;Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
