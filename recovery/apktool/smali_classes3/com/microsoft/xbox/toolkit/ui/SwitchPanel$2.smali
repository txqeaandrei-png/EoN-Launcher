.class Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$2;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$2;->this$0:Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 45
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$2;->this$0:Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->onAnimateOutEnd()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 49
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$2;->this$0:Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->onAnimateOutEnd()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 53
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$2;->this$0:Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->onAnimateOutStart()V

    return-void
.end method
