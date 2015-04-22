.class Lcom/parse/ParseTestUtils;
.super Ljava/lang/Object;
.source "ParseTestUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.parse.ParseTestUtils"

.field private static final TEST_SERVER_LOCK:Ljava/lang/Object;

.field private static final strictModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static testServer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/ParseTestUtils;->TEST_SERVER_LOCK:Ljava/lang/Object;

    .line 277
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/parse/ParseTestUtils;->strictModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearApp()V
    .locals 4

    .prologue
    .line 114
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v2, "clear_app"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .local v0, "command":Lcom/parse/ParseCommand;
    :try_start_0
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->executeAsync()Lbolts/Task;

    move-result-object v2

    invoke-static {v2}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    return-void

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Lcom/parse/ParseException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Lcom/parse/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static clearCurrentInstallationFromMemory()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/ParseInstallation;->currentInstallation:Lcom/parse/ParseInstallation;

    .line 185
    return-void
.end method

.method public static commandCacheUnexpectedEvents()I
    .locals 1

    .prologue
    .line 268
    sget-object v0, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    invoke-virtual {v0}, Lcom/parse/ParseEventuallyQueue;->getTestHelper()Lcom/parse/ParseEventuallyQueue$TestHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseEventuallyQueue$TestHelper;->unexpectedEvents()I

    move-result v0

    return v0
.end method

.method public static disconnectCommandCache()V
    .locals 2

    .prologue
    .line 243
    sget-object v0, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parse/ParseEventuallyQueue;->setConnected(Z)V

    .line 244
    return-void
.end method

