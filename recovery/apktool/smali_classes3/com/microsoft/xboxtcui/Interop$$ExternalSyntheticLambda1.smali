.class public final synthetic Lcom/microsoft/xboxtcui/Interop$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xboxtcui/Interop$$ExternalSyntheticLambda1;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lcom/microsoft/xboxtcui/Interop$$ExternalSyntheticLambda1;->f$1:Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/microsoft/xboxtcui/Interop$$ExternalSyntheticLambda1;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lcom/microsoft/xboxtcui/Interop$$ExternalSyntheticLambda1;->f$1:Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    invoke-static {v0, v1}, Lcom/microsoft/xboxtcui/Interop;->lambda$ShowProfileCardUI$1(Landroid/app/Activity;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    return-void
.end method
