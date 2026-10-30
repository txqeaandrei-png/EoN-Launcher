.class public Lcom/mojang/minecraftpe/WorldRecovery;
.super Ljava/lang/Object;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mTotalBytesRequired:J

.field private mTotalFilesToCopy:I


# direct methods
.method public static synthetic $r8$lambda$6YwepEh5VbBvuzS4H0yJNY3bVIA(Lcom/mojang/minecraftpe/WorldRecovery;Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mojang/minecraftpe/WorldRecovery;->lambda$migrateFolderContents$0(Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/mojang/minecraftpe/WorldRecovery;->mTotalFilesToCopy:I

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lcom/mojang/minecraftpe/WorldRecovery;->mTotalBytesRequired:J

    .line 32
    iput-object p1, p0, Lcom/mojang/minecraftpe/WorldRecovery;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/mojang/minecraftpe/WorldRecovery;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private generateCopyFilesRecursively(Ljava/util/ArrayList;Landroidx/documentfile/provider/DocumentFile;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/documentfile/provider/DocumentFile;",
            ">;",
            "Landroidx/documentfile/provider/DocumentFile;",
            ")V"
        }
    .end annotation

    .line 124
    invoke-virtual {p2}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 125
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    invoke-direct {p0, p1, v2}, Lcom/mojang/minecraftpe/WorldRecovery;->generateCopyFilesRecursively(Ljava/util/ArrayList;Landroidx/documentfile/provider/DocumentFile;)V

    goto :goto_1

    .line 129
    :cond_0
    iget-wide v3, p0, Lcom/mojang/minecraftpe/WorldRecovery;->mTotalBytesRequired:J

    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->length()J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/mojang/minecraftpe/WorldRecovery;->mTotalBytesRequired:J

    .line 130
    iget v2, p0, Lcom/mojang/minecraftpe/WorldRecovery;->mTotalFilesToCopy:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mojang/minecraftpe/WorldRecovery;->mTotalFilesToCopy:I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$migrateFolderContents$0(Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/mojang/minecraftpe/WorldRecovery;->doMigrateFolderContents(Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;)V

    return-void
.end method

.method private static native nativeComplete()V
.end method

.method private static native nativeError(Ljava/lang/String;JJ)V
.end method

.method private static native nativeUpdate(Ljava/lang/String;IIJJ)V
.end method


# virtual methods
.method public doMigrateFolderContents(Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 65
    iput v3, v1, Lcom/mojang/minecraftpe/WorldRecovery;->mTotalFilesToCopy:I

    const-wide/16 v4, 0x0

    .line 67
    iput-wide v4, v1, Lcom/mojang/minecraftpe/WorldRecovery;->mTotalBytesRequired:J

    move-object/from16 v6, p1

    .line 68
    invoke-direct {v1, v2, v6}, Lcom/mojang/minecraftpe/WorldRecovery;->generateCopyFilesRecursively(Ljava/util/ArrayList;Landroidx/documentfile/provider/DocumentFile;)V

    .line 69
    new-instance v7, Landroid/os/StatFs;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v7

    .line 70
    iget-wide v9, v1, Lcom/mojang/minecraftpe/WorldRecovery;->mTotalBytesRequired:J

    cmp-long v11, v9, v7

    if-ltz v11, :cond_0

    .line 72
    const-string v0, "Insufficient space"

    invoke-static {v0, v9, v10, v7, v8}, Lcom/mojang/minecraftpe/WorldRecovery;->nativeError(Ljava/lang/String;JJ)V

    return-void

    .line 75
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 76
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_temp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 77
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 81
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 82
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/documentfile/provider/DocumentFile;

    .line 83
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 84
    invoke-virtual {v9}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v11

    const-string v12, "\'"

    const-string v13, "BlazeLauncher"

    if-eqz v11, :cond_3

    .line 85
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-nez v11, :cond_2

    .line 87
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v14, "Creating directory \'"

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v9

    if-nez v9, :cond_1

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Could not create directory: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v5, v4, v5}, Lcom/mojang/minecraftpe/WorldRecovery;->nativeError(Ljava/lang/String;JJ)V

    return-void

    .line 93
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "Directory \'"

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' already exists"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 96
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v14, "Copying \'"

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "\' to \'"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Copying: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v3, v3, 0x1

    .line 99
    iget v13, v1, Lcom/mojang/minecraftpe/WorldRecovery;->mTotalFilesToCopy:I

    iget-wide v14, v1, Lcom/mojang/minecraftpe/WorldRecovery;->mTotalBytesRequired:J

    const-wide/16 v17, 0x0

    move-wide v15, v14

    move v14, v3

    invoke-static/range {v12 .. v18}, Lcom/mojang/minecraftpe/WorldRecovery;->nativeUpdate(Ljava/lang/String;IIJJ)V

    .line 101
    :try_start_0
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v10, v1, Lcom/mojang/minecraftpe/WorldRecovery;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v9}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v11, v9}, Lcom/mojang/minecraftpe/utils/FileHelper;->writeToFile(Ljava/io/File;Ljava/io/InputStream;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v5, v4, v5}, Lcom/mojang/minecraftpe/WorldRecovery;->nativeError(Ljava/lang/String;JJ)V

    return-void

    .line 108
    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 109
    invoke-virtual {v8, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 110
    invoke-static {}, Lcom/mojang/minecraftpe/WorldRecovery;->nativeComplete()V

    return-void

    .line 112
    :cond_5
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not replace destination directory: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v5, v4, v5}, Lcom/mojang/minecraftpe/WorldRecovery;->nativeError(Ljava/lang/String;JJ)V

    return-void

    .line 116
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not recreate destination directory after failed replace: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v5, v4, v5}, Lcom/mojang/minecraftpe/WorldRecovery;->nativeError(Ljava/lang/String;JJ)V

    return-void

    .line 120
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not delete empty destination directory: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v5, v4, v5}, Lcom/mojang/minecraftpe/WorldRecovery;->nativeError(Ljava/lang/String;JJ)V

    return-void
.end method

.method public migrateFolderContents(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/mojang/minecraftpe/WorldRecovery;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Could not resolve URI to a DocumentFile tree: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 46
    :cond_0
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 47
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Root file of URI is not a directory: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 49
    :cond_1
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Destination folder does not exist: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 53
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    array-length v1, v1

    if-eqz v1, :cond_3

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Destination folder is not empty: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 58
    :cond_3
    new-instance p2, Ljava/lang/Thread;

    new-instance v1, Lcom/mojang/minecraftpe/WorldRecovery$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p1}, Lcom/mojang/minecraftpe/WorldRecovery$$ExternalSyntheticLambda0;-><init>(Lcom/mojang/minecraftpe/WorldRecovery;Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;)V

    invoke-direct {p2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 59
    const-string p1, ""

    return-object p1
.end method
