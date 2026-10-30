.class public Lcom/mojang/minecraftpe/packagesource/PackageSourceFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createGooglePlayPackageSource(Ljava/lang/String;Lcom/mojang/minecraftpe/packagesource/PackageSourceListener;)Lcom/mojang/minecraftpe/packagesource/PackageSource;
    .locals 0

    .line 14
    new-instance p0, Lcom/mojang/minecraftpe/packagesource/StubPackageSource;

    invoke-direct {p0, p1}, Lcom/mojang/minecraftpe/packagesource/StubPackageSource;-><init>(Lcom/mojang/minecraftpe/packagesource/PackageSourceListener;)V

    return-object p0
.end method
