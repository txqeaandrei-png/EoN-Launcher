.class public final synthetic Lcom/braze/ui/banners/BannerView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/braze/ui/banners/BannerView;


# direct methods
.method public synthetic constructor <init>(Lcom/braze/ui/banners/BannerView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/ui/banners/BannerView$$ExternalSyntheticLambda0;->f$0:Lcom/braze/ui/banners/BannerView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/braze/ui/banners/BannerView$$ExternalSyntheticLambda0;->f$0:Lcom/braze/ui/banners/BannerView;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/braze/ui/banners/BannerView;->$r8$lambda$n7tsCD-bGkNcn7OAdLCxuK9AaF4(Lcom/braze/ui/banners/BannerView;D)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
