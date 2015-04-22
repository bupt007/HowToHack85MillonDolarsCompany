.class Lcom/parse/PushRouter;
.super Ljava/lang/Object;
.source "PushRouter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/PushRouter$PushListener;,
        Lcom/parse/PushRouter$HandlePushResult;
    }
.end annotation


# static fields
.field private static final EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field public static final GCM_RECEIVE_ACTION:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field private static final LEGACY_ROUTE_LOCATION:Ljava/lang/String; = "persistentCallbacks"

.field static MAX_HISTORY_LENGTH:I = 0x0

.field private static final STATE_LOCATION:Ljava/lang/String; = "pushState"

.field private static final TAG:Ljava/lang/String; = "com.parse.ParsePushRouter"

.field private static final V1_LATEST_PUSH_STATE_VERSION:Ljava/lang/Integer;

.field public static final V2_PUSH_STATE_VERSION:Ljava/lang/Integer;

.field private static instance:Lcom/parse/PushRouter;

.field private static lastTask:Lbolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static pushListener:Lcom/parse/PushRouter$PushListener;


# instance fields
.field private forceEnabled:Ljava/lang/Boolean;

.field private final history:Lcom/parse/PushHistory;

.field private final isRefreshingInstallation:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private pushStateVersion:I

.field private final routes:Lcom/parse/PushRoutes;

.field private final stateLocation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/parse/PushRouter;->V2_PUSH_STATE_VERSION:Ljava/lang/Integer;

    .line 38
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/parse/PushRouter;->V1_LATEST_PUSH_STATE_VERSION:Ljava/lang/Integer;

    .line 39
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/parse/PushRouter;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 43
    const/16 v0, 0xa

    sput v0, Lcom/parse/PushRouter;->MAX_HISTORY_LENGTH:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/parse/PushRoutes;Lcom/parse/PushHistory;)V
    .locals 2
    .param p1, "stateLocation"    # Ljava/lang/String;
    .param p2, "routes"    # Lcom/parse/PushRoutes;
    .param p3, "history"    # Lcom/parse/PushHistory;

    .prologue
    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/parse/PushRouter;->isRefreshingInstallation:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 567
    iput-object p1, p0, Lcom/parse/PushRouter;->stateLocation:Ljava/lang/String;

    .line 568
    iput-object p2, p0, Lcom/parse/PushRouter;->routes:Lcom/parse/PushRoutes;

    .line 569
    iput-object p3, p0, Lcom/parse/PushRouter;->history:Lcom/parse/PushHistory;

    .line 570
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/PushRouter;->forceEnabled:Ljava/lang/Boolean;

    .line 571
    sget-object v0, Lcom/parse/PushRouter;->V1_LATEST_PUSH_STATE_VERSION:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/parse/PushRouter;->pushStateVersion:I

    .line 572
    return-void
.end method

.method static synthetic access$000()Lcom/parse/PushRouter;
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/parse/PushRouter;->getInstance()Lcom/parse/PushRouter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/PushRouter;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/parse/PushRouter;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parse/PushRouter;->forceEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$200(Z)Lcom/parse/PushRouter;
    .locals 1
    .param p0, "x0"    # Z

    .prologue
    .line 33
    invoke-static {p0}, Lcom/parse/PushRouter;->reloadInstance(Z)Lcom/parse/PushRouter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/parse/PushRouter;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/parse/PushRouter;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parse/PushRouter;->isRefreshingInstallation:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static getChannelsArrayFromInstallation(Lcom/parse/ParseInstallation;)Lorg/json/JSONArray;
    .locals 3
    .param p0, "installation"    # Lcom/parse/ParseInstallation;

    .prologue
    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, "array":Lorg/json/JSONArray;
    const-string v2, "channels"

    invoke-virtual {p0, v2}, Lcom/parse/ParseInstallation;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 313
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 314
    invoke-static {}, Lcom/parse/PointerOrLocalIdEncodingStrategy;->get()Lcom/parse/PointerOrLocalIdEncodingStrategy;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "array":Lorg/json/JSONArray;
    check-cast v0, Lorg/json/JSONArray;

    .line 317
    .restart local v0    # "array":Lorg/json/JSONArray;
    :cond_0
    if-eqz v0, :cond_1

    .end local v0    # "array":Lorg/json/JSONArray;
    :goto_0
    return-object v0

    .restart local v0    # "array":Lorg/json/JSONArray;
    :cond_1
    new-instance v0, Lorg/json/JSONArray;

    .end local v0    # "array":Lorg/json/JSONArray;
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0
.end method