.method public static getInstallationId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 200
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->getInstallationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getObjectFromDisk(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->getFromDisk(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method

.method private static getParseDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    const-string v0, "Parse"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getSerializedPushStateJSON()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 204
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    const-string v1, "pushState"

    invoke-static {v0, v1}, Lcom/parse/Parse;->getDiskObject(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private static getTestServer(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    sget-object v2, Lcom/parse/ParseTestUtils;->testServer:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 54
    sget-object v3, Lcom/parse/ParseTestUtils;->TEST_SERVER_LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 55
    :try_start_0
    sget-object v2, Lcom/parse/ParseTestUtils;->testServer:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 57
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "server.config"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 59
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/parse/ParseTestUtils;->testServer:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .end local v0    # "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    :cond_1
    sget-object v2, Lcom/parse/ParseTestUtils;->testServer:Ljava/lang/String;

    return-object v2

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v4, "vbox"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    const-string v2, "http://192.168.56.1:3000"

    sput-object v2, Lcom/parse/ParseTestUtils;->testServer:Ljava/lang/String;

    goto :goto_0

    .line 72
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 64
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_4
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v4, "sdk"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v4, "full_x86"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 66
    :cond_3
    const-string v2, "http://10.0.2.2:3000"

    sput-object v2, Lcom/parse/ParseTestUtils;->testServer:Ljava/lang/String;

    goto :goto_0

    .line 68
    :cond_4
    const-string v2, "http://localhost:3000"

    sput-object v2, Lcom/parse/ParseTestUtils;->testServer:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static getUserObjectFromDisk(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/ParseUser;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->getFromDisk(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    return-object v0
.end method

.method public static keySet(Lcom/parse/ParseObject;)Ljava/util/Set;
    .locals 1
    .param p0, "object"    # Lcom/parse/ParseObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/parse/ParseObject;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static mockPushServer()Ljava/net/ServerSocket;
    .locals 6

    .prologue
    .line 223
    :try_start_0
    new-instance v2, Ljava/net/ServerSocket;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/net/ServerSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .local v2, "socket":Ljava/net/ServerSocket;
    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 229
    .local v0, "address":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    invoke-static {v3, v4}, Lcom/parse/PushService;->useServer(Ljava/lang/String;I)V

    .line 230
    const-string v3, "com.parse.ParseTestUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "running mockPushServer on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parse/Parse;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-object v2

    .line 224
    .end local v0    # "address":Ljava/net/InetSocketAddress;
    .end local v2    # "socket":Ljava/net/ServerSocket;
    :catch_0
    move-exception v1

    .line 225
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static mockV8Client()V
    .locals 4

    .prologue
    .line 126
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v2, "mock_v8_client"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .local v0, "command":Lcom/parse/ParseCommand;
    :try_start_0
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->executeAsync()Lbolts/Task;

    move-result-object v2

    invoke-static {v2}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    return-void

    .line 129
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Lcom/parse/ParseException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static pushRoutes(Landroid/content/Context;)Ljava/util/Set;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/parse/PushRouter;->getSubscriptionsAsync(Z)Lbolts/Task;

    move-result-object v0

    .line 191
    .local v0, "subscriptionsTask":Lbolts/Task;, "Lbolts/Task<Ljava/util/Set<Ljava/lang/String;>;>;"
    :try_start_0
    invoke-virtual {v0}, Lbolts/Task;->waitForCompletion()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    invoke-virtual {v0}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    return-object v1

    .line 192
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static reconnectCommandCache()V
    .locals 2

    .prologue
    .line 247
    sget-object v0, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parse/ParseEventuallyQueue;->setConnected(Z)V

    .line 248
    return-void
.end method

.method public static resetCommandCache()V
    .locals 2

    .prologue
    .line 236
    invoke-static {}, Lcom/parse/Parse;->getEventuallyQueue()Lcom/parse/ParseEventuallyQueue;

    move-result-object v0

    .line 237
    .local v0, "cache":Lcom/parse/ParseEventuallyQueue;
    invoke-virtual {v0}, Lcom/parse/ParseEventuallyQueue;->getTestHelper()Lcom/parse/ParseEventuallyQueue$TestHelper;

    move-result-object v1

    .line 238
    .local v1, "helper":Lcom/parse/ParseEventuallyQueue$TestHelper;
    invoke-virtual {v0}, Lcom/parse/ParseEventuallyQueue;->clear()V

    .line 239
    invoke-virtual {v1}, Lcom/parse/ParseEventuallyQueue$TestHelper;->clear()V

    .line 240
    return-void
.end method

.method public static saveObjectToDisk(Lcom/parse/ParseObject;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "object"    # Lcom/parse/ParseObject;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParseObject;->saveToDisk(Landroid/content/Context;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public static saveStringToDisk(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 159
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/parse/ParseTestUtils;->getParseDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 161
    .local v0, "file":Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 162
    .local v1, "out":Ljava/io/FileOutputStream;
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 163
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v1    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v2

    goto :goto_0

    .line 164
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public static setCommandInitialDelay(J)V
    .locals 0
    .param p0, "milliSeconds"    # J

    .prologue
    .line 180
    invoke-static {p0, p1}, Lcom/parse/ParseCommand;->setDefaultInitialRetryDelay(J)V

    .line 181
    return-void
.end method

.method public static setPushHistoryLength(I)I
    .locals 1
    .param p0, "length"    # I

    .prologue
    .line 272
    sget v0, Lcom/parse/PushRouter;->MAX_HISTORY_LENGTH:I

    .line 273
    .local v0, "oldLength":I
    sput p0, Lcom/parse/PushRouter;->MAX_HISTORY_LENGTH:I

    .line 274
    return v0
.end method

.method public static setRetryDelayEnabled(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .prologue
    .line 212
    sput-boolean p0, Lcom/parse/PushConnection;->ENABLE_RETRY_DELAY:Z

    .line 213
    return-void
.end method

.method public static setStrictModeEnabledForMainThread(Z)V
    .locals 5
    .param p0, "enabled"    # Z

    .prologue
    const/4 v3, 0x0

    .line 279
    sget-object v4, Lcom/parse/ParseTestUtils;->strictModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez p0, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v4, v2, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 282
    .local v0, "done":Ljava/util/concurrent/Semaphore;
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 283
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/parse/ParseTestUtils$1;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseTestUtils$1;-><init>(ZLjava/util/concurrent/Semaphore;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 291
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 293
    .end local v0    # "done":Ljava/util/concurrent/Semaphore;
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_0
    return-void

    :cond_1
    move v2, v3

    .line 279
    goto :goto_0
.end method

.method public static setStrictModeEnabledForThisThread(Z)V
    .locals 1
    .param p0, "enabled"    # Z

    .prologue
    .line 296
    if-eqz p0, :cond_0

    .line 297
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 309
    :goto_0
    return-void

    .line 304
    :cond_0
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0
.end method

.method public static setTestServer(Ljava/lang/String;)V
    .locals 2
    .param p0, "server"    # Ljava/lang/String;

    .prologue
    .line 47
    sget-object v1, Lcom/parse/ParseTestUtils;->TEST_SERVER_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 48
    :try_start_0
    sput-object p0, Lcom/parse/ParseTestUtils;->testServer:Ljava/lang/String;

    .line 49
    monitor-exit v1

    .line 50
    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static startServiceIfRequired(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 208
    invoke-static {p0}, Lcom/parse/PushService;->startServiceIfRequired(Landroid/content/Context;)V

    .line 209
    return-void
.end method

.method public static unmockV8Client()V
    .locals 4

    .prologue
    .line 138
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v2, "unmock_v8_client"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .local v0, "command":Lcom/parse/ParseCommand;
    :try_start_0
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->executeAsync()Lbolts/Task;

    move-result-object v2

    invoke-static {v2}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    return-void

    .line 141
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Lcom/parse/ParseException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static useBadServerPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/parse/ParseObject;->server:Ljava/lang/String;

    invoke-static {v0}, Lcom/parse/ParseTestUtils;->useBadServerPort(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static useBadServerPort(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 100
    const-string v1, "http://10.0.2.2:6000"

    .line 102
    .local v1, "newUrl":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, "base":Ljava/net/URL;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v3

    add-int/lit16 v3, v3, 0x3e7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 107
    .end local v0    # "base":Ljava/net/URL;
    :goto_0
    invoke-static {v1}, Lcom/parse/ParseTestUtils;->useServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 104
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static useInvalidServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string v0, "http://invalid.server:3000"

    invoke-static {v0}, Lcom/parse/ParseTestUtils;->useServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static useServer(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "theServer"    # Ljava/lang/String;

    .prologue
    .line 41
    sget-object v0, Lcom/parse/ParseObject;->server:Ljava/lang/String;

    .line 42
    .local v0, "oldServer":Ljava/lang/String;
    sput-object p0, Lcom/parse/ParseObject;->server:Ljava/lang/String;

    .line 43
    return-object v0
.end method

.method public static useTestServer(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-static {p0}, Lcom/parse/ParseTestUtils;->getTestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTestUtils;->useServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static waitForCommandCacheEnqueue()Z
    .locals 2

    .prologue
    .line 251
    sget-object v0, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    invoke-virtual {v0}, Lcom/parse/ParseEventuallyQueue;->getTestHelper()Lcom/parse/ParseEventuallyQueue$TestHelper;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/parse/ParseEventuallyQueue$TestHelper;->waitFor(I)Z

    move-result v0

    return v0
.end method

.method public static waitForCommandCacheFailure()Z
    .locals 2

    .prologue
    .line 263
    sget-object v0, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    invoke-virtual {v0}, Lcom/parse/ParseEventuallyQueue;->getTestHelper()Lcom/parse/ParseEventuallyQueue$TestHelper;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/parse/ParseEventuallyQueue$TestHelper;->waitFor(I)Z

    move-result v0

    return v0
.end method

.method public static waitForCommandCacheSuccess()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 256
    sget-object v1, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    invoke-virtual {v1}, Lcom/parse/ParseEventuallyQueue;->getTestHelper()Lcom/parse/ParseEventuallyQueue$TestHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/parse/ParseEventuallyQueue$TestHelper;->waitFor(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    invoke-virtual {v1}, Lcom/parse/ParseEventuallyQueue;->getTestHelper()Lcom/parse/ParseEventuallyQueue$TestHelper;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/parse/ParseEventuallyQueue$TestHelper;->waitFor(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
