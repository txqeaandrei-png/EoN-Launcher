.class public final synthetic Lcom/microsoft/xbox/idp/interop/Interop$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 0
    check-cast p1, Lcom/google/firebase/iid/InstanceIdResult;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/interop/Interop;->lambda$RegisterWithGNS$0(Lcom/google/firebase/iid/InstanceIdResult;)V

    return-void
.end method
