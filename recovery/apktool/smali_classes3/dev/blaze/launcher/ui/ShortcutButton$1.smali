.class Ldev/blaze/launcher/ui/ShortcutButton$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/blaze/launcher/ui/ShortcutButton;-><init>(Landroid/app/Activity;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastX:F

.field private lastY:F

.field final synthetic this$0:Ldev/blaze/launcher/ui/ShortcutButton;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 52

    return-void
.end method

.method constructor <init>(Ldev/blaze/launcher/ui/ShortcutButton;Ljava/lang/String;)V
    .locals 51
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object/from16 v2, p2

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    iput-object v1, v0, Ldev/blaze/launcher/ui/ShortcutButton$1;->this$0:Ldev/blaze/launcher/ui/ShortcutButton;

    iput-object v2, v0, Ldev/blaze/launcher/ui/ShortcutButton$1;->val$text:Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v2}, Lkotlin/io/ۡۦۧ۟;->ۤۤۦۨ(Ljava/lang/Object;)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Ldev/blaze/launcher/ui/ShortcutButton$1;->lastX:F

    invoke-static {v2}, Landroidx/lifecycle/livedata/core/ۥ۟ۨ۠;->۟ۥۥۦۨ(Ljava/lang/Object;)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Ldev/blaze/launcher/ui/ShortcutButton$1;->lastY:F

    return-void
.end method

