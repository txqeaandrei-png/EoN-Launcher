.class public final synthetic Lcom/braze/BrazeUser$$ExternalSyntheticLambda42;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lcom/braze/enums/Month;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(ILcom/braze/enums/Month;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/braze/BrazeUser$$ExternalSyntheticLambda42;->f$0:I

    iput-object p2, p0, Lcom/braze/BrazeUser$$ExternalSyntheticLambda42;->f$1:Lcom/braze/enums/Month;

    iput p3, p0, Lcom/braze/BrazeUser$$ExternalSyntheticLambda42;->f$2:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 0
    iget v0, p0, Lcom/braze/BrazeUser$$ExternalSyntheticLambda42;->f$0:I

    iget-object v1, p0, Lcom/braze/BrazeUser$$ExternalSyntheticLambda42;->f$1:Lcom/braze/enums/Month;

    iget v2, p0, Lcom/braze/BrazeUser$$ExternalSyntheticLambda42;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/braze/BrazeUser;->$r8$lambda$XKs0VWewV72RtJDJbQvQFfJuoEQ(ILcom/braze/enums/Month;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
