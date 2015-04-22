.class public Lcom/parse/ParseInstallation;
.super Lcom/parse/ParseObject;
.source "ParseInstallation.java"


# annotations
.annotation runtime Lcom/parse/ParseClassName;
    value = "_Installation"
.end annotation


# static fields
.field static final FILENAME_CURRENT_INSTALLATION:Ljava/lang/String; = "currentInstallation"

.field private static final INSTALLATION_ID_LOCATION:Ljava/lang/String; = "installationId"

.field private static final KEY_APP_IDENTIFIER:Ljava/lang/String; = "appIdentifier"

.field private static final KEY_APP_NAME:Ljava/lang/String; = "appName"

.field private static final KEY_APP_VERSION:Ljava/lang/String; = "appVersion"

.field private static final KEY_DEVICE_TOKEN:Ljava/lang/String; = "deviceToken"

.field private static final KEY_DEVICE_TOKEN_LAST_MODIFIED:Ljava/lang/String; = "deviceTokenLastModified"

.field private static final KEY_DEVICE_TYPE:Ljava/lang/String; = "deviceType"

.field private static final KEY_INSTALLATION_ID:Ljava/lang/String; = "installationId"

.field private static final KEY_PARSE_VERSION:Ljava/lang/String; = "parseVersion"

.field private static final KEY_PUSH_TYPE:Ljava/lang/String; = "pushType"

.field private static final KEY_TIME_ZONE:Ljava/lang/String; = "timeZone"

.field private static final MUTEX_CURRENT_INSTALLATION:Ljava/lang/Object;

.field private static final PIN_CURRENT_INSTALLATION:Ljava/lang/String; = "_currentInstallation"

.field private static final READ_ONLY_FIELDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "com.parse.ParseInstallation"

.field static currentInstallation:Lcom/parse/ParseInstallation;

.field static installationId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/ParseInstallation;->MUTEX_CURRENT_INSTALLATION:Ljava/lang/Object;

    .line 57
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "deviceType"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "installationId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "deviceToken"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "pushType"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "timeZone"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "appVersion"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "appName"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "parseVersion"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "deviceTokenLastModified"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "appIdentifier"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/parse/ParseInstallation;->READ_ONLY_FIELDS:Ljava/util/List;

    .line 63
    sput-object v3, Lcom/parse/ParseInstallation;->currentInstallation:Lcom/parse/ParseInstallation;

    .line 66
    sput-object v3, Lcom/parse/ParseInstallation;->installationId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/parse/ParseObject;-><init>()V

    .line 233
    return-void
.end method