.method public static ۟۟ۢ۟ۨ(Ljava/lang/Object;)F
    .locals 2

    invoke-static {}, Lorg/spongycastle/crypto/io/ۣ۟ۨ۟;->ۣ۟۠ۤۡ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/ShortcutButton$1;

    iget v1, p0, Ldev/blaze/launcher/ui/ShortcutButton$1;->lastX:F

    :goto_0
    return v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۟۟ۦۧۥ(Ljava/lang/Object;)F
    .locals 1

    invoke-static {}, Landroidx/concurrent/futures/۟ۥۨۢۧ;->ۢ۟ۦۡ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/ShortcutButton;

    invoke-static {p0}, Ldev/blaze/launcher/ui/ShortcutButton;->-$$Nest$fgetY(Ldev/blaze/launcher/ui/ShortcutButton;)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۡۨۧۦ(Ljava/lang/Object;)F
    .locals 2

    invoke-static {}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/ۣۨۤ۠;->۟ۤۢۡۧ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/ShortcutButton$1;

    iget v1, p0, Ldev/blaze/launcher/ui/ShortcutButton$1;->lastY:F

    :goto_0
    return v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۟ۧ۠ۡۦ(Ljava/lang/Object;)F
    .locals 1

    invoke-static {}, Lorg/spongycastle/jce/spec/ۣ۟۠ۦۡ;->۟۠ۧۢۨ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/ShortcutButton;

    invoke-static {p0}, Ldev/blaze/launcher/ui/ShortcutButton;->-$$Nest$fgetX(Ldev/blaze/launcher/ui/ShortcutButton;)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۧ۠ۥ(Ljava/lang/Object;F)V
    .locals 1

    invoke-static {}, Landroid/support/customtabs/۟ۦۣۧۦ;->۟ۦۣۡۤ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/ShortcutButton;

    invoke-static {p0, p1}, Ldev/blaze/launcher/ui/ShortcutButton;->-$$Nest$fputY(Ldev/blaze/launcher/ui/ShortcutButton;F)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۟ۧۥ۠ۢ(Ljava/lang/Object;J)V
    .locals 1

    invoke-static {}, Ljavax/xml/۠ۢۧ۠;->۟ۥۡۢۢ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/ShortcutButton;

    invoke-static {p0, p1, p2}, Ldev/blaze/launcher/ui/ShortcutButton;->-$$Nest$fputdownTime(Ldev/blaze/launcher/ui/ShortcutButton;J)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۣۢۡ(Ljava/lang/Object;)J
    .locals 3

    invoke-static {}, Lorg/spongycastle/crypto/engines/ۣۢ۠۟;->ۢۧ۠()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/ShortcutButton;

    invoke-static {p0}, Ldev/blaze/launcher/ui/ShortcutButton;->-$$Nest$fgetdownTime(Ldev/blaze/launcher/ui/ShortcutButton;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x0

    goto :goto_0
.end method

.method public static ۥۡۨۡ(Ljava/lang/Object;)Ldev/blaze/launcher/ui/ShortcutButton;
    .locals 2

    invoke-static {}, Lcom/google/android/material/circularreveal/۟ۢ۟ۤ۟;->ۨۢۦۤ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/ShortcutButton$1;

    iget-object v1, p0, Ldev/blaze/launcher/ui/ShortcutButton$1;->this$0:Ldev/blaze/launcher/ui/ShortcutButton;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۥۤۦۡ(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lorg/spongycastle/cert/ocsp/jcajce/۟ۤ۠ۦۢ;->ۧۨۢۡ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/ShortcutButton$1;

    iget-object v1, p0, Ldev/blaze/launcher/ui/ShortcutButton$1;->val$text:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۣۨ۟۟(Ljava/lang/Object;F)V
    .locals 1

    invoke-static {}, Lorg/spongycastle/asn1/oiw/۟ۦۤۦۥ;->ۣۤ۟ۧ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/ui/ShortcutButton;

    invoke-static {p0, p1}, Ldev/blaze/launcher/ui/ShortcutButton;->-$$Nest$fputX(Ldev/blaze/launcher/ui/ShortcutButton;F)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 55

    move-object/from16 v6, p2

    move-object/from16 v5, p1

    move-object/from16 v4, p0

    invoke-static {v5}, Lorg/apache/http/pool/ۣ۟۠۟۠;->۟ۦۣۡ۠(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v6}, Lorg/spongycastle/crypto/examples/ۣ۠۟ۢ;->۟۟ۤۨ(Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v6}, Lorg/spongycastle/pkcs/jcajce/ۨۧۦۧ;->ۧۡۨ۠(Ljava/lang/Object;)F

    move-result v5

    iput v5, v4, Ldev/blaze/launcher/ui/ShortcutButton$1;->lastX:F

    invoke-static {v6}, Lorg/simpleframework/xml/۟ۢۥۥۧ;->ۥ۠ۦۡ(Ljava/lang/Object;)F

    move-result v5

    iput v5, v4, Ldev/blaze/launcher/ui/ShortcutButton$1;->lastY:F

    invoke-static {v4}, Ldev/blaze/launcher/ui/ShortcutButton$1;->ۥۡۨۡ(Ljava/lang/Object;)Ldev/blaze/launcher/ui/ShortcutButton;

    move-result-object v5

    invoke-static {}, Lcom/braze/configuration/۟ۥۨۥ۟;->ۣ۟ۢۢ۠()J

    move-result-wide v0

    invoke-static {v5, v0, v1}, Ldev/blaze/launcher/ui/ShortcutButton$1;->۟ۧۥ۠ۢ(Ljava/lang/Object;J)V

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne v5, v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne v5, v0, :cond_2

    invoke-static {}, Lcom/braze/configuration/۟ۥۨۥ۟;->ۣ۟ۢۢ۠()J

    move-result-wide v0

    invoke-static {v4}, Ldev/blaze/launcher/ui/ShortcutButton$1;->ۥۡۨۡ(Ljava/lang/Object;)Ldev/blaze/launcher/ui/ShortcutButton;

    move-result-object v5

    invoke-static {v5}, Ldev/blaze/launcher/ui/ShortcutButton$1;->ۣۢۡ(Ljava/lang/Object;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v5, v0, v2

    if-lez v5, :cond_2

    invoke-static {v6}, Lorg/spongycastle/pkcs/jcajce/ۨۧۦۧ;->ۧۡۨ۠(Ljava/lang/Object;)F

    move-result v5

    invoke-static {v6}, Lorg/simpleframework/xml/۟ۢۥۥۧ;->ۥ۠ۦۡ(Ljava/lang/Object;)F

    move-result v6

    invoke-static {v4}, Ldev/blaze/launcher/ui/ShortcutButton$1;->۟۟ۢ۟ۨ(Ljava/lang/Object;)F

    move-result v0

    sub-float v0, v5, v0

    invoke-static {v4}, Ldev/blaze/launcher/ui/ShortcutButton$1;->۟ۡۨۧۦ(Ljava/lang/Object;)F

    move-result v1

    sub-float v1, v6, v1

    invoke-static {v4}, Ldev/blaze/launcher/ui/ShortcutButton$1;->ۥۡۨۡ(Ljava/lang/Object;)Ldev/blaze/launcher/ui/ShortcutButton;

    move-result-object v2

    invoke-static {v2}, Ldev/blaze/launcher/ui/ShortcutButton$1;->۟ۧ۠ۡۦ(Ljava/lang/Object;)F

    move-result v3

    add-float/2addr v3, v0

    invoke-static {v2, v3}, Ldev/blaze/launcher/ui/ShortcutButton$1;->ۣۨ۟۟(Ljava/lang/Object;F)V

    invoke-static {v4}, Ldev/blaze/launcher/ui/ShortcutButton$1;->ۥۡۨۡ(Ljava/lang/Object;)Ldev/blaze/launcher/ui/ShortcutButton;

    move-result-object v0

    invoke-static {v0}, Ldev/blaze/launcher/ui/ShortcutButton$1;->۟۟ۦۧۥ(Ljava/lang/Object;)F

    move-result v2

    add-float/2addr v2, v1

    invoke-static {v0, v2}, Ldev/blaze/launcher/ui/ShortcutButton$1;->۟ۧ۠ۥ(Ljava/lang/Object;F)V

    invoke-static {v4}, Ldev/blaze/launcher/ui/ShortcutButton$1;->ۥۡۨۡ(Ljava/lang/Object;)Ldev/blaze/launcher/ui/ShortcutButton;

    move-result-object v0

    invoke-static {v0}, Ldev/blaze/launcher/ui/ShortcutButton$1;->۟ۧ۠ۡۦ(Ljava/lang/Object;)F

    move-result v1

    invoke-static {v1}, Lorg/spongycastle/jcajce/provider/util/ۨۨۥۣ;->۟ۤ۟ۧۡ(F)I

    move-result v1

    invoke-static {v4}, Ldev/blaze/launcher/ui/ShortcutButton$1;->ۥۡۨۡ(Ljava/lang/Object;)Ldev/blaze/launcher/ui/ShortcutButton;

    move-result-object v2

    invoke-static {v2}, Ldev/blaze/launcher/ui/ShortcutButton$1;->۟۟ۦۧۥ(Ljava/lang/Object;)F

    move-result v2

    invoke-static {v2}, Lorg/spongycastle/jcajce/provider/util/ۨۨۥۣ;->۟ۤ۟ۧۡ(F)I

    move-result v2

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3, v3}, Lorg/spongycastle/cert/crmf/jcajce/۟ۥ۠ۡۡ;->ۡۨۡ۟(Ljava/lang/Object;IIII)V

    invoke-static {v4}, Ldev/blaze/launcher/ui/ShortcutButton$1;->ۥۤۦۡ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Ldev/blaze/launcher/ui/ShortcutButton$1;->ۥۡۨۡ(Ljava/lang/Object;)Ldev/blaze/launcher/ui/ShortcutButton;

    move-result-object v1

    invoke-static {v1}, Ldev/blaze/launcher/ui/ShortcutButton$1;->۟ۧ۠ۡۦ(Ljava/lang/Object;)F

    move-result v1

    invoke-static {v1}, Lorg/spongycastle/jcajce/provider/util/ۨۨۥۣ;->۟ۤ۟ۧۡ(F)I

    move-result v1

    invoke-static {v0, v1}, Lorg/spongycastle/asn1/x509/qualified/ۨۧۧ۠;->ۨۨۦ۟(Ljava/lang/Object;I)V

    invoke-static {v4}, Ldev/blaze/launcher/ui/ShortcutButton$1;->ۥۤۦۡ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Ldev/blaze/launcher/ui/ShortcutButton$1;->ۥۡۨۡ(Ljava/lang/Object;)Ldev/blaze/launcher/ui/ShortcutButton;

    move-result-object v1

    invoke-static {v1}, Ldev/blaze/launcher/ui/ShortcutButton$1;->۟۟ۦۧۥ(Ljava/lang/Object;)F

    move-result v1

    invoke-static {v1}, Lorg/spongycastle/jcajce/provider/util/ۨۨۥۣ;->۟ۤ۟ۧۡ(F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/firebase/installations/ktx/ۤ۟ۢۧ;->ۦۢۥۦ(Ljava/lang/Object;I)V

    iput v5, v4, Ldev/blaze/launcher/ui/ShortcutButton$1;->lastX:F

    iput v6, v4, Ldev/blaze/launcher/ui/ShortcutButton$1;->lastY:F

    :cond_2
    :goto_0
    const/4 v5, 0x0

    return v5
.end method
