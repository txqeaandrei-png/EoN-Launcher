.class public final synthetic Ldev/blaze/launcher/ui/ShortcutButton$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 52

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 51

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Ldev/blaze/launcher/ui/ShortcutButton$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method

.method public static ۦۦۦۢ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Landroidx/savedstate/ۣ۟ۡ۠ۧ;->ۡۡۤۢ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Ljava/lang/String;

    check-cast p1, Landroid/view/View;

    invoke-static {p0, p1}, Ldev/blaze/launcher/ui/ShortcutButton;->lambda$new$0(Ljava/lang/String;Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 52

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1}, Lkotlin/math/۟ۡۡۦۧ;->۟ۦ۟۠۟(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Ldev/blaze/launcher/ui/ShortcutButton$$ExternalSyntheticLambda0;->ۦۦۦۢ(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
