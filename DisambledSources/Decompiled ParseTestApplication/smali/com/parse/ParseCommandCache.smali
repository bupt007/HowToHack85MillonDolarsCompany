.class Lcom/parse/ParseCommandCache;
.super Lcom/parse/ParseEventuallyQueue;
.source "ParseCommandCache.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.parse.ParseCommandCache"

.field private static filenameCounter:I

.field private static final lock:Ljava/lang/Object;


# instance fields
.field private cachePath:Ljava/io/File;

.field listener:Lcom/parse/ConnectivityNotifier$ConnectivityListener;

.field private log:Ljava/util/logging/Logger;

.field private maxCacheSizeBytes:I

.field notifier:Lcom/parse/ConnectivityNotifier;

.field private pendingTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/io/File;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Object;",
            ">.TaskCompletionSource;>;"
        }
    .end annotation
.end field

.field private running:Z

.field private final runningLock:Ljava/lang/Object;

.field private shouldStop:Z

.field private timeoutMaxRetries:I

.field private timeoutRetryWaitSeconds:D

.field private unprocessedCommandsExist:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput v0, Lcom/parse/ParseCommandCache;->filenameCounter:I

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-direct {p0}, Lcom/parse/ParseEventuallyQueue;-><init>()V

    .line 63
    const/4 v0, 0x5

    iput v0, p0, Lcom/parse/ParseCommandCache;->timeoutMaxRetries:I

    .line 64
    const-wide v0, 0x4082c00000000000L    # 600.0

    iput-wide v0, p0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    .line 66
    const/high16 v0, 0xa00000

    iput v0, p0, Lcom/parse/ParseCommandCache;->maxCacheSizeBytes:I

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseCommandCache;->pendingTasks:Ljava/util/HashMap;

    .line 88
    new-instance v0, Lcom/parse/ParseCommandCache$1;

    invoke-direct {v0, p0}, Lcom/parse/ParseCommandCache$1;-><init>(Lcom/parse/ParseCommandCache;)V

    iput-object v0, p0, Lcom/parse/ParseCommandCache;->listener:Lcom/parse/ConnectivityNotifier$ConnectivityListener;

    .line 102
    invoke-virtual {p0, v2}, Lcom/parse/ParseCommandCache;->setConnected(Z)V

    .line 103
    iput-boolean v2, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    .line 104
    iput-boolean v2, p0, Lcom/parse/ParseCommandCache;->running:Z

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    .line 108
    const-string v0, "com.parse.ParseCommandCache"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    .line 110
    invoke-static {}, Lcom/parse/ParseCommandCache;->getCacheDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    .line 112
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0}, Lcom/parse/Parse;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-static {p1}, Lcom/parse/ConnectivityNotifier;->isConnected(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseCommandCache;->setConnected(Z)V

    .line 118
    invoke-static {p1}, Lcom/parse/ConnectivityNotifier;->getNotifier(Landroid/content/Context;)Lcom/parse/ConnectivityNotifier;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseCommandCache;->notifier:Lcom/parse/ConnectivityNotifier;

    .line 119
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->notifier:Lcom/parse/ConnectivityNotifier;

    iget-object v1, p0, Lcom/parse/ParseCommandCache;->listener:Lcom/parse/ConnectivityNotifier$ConnectivityListener;

    invoke-virtual {v0, v1}, Lcom/parse/ConnectivityNotifier;->addListener(Lcom/parse/ConnectivityNotifier$ConnectivityListener;)V

    .line 121
    invoke-virtual {p0}, Lcom/parse/ParseCommandCache;->resume()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/parse/ParseCommandCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseCommandCache;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/parse/ParseCommandCache;->runLoop()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method private enqueueEventuallyAsync(Lcom/parse/ParseNetworkCommand;ZLcom/parse/ParseObject;)Lbolts/Task;
    .locals 26
    .param p1, "command"    # Lcom/parse/ParseNetworkCommand;
    .param p2, "preferOldest"    # Z
    .param p3, "object"    # Lcom/parse/ParseObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseNetworkCommand;",
            "Z",
            "Lcom/parse/ParseObject;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    const-string v22, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static/range {v22 .. v22}, Lcom/parse/Parse;->requirePermission(Ljava/lang/String;)V

    .line 266
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v20

    .line 271
    .local v20, "tcs":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<Ljava/lang/Object;>.TaskCompletionSource;"
    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v22

    if-nez v22, :cond_0

    .line 272
    invoke-virtual/range {p3 .. p3}, Lcom/parse/ParseObject;->getOrCreateLocalId()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/parse/ParseNetworkCommand;->setLocalId(Ljava/lang/String;)V

    .line 274
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseNetworkCommand;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v13

    .line 275
    .local v13, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "UTF-8"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 286
    .local v12, "json":[B
    array-length v0, v12

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parse/ParseCommandCache;->maxCacheSizeBytes:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_3

    .line 287
    const/16 v22, 0x5

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_1

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v22, v0

    const-string v23, "Unable to save command for later because it\'s too big."

    invoke-virtual/range {v22 .. v23}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 290
    :cond_1
    const/16 v22, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/parse/ParseCommandCache;->notifyTestHelper(I)V

    .line 291
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v22

    .line 366
    .end local v12    # "json":[B
    .end local v13    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v22

    .line 276
    :catch_0
    move-exception v5

    .line 277
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    const/16 v22, 0x5

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_2

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v22, v0

    sget-object v23, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v24, "UTF-8 isn\'t supported.  This shouldn\'t happen."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 280
    :cond_2
    const/16 v22, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/parse/ParseCommandCache;->notifyTestHelper(I)V

    .line 281
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v22

    goto :goto_0

    .line 294
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v12    # "json":[B
    .restart local v13    # "jsonObject":Lorg/json/JSONObject;
    :cond_3
    sget-object v23, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v23

    .line 297
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    .line 298
    .local v8, "fileNames":[Ljava/lang/String;
    if-eqz v8, :cond_8

    .line 299
    invoke-static {v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 300
    const/16 v19, 0x0

    .line 301
    .local v19, "size":I
    move-object v4, v8

    .local v4, "arr$":[Ljava/lang/String;
    array-length v14, v4

    .local v14, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v14, :cond_4

    aget-object v7, v4, v9

    .line 302
    .local v7, "fileName":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 305
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v22, v0

    add-int v19, v19, v22

    .line 301
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 307
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "fileName":Ljava/lang/String;
    :cond_4
    array-length v0, v12

    move/from16 v22, v0

    add-int v19, v19, v22

    .line 308
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parse/ParseCommandCache;->maxCacheSizeBytes:I

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v22

    if-le v0, v1, :cond_8

    .line 309
    if-eqz p2, :cond_6

    .line 310
    const/16 v22, 0x5

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v24

    move/from16 v0, v22

    move/from16 v1, v24

    if-lt v0, v1, :cond_5

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v22, v0

    const-string v24, "Unable to save command for later because storage is full."

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 313
    :cond_5
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v22

    .line 363
    :try_start_2
    sget-object v24, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v23

    goto/16 :goto_0

    .line 365
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v8    # "fileNames":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v14    # "len$":I
    .end local v19    # "size":I
    :catchall_0
    move-exception v22

    monitor-exit v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v22

    .line 315
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v8    # "fileNames":[Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v14    # "len$":I
    .restart local v19    # "size":I
    :cond_6
    const/16 v22, 0x5

    :try_start_3
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v24

    move/from16 v0, v22

    move/from16 v1, v24

    if-lt v0, v1, :cond_7

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v22, v0

    const-string v24, "Deleting old commands to make room in command cache."

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 318
    :cond_7
    const/4 v10, 0x0

    .local v10, "indexToDelete":I
    move v11, v10

    .line 319
    .end local v10    # "indexToDelete":I
    .local v11, "indexToDelete":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parse/ParseCommandCache;->maxCacheSizeBytes:I

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v22

    if-le v0, v1, :cond_8

    array-length v0, v8

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v11, v0, :cond_8

    .line 320
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    move-object/from16 v22, v0

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "indexToDelete":I
    .restart local v10    # "indexToDelete":I
    aget-object v24, v8, v11

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 321
    .restart local v6    # "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v22, v0

    sub-int v19, v19, v22

    .line 322
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V

    move v11, v10

    .line 323
    .end local v10    # "indexToDelete":I
    .restart local v11    # "indexToDelete":I
    goto :goto_2

    .line 329
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v6    # "file":Ljava/io/File;
    .end local v9    # "i$":I
    .end local v11    # "indexToDelete":I
    .end local v14    # "len$":I
    .end local v19    # "size":I
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v17

    .line 330
    .local v17, "prefix1":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v24, 0x10

    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_9

    .line 331
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v22

    rsub-int/lit8 v22, v22, 0x10

    move/from16 v0, v22

    new-array v0, v0, [C

    move-object/from16 v21, v0

    .line 332
    .local v21, "zeroes":[C
    const/16 v22, 0x30

    invoke-static/range {v21 .. v22}, Ljava/util/Arrays;->fill([CC)V

    .line 333
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v24, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 338
    .end local v21    # "zeroes":[C
    :cond_9
    sget v22, Lcom/parse/ParseCommandCache;->filenameCounter:I

    add-int/lit8 v24, v22, 0x1

    sput v24, Lcom/parse/ParseCommandCache;->filenameCounter:I

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    .line 339
    .local v18, "prefix2":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v24, 0x8

    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_a

    .line 340
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v22

    rsub-int/lit8 v22, v22, 0x8

    move/from16 v0, v22

    new-array v0, v0, [C

    move-object/from16 v21, v0

    .line 341
    .restart local v21    # "zeroes":[C
    const/16 v22, 0x30

    invoke-static/range {v21 .. v22}, Ljava/util/Arrays;->fill([CC)V

    .line 342
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v24, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 345
    .end local v21    # "zeroes":[C
    :cond_a
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "CachedCommand_"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "_"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "_"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 348
    .local v16, "prefix":Ljava/lang/String;
    const-string v22, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v15

    .line 351
    .local v15, "path":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->pendingTasks:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseNetworkCommand;->retainLocalIds()V

    .line 353
    invoke-static {v15, v12}, Lcom/parse/ParseFileUtils;->writeByteArrayToFile(Ljava/io/File;[B)V

    .line 355
    const/16 v22, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/parse/ParseCommandCache;->notifyTestHelper(I)V

    .line 357
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/parse/ParseCommandCache;->unprocessedCommandsExist:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 363
    :try_start_4
    sget-object v22, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->notifyAll()V

    .line 365
    .end local v8    # "fileNames":[Ljava/lang/String;
    .end local v15    # "path":Ljava/io/File;
    .end local v16    # "prefix":Ljava/lang/String;
    .end local v17    # "prefix1":Ljava/lang/String;
    .end local v18    # "prefix2":Ljava/lang/String;
    :goto_3
    monitor-exit v23
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 366
    invoke-virtual/range {v20 .. v20}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v22

    goto/16 :goto_0

    .line 358
    :catch_1
    move-exception v5

    .line 359
    .local v5, "e":Ljava/io/IOException;
    const/16 v22, 0x5

    :try_start_5
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v24

    move/from16 v0, v22

    move/from16 v1, v24

    if-lt v0, v1, :cond_b

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v22, v0

    sget-object v24, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v25, "Unable to save command for later."

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 363
    :cond_b
    :try_start_6
    sget-object v22, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->notifyAll()V

    goto :goto_3

    .end local v5    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v22

    sget-object v24, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notifyAll()V

    throw v22
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method private static getCacheDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 46
    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v1

    .line 47
    .local v1, "parseDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v2, "CommandCache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    .local v0, "cacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 52
    return-object v0
.end method

.method public static getPendingCount()I
    .locals 3

    .prologue
    .line 56
    sget-object v2, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 57
    :try_start_0
    invoke-static {}, Lcom/parse/ParseCommandCache;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "files":[Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    array-length v1, v0

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private maybeRunAllCommandsNow(I)V
    .locals 28
    .param p1, "retriesRemaining"    # I

    .prologue
    .line 443
    sget-object v23, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v23

    .line 444
    const/16 v22, 0x0

    :try_start_0
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/parse/ParseCommandCache;->unprocessedCommandsExist:Z

    .line 446
    invoke-virtual/range {p0 .. p0}, Lcom/parse/ParseCommandCache;->isConnected()Z

    move-result v22

    if-nez v22, :cond_0

    .line 448
    monitor-exit v23

    .line 600
    :goto_0
    return-void

    .line 451
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v13

    .line 452
    .local v13, "fileNames":[Ljava/lang/String;
    if-eqz v13, :cond_1

    array-length v0, v13

    move/from16 v22, v0

    if-nez v22, :cond_2

    .line 453
    :cond_1
    monitor-exit v23

    goto :goto_0

    .line 599
    .end local v13    # "fileNames":[Ljava/lang/String;
    :catchall_0
    move-exception v22

    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v22

    .line 455
    .restart local v13    # "fileNames":[Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {v13}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 456
    move-object v4, v13

    .local v4, "arr$":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_1
    move/from16 v0, v17

    if-ge v14, v0, :cond_12

    aget-object v12, v4, v14

    .line 457
    .local v12, "fileName":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v11, v0, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    .local v11, "file":Ljava/io/File;
    :try_start_2
    invoke-static {v11}, Lcom/parse/ParseFileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v7

    .line 463
    .local v7, "data":[B
    new-instance v16, Lorg/json/JSONObject;

    new-instance v22, Ljava/lang/String;

    const-string v24, "UTF-8"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v7, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 486
    .local v16, "json":Lorg/json/JSONObject;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->pendingTasks:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->pendingTasks:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lbolts/Task$TaskCompletionSource;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v19, v22

    .line 490
    .local v19, "tcs":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<Ljava/lang/Object;>.TaskCompletionSource;"
    :goto_2
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/parse/ParseCommandCache;->commandFromJSON(Lorg/json/JSONObject;)Lcom/parse/ParseNetworkCommand;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v5

    .line 500
    .local v5, "command":Lcom/parse/ParseNetworkCommand;, "Lcom/parse/ParseNetworkCommand<Lorg/json/JSONObject;Ljava/lang/Object;>;"
    :try_start_5
    invoke-virtual {v5}, Lcom/parse/ParseNetworkCommand;->getLocalId()Ljava/lang/String;

    move-result-object v18

    .line 501
    .local v18, "localId":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/parse/ParseNetworkCommand;->executeAsync()Lbolts/Task;

    move-result-object v22

    new-instance v24, Lcom/parse/ParseCommandCache$4;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/parse/ParseCommandCache$4;-><init>(Lcom/parse/ParseCommandCache;Lbolts/Task$TaskCompletionSource;Ljava/lang/String;Lcom/parse/ParseNetworkCommand;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v6

    .line 543
    .local v6, "commandTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/parse/ParseCommandCache;->waitForTaskWithoutLock(Lbolts/Task;)Ljava/lang/Object;

    .line 544
    if-eqz v19, :cond_3

    .line 545
    invoke-virtual/range {v19 .. v19}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/parse/ParseCommandCache;->waitForTaskWithoutLock(Lbolts/Task;)Ljava/lang/Object;

    .line 549
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V

    .line 550
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/parse/ParseCommandCache;->notifyTestHelper(I)V
    :try_end_5
    .catch Lcom/parse/ParseException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 456
    .end local v5    # "command":Lcom/parse/ParseNetworkCommand;, "Lcom/parse/ParseNetworkCommand<Lorg/json/JSONObject;Ljava/lang/Object;>;"
    .end local v6    # "commandTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Object;>;"
    .end local v7    # "data":[B
    .end local v16    # "json":Lorg/json/JSONObject;
    .end local v18    # "localId":Ljava/lang/String;
    .end local v19    # "tcs":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<Ljava/lang/Object;>.TaskCompletionSource;"
    :cond_4
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 464
    :catch_0
    move-exception v10

    .line 466
    .local v10, "e":Ljava/io/FileNotFoundException;
    const/16 v22, 0x6

    :try_start_6
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v24

    move/from16 v0, v22

    move/from16 v1, v24

    if-lt v0, v1, :cond_4

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v22, v0

    sget-object v24, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v25, "File disappeared from cache while being read."

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 470
    .end local v10    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v10

    .line 471
    .local v10, "e":Ljava/io/IOException;
    const/16 v22, 0x6

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v24

    move/from16 v0, v22

    move/from16 v1, v24

    if-lt v0, v1, :cond_5

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v22, v0

    sget-object v24, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v25, "Unable to read contents of file in cache."

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 474
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V

    goto :goto_3

    .line 476
    .end local v10    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v10

    .line 477
    .local v10, "e":Lorg/json/JSONException;
    const/16 v22, 0x6

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v24

    move/from16 v0, v22

    move/from16 v1, v24

    if-lt v0, v1, :cond_6

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v22, v0

    sget-object v24, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v25, "Error parsing JSON found in cache."

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 480
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V

    goto :goto_3

    .line 486
    .end local v10    # "e":Lorg/json/JSONException;
    .restart local v7    # "data":[B
    .restart local v16    # "json":Lorg/json/JSONObject;
    :cond_7
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 491
    .restart local v19    # "tcs":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<Ljava/lang/Object;>.TaskCompletionSource;"
    :catch_3
    move-exception v10

    .line 492
    .restart local v10    # "e":Lorg/json/JSONException;
    const/16 v22, 0x6

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v24

    move/from16 v0, v22

    move/from16 v1, v24

    if-lt v0, v1, :cond_8

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v22, v0

    sget-object v24, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v25, "Unable to create ParseCommand from JSON."

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 495
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V

    goto/16 :goto_3

    .line 551
    .end local v10    # "e":Lorg/json/JSONException;
    .restart local v5    # "command":Lcom/parse/ParseNetworkCommand;, "Lcom/parse/ParseNetworkCommand<Lorg/json/JSONObject;Ljava/lang/Object;>;"
    :catch_4
    move-exception v10

    .line 552
    .local v10, "e":Lcom/parse/ParseException;
    invoke-virtual {v10}, Lcom/parse/ParseException;->getCode()I

    move-result v22

    const/16 v24, 0x64

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_10

    .line 553
    if-lez p1, :cond_f

    .line 556
    const/16 v22, 0x4

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v24

    move/from16 v0, v22

    move/from16 v1, v24

    if-lt v0, v1, :cond_9

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v22, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Network timeout in command cache. Waiting for "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    move-wide/from16 v26, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " seconds and then retrying "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " times."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 560
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 561
    .local v8, "currentTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    move-wide/from16 v24, v0

    const-wide v26, 0x408f400000000000L    # 1000.0

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v20, v8, v24

    .line 562
    .local v20, "waitUntil":J
    :cond_a
    :goto_4
    cmp-long v22, v8, v20

    if-gez v22, :cond_e

    .line 565
    invoke-virtual/range {p0 .. p0}, Lcom/parse/ParseCommandCache;->isConnected()Z

    move-result v22

    if-eqz v22, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    move/from16 v22, v0

    if-eqz v22, :cond_d

    .line 566
    :cond_b
    const/16 v22, 0x4

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v24

    move/from16 v0, v22

    move/from16 v1, v24

    if-lt v0, v1, :cond_c

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v22, v0

    const-string v24, "Aborting wait because runEventually thread should stop."

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 569
    :cond_c
    monitor-exit v23
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 572
    :cond_d
    :try_start_7
    sget-object v22, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    sub-long v24, v20, v8

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 576
    :goto_5
    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 577
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    move-wide/from16 v24, v0

    const-wide v26, 0x408f400000000000L    # 1000.0

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-long v0, v0

    move-wide/from16 v24, v0

    sub-long v24, v20, v24

    cmp-long v22, v8, v24

    if-gez v22, :cond_a

    .line 579
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    move-wide/from16 v24, v0

    const-wide v26, 0x408f400000000000L    # 1000.0

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-long v0, v0

    move-wide/from16 v24, v0

    sub-long v8, v20, v24

    goto :goto_4

    .line 573
    :catch_5
    move-exception v15

    .line 574
    .local v15, "ie":Ljava/lang/InterruptedException;
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/parse/ParseCommandCache;->shouldStop:Z

    goto :goto_5

    .line 582
    .end local v15    # "ie":Ljava/lang/InterruptedException;
    :cond_e
    add-int/lit8 v22, p1, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/parse/ParseCommandCache;->maybeRunAllCommandsNow(I)V

    goto/16 :goto_3

    .line 584
    .end local v8    # "currentTime":J
    .end local v20    # "waitUntil":J
    :cond_f
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/parse/ParseCommandCache;->setConnected(Z)V

    .line 586
    const/16 v22, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/parse/ParseCommandCache;->notifyTestHelper(I)V

    goto/16 :goto_3

    .line 589
    :cond_10
    const/16 v22, 0x6

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v24

    move/from16 v0, v22

    move/from16 v1, v24

    if-lt v0, v1, :cond_11

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v22, v0

    sget-object v24, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v25, "Failed to run command."

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 594
    :cond_11
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V

    .line 595
    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Lcom/parse/ParseCommandCache;->notifyTestHelper(ILjava/lang/Throwable;)V

    goto/16 :goto_3

    .line 599
    .end local v5    # "command":Lcom/parse/ParseNetworkCommand;, "Lcom/parse/ParseNetworkCommand<Lorg/json/JSONObject;Ljava/lang/Object;>;"
    .end local v7    # "data":[B
    .end local v10    # "e":Lcom/parse/ParseException;
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "fileName":Ljava/lang/String;
    .end local v16    # "json":Lorg/json/JSONObject;
    .end local v19    # "tcs":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<Ljava/lang/Object;>.TaskCompletionSource;"
    :cond_12
    monitor-exit v23
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0
.end method

.method private removeFile(Ljava/io/File;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 202
    sget-object v4, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 204
    :try_start_0
    iget-object v3, p0, Lcom/parse/ParseCommandCache;->pendingTasks:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :try_start_1
    invoke-static {p1}, Lcom/parse/ParseFileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v1

    .line 211
    .local v1, "data":[B
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v3, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 213
    .local v2, "json":Lorg/json/JSONObject;
    invoke-virtual {p0, v2}, Lcom/parse/ParseCommandCache;->commandFromJSON(Lorg/json/JSONObject;)Lcom/parse/ParseNetworkCommand;

    move-result-object v0

    .line 214
    .local v0, "command":Lcom/parse/ParseNetworkCommand;
    invoke-virtual {v0}, Lcom/parse/ParseNetworkCommand;->releaseLocalIds()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    .end local v0    # "command":Lcom/parse/ParseNetworkCommand;
    .end local v1    # "data":[B
    .end local v2    # "json":Lorg/json/JSONObject;
    :goto_0
    :try_start_2
    invoke-static {p1}, Lcom/parse/ParseFileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 221
    monitor-exit v4

    .line 222
    return-void

    .line 221
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 215
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private runLoop()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 611
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v4

    if-lt v8, v4, :cond_0

    .line 612
    iget-object v4, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    const-string v5, "Parse command cache has started processing queued commands."

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 615
    :cond_0
    iget-object v4, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    monitor-enter v4

    .line 616
    :try_start_0
    iget-boolean v5, p0, Lcom/parse/ParseCommandCache;->running:Z

    if-eqz v5, :cond_2

    .line 618
    monitor-exit v4

    .line 663
    :cond_1
    :goto_0
    return-void

    .line 620
    :cond_2
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/parse/ParseCommandCache;->running:Z

    .line 621
    iget-object v5, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 623
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 626
    sget-object v4, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 627
    :try_start_1
    iget-boolean v5, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    if-nez v5, :cond_4

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-nez v5, :cond_4

    move v1, v2

    .line 628
    .local v1, "shouldRun":Z
    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 629
    :goto_2
    if-eqz v1, :cond_9

    .line 630
    sget-object v5, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 632
    :try_start_2
    iget v4, p0, Lcom/parse/ParseCommandCache;->timeoutMaxRetries:I

    invoke-direct {p0, v4}, Lcom/parse/ParseCommandCache;->maybeRunAllCommandsNow(I)V

    .line 633
    iget-boolean v4, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez v4, :cond_3

    .line 639
    :try_start_3
    iget-boolean v4, p0, Lcom/parse/ParseCommandCache;->unprocessedCommandsExist:Z

    if-nez v4, :cond_3

    .line 640
    sget-object v4, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 651
    :cond_3
    :goto_3
    :try_start_4
    iget-boolean v4, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    if-nez v4, :cond_6

    move v1, v2

    .line 653
    :goto_4
    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 623
    .end local v1    # "shouldRun":Z
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2

    :cond_4
    move v1, v3

    .line 627
    goto :goto_1

    .line 628
    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2

    .line 642
    .restart local v1    # "shouldRun":Z
    :catch_0
    move-exception v0

    .line 643
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v4, 0x1

    :try_start_7
    iput-boolean v4, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    .line 646
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 647
    .local v0, "e":Ljava/lang/Exception;
    const/4 v4, 0x6

    :try_start_8
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v6

    if-lt v4, v6, :cond_5

    .line 648
    iget-object v4, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v7, "saveEventually thread had an error."

    invoke-virtual {v4, v6, v7, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 651
    :cond_5
    :try_start_9
    iget-boolean v4, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    if-nez v4, :cond_7

    move v1, v2

    .line 652
    :goto_5
    goto :goto_4

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    move v1, v3

    .line 651
    goto :goto_4

    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_7
    move v1, v3

    goto :goto_5

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v4

    iget-boolean v6, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    if-nez v6, :cond_8

    move v1, v2

    :goto_6
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_8
    move v1, v3

    goto :goto_6

    .line 656
    :cond_9
    iget-object v3, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    monitor-enter v3

    .line 657
    const/4 v2, 0x0

    :try_start_a
    iput-boolean v2, p0, Lcom/parse/ParseCommandCache;->running:Z

    .line 658
    iget-object v2, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 659
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 660
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v2

    if-lt v8, v2, :cond_1

    .line 661
    iget-object v2, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    const-string v3, "saveEventually thread has stopped processing commands."

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 659
    :catchall_4
    move-exception v2

    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v2
.end method

.method private waitForTaskWithoutLock(Lbolts/Task;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Task",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 412
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<TT;>;"
    sget-object v3, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 413
    :try_start_0
    new-instance v0, Lbolts/Capture;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2}, Lbolts/Capture;-><init>(Ljava/lang/Object;)V

    .line 414
    .local v0, "finished":Lbolts/Capture;, "Lbolts/Capture<Ljava/lang/Boolean;>;"
    new-instance v2, Lcom/parse/ParseCommandCache$3;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseCommandCache$3;-><init>(Lcom/parse/ParseCommandCache;Lbolts/Capture;)V

    sget-object v4, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p1, v2, v4}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    .line 424
    :goto_0
    invoke-virtual {v0}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 426
    :try_start_1
    sget-object v2, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 427
    :catch_0
    move-exception v1

    .line 428
    .local v1, "ie":Ljava/lang/InterruptedException;
    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    goto :goto_0

    .line 432
    .end local v0    # "finished":Lbolts/Capture;, "Lbolts/Capture<Ljava/lang/Boolean;>;"
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 431
    .restart local v0    # "finished":Lbolts/Capture;, "Lbolts/Capture<Ljava/lang/Boolean;>;"
    :cond_0
    :try_start_3
    invoke-static {p1}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v2
.end method


# virtual methods
.method public clear()V
    .locals 7

    .prologue
    .line 381
    sget-object v6, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 382
    :try_start_0
    iget-object v5, p0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 383
    .local v2, "files":[Ljava/io/File;
    if-nez v2, :cond_0

    .line 384
    monitor-exit v6

    .line 391
    :goto_0
    return-void

    .line 386
    :cond_0
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 387
    .local v1, "file":Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V

    .line 386
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 389
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    iget-object v5, p0, Lcom/parse/ParseCommandCache;->pendingTasks:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 390
    monitor-exit v6

    goto :goto_0

    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public enqueueEventuallyAsync(Lcom/parse/ParseNetworkCommand;Lcom/parse/ParseObject;)Lbolts/Task;
    .locals 1
    .param p1, "command"    # Lcom/parse/ParseNetworkCommand;
    .param p2, "object"    # Lcom/parse/ParseObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseNetworkCommand;",
            "Lcom/parse/ParseObject;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseCommandCache;->enqueueEventuallyAsync(Lcom/parse/ParseNetworkCommand;ZLcom/parse/ParseObject;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method fakeObjectUpdate()V
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/parse/ParseCommandCache;->notifyTestHelper(I)V

    .line 241
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/parse/ParseCommandCache;->notifyTestHelper(I)V

    .line 242
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/parse/ParseCommandCache;->notifyTestHelper(I)V

    .line 243
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->notifier:Lcom/parse/ConnectivityNotifier;

    iget-object v1, p0, Lcom/parse/ParseCommandCache;->listener:Lcom/parse/ConnectivityNotifier$ConnectivityListener;

    invoke-virtual {v0, v1}, Lcom/parse/ConnectivityNotifier;->removeListener(Lcom/parse/ConnectivityNotifier$ConnectivityListener;)V

    .line 129
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 179
    iget-object v1, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 180
    :try_start_0
    iget-boolean v0, p0, Lcom/parse/ParseCommandCache;->running:Z

    if-eqz v0, :cond_0

    .line 181
    sget-object v2, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 182
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    .line 183
    sget-object v0, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 184
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v0, p0, Lcom/parse/ParseCommandCache;->running:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    .line 188
    :try_start_3
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    goto :goto_0

    .line 184
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    .line 195
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_1
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 196
    return-void
.end method

.method public pendingCount()I
    .locals 1

    .prologue
    .line 374
    invoke-static {}, Lcom/parse/ParseCommandCache;->getPendingCount()I

    move-result v0

    return v0
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 155
    iget-object v2, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    monitor-enter v2

    .line 156
    :try_start_0
    iget-boolean v1, p0, Lcom/parse/ParseCommandCache;->running:Z

    if-nez v1, :cond_0

    .line 157
    new-instance v1, Lcom/parse/ParseCommandCache$2;

    const-string v3, "ParseCommandCache.runLoop()"

    invoke-direct {v1, p0, v3}, Lcom/parse/ParseCommandCache$2;-><init>(Lcom/parse/ParseCommandCache;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/parse/ParseCommandCache$2;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 164
    :try_start_1
    iget-object v1, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 173
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 174
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v3, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 168
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    .line 169
    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 170
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 173
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public setConnected(Z)V
    .locals 2
    .param p1, "connected"    # Z

    .prologue
    .line 397
    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 398
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseCommandCache;->isConnected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 399
    if-eqz p1, :cond_0

    .line 400
    sget-object v0, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 403
    :cond_0
    invoke-super {p0, p1}, Lcom/parse/ParseEventuallyQueue;->setConnected(Z)V

    .line 404
    monitor-exit v1

    .line 405
    return-void

    .line 404
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMaxCacheSizeBytes(I)V
    .locals 2
    .param p1, "bytes"    # I

    .prologue
    .line 148
    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 149
    :try_start_0
    iput p1, p0, Lcom/parse/ParseCommandCache;->maxCacheSizeBytes:I

    .line 150
    monitor-exit v1

    .line 151
    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTimeoutMaxRetries(I)V
    .locals 2
    .param p1, "tries"    # I

    .prologue
    .line 134
    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_0
    iput p1, p0, Lcom/parse/ParseCommandCache;->timeoutMaxRetries:I

    .line 136
    monitor-exit v1

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTimeoutRetryWaitSeconds(D)V
    .locals 3
    .param p1, "seconds"    # D

    .prologue
    .line 141
    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    :try_start_0
    iput-wide p1, p0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    .line 143
    monitor-exit v1

    .line 144
    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method simulateReboot()V
    .locals 2

    .prologue
    .line 229
    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->pendingTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 231
    monitor-exit v1

    .line 232
    return-void

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