.method static synthetic access$001(Lcom/parse/ParseInstallation;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseInstallation;
    .param p1, "x1"    # Lbolts/Task;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->fetchAsync(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/ParseInstallation;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseInstallation;

    .prologue
    .line 27
    invoke-static {p0}, Lcom/parse/ParseInstallation;->maybeFlushToDiskAsync(Lcom/parse/ParseInstallation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/ParseInstallation;)V
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseInstallation;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/parse/ParseInstallation;->maybeUpdateInstallationIdOnDisk()V

    return-void
.end method

.method static clearCurrentInstallationFromDisk(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 482
    sget-object v1, Lcom/parse/ParseInstallation;->MUTEX_CURRENT_INSTALLATION:Ljava/lang/Object;

    monitor-enter v1

    .line 483
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/parse/ParseInstallation;->currentInstallation:Lcom/parse/ParseInstallation;

    .line 484
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/ParseInstallation;->installationId:Ljava/lang/String;

    .line 486
    invoke-static {}, Lcom/parse/OfflineStore;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    const-string v0, "_currentInstallation"

    invoke-static {v0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;)Lbolts/Task;

    .line 490
    :cond_0
    const-string v0, "currentInstallation"

    invoke-static {p0, v0}, Lcom/parse/Parse;->deleteDiskObject(Landroid/content/Context;Ljava/lang/String;)Z

    .line 491
    const-string v0, "installationId"

    invoke-static {p0, v0}, Lcom/parse/Parse;->deleteDiskObject(Landroid/content/Context;Ljava/lang/String;)Z

    .line 492
    monitor-exit v1

    .line 493
    return-void

    .line 492
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static clearCurrentInstallationFromMemory()V
    .locals 2

    .prologue
    .line 472
    sget-object v1, Lcom/parse/ParseInstallation;->MUTEX_CURRENT_INSTALLATION:Ljava/lang/Object;

    monitor-enter v1

    .line 473
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/parse/ParseInstallation;->currentInstallation:Lcom/parse/ParseInstallation;

    .line 474
    monitor-exit v1

    .line 475
    return-void

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getCurrentInstallation()Lcom/parse/ParseInstallation;
    .locals 8

    .prologue
    .line 98
    const/4 v3, 0x0

    .line 101
    .local v3, "deserializedInstallationFromDisk":Z
    sget-object v7, Lcom/parse/ParseInstallation;->MUTEX_CURRENT_INSTALLATION:Ljava/lang/Object;

    monitor-enter v7

    .line 102
    :try_start_0
    sget-object v1, Lcom/parse/ParseInstallation;->currentInstallation:Lcom/parse/ParseInstallation;

    .line 103
    .local v1, "current":Lcom/parse/ParseInstallation;
    monitor-exit v7

    .line 105
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 164
    .end local v1    # "current":Lcom/parse/ParseInstallation;
    .local v2, "current":Lcom/parse/ParseInstallation;
    :goto_0
    return-object v2

    .line 103
    .end local v2    # "current":Lcom/parse/ParseInstallation;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 109
    .restart local v1    # "current":Lcom/parse/ParseInstallation;
    :cond_0
    invoke-static {}, Lcom/parse/OfflineStore;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 112
    :try_start_1
    const-class v6, Lcom/parse/ParseInstallation;

    invoke-static {v6}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/Class;)Lcom/parse/ParseQuery;

    move-result-object v6

    const-string v7, "_currentInstallation"

    invoke-virtual {v6, v7}, Lcom/parse/ParseQuery;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parse/ParseQuery;->ignoreACLs()Lcom/parse/ParseQuery;

    move-result-object v4

    .line 115
    .local v4, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/parse/ParseInstallation;>;"
    invoke-virtual {v4}, Lcom/parse/ParseQuery;->findInBackground()Lbolts/Task;

    move-result-object v6

    new-instance v7, Lcom/parse/ParseInstallation$4;

    invoke-direct {v7}, Lcom/parse/ParseInstallation$4;-><init>()V

    invoke-virtual {v6, v7}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v6

    new-instance v7, Lcom/parse/ParseInstallation$3;

    invoke-direct {v7}, Lcom/parse/ParseInstallation$3;-><init>()V

    invoke-virtual {v6, v7}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v5

    .line 140
    .local v5, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseInstallation;>;"
    invoke-static {v5}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/parse/ParseInstallation;

    move-object v1, v0
    :try_end_1
    .catch Lcom/parse/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 148
    .end local v4    # "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/parse/ParseInstallation;>;"
    .end local v5    # "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseInstallation;>;"
    :goto_1
    if-nez v1, :cond_3

    .line 149
    const-class v6, Lcom/parse/ParseInstallation;

    invoke-static {v6}, Lcom/parse/ParseObject;->create(Ljava/lang/Class;)Lcom/parse/ParseObject;

    move-result-object v1

    .end local v1    # "current":Lcom/parse/ParseInstallation;
    check-cast v1, Lcom/parse/ParseInstallation;

    .line 150
    .restart local v1    # "current":Lcom/parse/ParseInstallation;
    invoke-direct {v1}, Lcom/parse/ParseInstallation;->updateDeviceInfo()V

    .line 156
    :goto_2
    if-eqz v3, :cond_1

    .line 157
    invoke-direct {v1}, Lcom/parse/ParseInstallation;->maybeUpdateInstallationIdOnDisk()V

    .line 160
    :cond_1
    sget-object v7, Lcom/parse/ParseInstallation;->MUTEX_CURRENT_INSTALLATION:Ljava/lang/Object;

    monitor-enter v7

    .line 161
    :try_start_2
    sput-object v1, Lcom/parse/ParseInstallation;->currentInstallation:Lcom/parse/ParseInstallation;

    .line 162
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v2, v1

    .line 164
    .end local v1    # "current":Lcom/parse/ParseInstallation;
    .restart local v2    # "current":Lcom/parse/ParseInstallation;
    goto :goto_0

    .line 145
    .end local v2    # "current":Lcom/parse/ParseInstallation;
    .restart local v1    # "current":Lcom/parse/ParseInstallation;
    :cond_2
    sget-object v6, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    const-string v7, "currentInstallation"

    invoke-static {v6, v7}, Lcom/parse/ParseInstallation;->getFromDisk(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v1

    .end local v1    # "current":Lcom/parse/ParseInstallation;
    check-cast v1, Lcom/parse/ParseInstallation;

    .restart local v1    # "current":Lcom/parse/ParseInstallation;
    goto :goto_1

    .line 152
    :cond_3
    const/4 v3, 0x1

    .line 153
    const-string v6, "com.parse.ParseInstallation"

    const-string v7, "Successfully deserialized Installation object"

    invoke-static {v6, v7}, Lcom/parse/Parse;->logV(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 162
    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    .line 141
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method static getOrCreateCurrentInstallationId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 177
    sget-object v3, Lcom/parse/ParseInstallation;->MUTEX_CURRENT_INSTALLATION:Ljava/lang/Object;

    monitor-enter v3

    .line 178
    :try_start_0
    sget-object v2, Lcom/parse/ParseInstallation;->installationId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 180
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v2

    const-string v4, "installationId"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 181
    .local v1, "installationIdFile":Ljava/io/File;
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Lcom/parse/ParseFileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    sput-object v2, Lcom/parse/ParseInstallation;->installationId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    :cond_0
    :goto_0
    :try_start_2
    sget-object v2, Lcom/parse/ParseInstallation;->installationId:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 190
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/parse/ParseInstallation;->installationId:Ljava/lang/String;

    .line 191
    sget-object v2, Lcom/parse/ParseInstallation;->installationId:Ljava/lang/String;

    invoke-static {v2}, Lcom/parse/ParseInstallation;->setCurrentInstallationId(Ljava/lang/String;)V

    .line 193
    :cond_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 195
    sget-object v2, Lcom/parse/ParseInstallation;->installationId:Ljava/lang/String;

    return-object v2

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v2, "com.parse.ParseInstallation"

    const-string v4, "Couldn\'t find existing installationId file. Creating one instead."

    invoke-static {v2, v4}, Lcom/parse/Parse;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 193
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 184
    :catch_1
    move-exception v0

    .line 185
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    const-string v2, "com.parse.ParseInstallation"

    const-string v4, "Unexpected exception reading installation id from disk"

    invoke-static {v2, v4, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static getQuery()Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    const-class v0, Lcom/parse/ParseInstallation;

    invoke-static {v0}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/Class;)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method static hasCurrentInstallationAsync()Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    sget-object v2, Lcom/parse/ParseInstallation;->MUTEX_CURRENT_INSTALLATION:Ljava/lang/Object;

    monitor-enter v2

    .line 71
    :try_start_0
    sget-object v1, Lcom/parse/ParseInstallation;->currentInstallation:Lcom/parse/ParseInstallation;

    if-eqz v1, :cond_0

    .line 72
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    monitor-exit v2

    .line 88
    :goto_0
    return-object v1

    .line 74
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-static {}, Lcom/parse/OfflineStore;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    const-class v1, Lcom/parse/ParseInstallation;

    invoke-static {v1}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/Class;)Lcom/parse/ParseQuery;

    move-result-object v1

    const-string v2, "_currentInstallation"

    invoke-virtual {v1, v2}, Lcom/parse/ParseQuery;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseQuery;->ignoreACLs()Lcom/parse/ParseQuery;

    move-result-object v0

    .line 81
    .local v0, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/parse/ParseInstallation;>;"
    invoke-virtual {v0}, Lcom/parse/ParseQuery;->countInBackground()Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseInstallation$1;

    invoke-direct {v2}, Lcom/parse/ParseInstallation$1;-><init>()V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    goto :goto_0

    .line 74
    .end local v0    # "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/parse/ParseInstallation;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 88
    :cond_1
    new-instance v1, Lcom/parse/ParseInstallation$2;

    invoke-direct {v1}, Lcom/parse/ParseInstallation$2;-><init>()V

    sget-object v2, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-static {v1, v2}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v1

    goto :goto_0
.end method

.method private isCurrentInstallation()Z
    .locals 2

    .prologue
    .line 329
    sget-object v1, Lcom/parse/ParseInstallation;->MUTEX_CURRENT_INSTALLATION:Ljava/lang/Object;

    monitor-enter v1

    .line 330
    :try_start_0
    sget-object v0, Lcom/parse/ParseInstallation;->currentInstallation:Lcom/parse/ParseInstallation;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static maybeFlushToDiskAsync(Lcom/parse/ParseInstallation;)Lbolts/Task;
    .locals 3
    .param p0, "installation"    # Lcom/parse/ParseInstallation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseInstallation;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 438
    invoke-direct {p0}, Lcom/parse/ParseInstallation;->isCurrentInstallation()Z

    move-result v1

    if-nez v1, :cond_0

    .line 439
    invoke-static {v2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 468
    :goto_0
    return-object v0

    .line 443
    :cond_0
    invoke-static {}, Lcom/parse/OfflineStore;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 444
    const-string v1, "_currentInstallation"

    invoke-static {v1}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseInstallation$10;

    invoke-direct {v2, p0}, Lcom/parse/ParseInstallation$10;-><init>(Lcom/parse/ParseInstallation;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    .line 460
    .local v0, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :goto_1
    new-instance v1, Lcom/parse/ParseInstallation$12;

    invoke-direct {v1, p0}, Lcom/parse/ParseInstallation$12;-><init>(Lcom/parse/ParseInstallation;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    .line 468
    goto :goto_0

    .line 451
    .end local v0    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :cond_1
    invoke-static {v2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseInstallation$11;

    invoke-direct {v2, p0}, Lcom/parse/ParseInstallation$11;-><init>(Lcom/parse/ParseInstallation;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    .restart local v0    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    goto :goto_1
.end method

.method private maybeUpdateInstallationIdOnDisk()V
    .locals 6

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/parse/ParseInstallation;->getInstallationId()Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "installationIdInObject":Ljava/lang/String;
    invoke-static {}, Lcom/parse/ParseInstallation;->getOrCreateCurrentInstallationId()Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, "installationIdOnDisk":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 339
    .local v1, "installationIdIsEmpty":Z
    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 340
    const-string v3, "com.parse.ParseInstallation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Will update installation id on disk: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " because it does not match installation id in ParseInstallation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parse/Parse;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-static {v0}, Lcom/parse/ParseInstallation;->setCurrentInstallationId(Ljava/lang/String;)V

    .line 344
    :cond_1
    return-void

    .line 337
    .end local v1    # "installationIdIsEmpty":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static setCurrentInstallationId(Ljava/lang/String;)V
    .locals 5
    .param p0, "newInstallationId"    # Ljava/lang/String;

    .prologue
    .line 199
    sget-object v3, Lcom/parse/ParseInstallation;->MUTEX_CURRENT_INSTALLATION:Ljava/lang/Object;

    monitor-enter v3

    .line 200
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v2

    const-string v4, "installationId"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    .local v1, "installationIdFile":Ljava/io/File;
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parse/ParseFileUtils;->writeByteArrayToFile(Ljava/io/File;[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    :goto_0
    :try_start_2
    sput-object p0, Lcom/parse/ParseInstallation;->installationId:Ljava/lang/String;

    .line 209
    monitor-exit v3

    .line 210
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "com.parse.ParseInstallation"

    const-string v4, "Unexpected exception writing installation id to disk"

    invoke-static {v2, v4, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 209
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "installationIdFile":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private updateDeviceInfo()V
    .locals 3

    .prologue
    .line 389
    const-string v1, "installationId"

    invoke-virtual {p0, v1}, Lcom/parse/ParseInstallation;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 390
    const-string v1, "installationId"

    invoke-static {}, Lcom/parse/ParseInstallation;->getOrCreateCurrentInstallationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 392
    :cond_0
    const-string v0, "android"

    .line 393
    .local v0, "deviceType":Ljava/lang/String;
    const-string v1, "deviceType"

    invoke-virtual {p0, v1}, Lcom/parse/ParseInstallation;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 394
    const-string v1, "deviceType"

    invoke-virtual {p0, v1, v0}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 396
    :cond_1
    return-void
.end method

.method private updateTimezone()V
    .locals 2

    .prologue
    .line 350
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "zone":Ljava/lang/String;
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gtz v1, :cond_0

    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "timeZone"

    invoke-virtual {p0, v1}, Lcom/parse/ParseInstallation;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 352
    const-string v1, "timeZone"

    invoke-virtual {p0, v1, v0}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 354
    :cond_1
    return-void
.end method

.method private updateVersionInfo()V
    .locals 9

    .prologue
    .line 357
    iget-object v7, p0, Lcom/parse/ParseInstallation;->mutex:Ljava/lang/Object;

    monitor-enter v7

    .line 359
    :try_start_0
    sget-object v6, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 360
    .local v3, "packageName":Ljava/lang/String;
    sget-object v6, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 361
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 362
    .local v4, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 363
    .local v1, "appVersion":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "appName":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v6, "appIdentifier"

    invoke-virtual {p0, v6}, Lcom/parse/ParseInstallation;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 366
    const-string v6, "appIdentifier"

    invoke-virtual {p0, v6, v3}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 368
    :cond_0
    if-eqz v0, :cond_1

    const-string v6, "appName"

    invoke-virtual {p0, v6}, Lcom/parse/ParseInstallation;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 369
    const-string v6, "appName"

    invoke-virtual {p0, v6, v0}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 371
    :cond_1
    if-eqz v1, :cond_2

    const-string v6, "appVersion"

    invoke-virtual {p0, v6}, Lcom/parse/ParseInstallation;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 372
    const-string v6, "appVersion"

    invoke-virtual {p0, v6, v1}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    .end local v0    # "appName":Ljava/lang/String;
    .end local v1    # "appVersion":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    :goto_0
    :try_start_1
    const-string v6, "1.9.1"

    const-string v8, "parseVersion"

    invoke-virtual {p0, v8}, Lcom/parse/ParseInstallation;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 379
    const-string v6, "parseVersion"

    const-string v8, "1.9.1"

    invoke-virtual {p0, v6, v8}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 381
    :cond_3
    monitor-exit v7

    .line 382
    return-void

    .line 374
    :catch_0
    move-exception v2

    .line 375
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "com.parse.ParseInstallation"

    const-string v8, "Cannot load package info; will not be saved to installation"

    invoke-static {v6, v8}, Lcom/parse/Parse;->logW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 381
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method


# virtual methods
.method fetchAsync(Lbolts/Task;)Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 266
    .local p1, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/parse/ParseInstallation;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 271
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseInstallation;->getObjectId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 272
    invoke-virtual {p0, p1}, Lcom/parse/ParseInstallation;->saveAsync(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    .line 276
    .local v0, "result":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :goto_0
    new-instance v1, Lcom/parse/ParseInstallation$5;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseInstallation$5;-><init>(Lcom/parse/ParseInstallation;Lbolts/Task;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 274
    .end local v0    # "result":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .restart local v0    # "result":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    goto :goto_0

    .line 282
    .end local v0    # "result":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getDeviceToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    const-string v0, "deviceToken"

    invoke-super {p0, v0}, Lcom/parse/ParseObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstallationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    const-string v0, "installationId"

    invoke-virtual {p0, v0}, Lcom/parse/ParseInstallation;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPushType()Lcom/parse/PushType;
    .locals 1

    .prologue
    .line 399
    const-string v0, "pushType"

    invoke-super {p0, v0}, Lcom/parse/ParseObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/PushType;->fromString(Ljava/lang/String;)Lcom/parse/PushType;

    move-result-object v0

    return-object v0
.end method

.method handleFetchResultAsync(Lorg/json/JSONObject;)Lbolts/Task;
    .locals 2
    .param p1, "result"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->handleFetchResultAsync(Lorg/json/JSONObject;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseInstallation$9;

    invoke-direct {v1, p0}, Lcom/parse/ParseInstallation$9;-><init>(Lcom/parse/ParseInstallation;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method handleSaveResultAsync(Lorg/json/JSONObject;Lcom/parse/ParseOperationSet;)Lbolts/Task;
    .locals 3
    .param p1, "result"    # Lorg/json/JSONObject;
    .param p2, "operationsBeforeSave"    # Lcom/parse/ParseOperationSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/parse/ParseOperationSet;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    invoke-super {p0, p1, p2}, Lcom/parse/ParseObject;->handleSaveResultAsync(Lorg/json/JSONObject;Lcom/parse/ParseOperationSet;)Lbolts/Task;

    move-result-object v0

    .line 292
    .local v0, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/parse/ManifestInfo;->getPushUsesBroadcastReceivers()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    new-instance v1, Lcom/parse/ParseInstallation$7;

    invoke-direct {v1, p0}, Lcom/parse/ParseInstallation$7;-><init>(Lcom/parse/ParseInstallation;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseInstallation$6;

    invoke-direct {v2, p0}, Lcom/parse/ParseInstallation$6;-><init>(Lcom/parse/ParseInstallation;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    .line 310
    :cond_0
    new-instance v1, Lcom/parse/ParseInstallation$8;

    invoke-direct {v1, p0}, Lcom/parse/ParseInstallation$8;-><init>(Lcom/parse/ParseInstallation;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method isDeviceTokenStale()Z
    .locals 4

    .prologue
    .line 417
    const-string v0, "deviceTokenLastModified"

    invoke-super {p0, v0}, Lcom/parse/ParseObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Lcom/parse/ManifestInfo;->getLastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isKeyMutable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 251
    sget-object v0, Lcom/parse/ParseInstallation;->READ_ONLY_FIELDS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method needsDefaultACL()Z
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method removeDeviceToken()V
    .locals 1

    .prologue
    .line 433
    const-string v0, "deviceToken"

    invoke-virtual {p0, v0}, Lcom/parse/ParseInstallation;->performRemove(Ljava/lang/String;)V

    .line 434
    const-string v0, "deviceTokenLastModified"

    invoke-virtual {p0, v0}, Lcom/parse/ParseInstallation;->performRemove(Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method removePushType()V
    .locals 1

    .prologue
    .line 409
    const-string v0, "pushType"

    invoke-virtual {p0, v0}, Lcom/parse/ParseInstallation;->performRemove(Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method setDeviceToken(Ljava/lang/String;)V
    .locals 4
    .param p1, "deviceToken"    # Ljava/lang/String;

    .prologue
    .line 426
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 427
    const-string v0, "deviceToken"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 428
    const-string v0, "deviceTokenLastModified"

    invoke-static {}, Lcom/parse/ManifestInfo;->getLastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 430
    :cond_0
    return-void
.end method

.method setDeviceTokenLastModified(J)V
    .locals 3
    .param p1, "lastModified"    # J

    .prologue
    .line 422
    const-string v0, "deviceTokenLastModified"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 423
    return-void
.end method

.method setPushType(Lcom/parse/PushType;)V
    .locals 2
    .param p1, "pushType"    # Lcom/parse/PushType;

    .prologue
    .line 403
    if-eqz p1, :cond_0

    .line 404
    const-string v0, "pushType"

    invoke-virtual {p1}, Lcom/parse/PushType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 406
    :cond_0
    return-void
.end method

.method updateBeforeSave()V
    .locals 1

    .prologue
    .line 256
    invoke-super {p0}, Lcom/parse/ParseObject;->updateBeforeSave()V

    .line 257
    invoke-direct {p0}, Lcom/parse/ParseInstallation;->isCurrentInstallation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-direct {p0}, Lcom/parse/ParseInstallation;->updateTimezone()V

    .line 259
    invoke-direct {p0}, Lcom/parse/ParseInstallation;->updateVersionInfo()V

    .line 260
    invoke-direct {p0}, Lcom/parse/ParseInstallation;->updateDeviceInfo()V

    .line 262
    :cond_0
    return-void
.end method