.method public static getForceEnabledStateAsync()Lbolts/Task;
    .locals 5
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
    .line 133
    const-class v2, Lcom/parse/PushRouter;

    monitor-enter v2

    .line 134
    :try_start_0
    invoke-static {}, Lcom/parse/PushRouter;->getLastTask()Lbolts/Task;

    move-result-object v1

    new-instance v3, Lcom/parse/PushRouter$4;

    invoke-direct {v3}, Lcom/parse/PushRouter$4;-><init>()V

    sget-object v4, Lcom/parse/PushRouter;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v3, v4}, Lbolts/Task;->onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    .line 140
    .local v0, "getForceEnabledTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Boolean;>;"
    invoke-virtual {v0}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v1

    invoke-static {v1}, Lcom/parse/PushRouter;->makeUnhandledExceptionsFatal(Lbolts/Task;)Lbolts/Task;

    move-result-object v1

    sput-object v1, Lcom/parse/PushRouter;->lastTask:Lbolts/Task;

    .line 141
    monitor-exit v2

    .line 142
    return-object v0

    .line 141
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getInstance()Lcom/parse/PushRouter;
    .locals 6

    .prologue
    .line 373
    sget-object v3, Lcom/parse/PushRouter;->instance:Lcom/parse/PushRouter;

    if-nez v3, :cond_2

    .line 374
    const-string v3, "persistentCallbacks"

    const-string v4, "pushState"

    invoke-static {v3, v4}, Lcom/parse/PushRouter;->migrateV1toV3(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 376
    .local v1, "json":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    .line 377
    const-string v3, "pushState"

    const-string v4, "pushState"

    invoke-static {v3, v4}, Lcom/parse/PushRouter;->migrateV2toV3(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 380
    :cond_0
    if-nez v1, :cond_1

    .line 381
    sget-object v3, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    const-string v4, "pushState"

    invoke-static {v3, v4}, Lcom/parse/Parse;->getDiskObject(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 384
    :cond_1
    new-instance v2, Lcom/parse/PushRoutes;

    invoke-direct {v2, v1}, Lcom/parse/PushRoutes;-><init>(Lorg/json/JSONObject;)V

    .line 385
    .local v2, "routes":Lcom/parse/PushRoutes;
    new-instance v0, Lcom/parse/PushHistory;

    sget v3, Lcom/parse/PushRouter;->MAX_HISTORY_LENGTH:I

    invoke-direct {v0, v3, v1}, Lcom/parse/PushHistory;-><init>(ILorg/json/JSONObject;)V

    .line 387
    .local v0, "history":Lcom/parse/PushHistory;
    new-instance v3, Lcom/parse/PushRouter;

    const-string v4, "pushState"

    invoke-direct {v3, v4, v2, v0}, Lcom/parse/PushRouter;-><init>(Ljava/lang/String;Lcom/parse/PushRoutes;Lcom/parse/PushHistory;)V

    sput-object v3, Lcom/parse/PushRouter;->instance:Lcom/parse/PushRouter;

    .line 390
    if-eqz v1, :cond_2

    .line 391
    sget-object v4, Lcom/parse/PushRouter;->instance:Lcom/parse/PushRouter;

    const-string v3, "forceEnabled"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    iput-object v3, v4, Lcom/parse/PushRouter;->forceEnabled:Ljava/lang/Boolean;

    .line 392
    sget-object v3, Lcom/parse/PushRouter;->instance:Lcom/parse/PushRouter;

    const-string v4, "version"

    sget-object v5, Lcom/parse/PushRouter;->V1_LATEST_PUSH_STATE_VERSION:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/parse/PushRouter;->pushStateVersion:I

    .line 396
    :cond_2
    sget-object v3, Lcom/parse/PushRouter;->instance:Lcom/parse/PushRouter;

    return-object v3
.end method

.method private static declared-synchronized getLastTask()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    const-class v1, Lcom/parse/PushRouter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/parse/PushRouter;->lastTask:Lbolts/Task;

    if-nez v0, :cond_0

    .line 281
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    invoke-virtual {v0}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v0

    sput-object v0, Lcom/parse/PushRouter;->lastTask:Lbolts/Task;

    .line 284
    :cond_0
    sget-object v0, Lcom/parse/PushRouter;->lastTask:Lbolts/Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getPushRequestJSONAsync()Lbolts/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    const-class v2, Lcom/parse/PushRouter;

    monitor-enter v2

    .line 174
    :try_start_0
    invoke-static {}, Lcom/parse/PushRouter;->getLastTask()Lbolts/Task;

    move-result-object v1

    new-instance v3, Lcom/parse/PushRouter$6;

    invoke-direct {v3}, Lcom/parse/PushRouter$6;-><init>()V

    sget-object v4, Lcom/parse/PushRouter;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v3, v4}, Lbolts/Task;->onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    .line 181
    .local v0, "getPushRequestTask":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    invoke-virtual {v0}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v1

    invoke-static {v1}, Lcom/parse/PushRouter;->makeUnhandledExceptionsFatal(Lbolts/Task;)Lbolts/Task;

    move-result-object v1

    sput-object v1, Lcom/parse/PushRouter;->lastTask:Lbolts/Task;

    .line 182
    monitor-exit v2

    .line 184
    return-object v0

    .line 182
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getSubscriptionsAsync(Z)Lbolts/Task;
    .locals 5
    .param p0, "includeDefaultRoute"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lbolts/Task",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 153
    const-class v2, Lcom/parse/PushRouter;

    monitor-enter v2

    .line 154
    :try_start_0
    invoke-static {}, Lcom/parse/PushRouter;->getLastTask()Lbolts/Task;

    move-result-object v1

    new-instance v3, Lcom/parse/PushRouter$5;

    invoke-direct {v3, p0}, Lcom/parse/PushRouter$5;-><init>(Z)V

    sget-object v4, Lcom/parse/PushRouter;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v3, v4}, Lbolts/Task;->onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    .line 161
    .local v0, "getSubscriptionsTask":Lbolts/Task;, "Lbolts/Task<Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-virtual {v0}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v1

    invoke-static {v1}, Lcom/parse/PushRouter;->makeUnhandledExceptionsFatal(Lbolts/Task;)Lbolts/Task;

    move-result-object v1

    sput-object v1, Lcom/parse/PushRouter;->lastTask:Lbolts/Task;

    .line 162
    monitor-exit v2

    .line 164
    return-object v0

    .line 162
    .end local v0    # "getSubscriptionsTask":Lbolts/Task;, "Lbolts/Task<Ljava/util/Set<Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static handleGcmPushIntent(Landroid/content/Intent;)V
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 198
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 199
    .local v0, "done":Ljava/util/concurrent/Semaphore;
    sget-object v1, Lcom/parse/PushRouter;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/parse/PushRouter$7;

    invoke-direct {v2, p0, v0}, Lcom/parse/PushRouter$7;-><init>(Landroid/content/Intent;Ljava/util/concurrent/Semaphore;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 207
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 208
    return-void
.end method

.method public static handlePpnsPushAsync(Lorg/json/JSONObject;)Lbolts/Task;
    .locals 5
    .param p0, "pushPayload"    # Lorg/json/JSONObject;
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
    .line 217
    const-class v2, Lcom/parse/PushRouter;

    monitor-enter v2

    .line 218
    :try_start_0
    invoke-static {}, Lcom/parse/PushRouter;->getLastTask()Lbolts/Task;

    move-result-object v1

    new-instance v3, Lcom/parse/PushRouter$8;

    invoke-direct {v3, p0}, Lcom/parse/PushRouter$8;-><init>(Lorg/json/JSONObject;)V

    sget-object v4, Lcom/parse/PushRouter;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v3, v4}, Lbolts/Task;->onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    .line 228
    .local v0, "receivedPushTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-static {v0}, Lcom/parse/PushRouter;->makeUnhandledExceptionsFatal(Lbolts/Task;)Lbolts/Task;

    move-result-object v1

    sput-object v1, Lcom/parse/PushRouter;->lastTask:Lbolts/Task;

    .line 229
    monitor-exit v2

    .line 231
    return-object v0

    .line 229
    .end local v0    # "receivedPushTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handlePushInternal(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "pushPayload"    # Lorg/json/JSONObject;

    .prologue
    .line 899
    const-string v5, "data"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 900
    .local v4, "pushData":Lorg/json/JSONObject;
    if-nez v4, :cond_0

    .line 901
    new-instance v4, Lorg/json/JSONObject;

    .end local v4    # "pushData":Lorg/json/JSONObject;
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 909
    .restart local v4    # "pushData":Lorg/json/JSONObject;
    :cond_0
    invoke-static {}, Lcom/parse/PushRouter;->getInstance()Lcom/parse/PushRouter;

    .line 911
    const-string v5, "channel"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 913
    .local v0, "channel":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 914
    .local v2, "extras":Landroid/os/Bundle;
    const-string v5, "com.parse.Data"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    const-string v5, "com.parse.Channel"

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    sget-object v1, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    .line 919
    .local v1, "context":Landroid/content/Context;
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.parse.push.intent.RECEIVE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 920
    .local v3, "pushBroadcastIntent":Landroid/content/Intent;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 923
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 924
    invoke-virtual {v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 925
    return-void
.end method

.method private handlePushLegacy(Lorg/json/JSONObject;)Lcom/parse/PushRouter$HandlePushResult;
    .locals 14
    .param p1, "pushPayload"    # Lorg/json/JSONObject;

    .prologue
    const/4 v13, 0x0

    .line 933
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 934
    .local v10, "pushData":Lorg/json/JSONObject;
    if-nez v10, :cond_0

    .line 935
    new-instance v10, Lorg/json/JSONObject;

    .end local v10    # "pushData":Lorg/json/JSONObject;
    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 938
    .restart local v10    # "pushData":Lorg/json/JSONObject;
    :cond_0
    const-string v0, "channel"

    invoke-virtual {p1, v0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 939
    .local v9, "channel":Ljava/lang/String;
    const-string v0, "action"

    invoke-virtual {v10, v0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 941
    .local v7, "action":Ljava/lang/String;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 942
    .local v6, "extras":Landroid/os/Bundle;
    const-string v0, "com.parse.Data"

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    const-string v0, "com.parse.Channel"

    invoke-virtual {v6, v0, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    if-eqz v7, :cond_1

    .line 946
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 947
    .local v8, "broadcastIntent":Landroid/content/Intent;
    invoke-virtual {v8, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 948
    invoke-virtual {v8, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 949
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 950
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 953
    const-string v0, "alert"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "title"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 954
    sget-object v0, Lcom/parse/PushRouter$HandlePushResult;->BROADCAST_INTENT:Lcom/parse/PushRouter$HandlePushResult;

    .line 981
    .end local v8    # "broadcastIntent":Landroid/content/Intent;
    :goto_0
    return-object v0

    .line 958
    :cond_1
    iget-object v0, p0, Lcom/parse/PushRouter;->routes:Lcom/parse/PushRoutes;

    invoke-virtual {v0, v9}, Lcom/parse/PushRoutes;->get(Ljava/lang/String;)Lcom/parse/PushRoutes$Route;

    move-result-object v11

    .line 959
    .local v11, "route":Lcom/parse/PushRoutes$Route;
    if-nez v11, :cond_2

    if-eqz v9, :cond_2

    .line 960
    iget-object v0, p0, Lcom/parse/PushRouter;->routes:Lcom/parse/PushRoutes;

    invoke-virtual {v0, v13}, Lcom/parse/PushRoutes;->get(Ljava/lang/String;)Lcom/parse/PushRoutes$Route;

    move-result-object v11

    .line 963
    :cond_2
    if-nez v11, :cond_4

    .line 964
    const-string v0, "com.parse.ParsePushRouter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Received push that has no handler. Did you call PushService.setDefaultPushCallback or PushService.subscribe? Push payload: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/parse/Parse;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    if-eqz v7, :cond_3

    sget-object v0, Lcom/parse/PushRouter$HandlePushResult;->BROADCAST_INTENT:Lcom/parse/PushRouter$HandlePushResult;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/parse/PushRouter$HandlePushResult;->NO_ROUTE_FOUND:Lcom/parse/PushRouter$HandlePushResult;

    goto :goto_0

    .line 969
    :cond_4
    invoke-virtual {v11}, Lcom/parse/PushRoutes$Route;->getActivityClass()Ljava/lang/Class;

    move-result-object v4

    .line 970
    .local v4, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    invoke-virtual {v11}, Lcom/parse/PushRoutes$Route;->getIconId()I

    move-result v5

    .line 971
    .local v5, "iconId":I
    const-string v0, "title"

    invoke-static {}, Lcom/parse/ManifestInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 972
    .local v2, "title":Ljava/lang/String;
    const-string v0, "alert"

    const-string v12, "Notification received."

    invoke-virtual {v10, v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 974
    .local v3, "body":Ljava/lang/String;
    if-nez v5, :cond_5

    .line 975
    invoke-static {}, Lcom/parse/ManifestInfo;->getIconId()I

    move-result v5

    .line 976
    const-string v0, "com.parse.ParsePushRouter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Icon ID associated with channel "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "is invalid; defaulting to package icon"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/parse/Parse;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    :cond_5
    sget-object v1, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    .line 980
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Lcom/parse/ParseNotificationManager;->getInstance()Lcom/parse/ParseNotificationManager;

    move-result-object v0

    invoke-virtual/range {v0 .. v6}, Lcom/parse/ParseNotificationManager;->showNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 981
    if-eqz v7, :cond_6

    sget-object v0, Lcom/parse/PushRouter$HandlePushResult;->SHOW_NOTIFICATION_AND_BROADCAST_INTENT:Lcom/parse/PushRouter$HandlePushResult;

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/parse/PushRouter$HandlePushResult;->SHOW_NOTIFICATION:Lcom/parse/PushRouter$HandlePushResult;

    goto/16 :goto_0
.end method

.method public static isGcmPushIntent(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 191
    if-eqz p0, :cond_0

    const-string v0, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static makeUnhandledExceptionsFatal(Lbolts/Task;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    .local p0, "lastTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v0, Lcom/parse/PushRouter$11;

    invoke-direct {v0}, Lcom/parse/PushRouter$11;-><init>()V

    sget-object v1, Lcom/parse/PushRouter;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0, v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private maybeRefreshInstallation(Ljava/util/Date;)V
    .locals 5
    .param p1, "serverUpdatedAt"    # Ljava/util/Date;

    .prologue
    .line 790
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v0

    .line 791
    .local v0, "currentInstallation":Lcom/parse/ParseInstallation;
    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->getUpdatedAt()Ljava/util/Date;

    move-result-object v1

    .line 793
    .local v1, "updatedAt":Ljava/util/Date;
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    if-gez v2, :cond_0

    .line 794
    iget-object v2, p0, Lcom/parse/PushRouter;->isRefreshingInstallation:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 795
    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->fetchInBackground()Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/PushRouter$13;

    invoke-direct {v3, p0}, Lcom/parse/PushRouter$13;-><init>(Lcom/parse/PushRouter;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    .line 804
    :cond_0
    return-void
.end method

.method private static varargs merge([Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 9
    .param p0, "objects"    # [Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 619
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 621
    .local v5, "merged":Lorg/json/JSONObject;
    move-object v0, p0

    .local v0, "arr$":[Lorg/json/JSONObject;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v6, v0, v1

    .line 622
    .local v6, "object":Lorg/json/JSONObject;
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 624
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 625
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 626
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 628
    .local v7, "value":Ljava/lang/Object;
    invoke-virtual {v5, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 621
    .end local v3    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 632
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6    # "object":Lorg/json/JSONObject;
    :cond_1
    return-object v5
.end method

.method static migrateV1toV3(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 10
    .param p0, "location"    # Ljava/lang/String;
    .param p1, "migratedLocation"    # Ljava/lang/String;

    .prologue
    .line 425
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v2

    .line 426
    .local v2, "installation":Lcom/parse/ParseInstallation;
    sget-object v7, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-static {v7, p0}, Lcom/parse/Parse;->getDiskObject(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 427
    .local v5, "legacyJSON":Lorg/json/JSONObject;
    const/4 v6, 0x0

    .line 429
    .local v6, "migratedJSON":Lorg/json/JSONObject;
    if-eqz v5, :cond_1

    .line 430
    const-string v7, "com.parse.ParsePushRouter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Migrating push state from V1 to V3: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 433
    .local v0, "channels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 434
    .local v4, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 435
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 439
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 442
    const-string v7, "channels"

    invoke-virtual {v2, v7, v0}, Lcom/parse/ParseInstallation;->addAllUnique(Ljava/lang/String;Ljava/util/Collection;)V

    .line 443
    invoke-virtual {v2}, Lcom/parse/ParseInstallation;->saveEventually()Lbolts/Task;

    .line 446
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 447
    .local v3, "json":Lorg/json/JSONObject;
    const-string v7, "version"

    const/4 v8, 0x3

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 448
    const-string v7, "routes"

    invoke-virtual {v3, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 449
    const-string v7, "channels"

    invoke-static {v2}, Lcom/parse/PushRouter;->getChannelsArrayFromInstallation(Lcom/parse/ParseInstallation;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 451
    sget-object v7, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-static {v7, p1, v3}, Lcom/parse/Parse;->saveDiskObject(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    move-object v6, v3

    .line 457
    .end local v3    # "json":Lorg/json/JSONObject;
    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 458
    sget-object v7, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-static {v7, p0}, Lcom/parse/Parse;->deleteDiskObject(Landroid/content/Context;Ljava/lang/String;)Z

    .line 462
    .end local v0    # "channels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    return-object v6

    .line 453
    .restart local v0    # "channels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 454
    .local v1, "e":Lorg/json/JSONException;
    const-string v7, "com.parse.ParsePushRouter"

    const-string v8, "Unexpected JSONException when serializing upgraded v1 push state: "

    invoke-static {v7, v8, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static migrateV2toV3(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 12
    .param p0, "location"    # Ljava/lang/String;
    .param p1, "migratedLocation"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x3

    .line 495
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v3

    .line 496
    .local v3, "installation":Lcom/parse/ParseInstallation;
    sget-object v9, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-static {v9, p0}, Lcom/parse/Parse;->getDiskObject(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 497
    .local v4, "json":Lorg/json/JSONObject;
    const/4 v5, 0x0

    .line 499
    .local v5, "migratedJSON":Lorg/json/JSONObject;
    if-eqz v4, :cond_5

    .line 500
    const-string v9, "version"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_6

    .line 501
    const-string v9, "com.parse.ParsePushRouter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Migrating push state from V2 to V3: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v9, "addChannels"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 507
    .local v0, "addChannels":Lorg/json/JSONArray;
    if-eqz v0, :cond_1

    .line 508
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 509
    .local v7, "toAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v2, v9, :cond_0

    .line 510
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 513
    :cond_0
    const-string v9, "channels"

    invoke-virtual {v3, v9, v7}, Lcom/parse/ParseInstallation;->addAllUnique(Ljava/lang/String;Ljava/util/Collection;)V

    .line 514
    invoke-virtual {v3}, Lcom/parse/ParseInstallation;->saveEventually()Lbolts/Task;

    .line 517
    .end local v2    # "i":I
    .end local v7    # "toAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const-string v9, "removeChannels"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 518
    .local v6, "removeChannels":Lorg/json/JSONArray;
    if-eqz v6, :cond_3

    .line 519
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 520
    .local v8, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v2, v9, :cond_2

    .line 521
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 524
    :cond_2
    const-string v9, "channels"

    invoke-virtual {v3, v9, v8}, Lcom/parse/ParseInstallation;->removeAll(Ljava/lang/String;Ljava/util/Collection;)V

    .line 525
    invoke-virtual {v3}, Lcom/parse/ParseInstallation;->saveEventually()Lbolts/Task;

    .line 528
    .end local v2    # "i":I
    .end local v8    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const-string v9, "installation"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 529
    const-string v9, "installation"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/parse/ParseInstallation;->mergeFromDiskJSON(Lorg/json/JSONObject;)V

    .line 530
    invoke-virtual {v3}, Lcom/parse/ParseInstallation;->saveEventually()Lbolts/Task;

    .line 534
    :cond_4
    :try_start_0
    const-string v9, "version"

    const/4 v10, 0x3

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 535
    const-string v9, "addChannels"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 536
    const-string v9, "removeChannels"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 537
    const-string v9, "installation"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 538
    const-string v9, "channels"

    invoke-static {v3}, Lcom/parse/PushRouter;->getChannelsArrayFromInstallation(Lcom/parse/ParseInstallation;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 540
    sget-object v9, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-static {v9, p1, v4}, Lcom/parse/Parse;->saveDiskObject(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    move-object v5, v4

    .line 547
    :goto_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 548
    sget-object v9, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-static {v9, p0}, Lcom/parse/Parse;->deleteDiskObject(Landroid/content/Context;Ljava/lang/String;)Z

    .line 555
    .end local v0    # "addChannels":Lorg/json/JSONArray;
    .end local v6    # "removeChannels":Lorg/json/JSONArray;
    :cond_5
    :goto_3
    return-object v5

    .line 543
    .restart local v0    # "addChannels":Lorg/json/JSONArray;
    .restart local v6    # "removeChannels":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 544
    .local v1, "e":Lorg/json/JSONException;
    const-string v9, "com.parse.ParsePushRouter"

    const-string v10, "Unexpected JSONException when serializing upgraded v2 push state: "

    invoke-static {v9, v10, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 550
    .end local v0    # "addChannels":Lorg/json/JSONArray;
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v6    # "removeChannels":Lorg/json/JSONArray;
    :cond_6
    const-string v9, "version"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v11, :cond_5

    .line 551
    move-object v5, v4

    goto :goto_3
.end method

.method static noteHandlePushResult(Lorg/json/JSONObject;Lcom/parse/PushRouter$HandlePushResult;)V
    .locals 5
    .param p0, "pushData"    # Lorg/json/JSONObject;
    .param p1, "result"    # Lcom/parse/PushRouter$HandlePushResult;

    .prologue
    .line 344
    const-class v3, Lcom/parse/PushRouter;

    monitor-enter v3

    .line 345
    :try_start_0
    sget-object v1, Lcom/parse/PushRouter;->pushListener:Lcom/parse/PushRouter$PushListener;

    .line 346
    .local v1, "listener":Lcom/parse/PushRouter$PushListener;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    if-eqz v1, :cond_0

    .line 351
    move-object v0, v1

    .line 353
    .local v0, "finalListener":Lcom/parse/PushRouter$PushListener;
    invoke-static {}, Lcom/parse/PushRouter;->getLastTask()Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/PushRouter$12;

    invoke-direct {v3, v0, p0, p1}, Lcom/parse/PushRouter$12;-><init>(Lcom/parse/PushRouter$PushListener;Lorg/json/JSONObject;Lcom/parse/PushRouter$HandlePushResult;)V

    sget-object v4, Lcom/parse/PushRouter;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v2, v3, v4}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    .line 361
    .end local v0    # "finalListener":Lcom/parse/PushRouter$PushListener;
    :cond_0
    return-void

    .line 346
    .end local v1    # "listener":Lcom/parse/PushRouter$PushListener;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static reloadFromDiskAsync(Z)Lbolts/Task;
    .locals 5
    .param p0, "removeExistingState"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    const-class v2, Lcom/parse/PushRouter;

    monitor-enter v2

    .line 242
    :try_start_0
    invoke-static {}, Lcom/parse/PushRouter;->getLastTask()Lbolts/Task;

    move-result-object v1

    new-instance v3, Lcom/parse/PushRouter$9;

    invoke-direct {v3, p0}, Lcom/parse/PushRouter$9;-><init>(Z)V

    sget-object v4, Lcom/parse/PushRouter;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v3, v4}, Lbolts/Task;->onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    .line 250
    .local v0, "reloadTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-static {v0}, Lcom/parse/PushRouter;->makeUnhandledExceptionsFatal(Lbolts/Task;)Lbolts/Task;

    move-result-object v1

    sput-object v1, Lcom/parse/PushRouter;->lastTask:Lbolts/Task;

    .line 251
    monitor-exit v2

    .line 253
    return-object v0

    .line 251
    .end local v0    # "reloadTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static reloadInstance(Z)Lcom/parse/PushRouter;
    .locals 2
    .param p0, "removeExistingState"    # Z

    .prologue
    .line 400
    if-eqz p0, :cond_0

    .line 401
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    const-string v1, "persistentCallbacks"

    invoke-static {v0, v1}, Lcom/parse/Parse;->deleteDiskObject(Landroid/content/Context;Ljava/lang/String;)Z

    .line 402
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    const-string v1, "pushState"

    invoke-static {v0, v1}, Lcom/parse/Parse;->deleteDiskObject(Landroid/content/Context;Ljava/lang/String;)Z

    .line 405
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/PushRouter;->instance:Lcom/parse/PushRouter;

    .line 406
    invoke-static {}, Lcom/parse/PushRouter;->getInstance()Lcom/parse/PushRouter;

    move-result-object v0

    return-object v0
.end method

.method private serverInstallationUpdatedAt(Lorg/json/JSONObject;)Ljava/util/Date;
    .locals 4
    .param p1, "pushData"    # Lorg/json/JSONObject;

    .prologue
    .line 775
    const/4 v0, 0x0

    .line 776
    .local v0, "updatedAt":Ljava/util/Date;
    const-string v2, "installation_updated_at"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 778
    .local v1, "updatedAtString":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 779
    invoke-static {v1}, Lcom/parse/Parse;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 782
    :cond_0
    return-object v0
.end method

.method public static setForceEnabledAsync(Ljava/lang/Boolean;)Lbolts/Task;
    .locals 5
    .param p0, "forceEnabled"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    const-class v2, Lcom/parse/PushRouter;

    monitor-enter v2

    .line 116
    :try_start_0
    invoke-static {}, Lcom/parse/PushRouter;->getLastTask()Lbolts/Task;

    move-result-object v1

    new-instance v3, Lcom/parse/PushRouter$3;

    invoke-direct {v3, p0}, Lcom/parse/PushRouter$3;-><init>(Ljava/lang/Boolean;)V

    sget-object v4, Lcom/parse/PushRouter;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v3, v4}, Lbolts/Task;->onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    .line 123
    .local v0, "forceEnabledTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-static {v0}, Lcom/parse/PushRouter;->makeUnhandledExceptionsFatal(Lbolts/Task;)Lbolts/Task;

    move-result-object v1

    sput-object v1, Lcom/parse/PushRouter;->lastTask:Lbolts/Task;

    .line 124
    monitor-exit v2

    .line 125
    return-object v0

    .line 124
    .end local v0    # "forceEnabledTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static declared-synchronized setGlobalPushListener(Lcom/parse/PushRouter$PushListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/parse/PushRouter$PushListener;

    .prologue
    .line 339
    const-class v0, Lcom/parse/PushRouter;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/parse/PushRouter;->pushListener:Lcom/parse/PushRouter$PushListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    monitor-exit v0

    return-void

    .line 339
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static subscribeAsync(Ljava/lang/String;Ljava/lang/Class;I)Lbolts/Task;
    .locals 5
    .param p0, "channel"    # Ljava/lang/String;
    .param p2, "iconId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/parse/PushRoutes;->isValidChannelName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid channel name: + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (must be empty "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "string or a letter followed by alphanumerics or hyphen)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_0
    if-nez p1, :cond_1

    .line 66
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t subscribe to channel with null activity class."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :cond_1
    if-nez p2, :cond_2

    .line 68
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must subscribe to channel with a valid icon identifier."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_2
    const-class v2, Lcom/parse/PushRouter;

    monitor-enter v2

    .line 74
    :try_start_0
    invoke-static {}, Lcom/parse/PushRouter;->getLastTask()Lbolts/Task;

    move-result-object v1

    new-instance v3, Lcom/parse/PushRouter$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/parse/PushRouter$1;-><init>(Ljava/lang/String;Ljava/lang/Class;I)V

    sget-object v4, Lcom/parse/PushRouter;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v3, v4}, Lbolts/Task;->onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    .line 82
    .local v0, "subscribeTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-static {v0}, Lcom/parse/PushRouter;->makeUnhandledExceptionsFatal(Lbolts/Task;)Lbolts/Task;

    move-result-object v1

    sput-object v1, Lcom/parse/PushRouter;->lastTask:Lbolts/Task;

    .line 83
    monitor-exit v2

    .line 85
    return-object v0

    .line 83
    .end local v0    # "subscribeTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static unsubscribeAsync(Ljava/lang/String;)Lbolts/Task;
    .locals 5
    .param p0, "channel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    const-class v2, Lcom/parse/PushRouter;

    monitor-enter v2

    .line 96
    :try_start_0
    invoke-static {}, Lcom/parse/PushRouter;->getLastTask()Lbolts/Task;

    move-result-object v1

    new-instance v3, Lcom/parse/PushRouter$2;

    invoke-direct {v3, p0}, Lcom/parse/PushRouter$2;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/parse/PushRouter;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v3, v4}, Lbolts/Task;->onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    .line 104
    .local v0, "unsubscribeTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-static {v0}, Lcom/parse/PushRouter;->makeUnhandledExceptionsFatal(Lbolts/Task;)Lbolts/Task;

    move-result-object v1

    sput-object v1, Lcom/parse/PushRouter;->lastTask:Lbolts/Task;

    .line 105
    monitor-exit v2

    .line 107
    return-object v0

    .line 105
    .end local v0    # "unsubscribeTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static wipeRoutingAndUpgradePushStateAsync()Lbolts/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    const-class v2, Lcom/parse/PushRouter;

    monitor-enter v2

    .line 264
    :try_start_0
    invoke-static {}, Lcom/parse/PushRouter;->getLastTask()Lbolts/Task;

    move-result-object v1

    new-instance v3, Lcom/parse/PushRouter$10;

    invoke-direct {v3}, Lcom/parse/PushRouter$10;-><init>()V

    sget-object v4, Lcom/parse/PushRouter;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v3, v4}, Lbolts/Task;->onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    .line 271
    .local v0, "wipeRoutingAndUpgradePushStateTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-static {v0}, Lcom/parse/PushRouter;->makeUnhandledExceptionsFatal(Lbolts/Task;)Lbolts/Task;

    move-result-object v1

    sput-object v1, Lcom/parse/PushRouter;->lastTask:Lbolts/Task;

    .line 272
    monitor-exit v2

    .line 273
    return-object v0

    .line 272
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method convertGcmIntentToJSONObject(Landroid/content/Intent;)Lorg/json/JSONObject;
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 807
    const/4 v8, 0x0

    .line 809
    .local v8, "pushPayload":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    .line 810
    const-string v10, "message_type"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 811
    .local v4, "messageType":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 817
    const-string v10, "com.parse.ParsePushRouter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignored special message type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " from GCM via intent"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/parse/Parse;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    .end local v4    # "messageType":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v8

    .line 819
    .restart local v4    # "messageType":Ljava/lang/String;
    :cond_1
    const-string v10, "data"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 820
    .local v7, "pushDataString":Ljava/lang/String;
    const-string v10, "channel"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 821
    .local v0, "channel":Ljava/lang/String;
    const-string v10, "installation_updated_at"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 822
    .local v3, "installationUpdatedAt":Ljava/lang/String;
    const/4 v5, 0x0

    .line 823
    .local v5, "pushData":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 826
    .local v2, "ignore":Z
    if-eqz v7, :cond_2

    .line 828
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "pushData":Lorg/json/JSONObject;
    .local v6, "pushData":Lorg/json/JSONObject;
    move-object v5, v6

    .line 835
    .end local v6    # "pushData":Lorg/json/JSONObject;
    .restart local v5    # "pushData":Lorg/json/JSONObject;
    :cond_2
    :goto_1
    if-nez v2, :cond_0

    .line 837
    :try_start_1
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 838
    .end local v8    # "pushPayload":Lorg/json/JSONObject;
    .local v9, "pushPayload":Lorg/json/JSONObject;
    :try_start_2
    const-string v10, "data"

    invoke-virtual {v9, v10, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 839
    const-string v10, "channel"

    invoke-virtual {v9, v10, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 840
    const-string v10, "installation_updated_at"

    invoke-virtual {v9, v10, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v8, v9

    .line 844
    .end local v9    # "pushPayload":Lorg/json/JSONObject;
    .restart local v8    # "pushPayload":Lorg/json/JSONObject;
    goto :goto_0

    .line 829
    :catch_0
    move-exception v1

    .line 830
    .local v1, "e":Lorg/json/JSONException;
    const-string v10, "com.parse.ParsePushRouter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignoring push because of JSON exception while processing: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 831
    const/4 v2, 0x1

    goto :goto_1

    .line 841
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 842
    .restart local v1    # "e":Lorg/json/JSONException;
    :goto_2
    const-string v10, "com.parse.ParsePushRouter"

    const-string v11, "Ignoring push because of JSON exception while building payload"

    invoke-static {v10, v11, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 843
    const/4 v8, 0x0

    goto :goto_0

    .line 841
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v8    # "pushPayload":Lorg/json/JSONObject;
    .restart local v9    # "pushPayload":Lorg/json/JSONObject;
    :catch_2
    move-exception v1

    move-object v8, v9

    .end local v9    # "pushPayload":Lorg/json/JSONObject;
    .restart local v8    # "pushPayload":Lorg/json/JSONObject;
    goto :goto_2
.end method

.method public getPushRequestJSON()Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 656
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 657
    .local v4, "request":Lorg/json/JSONObject;
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v1

    .line 660
    .local v1, "installation":Lcom/parse/ParseInstallation;
    :try_start_0
    const-string v5, "installation_id"

    invoke-virtual {v1}, Lcom/parse/ParseInstallation;->getInstallationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 661
    const-string v5, "oauth_key"

    invoke-static {}, Lcom/parse/ParseObject;->getApplicationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 662
    const-string v5, "v"

    const-string v6, "a1.9.1"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 664
    iget-object v5, p0, Lcom/parse/PushRouter;->history:Lcom/parse/PushHistory;

    invoke-virtual {v5}, Lcom/parse/PushHistory;->getLastReceivedTimestamp()Ljava/lang/String;

    move-result-object v2

    .line 665
    .local v2, "lastReceivedTimestamp":Ljava/lang/String;
    const-string v5, "last"

    if-eqz v2, :cond_1

    .end local v2    # "lastReceivedTimestamp":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 667
    iget-object v5, p0, Lcom/parse/PushRouter;->history:Lcom/parse/PushHistory;

    invoke-virtual {v5}, Lcom/parse/PushHistory;->getPushIds()Ljava/util/Set;

    move-result-object v3

    .line 668
    .local v3, "pushIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 669
    const-string v5, "last_seen"

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 672
    :cond_0
    const-string v5, "ack_keep_alive"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 674
    const-string v5, "ignore_after"

    iget-object v6, p0, Lcom/parse/PushRouter;->history:Lcom/parse/PushHistory;

    invoke-virtual {v6}, Lcom/parse/PushHistory;->getCutoffTimestamp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 680
    .end local v3    # "pushIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "request":Lorg/json/JSONObject;
    :goto_1
    return-object v4

    .line 665
    .restart local v2    # "lastReceivedTimestamp":Ljava/lang/String;
    .restart local v4    # "request":Lorg/json/JSONObject;
    :cond_1
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 675
    .end local v2    # "lastReceivedTimestamp":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 676
    .local v0, "e":Lorg/json/JSONException;
    const-string v5, "com.parse.ParsePushRouter"

    const-string v6, "Unexpected JSONException serializing push handshake"

    invoke-static {v5, v6, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 677
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getSubscriptions(Z)Ljava/util/Set;
    .locals 4
    .param p1, "includeDefaultRoute"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 758
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 759
    .local v1, "subscriptions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v2

    const-string v3, "channels"

    invoke-virtual {v2, v3}, Lcom/parse/ParseInstallation;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 761
    .local v0, "channels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 762
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 765
    :cond_0
    iget-object v2, p0, Lcom/parse/PushRouter;->routes:Lcom/parse/PushRoutes;

    invoke-virtual {v2}, Lcom/parse/PushRoutes;->getChannels()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 767
    if-nez p1, :cond_1

    .line 768
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 771
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method

.method public handleGcmPush(Landroid/content/Intent;)Lcom/parse/PushRouter$HandlePushResult;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 853
    invoke-virtual {p0, p1}, Lcom/parse/PushRouter;->convertGcmIntentToJSONObject(Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object v0

    .line 854
    .local v0, "pushPayload":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/parse/PushRouter;->handlePush(Lorg/json/JSONObject;)Lcom/parse/PushRouter$HandlePushResult;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/parse/PushRouter$HandlePushResult;->INVALID_DATA:Lcom/parse/PushRouter$HandlePushResult;

    goto :goto_0
.end method

.method public handlePpnsPush(Lorg/json/JSONObject;)Lcom/parse/PushRouter$HandlePushResult;
    .locals 5
    .param p1, "pushPayload"    # Lorg/json/JSONObject;

    .prologue
    const/4 v4, 0x0

    .line 861
    sget-object v1, Lcom/parse/PushRouter$HandlePushResult;->FAILED_HISTORY_TEST:Lcom/parse/PushRouter$HandlePushResult;

    .line 862
    .local v1, "result":Lcom/parse/PushRouter$HandlePushResult;
    const-string v3, "push_id"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 863
    .local v0, "pushId":Ljava/lang/String;
    const-string v3, "time"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 865
    .local v2, "timestamp":Ljava/lang/String;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/parse/PushRouter;->history:Lcom/parse/PushHistory;

    invoke-virtual {v3, v0, v2}, Lcom/parse/PushHistory;->tryInsertPush(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 866
    invoke-virtual {p0, p1}, Lcom/parse/PushRouter;->handlePush(Lorg/json/JSONObject;)Lcom/parse/PushRouter$HandlePushResult;

    move-result-object v1

    .line 867
    invoke-virtual {p0}, Lcom/parse/PushRouter;->saveStateToDisk()Z

    .line 870
    :cond_0
    return-object v1
.end method

.method public handlePush(Lorg/json/JSONObject;)Lcom/parse/PushRouter$HandlePushResult;
    .locals 2
    .param p1, "pushPayload"    # Lorg/json/JSONObject;

    .prologue
    .line 880
    invoke-static {}, Lcom/parse/ManifestInfo;->getPushUsesBroadcastReceivers()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 881
    invoke-direct {p0, p1}, Lcom/parse/PushRouter;->handlePushInternal(Lorg/json/JSONObject;)V

    .line 882
    sget-object v0, Lcom/parse/PushRouter$HandlePushResult;->INVOKED_PARSE_PUSH_BROADCAST_RECEIVER:Lcom/parse/PushRouter$HandlePushResult;

    .line 887
    .local v0, "result":Lcom/parse/PushRouter$HandlePushResult;
    :goto_0
    invoke-direct {p0, p1}, Lcom/parse/PushRouter;->serverInstallationUpdatedAt(Lorg/json/JSONObject;)Ljava/util/Date;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parse/PushRouter;->maybeRefreshInstallation(Ljava/util/Date;)V

    .line 888
    invoke-static {p1, v0}, Lcom/parse/PushRouter;->noteHandlePushResult(Lorg/json/JSONObject;Lcom/parse/PushRouter$HandlePushResult;)V

    .line 890
    return-object v0

    .line 884
    .end local v0    # "result":Lcom/parse/PushRouter$HandlePushResult;
    :cond_0
    invoke-direct {p0, p1}, Lcom/parse/PushRouter;->handlePushLegacy(Lorg/json/JSONObject;)Lcom/parse/PushRouter$HandlePushResult;

    move-result-object v0

    .restart local v0    # "result":Lcom/parse/PushRouter$HandlePushResult;
    goto :goto_0
.end method

.method public saveStateToDisk()Z
    .locals 5

    .prologue
    .line 636
    const/4 v2, 0x0

    .line 639
    .local v2, "success":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/PushRouter;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    .line 640
    .local v1, "json":Lorg/json/JSONObject;
    sget-object v3, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/parse/PushRouter;->stateLocation:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Lcom/parse/Parse;->saveDiskObject(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    const/4 v2, 0x1

    .line 646
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return v2

    .line 642
    :catch_0
    move-exception v0

    .line 643
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "com.parse.ParsePushRouter"

    const-string v4, "Error serializing push state to json"

    invoke-static {v3, v4, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setForceEnabledState(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "forceEnabled"    # Ljava/lang/Boolean;

    .prologue
    .line 714
    iget-object v0, p0, Lcom/parse/PushRouter;->forceEnabled:Ljava/lang/Boolean;

    .line 715
    .local v0, "oldForceEnabledState":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    .line 720
    :goto_0
    return-void

    .line 718
    :cond_0
    iput-object p1, p0, Lcom/parse/PushRouter;->forceEnabled:Ljava/lang/Boolean;

    .line 719
    invoke-virtual {p0}, Lcom/parse/PushRouter;->saveStateToDisk()Z

    goto :goto_0
.end method

.method public setPushStateVersion(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 744
    iget v0, p0, Lcom/parse/PushRouter;->pushStateVersion:I

    if-eq p1, v0, :cond_0

    .line 745
    iput p1, p0, Lcom/parse/PushRouter;->pushStateVersion:I

    .line 746
    invoke-virtual {p0}, Lcom/parse/PushRouter;->saveStateToDisk()Z

    .line 748
    :cond_0
    return-void
.end method

.method public subscribe(Ljava/lang/String;Ljava/lang/Class;I)V
    .locals 4
    .param p1, "channel"    # Ljava/lang/String;
    .param p3, "icon"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 688
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v0

    .line 689
    .local v0, "installation":Lcom/parse/ParseInstallation;
    new-instance v2, Lcom/parse/PushRoutes$Route;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Lcom/parse/PushRoutes$Route;-><init>(Ljava/lang/String;I)V

    .line 690
    .local v2, "route":Lcom/parse/PushRoutes$Route;
    iget-object v3, p0, Lcom/parse/PushRouter;->routes:Lcom/parse/PushRoutes;

    invoke-virtual {v3, p1, v2}, Lcom/parse/PushRoutes;->put(Ljava/lang/String;Lcom/parse/PushRoutes$Route;)Lcom/parse/PushRoutes$Route;

    move-result-object v1

    .line 692
    .local v1, "oldRoute":Lcom/parse/PushRoutes$Route;
    invoke-virtual {v2, v1}, Lcom/parse/PushRoutes$Route;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 693
    invoke-virtual {p0}, Lcom/parse/PushRouter;->saveStateToDisk()Z

    .line 696
    :cond_0
    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 697
    const-string v3, "channels"

    invoke-virtual {v0, v3, p1}, Lcom/parse/ParseInstallation;->addUnique(Ljava/lang/String;Ljava/lang/Object;)V

    .line 705
    :cond_1
    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->saveEventually()Lbolts/Task;

    .line 706
    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 606
    sget-object v1, Lcom/parse/PushRouter;->V2_PUSH_STATE_VERSION:Ljava/lang/Integer;

    iget v2, p0, Lcom/parse/PushRouter;->pushStateVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 607
    iget-object v1, p0, Lcom/parse/PushRouter;->history:Lcom/parse/PushHistory;

    invoke-virtual {v1}, Lcom/parse/PushHistory;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    .line 613
    .local v0, "json":Lorg/json/JSONObject;
    :goto_0
    const-string v1, "version"

    iget v2, p0, Lcom/parse/PushRouter;->pushStateVersion:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 614
    const-string v1, "forceEnabled"

    iget-object v2, p0, Lcom/parse/PushRouter;->forceEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 615
    return-object v0

    .line 609
    .end local v0    # "json":Lorg/json/JSONObject;
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/json/JSONObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/parse/PushRouter;->routes:Lcom/parse/PushRoutes;

    invoke-virtual {v3}, Lcom/parse/PushRoutes;->toJSON()Lorg/json/JSONObject;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/parse/PushRouter;->history:Lcom/parse/PushHistory;

    invoke-virtual {v3}, Lcom/parse/PushHistory;->toJSON()Lorg/json/JSONObject;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/parse/PushRouter;->merge([Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 611
    .restart local v0    # "json":Lorg/json/JSONObject;
    const-string v1, "channels"

    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v2

    invoke-static {v2}, Lcom/parse/PushRouter;->getChannelsArrayFromInstallation(Lcom/parse/ParseInstallation;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .locals 5
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 727
    iget-object v2, p0, Lcom/parse/PushRouter;->routes:Lcom/parse/PushRoutes;

    invoke-virtual {v2, p1}, Lcom/parse/PushRoutes;->remove(Ljava/lang/String;)Lcom/parse/PushRoutes$Route;

    move-result-object v1

    .line 729
    .local v1, "oldRoute":Lcom/parse/PushRoutes$Route;
    if-eqz v1, :cond_0

    .line 730
    invoke-virtual {p0}, Lcom/parse/PushRouter;->saveStateToDisk()Z

    .line 732
    if-eqz p1, :cond_0

    .line 733
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v0

    .line 734
    .local v0, "installation":Lcom/parse/ParseInstallation;
    const-string v2, "channels"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/parse/ParseInstallation;->removeAll(Ljava/lang/String;Ljava/util/Collection;)V

    .line 735
    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->saveEventually()Lbolts/Task;

    .line 738
    .end local v0    # "installation":Lcom/parse/ParseInstallation;
    :cond_0
    return-void
.end method
