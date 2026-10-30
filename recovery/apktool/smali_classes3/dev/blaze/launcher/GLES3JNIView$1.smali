.class Ldev/blaze/launcher/GLES3JNIView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/blaze/launcher/GLES3JNIView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cardEdit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 160
    iput-object p1, p0, Ldev/blaze/launcher/GLES3JNIView$1;->val$cardEdit:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 163
    iget-object p1, p0, Ldev/blaze/launcher/GLES3JNIView$1;->val$cardEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 164
    invoke-static {p1}, Ldev/blaze/launcher/GLES3JNIView;->setValue(Ljava/lang/String;)V

    .line 165
    sget-object p1, Ldev/blaze/launcher/Start;->display:Ldev/blaze/launcher/GLES3JNIView;

    invoke-virtual {p1}, Ldev/blaze/launcher/GLES3JNIView;->requestFocus()Z

    .line 166
    sget-object p1, Ldev/blaze/launcher/Start;->vTouch:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 167
    sget-object p1, Ldev/blaze/launcher/Start;->display:Ldev/blaze/launcher/GLES3JNIView;

    invoke-virtual {p1}, Ldev/blaze/launcher/GLES3JNIView;->performClick()Z

    .line 168
    sget-object p1, Ldev/blaze/launcher/Start;->vTouch:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
