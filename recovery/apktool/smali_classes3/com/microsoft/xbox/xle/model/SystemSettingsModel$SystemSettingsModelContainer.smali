.class Lcom/microsoft/xbox/xle/model/SystemSettingsModel$SystemSettingsModelContainer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/model/SystemSettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemSettingsModelContainer"
.end annotation


# static fields
.field public static instance:Lcom/microsoft/xbox/xle/model/SystemSettingsModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 157
    new-instance v0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;-><init>(Lcom/microsoft/xbox/xle/model/SystemSettingsModel-IA;)V

    sput-object v0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel$SystemSettingsModelContainer;->instance:Lcom/microsoft/xbox/xle/model/SystemSettingsModel;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
