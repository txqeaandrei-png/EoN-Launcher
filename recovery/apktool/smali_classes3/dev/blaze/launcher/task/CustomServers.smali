.class public final Ldev/blaze/launcher/task/CustomServers;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCustomServers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomServers.kt\ndev/blaze/launcher/task/CustomServers\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,85:1\n1872#2,3:86\n*S KotlinDebug\n*F\n+ 1 CustomServers.kt\ndev/blaze/launcher/task/CustomServers\n*L\n69#1:86,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0008\u001a\u00020\tH\u0002J\u0006\u0010\n\u001a\u00020\u000bJ\u0008\u0010\u000c\u001a\u00020\rH\u0002J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\rH\u0002J\u0010\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\tH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Ldev/blaze/launcher/task/CustomServers;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "serverList",
        "",
        "",
        "getServerFile",
        "Ljava/io/File;",
        "install",
        "",
        "isAddedServers",
        "",
        "setAddedServers",
        "mode",
        "writeServersToFile",
        "file",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final short:[S


# instance fields
.field private final context:Landroid/content/Context;

.field private final serverList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 52

    const v0, 0x5f3

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Ldev/blaze/launcher/task/CustomServers;->short:[S

    return-void

    nop

    :array_0
    .array-data 2
        0x8e6s
        0x8eas
        0x8ebs
        0x8f1s
        0x8e0s
        0x8fds
        0x8f1s
        0x4ecs
        0x471s
        0x4bas
        0x471s
        0x4b7s
        0x4f5s
        0x4e7s
        0x4f6s
        0xf7s
        0xe3s
        0x96s
        0xe4s
        0xe3s
        0x96s
        0x4f6s
        0x4fes
        0x484s
        0x483s
        0x4ffs
        0x4ecs
        0x4a5s
        0x4e2s
        0x4e0s
        0x4f8s
        0x4bbs
        0x4bfs
        0x4b8s
        0x4b3s
        0x4a5s
        0x4a4s
        0x4a0s
        0x4f8s
        0x4a4s
        0x4a3s
        0x4ecs
        0x4e7s
        0x4efs
        0x4e7s
        0x4e5s
        0x4e4s
        0x4ecs
        0x4e7s
        0x4e3s
        0x4e0s
        0x4ees
        0x4e7s
        0x4e4s
        0x4e6s
        0x4e6s
        0x4e0s
        0x4e5s
        0x3efs
        0x372s
        0x3b9s
        0x372s
        0x3b4s
        0x3f6s
        0x3e7s
        0x3f5s
        0x7f4s
        0x7e0s
        0x795s
        0x7e7s
        0x7e0s
        0x795s
        0x3f5s
        0x3fds
        0x387s
        0x380s
        0x3fcs
        0x3efs
        0x3a6s
        0x3e1s
        0x3e2s
        0x3fbs
        0x3b8s
        0x3bcs
        0x3bbs
        0x3b0s
        0x3a6s
        0x3a7s
        0x3a3s
        0x3fbs
        0x3a7s
        0x3a0s
        0x3efs
        0x3e4s
        0x3ecs
        0x3e4s
        0x3e6s
        0x3e7s
        0x3efs
        0x3e4s
        0x3e0s
        0x3e3s
        0x3eds
        0x3e4s
        0x3e7s
        0x3e5s
        0x3e5s
        0x3e1s
        0x3e1s
        0x2fas
        0x267s
        0x2acs
        0x267s
        0x2a1s
        0x2e3s
        0x2f4s
        0x2e0s
        0x6e1s
        0x6f5s
        0x680s
        0x6f2s
        0x6f5s
        0x680s
        0x2e0s
        0x2e8s
        0x292s
        0x295s
        0x2e9s
        0x2fas
        0x2b3s
        0x2f4s
        0x2f8s
        0x2ees
        0x2ads
        0x2a9s
        0x2aes
        0x2a5s
        0x2b3s
        0x2b2s
        0x2b6s
        0x2ees
        0x2b2s
        0x2b5s
        0x2fas
        0x2f1s
        0x2f9s
        0x2f1s
        0x2f3s
        0x2f2s
        0x2fas
        0x2f1s
        0x2f5s
        0x2f6s
        0x2f8s
        0x2f1s
        0x2f2s
        0x2f0s
        0x2f0s
        0x2f3s
        0x2f2s
        0x203s
        0x29es
        0x255s
        0x29es
        0x258s
        0x21as
        0x20cs
        0x219s
        0x27as
        0x24bs
        0x258s
        0x25fs
        0x24ds
        0x25cs
        0x24bs
        0x24as
        0x254s
        0x25as
        0x219s
        0x203s
        0x249s
        0x255s
        0x258s
        0x240s
        0x217s
        0x25as
        0x24bs
        0x258s
        0x25fs
        0x24ds
        0x25cs
        0x24bs
        0x24as
        0x254s
        0x25as
        0x217s
        0x257s
        0x25cs
        0x24ds
        0x203s
        0x208s
        0x200s
        0x208s
        0x20as
        0x20bs
        0xc53s
        0xcces
        0xc05s
        0xcces
        0xc08s
        0xc4as
        0xc58s
        0xc49s
        0xc2as
        0xc06s
        0xc04s
        0xc19s
        0xc05s
        0xc0cs
        0xc11s
        0xc49s
        0xc2es
        0xc08s
        0xc04s
        0xc00s
        0xc07s
        0xc0es
        0xc49s
        0xc53s
        0xc04s
        0xc19s
        0xc1as
        0xc47s
        0xc04s
        0xc0as
        0xc44s
        0xc0as
        0xc06s
        0xc04s
        0xc19s
        0xc05s
        0xc0cs
        0xc11s
        0xc47s
        0xc0as
        0xc06s
        0xc04s
        0xc53s
        0xc58s
        0xc50s
        0xc58s
        0xc5as
        0xc5bs
        0x14as
        0x1d7s
        0x11cs
        0x1d7s
        0x111s
        0x153s
        0x142s
        0x150s
        0x127s
        0x131s
        0x123s
        0x134s
        0x133s
        0x122s
        0x131s
        0x136s
        0x124s
        0x179s
        0x179s
        0x150s
        0x14as
        0x127s
        0x111s
        0x103s
        0x114s
        0x133s
        0x102s
        0x111s
        0x116s
        0x104s
        0x15es
        0x111s
        0x104s
        0x115s
        0x102s
        0x11es
        0x11fs
        0x103s
        0x15es
        0x11ds
        0x115s
        0x14as
        0x146s
        0x141s
        0x142s
        0x149s
        0x141s
        0x2bes
        0x223s
        0x2e8s
        0x223s
        0x2e5s
        0x2a7s
        0x2b7s
        0x2a4s
        0x2c9s
        0x2c7s
        0x2ccs
        0x2f1s
        0x2e6s
        0x2a4s
        0x2bes
        0x2f4s
        0x2e1s
        0x2aas
        0x2e9s
        0x2e7s
        0x2ecs
        0x2f1s
        0x2e6s
        0x2aas
        0x2e7s
        0x2ebs
        0x2e9s
        0x2bes
        0x2b5s
        0x2bds
        0x2b5s
        0x2b7s
        0x2b6s
        0x497s
        0x40as
        0x4c1s
        0x40as
        0x4ccs
        0x48es
        0x48ds
        0x4ecs
        0x4c6s
        0x4d8s
        0x4c0s
        0x4ccs
        0x4e0s
        0x4ees
        0x48ds
        0x497s
        0x4cfs
        0x4c8s
        0x4c9s
        0x4dfs
        0x4c2s
        0x4ces
        0x4c6s
        0x483s
        0x4ccs
        0x4c6s
        0x4d8s
        0x4c0s
        0x4ccs
        0x4c0s
        0x4ces
        0x483s
        0x4c3s
        0x4c8s
        0x4d9s
        0x497s
        0x49cs
        0x494s
        0x49cs
        0x49es
        0x49fs
        0x892s
        0x80fs
        0x8c4s
        0x80fs
        0x8c9s
        0x88bs
        0x888s
        0x8e6s
        0x8cds
        0x8dcs
        0x8c0s
        0x8cds
        0x8das
        0x8efs
        0x8c9s
        0x8c5s
        0x8cds
        0x8dbs
        0x888s
        0x8e6s
        0x8cds
        0x8dcs
        0x8dfs
        0x8c7s
        0x8das
        0x8c3s
        0x888s
        0x892s
        0x8d8s
        0x8c4s
        0x8c9s
        0x8d1s
        0x886s
        0x8c6s
        0x8cds
        0x8dcs
        0x8c0s
        0x8cds
        0x8das
        0x8cfs
        0x8c9s
        0x8c5s
        0x8cds
        0x8dbs
        0x886s
        0x8c7s
        0x8das
        0x8cfs
        0x892s
        0x899s
        0x891s
        0x899s
        0x89bs
        0x89as
        0x633s
        0x6aes
        0x665s
        0x6aes
        0x668s
        0x62as
        0x629s
        0x64fs
        0x668s
        0x66ds
        0x66cs
        0x64as
        0x665s
        0x666s
        0x67cs
        0x66ds
        0x629s
        0x633s
        0x664s
        0x679s
        0x627s
        0x66fs
        0x668s
        0x66ds
        0x66cs
        0x66as
        0x665s
        0x666s
        0x67cs
        0x66ds
        0x627s
        0x66as
        0x666s
        0x664s
        0x633s
        0x638s
        0x630s
        0x638s
        0x63as
        0x63bs
        0x4c0s
        0x45ds
        0x496s
        0x45ds
        0x49bs
        0x4d9s
        0x4das
        0x4b2s
        0x49bs
        0x48cs
        0x495s
        0x499s
        0x4das
        0x4bds
        0x49bs
        0x497s
        0x49fs
        0x489s
        0x4das
        0x4d7s
        0x4das
        0x4aes
        0x492s
        0x49fs
        0x4das
        0x4b7s
        0x493s
        0x494s
        0x493s
        0x494s
        0x49ds
        0x4das
        0x4bes
        0x49fs
        0x49bs
        0x49es
        0x4das
        0x4c0s
        0x48as
        0x495s
        0x499s
        0x491s
        0x49fs
        0x48es
        0x4d4s
        0x492s
        0x49bs
        0x48cs
        0x495s
        0x499s
        0x4d4s
        0x49ds
        0x49bs
        0x497s
        0x49fs
        0x489s
        0x4c0s
        0x4cbs
        0x4c3s
        0x4cbs
        0x4c9s
        0x4c8s
        0x4dbs
        0x446s
        0x48ds
        0x446s
        0x480s
        0x4c2s
        0x4c1s
        0x4a9s
        0x498s
        0x491s
        0x484s
        0x493s
        0x4ads
        0x480s
        0x48fs
        0x485s
        0x492s
        0x4c1s
        0x4dbs
        0x491s
        0x48ds
        0x480s
        0x498s
        0x4cfs
        0x489s
        0x498s
        0x491s
        0x484s
        0x493s
        0x48ds
        0x480s
        0x48fs
        0x485s
        0x492s
        0x48cs
        0x482s
        0x4cfs
        0x48fs
        0x484s
        0x495s
        0x4dbs
        0x4d0s
        0x4d8s
        0x4d0s
        0x4d2s
        0x4d3s
        0x335s
        0x3a8s
        0x363s
        0x3a8s
        0x36es
        0x32cs
        0x32fs
        0x359s
        0x360s
        0x37ds
        0x37bs
        0x36as
        0x377s
        0x32fs
        0x341s
        0x36as
        0x37bs
        0x378s
        0x360s
        0x37ds
        0x364s
        0x32fs
        0x335s
        0x36ds
        0x36as
        0x36bs
        0x37ds
        0x360s
        0x36cs
        0x364s
        0x321s
        0x379s
        0x360s
        0x37ds
        0x37bs
        0x36as
        0x377s
        0x361s
        0x36as
        0x37bs
        0x378s
        0x360s
        0x37ds
        0x364s
        0x321s
        0x361s
        0x36as
        0x37bs
        0x335s
        0x33es
        0x336s
        0x33es
        0x33cs
        0x33ds
        0x5d7s
        0x54as
        0x581s
        0x54as
        0x58cs
        0x5ces
        0x5cds
        0x5bds
        0x581s
        0x598s
        0x599s
        0x582s
        0x583s
        0x584s
        0x598s
        0x580s
        0x5cds
        0x5d7s
        0x580s
        0x58es
        0x59ds
        0x588s
        0x5c3s
        0x59ds
        0x581s
        0x598s
        0x599s
        0x582s
        0x583s
        0x584s
        0x598s
        0x580s
        0x5c3s
        0x58fs
        0x588s
        0x59es
        0x599s
        0x5d7s
        0x5dcs
        0x5d4s
        0x5dcs
        0x5des
        0x5dfs
        0xbd1s
        0xb4cs
        0xb87s
        0xb4cs
        0xb8as
        0xbc8s
        0xbcbs
        0xba7s
        0xb8es
        0xb86s
        0xb84s
        0xb85s
        0xba8s
        0xb87s
        0xb84s
        0xb9es
        0xb8fs
        0xbcbs
        0xbd1s
        0xb86s
        0xb9bs
        0xb98s
        0xbc5s
        0xb87s
        0xb8es
        0xb86s
        0xb84s
        0xb85s
        0xb88s
        0xb87s
        0xb84s
        0xb9es
        0xb8fs
        0xbc5s
        0xb85s
        0xb8es
        0xb9fs
        0xbd1s
        0xbdas
        0xbd2s
        0xbdas
        0xbd8s
        0xbd9s
        0x5c5s
        0x558s
        0x593s
        0x558s
        0x59es
        0x5dcs
        0x5dfs
        0x5b5s
        0x59es
        0x59cs
        0x594s
        0x58fs
        0x590s
        0x58bs
        0x5b2s
        0x5bcs
        0x5dfs
        0x5c5s
        0x59ds
        0x59as
        0x59bs
        0x58ds
        0x590s
        0x59cs
        0x594s
        0x5d1s
        0x595s
        0x59es
        0x59cs
        0x594s
        0x58fs
        0x590s
        0x58bs
        0x592s
        0x59cs
        0x5d1s
        0x59cs
        0x590s
        0x592s
        0x5c5s
        0x5ces
        0x5c6s
        0x5ces
        0x5ccs
        0x5cds
        0x416s
        0x48bs
        0x440s
        0x48bs
        0x44ds
        0x40fs
        0x40cs
        0x47es
        0x449s
        0x448s
        0x449s
        0x40cs
        0x47es
        0x449s
        0x45as
        0x443s
        0x40cs
        0x416s
        0x446s
        0x443s
        0x44bs
        0x44ds
        0x45es
        0x402s
        0x45es
        0x449s
        0x448s
        0x449s
        0x45es
        0x449s
        0x45as
        0x443s
        0x402s
        0x44fs
        0x443s
        0x441s
        0x416s
        0x41ds
        0x415s
        0x41ds
        0x41fs
        0x41es
        0x737s
        0x7aas
        0x761s
        0x7aas
        0x76cs
        0x72es
        0x72ds
        0x759s
        0x77as
        0x768s
        0x77fs
        0x764s
        0x762s
        0x763s
        0x72ds
        0x737s
        0x76fs
        0x768s
        0x769s
        0x77fs
        0x762s
        0x76es
        0x766s
        0x723s
        0x779s
        0x77as
        0x768s
        0x77fs
        0x764s
        0x762s
        0x763s
        0x723s
        0x763s
        0x768s
        0x779s
        0x737s
        0x73cs
        0x734s
        0x73cs
        0x73es
        0x73fs
        0xcb8s
        0xc25s
        0xcees
        0xc25s
        0xce3s
        0xca1s
        0xca2s
        0xcd8s
        0xce7s
        0xcf3s
        0xce3s
        0xca2s
        0xcd2s
        0xcf0s
        0xce3s
        0xce1s
        0xcf6s
        0xcebs
        0xce1s
        0xce7s
        0xca2s
        0xcb8s
        0xcf8s
        0xce7s
        0xcf3s
        0xce3s
        0xcacs
        0xcecs
        0xce7s
        0xcf6s
        0xcb8s
        0xcb3s
        0xcbbs
        0xcb3s
        0xcb1s
        0xcb0s
        0x3das
        0x347s
        0x38cs
        0x347s
        0x381s
        0x3c3s
        0x3c0s
        0x3b3s
        0x381s
        0x38cs
        0x38fs
        0x38fs
        0x38es
        0x3aes
        0x385s
        0x394s
        0x397s
        0x38fs
        0x392s
        0x38bs
        0x3ces
        0x383s
        0x38fs
        0x38ds
        0x3c0s
        0x3b4s
        0x31cs
        0x392s
        0x38bs
        0x3c0s
        0x3a8s
        0x395s
        0x382s
        0x3c0s
        0x3b3s
        0x395s
        0x38es
        0x395s
        0x383s
        0x395s
        0x3c1s
        0x3c0s
        0x3das
        0x390s
        0x38cs
        0x381s
        0x399s
        0x3ces
        0x393s
        0x381s
        0x38cs
        0x38fs
        0x38fs
        0x38es
        0x38es
        0x385s
        0x394s
        0x397s
        0x38fs
        0x392s
        0x38bs
        0x3ces
        0x383s
        0x38fs
        0x38ds
        0x3das
        0x3d1s
        0x3d9s
        0x3d1s
        0x3d3s
        0x3d2s
        0x913s
        0x98es
        0x945s
        0x98es
        0x948s
        0x90as
        0x909s
        0x966s
        0x95fs
        0x94cs
        0x95bs
        0x950s
        0x909s
        0x904s
        0x909s
        0x97as
        0x942s
        0x950s
        0x94bs
        0x945s
        0x946s
        0x94as
        0x942s
        0x909s
        0x913s
        0x959s
        0x945s
        0x948s
        0x950s
        0x907s
        0x946s
        0x95fs
        0x94cs
        0x95bs
        0x950s
        0x944s
        0x94as
        0x907s
        0x94fs
        0x95bs
        0x913s
        0x918s
        0x910s
        0x918s
        0x91as
        0x91bs
        0xc2cs
        0xcb1s
        0xc7as
        0xcb1s
        0xc77s
        0xc35s
        0xc36s
        0xc53s
        0xc7bs
        0xc66s
        0xc73s
        0xc64s
        0xc7fs
        0xc77s
        0xc7as
        0xc65s
        0xc46s
        0xc53s
        0xc36s
        0xc39s
        0xc39s
        0xc36s
        0xc53s
        0xc45s
        0xc46s
        0xc53s
        0xc36s
        0xc2cs
        0xc66s
        0xc7as
        0xc77s
        0xc6fs
        0xc38s
        0xc73s
        0xc7bs
        0xc66s
        0xc73s
        0xc64s
        0xc7fs
        0xc77s
        0xc7as
        0xc65s
        0xc38s
        0xc78s
        0xc73s
        0xc62s
        0xc2cs
        0xc27s
        0xc2fs
        0xc27s
        0xc25s
        0xc24s
        0xae0s
        0xa7ds
        0xab6s
        0xa7ds
        0xabbs
        0xaf9s
        0xafas
        0xa97s
        0xab3s
        0xab4s
        0xabfs
        0xa8ds
        0xabbs
        0xaacs
        0xabfs
        0xafas
        0xae0s
        0xab8s
        0xaa8s
        0xaf4s
        0xab7s
        0xab3s
        0xab4s
        0xabfs
        0xaads
        0xabbs
        0xaacs
        0xabfs
        0xaf4s
        0xab4s
        0xabfs
        0xaaes
        0xae0s
        0xaebs
        0xae3s
        0xaebs
        0xae9s
        0xae8s
        0xc51s
        0xcccs
        0xc07s
        0xcccs
        0xc0as
        0xc48s
        0xc4bs
        0xc5cs
        0xc3fs
        0xc04s
        0xc0cs
        0xc00s
        0xc38s
        0xc26s
        0xc3bs
        0xc4bs
        0xc39s
        0xc0es
        0xc1ds
        0xc04s
        0xc07s
        0xc1es
        0xc1fs
        0xc02s
        0xc04s
        0xc05s
        0xc4bs
        0xc51s
        0xc1bs
        0xc07s
        0xc0as
        0xc12s
        0xc45s
        0xc5cs
        0xc1fs
        0xc04s
        0xc0cs
        0xc00s
        0xc06s
        0xc08s
        0xc45s
        0xc02s
        0xc0fs
        0xc51s
        0xc5as
        0xc52s
        0xc5as
        0xc58s
        0xc59s
        0x84fs
        0x8d2s
        0x819s
        0x8d2s
        0x814s
        0x856s
        0x855s
        0x83es
        0x81cs
        0x807s
        0x81cs
        0x80fs
        0x814s
        0x83bs
        0x810s
        0x801s
        0x802s
        0x81as
        0x807s
        0x81es
        0x855s
        0x84fs
        0x805s
        0x819s
        0x814s
        0x80cs
        0x85bs
        0x81es
        0x81cs
        0x807s
        0x81cs
        0x80fs
        0x814s
        0x81bs
        0x810s
        0x801s
        0x802s
        0x81as
        0x807s
        0x81es
        0x85bs
        0x80ds
        0x80cs
        0x80fs
        0x84fs
        0x844s
        0x84cs
        0x844s
        0x846s
        0x847s
        0x401s
        0x49cs
        0x457s
        0x49cs
        0x45as
        0x418s
        0x41bs
        0x46fs
        0x4c7s
        0x449s
        0x450s
        0x41bs
        0x476s
        0x44es
        0x441s
        0x478s
        0x449s
        0x45as
        0x45ds
        0x44fs
        0x41bs
        0x476s
        0x478s
        0x46bs
        0x47es
        0x415s
        0x476s
        0x46es
        0x461s
        0x478s
        0x469s
        0x47as
        0x47ds
        0x46fs
        0x415s
        0x478s
        0x474s
        0x476s
        0x432s
        0x41bs
        0x401s
        0x456s
        0x458s
        0x44bs
        0x45es
        0x415s
        0x456s
        0x44es
        0x441s
        0x458s
        0x449s
        0x45as
        0x45ds
        0x44fs
        0x415s
        0x458s
        0x454s
        0x456s
        0x401s
        0x40as
        0x402s
        0x40as
        0x408s
        0x409s
        0x7e1s
        0x77cs
        0x7b7s
        0x77cs
        0x7bas
        0x7f8s
        0x7fbs
        0x789s
        0x7aes
        0x7b7s
        0x7bes
        0x7a9s
        0x798s
        0x7a9s
        0x7bas
        0x7bds
        0x7afs
        0x7d2s
        0x7fbs
        0x7e1s
        0x7abs
        0x7b7s
        0x7bas
        0x7a2s
        0x7f5s
        0x7a9s
        0x7aes
        0x7b7s
        0x7bes
        0x7a9s
        0x7b8s
        0x7a9s
        0x7bas
        0x7bds
        0x7afs
        0x7f5s
        0x7b8s
        0x7b4s
        0x7b6s
        0x7e1s
        0x7e9s
        0x7ees
        0x7ees
        0x7eds
        0x7ees
        0x1cbs
        0x156s
        0x19ds
        0x156s
        0x190s
        0x1d2s
        0x1d1s
        0x1b7s
        0x190s
        0x18bs
        0x19es
        0x183s
        0x194s
        0x1b2s
        0x183s
        0x190s
        0x197s
        0x185s
        0x1f8s
        0x1d1s
        0x1cbs
        0x181s
        0x19ds
        0x190s
        0x188s
        0x1dfs
        0x197s
        0x190s
        0x18bs
        0x19es
        0x183s
        0x194s
        0x192s
        0x183s
        0x190s
        0x197s
        0x185s
        0x1dfs
        0x189s
        0x188s
        0x18bs
        0x1cbs
        0x1c0s
        0x1c8s
        0x1c0s
        0x1c2s
        0x1c3s
        0x5e1s
        0x57cs
        0x5b7s
        0x57cs
        0x5bas
        0x5f8s
        0x5fbs
        0x588s
        0x5aes
        0x5b5s
        0x5a9s
        0x5b2s
        0x5a8s
        0x5bes
        0x5fbs
        0x588s
        0x596s
        0x58bs
        0x5d2s
        0x5fbs
        0x5e1s
        0x5abs
        0x5b7s
        0x5bas
        0x5a2s
        0x5f5s
        0x5a8s
        0x5aes
        0x5b5s
        0x5a9s
        0x5b2s
        0x5a8s
        0x5bes
        0x5b6s
        0x5b8s
        0x5f5s
        0x5a3s
        0x5a2s
        0x5a1s
        0x5e1s
        0x5eas
        0x5e2s
        0x5eas
        0x5e8s
        0x5ebs
        0xc1es
        0xc56s
        0xc50s
        0xc5cs
        0xc54s
        0xc42s
        0xc1es
        0xc52s
        0xc5es
        0xc5cs
        0xc1fs
        0xc5cs
        0xc5es
        0xc5bs
        0xc50s
        0xc5fs
        0xc56s
        0xc1es
        0xc5cs
        0xc58s
        0xc5fs
        0xc54s
        0xc52s
        0xc43s
        0xc50s
        0xc57s
        0xc45s
        0xc41s
        0xc54s
        0xa85s
        0xa98s
        0xa94s
        0xa85s
        0xa92s
        0xa8es
        0xa81s
        0xa8cs
        0xabfs
        0xa93s
        0xa85s
        0xa92s
        0xa96s
        0xa85s
        0xa92s
        0xa93s
        0xaces
        0xa94s
        0xa98s
        0xa94s
        0x710s
        0x715s
        0x715s
        0x714s
        0x715s
        0x72es
        0x712s
        0x704s
        0x702s
        0x705s
        0x71es
        0x71cs
        0x72es
        0x702s
        0x714s
        0x703s
        0x707s
        0x714s
        0x703s
        0x702s
        0x3bfs
        0x3bas
        0x3bas
        0x3bbs
        0x3bas
        0x381s
        0x3bds
        0x3abs
        0x3ads
        0x3aas
        0x3b1s
        0x3b3s
        0x381s
        0x3ads
        0x3bbs
        0x3acs
        0x3a8s
        0x3bbs
        0x3acs
        0x3ads
        0xc7fs
        0x9dcs
        0x9das
        0x9d0s
        0x9eds
        0x9f6s
        0x9f0s
        0x9e5s
        0x9e1s
        0x9fcs
        0x9fas
        0x9fbs
        0x9b5s
        0x9e2s
        0x9fds
        0x9fcs
        0x9f9s
        0x9f0s
        0x9b5s
        0x9f6s
        0x9e7s
        0x9f0s
        0x9f4s
        0x9e1s
        0x9fcs
        0x9fbs
        0x9f2s
        0x9b5s
        0x9f3s
        0x9fcs
        0x9f9s
        0x9f0s
        0x9afs
        0x9b5s
        0x5d9s
        0x5f7s
        0x5fas
        0x5e1s
        0x5fes
        0x5d7s
        0x5fas
        0x5ees
        0x5f5s
        0x5f8s
        0x5f3s
        0x5fes
        0x5e9s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 53

    move-object/from16 v3, p1

    move-object/from16 v2, p0

    invoke-static/range {}, Ldev/blaze/launcher/task/CustomServers;->ۡۨۦ()[S

    move-result-object v38

    const v41, 0x885

    const v39, 0x0

    const v40, 0x7

    invoke-static/range {v38 .. v41}, Lorg/spongycastle/crypto/macs/۟۠ۤ۠ۢ;->ۢۡۦۣ([SIII)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-static {v3, v0}, Lcom/google/firebase/analytics/connector/۟ۧۢ۟;->۟ۡۤۨۡ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v3, v2, Ldev/blaze/launcher/task/CustomServers;->context:Landroid/content/Context;

    const/16 v3, 0x1d

    new-array v3, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static/range {}, Ldev/blaze/launcher/task/CustomServers;->ۡۨۦ()[S

    move-result-object v38

    const v41, 0x4d6

    const v39, 0x7

    const v40, 0x33

    invoke-static/range {v38 .. v41}, Landroidx/appcompat/text/۟۟ۥۣۤ;->ۣۤۨۢ([SIII)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v1, v38

    aput-object v1, v3, v0

    const/4 v0, 0x1

    invoke-static/range {}, Ldev/blaze/launcher/task/CustomServers;->ۡۨۦ()[S

    move-result-object v32

    const v35, 0x3d5

    const v33, 0x3a

    const v34, 0x33

    invoke-static/range {v32 .. v35}, Lkotlin/contracts/ۥۨۤۢ;->ۢ۟ۤۡ([SIII)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v1, v32

    aput-object v1, v3, v0

    const/4 v0, 0x2

    invoke-static/range {}, Ldev/blaze/launcher/task/CustomServers;->ۡۨۦ()[S

    move-result-object v15

    const v18, 0x2c0

    const v16, 0x6d

    const v17, 0x33

    invoke-static/range {v15 .. v18}, Lcom/braze/support/delegates/ۡۥۡ۟;->ۥۣۡ([SIII)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v1, v15

    aput-object v1, v3, v0

    const/4 v0, 0x3

    invoke-static/range {}, Ldev/blaze/launcher/task/CustomServers;->ۡۨۦ()[S

    move-result-object v27

    const v30, 0x239

    const v28, 0xa0

    const v29, 0x2d

    invoke-static/range {v27 .. v30}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/۟ۧ۟ۦ۟;->ۦۨ۠([SIII)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v1, v27

    aput-object v1, v3, v0

    const/4 v0, 0x4

    invoke-static/range {}, Ldev/blaze/launcher/task/CustomServers;->ۡۨۦ()[S

    move-result-object v14

    const v17, 0xc69

    const v15, 0xcd

    const v16, 0x30

    invoke-static/range {v14 .. v17}, Lcom/microsoft/xal/logging/ۣۣۣ۠;->۟ۦۥۤۢ([SIII)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v1, v14

    aput-object v1, v3, v0

    const/4 v0, 0x5

    invoke-static/range {}, Ldev/blaze/launcher/task/CustomServers;->ۡۨۦ()[S

    move-result-object v41

    const v44, 0x170

    const v42, 0xfd

    const v43, 0x2f

    invoke-static/range {v41 .. v44}, Landroidx/customview/ۥۡۧۦ;->۟۟ۨۡ۟([SIII)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v1, v41

    aput-object v1, v3, v0

    const/4 v0, 0x6

    invoke-static {}, Ldev/blaze/launcher/task/CustomServers;->ۡۨۦ()[S

    move-result-object v9

    const v12, 0x284

    const v10, 0x12c

    const v11, 0x21

    invoke-static/range {v9 .. v12}, Lcom/google/android/datatransport/runtime/scheduling/ۣۣۧ۟;->ۣۤۡۡ([SIII)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v1, v9

    aput-object v1, v3, v0

    const/4 v0, 0x7

    invoke-static/range {}, Ldev/blaze/launcher/task/CustomServers;->ۡۨۦ()[S

    move-result-object v12

    const v15, 0x4ad

    const v13, 0x14d

    const v14, 0x29

    invoke-static/range {v12 .. v15}, Lcom/microsoft/xboxlive/ۣ۠ۡۡ;->ۧۢۥۡ([SIII)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v1, v12

    aput-object v1, v3, v0

    const/16 v0, 0x8

    invoke-static/range {}, Ldev/blaze/launcher/task/CustomServers;->ۡۨۦ()[S

    move-result-object v29

    const v32, 0x8a8

    const v30, 0x176

    const v31, 0x36

    invoke-static/range {v29 .. v32}, Landroidx/localbroadcastmanager/content/ۥ۟ۥۤ;->۟ۥۧ۟ۧ([SIII)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v1, v29

    aput-object v1, v3, v0

    const/16 v0, 0x9

    invoke-static/range {}, Ldev/blaze/launcher/task/CustomServers;->ۡۨۦ()[S

    move-result-object v40

    const v43, 0x609

    const v41, 0x1ac

    const v42, 0x28

    invoke-static/range {v40 .. v43}, Lcom/google/firebase/analytics/connector/۟ۧۢ۟;->۟ۥۥۣۢ([SIII)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v1, v40

    aput-object v1, v3, v0

    const/16 v0, 0xa

    invoke-static/range {}, Ldev/blaze/launcher/task/CustomServers;->ۡۨۦ()[S

    move-result-object v10

    const v13, 0x4fa

    const v11, 0x1d4

    const v12, 0x3e

    invoke-static/range {v10 .. v13}, Landroidx/core/view/contentcapture/ۣ۟ۤۢۥ;->ۨۨۤ([SIII)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v1, v10

    aput-object v1, v3, v0

    const/16 v0, 0xb

    invoke-static/range {}, Ldev/blaze/launcher/task/CustomServers;->ۡۨۦ()[S

    move-result-object v35

    const v38, 0x4e1

    const v36, 0x212

    const v37, 0x2e

    invoke-static/range {v35 .. v38}, Lcom/google/android/gms/actions/ۣۨۨۦ;->۟ۢۡۥۤ([SIII)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v1, v35

    aput-object v1, v3, v0

    const/16 v0, 0xc

    invoke-static/range {}, Ldev/blaze/launcher/task/CustomServers;->ۡۨۦ()[S

    move-result-object v37

    const v40, 0x30f

    const v38, 0x240

    const v39, 0x36

    invoke-static/range {v37 .. v40}, Ldev/blaze/launcher/ۦۣۧۡ;->۟ۡ۟ۨۨ([SIII)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v1, v37

    aput-object v1, v3, v0

    const/16 v0, 0xd

    invoke-static/range {}, Ldev/blaze/launcher/task/CustomServers;->ۡۨۦ()[S

    move-result-object v15

    const v18, 0x5ed

    const v16, 0x276

    const v17, 0x2b

    invoke-static/range {v15 .. v18}, Lorg/spongycastle/asn1/pkcs/۟ۡۢ۠ۥ;->ۥۣۣۣ([SIII)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v1, v15

    aput-object v1, v3, v0

    const/16 v0, 0xe

    invoke-static/range {}, Ldev/blaze/launcher/task/CustomServers;->ۡۨۦ()[S

    move-result-object v12

    const v15, 0xbeb

    const v13, 0x2a1

    const v14, 0x2b

    invoke-static/range {v12 .. v15}, Landroidx/appcompat/resources/ۣۣۡۥ;->ۥۥۤ۠([SIII)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v1, v12

    aput-object v1, v3, v0

    const/16 v0, 0xf

    invoke-static/range {}, Ldev/blaze/launcher/task/CustomServers;->ۡۨۦ()[S

    move-result-object v23

    const v26, 0x5ff

    const v24, 0x2cc

    const v25, 0x2d

    invoke-static/range {v23 .. v26}, Lcom/microsoft/xal/browser/ۣۤۡۡ;->ۡۡۤۨ([SIII)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v1, v23

    aput-object v1, v3, v0

    const/16 v0, 0x10

    invoke-static/range {}, Ldev/blaze/launcher/task/CustomServers;->ۡۨۦ()[S

    move-result-object v23

    const v26, 0x42c

    const v24, 0x2f9

    const v25, 0x2a

    invoke-static/range {v23 .. v26}, Lcom/google/firebase/dynamicloading/۟ۡۥۢۢ;->ۣۤۢۧ([SIII)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v1, v23

    aput-object v1, v3, v0

    const/16 v0, 0x11

    invoke-static/range {}, Ldev/blaze/launcher/task/CustomServers;->ۡۨۦ()[S

    move-result-object v36

    const v39, 0x70d

    const v37, 0x323

    const v38, 0x29

    invoke-static/range {v36 .. v39}, Lorg/spongycastle/jcajce/provider/asymmetric/ies/۟ۡۧۡ;->ۣ۠ۤ۟([SIII)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v1, v36

    aput-object v1, v3, v0

    const/16 v0, 0x12

    invoke-static/range {}, Ldev/blaze/launcher/task/CustomServers;->ۡۨۦ()[S

    move-result-object v13

    const v16, 0xc82

    const v14, 0x34c

    const v15, 0x24

    invoke-static/range {v13 .. v16}, Lcom/google/firebase/emulators/۠ۥ۠;->۟ۤ۟۠ۨ([SIII)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v1, v13

    aput-object v1, v3, v0

    const/16 v0, 0x13

    invoke-static/range {}, Ldev/blaze/launcher/task/CustomServers;->ۡۨۦ()[S

    move-result-object v33

    const v36, 0x3e0

    const v34, 0x370

    const v35, 0x47

    invoke-static/range {v33 .. v36}, Lcom/google/firebase/installations/time/ۡۤۢ;->۟ۥۣۧۥ([SIII)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v1, v33

    aput-object v1, v3, v0

    const/16 v0, 0x14

    invoke-static/range {}, Ldev/blaze/launcher/task/CustomServers;->ۡۨۦ()[S

    move-result-object v31

    const v34, 0x929

    const v32, 0x3b7

    const v33, 0x2e

    invoke-static/range {v31 .. v34}, Lkotlin/collections/unsigned/ۤۧۦ;->۟ۡۤۦ۠([SIII)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v1, v31

    aput-object v1, v3, v0

    const/16 v0, 0x15

    invoke-static/range {}, Ldev/blaze/launcher/task/CustomServers;->ۡۨۦ()[S

    move-result-object v26

    const v29, 0xc16

    const v27, 0x3e5

    const v28, 0x34

    invoke-static/range {v26 .. v29}, Lorg/spongycastle/mozilla/jcajce/ۨۨ۟;->ۦۢۦ۠([SIII)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v1, v26

    aput-object v1, v3, v0

    const/16 v0, 0x16

    invoke-static/range {}, Ldev/blaze/launcher/task/CustomServers;->ۡۨۦ()[S

    move-result-object v14

    const v17, 0xada

    const v15, 0x419

    const v16, 0x26

    invoke-static/range {v14 .. v17}, Lcom/google/firebase/util/ۧ۠ۦۤ;->ۥۣۢۡ([SIII)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v1, v14

    aput-object v1, v3, v0

    const/16 v0, 0x17

    invoke-static/range {}, Ldev/blaze/launcher/task/CustomServers;->ۡۨۦ()[S

    move-result-object v12

    const v15, 0xc6b

    const v13, 0x43f

    const v14, 0x31

    invoke-static/range {v12 .. v15}, Landroidx/constraintlayout/core/parser/۠ۡۦۥ;->۟ۤۤۦۣ([SIII)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v1, v12

    aput-object v1, v3, v0

    const/16 v0, 0x18

    invoke-static/range {}, Ldev/blaze/launcher/task/CustomServers;->ۡۨۦ()[S

    move-result-object v11

    const v14, 0x875

    const v12, 0x470

    const v13, 0x32

    invoke-static/range {v11 .. v14}, Lorg/spongycastle/util/io/pem/ۧ۠ۦ;->ۣۧۡۧ([SIII)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v1, v11

    aput-object v1, v3, v0

    const/16 v0, 0x19

    invoke-static/range {}, Ldev/blaze/launcher/task/CustomServers;->ۡۨۦ()[S

    move-result-object v33

    const v36, 0x43b

    const v34, 0x4a2

    const v35, 0x40

    invoke-static/range {v33 .. v36}, Lcom/braze/ui/banners/listeners/۟ۧۡۥۨ;->ۤۢۧۨ([SIII)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v1, v33

    aput-object v1, v3, v0

    const/16 v0, 0x1a

    invoke-static/range {}, Ldev/blaze/launcher/task/CustomServers;->ۡۨۦ()[S

    move-result-object v10

    const v13, 0x7db

    const v11, 0x4e2

    const v12, 0x2d

    invoke-static/range {v10 .. v13}, Lcom/google/android/material/search/ۦۣ۟ۦ;->ۤۥ۟۟([SIII)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v1, v10

    aput-object v1, v3, v0

    const/16 v0, 0x1b

    invoke-static/range {}, Ldev/blaze/launcher/task/CustomServers;->ۡۨۦ()[S

    move-result-object v19

    const v22, 0x1f1

    const v20, 0x50f

    const v21, 0x2f

    invoke-static/range {v19 .. v22}, Landroidx/constraintlayout/core/widgets/analyzer/ۨ۠ۧۥ;->ۢ۟ۢۧ([SIII)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v1, v19

    aput-object v1, v3, v0

    const/16 v0, 0x1c

    invoke-static/range {}, Ldev/blaze/launcher/task/CustomServers;->ۡۨۦ()[S

    move-result-object v26

    const v29, 0x5db

    const v27, 0x53e

    const v28, 0x2d

    invoke-static/range {v26 .. v29}, Landroidx/navigation/ui/ۦۨۢ;->ۡۥۧ([SIII)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v1, v26

    aput-object v1, v3, v0

    invoke-static {v3}, Ldev/blaze/launcher/task/CustomServers;->ۣ۟ۥ۟۠(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Ldev/blaze/launcher/task/CustomServers;->serverList:Ljava/util/List;

    return-void
.end method

.method private final getServerFile()Ljava/io/File;
    .locals 54

    move-object/from16 v3, p0

    new-instance v0, Ljava/io/File;

    invoke-static {v3}, Ldev/blaze/launcher/task/CustomServers;->ۣۨۨۢ(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/appcompat/text/ۣ۟۠ۥۥ;->ۥۧۨۦ(Ljava/lang/Object;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/math/ec/endo/ۣۣ۟۠۟;->ۥ۟ۧ۟(Ljava/lang/Object;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v1}, Lcom/braze/ui/contentcards/view/۟ۦۢ۟ۨ;->ۣ۟ۢ۟۟(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {}, Ldev/blaze/launcher/task/CustomServers;->ۡۨۦ()[S

    move-result-object v33

    const v36, 0xc31

    const v34, 0x56b

    const v35, 0x1d

    invoke-static/range {v33 .. v36}, Lorg/spongycastle/jcajce/provider/asymmetric/ies/۟ۡۧۡ;->ۣ۠ۤ۟([SIII)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v2, v33

    invoke-static {v1, v2}, Lcom/braze/ui/inappmessage/factories/ۣ۟۟ۦۢ;->ۣۣ۟ۡ۠(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1}, Ljavax/xml/stream/util/ۨۤۦۡ;->۟ۢۧۡ۠(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/braze/events/internal/۟ۥۥۣ۠;->ۣۢۢ۟(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroidx/core/hardware/fingerprint/ۣۣۨۤ;->ۨۤۦۡ(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static/range {}, Ldev/blaze/launcher/task/CustomServers;->ۡۨۦ()[S

    move-result-object v14

    const v17, 0xae0

    const v15, 0x588

    const v16, 0x14

    invoke-static/range {v14 .. v17}, Lcom/google/android/material/search/۟ۡ۠ۡۤ;->۟ۢۨۢ۟([SIII)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v2, v14

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private final isAddedServers()Z
    .locals 54

    move-object/from16 v3, p0

    invoke-static {v3}, Ldev/blaze/launcher/task/CustomServers;->ۣۨۨۢ(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/impl/ۣۥۤۢ;->ۡۥ۟ۥ(Ljava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static/range {}, Ldev/blaze/launcher/task/CustomServers;->ۡۨۦ()[S

    move-result-object v23

    const v26, 0x771

    const v24, 0x59c

    const v25, 0x14

    invoke-static/range {v23 .. v26}, Lcom/microsoft/xbox/idp/util/ۣۣ۟۟;->۟ۥۣۧۡ([SIII)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v1, v23

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/material/dialog/ۢۦۣ;->ۣۦۤۦ(Ljava/lang/Object;Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method private final setAddedServers(Z)V
    .locals 53

    move/from16 v3, p1

    move-object/from16 v2, p0

    invoke-static {v2}, Ldev/blaze/launcher/task/CustomServers;->ۣۨۨۢ(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/impl/ۣۥۤۢ;->ۡۥ۟ۥ(Ljava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/esf/ۤۢۨۦ;->ۦۢۤ(Ljava/lang/Object;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static/range {}, Ldev/blaze/launcher/task/CustomServers;->ۡۨۦ()[S

    move-result-object v14

    const v17, 0x3de

    const v15, 0x5b0

    const v16, 0x14

    invoke-static/range {v14 .. v17}, Landroidx/core/text/method/ۥۡۧۤ;->ۦۢ۟([SIII)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v1, v14

    invoke-static {v0, v1, v3}, Lorg/apache/http/client/params/۟ۧ۟۠ۥ;->۠ۦۦۨ(Ljava/lang/Object;Ljava/lang/Object;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-static {v3}, Lcom/mojang/minecraftpe/store/amazonappstore/۟۟ۧۢۥ;->۟ۥۤۡۡ(Ljava/lang/Object;)V

    return-void
.end method

.method private final writeServersToFile(Ljava/io/File;)V
    .locals 56

    move-object/from16 v6, p1

    move-object/from16 v5, p0

    invoke-static {}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/ۣ۟ۡۨۡ;->ۣ۟ۧۤۧ()Ljava/nio/charset/Charset;

    move-result-object v0

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v2, Ljava/io/OutputStream;

    invoke-direct {v1, v2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    check-cast v1, Ljava/io/Writer;

    instance-of v6, v1, Ljava/io/BufferedWriter;

    if-eqz v6, :cond_0

    check-cast v1, Ljava/io/BufferedWriter;

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/io/BufferedWriter;

    const/16 v0, 0x2000

    invoke-direct {v6, v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    move-object v1, v6

    :goto_0
    check-cast v1, Ljava/io/Closeable;

    :try_start_0
    move-object v6, v1

    check-cast v6, Ljava/io/BufferedWriter;

    invoke-static {v5}, Ldev/blaze/launcher/task/CustomServers;->۟ۧ۠ۢۦ(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lcom/google/firebase/emulators/۠ۥ۠;->ۡۦۧۧ(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_1
    invoke-static {v0}, Lcom/braze/ui/adapters/۟۠ۦ۠;->۟۟ۧۦۤ(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Landroidx/fragment/ktx/ۢۨۨۤ;->۟۟ۤۧۧ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_1

    invoke-static {}, Ldev/blaze/launcher/task/CustomServers;->ۤ۠۠ۢ()V

    :cond_1
    check-cast v3, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v4}, Lorg/spongycastle/asn1/pkcs/۟ۡۢ۠ۥ;->ۥ۟ۨۥ(Ljava/lang/Object;I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/braze/ui/inappmessage/factories/ۣ۟۟ۦۢ;->ۣۣ۟ۡ۠(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {}, Ldev/blaze/launcher/task/CustomServers;->ۡۨۦ()[S

    move-result-object v20

    const v23, 0xc75

    const v21, 0x5c4

    const v22, 0x1

    invoke-static/range {v20 .. v23}, Lorg/xmlpull/v1/builder/impl/ۥۧۨۡ;->۟ۥۨۨ([SIII)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v3, v20

    invoke-static {v2, v3}, Lcom/braze/ui/inappmessage/factories/ۣ۟۟ۦۢ;->ۣۣ۟ۡ۠(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v2}, Ljavax/xml/stream/util/ۨۤۦۡ;->۟ۢۧۡ۠(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/braze/enums/ۣۧۨۧ;->۟ۦۦ۟ۢ(Ljava/lang/Object;Ljava/lang/Object;)V

    move v2, v4

    goto :goto_1

    :cond_2
    invoke-static {}, Lorg/spongycastle/asn1/x500/style/ۧ۠ۨ;->۟۟ۡۡۢ()Lkotlin/Unit;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x0

    invoke-static {v1, v6}, Landroidx/core/os/ۡۧۥۨ;->۠ۢۡۧ(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v6

    :try_start_1
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1, v6}, Landroidx/core/os/ۡۧۥۨ;->۠ۢۡۧ(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v0
.end method

.method public static ۟ۡۢ۠(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {}, Lcom/braze/ui/widget/۟۠ۤ۠ۤ;->۠ۢ۠()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/task/CustomServers;

    invoke-direct {p0}, Ldev/blaze/launcher/task/CustomServers;->isAddedServers()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣ۟ۥ۟۠(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    invoke-static {}, Landroidx/constraintlayout/utils/widget/۟ۥۤ۠ۤ;->ۣۢ۟ۡ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۧ۠ۢۦ(Ljava/lang/Object;)Ljava/util/List;
    .locals 2

    invoke-static {}, Lkotlin/system/ۨ۠ۢ۟;->۠ۦۧ۟()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/task/CustomServers;

    iget-object v1, p0, Ldev/blaze/launcher/task/CustomServers;->serverList:Ljava/util/List;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۟ۧۤۥۥ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/braze/ui/inappmessage/views/ۣۨۢۡ;->۟۠ۦۧ۠()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/task/CustomServers;

    check-cast p1, Ljava/io/File;

    invoke-direct {p0, p1}, Ldev/blaze/launcher/task/CustomServers;->writeServersToFile(Ljava/io/File;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۡۨۦ()[S
    .locals 1

    invoke-static {}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/۟۠ۧۦۡ;->۟ۢۨۤ()I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Ldev/blaze/launcher/task/CustomServers;->short:[S

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣۨۨۢ(Ljava/lang/Object;)Landroid/content/Context;
    .locals 2

    invoke-static {}, Lcom/google/android/datatransport/runtime/logging/ۣۤۧۢ;->ۧۢۤۢ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/task/CustomServers;

    iget-object v1, p0, Ldev/blaze/launcher/task/CustomServers;->context:Landroid/content/Context;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۣۤ۟۟(Ljava/lang/Object;Z)V
    .locals 1

    invoke-static {}, Lokhttp3/internal/tls/ۤۤۢۦ;->۟۠ۥۤۧ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/task/CustomServers;

    invoke-direct {p0, p1}, Ldev/blaze/launcher/task/CustomServers;->setAddedServers(Z)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۤ۠۠ۢ()V
    .locals 2

    invoke-static {}, Lcom/microsoft/xbox/xle/ui/۟۟۠ۤۤ;->۟ۥۤۨۥ()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۧ۠۠۟(Ljava/lang/Object;)Ljava/io/File;
    .locals 1

    invoke-static {}, Landroidx/startup/ۢۥۣۣ;->ۣۣ۠ۨ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Ldev/blaze/launcher/task/CustomServers;

    invoke-direct {p0}, Ldev/blaze/launcher/task/CustomServers;->getServerFile()Ljava/io/File;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final install()V
    .locals 54

    move-object/from16 v3, p0

    invoke-static {v3}, Ldev/blaze/launcher/task/CustomServers;->۟ۡۢ۠(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Lorg/apache/http/config/ۣ۟۟۠۟;->ۣۣۤۥ()Lkotlin/Result$Companion;

    move-result-object v0

    move-object v0, v3

    check-cast v0, Ldev/blaze/launcher/task/CustomServers;

    invoke-static {v3}, Ldev/blaze/launcher/task/CustomServers;->ۧ۠۠۟(Ljava/lang/Object;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/braze/events/internal/۟ۥۥۣ۠;->ۣۢۢ۟(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/spongycastle/x509/util/ۣ۟ۤۨ۟;->ۥۥ۠ۢ(Ljava/lang/Object;)Z

    invoke-static {v3, v0}, Ldev/blaze/launcher/task/CustomServers;->۟ۧۤۥۥ(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    invoke-static {v3, v0}, Ldev/blaze/launcher/task/CustomServers;->ۣۤ۟۟(Ljava/lang/Object;Z)V

    invoke-static {}, Lorg/spongycastle/asn1/x500/style/ۧ۠ۨ;->۟۟ۡۡۢ()Lkotlin/Unit;

    move-result-object v0

    invoke-static {v0}, Landroidx/savedstate/ktx/ۣۨۨۡ;->۟ۤۦۢۤ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lorg/apache/http/config/ۣ۟۟۠۟;->ۣۣۤۥ()Lkotlin/Result$Companion;

    move-result-object v1

    invoke-static {v0}, Landroidx/core/telephony/mbms/ۨۥۨۦ;->ۣ۟ۨۡۤ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/savedstate/ktx/ۣۨۨۡ;->۟ۤۦۢۤ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/support/v4/app/ۤۡۧ۟;->ۤۨ۠۟(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static/range {}, Ldev/blaze/launcher/task/CustomServers;->ۡۨۦ()[S

    move-result-object v29

    const v32, 0x995

    const v30, 0x5c5

    const v31, 0x21

    invoke-static/range {v29 .. v32}, Lorg/spongycastle/asn1/bc/ۣ۟ۢ۟ۡ;->۟ۢۡ۟ۡ([SIII)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v2, v29

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/braze/ui/contentcards/view/۟ۦۢ۟ۨ;->ۣ۟ۢ۟۟(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0}, Ljavax/xml/stream/util/ۨۤۦۡ;->۟ۢۧۡ۠(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static/range {}, Ldev/blaze/launcher/task/CustomServers;->ۡۨۦ()[S

    move-result-object v36

    const v39, 0x59b

    const v37, 0x5e6

    const v38, 0xd

    invoke-static/range {v36 .. v39}, Lorg/spongycastle/pqc/jcajce/provider/util/ۣۥۣۦ;->ۤ۟ۧ۟([SIII)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v1, v36

    :cond_1
    return-void
.end method
