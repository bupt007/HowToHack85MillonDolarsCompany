.class public Lcom/parse/ParseQuery;
.super Ljava/lang/Object;
.source "ParseQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseQuery$31;,
        Lcom/parse/ParseQuery$CommandDelegate;,
        Lcom/parse/ParseQuery$CallableWithCachePolicy;,
        Lcom/parse/ParseQuery$CachePolicy;,
        Lcom/parse/ParseQuery$RelationConstraint;,
        Lcom/parse/ParseQuery$KeyConstraints;,
        Lcom/parse/ParseQuery$QueryConstraints;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parse/ParseObject;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.parse.ParseQuery"


# instance fields
.field private cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

.field private className:Ljava/lang/String;

.field private ct:Lbolts/Task$TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">.TaskCompletionSource;"
        }
    .end annotation
.end field

.field private extraOptions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field ignoreACLs:Z

.field private include:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field includeIsDeletingEventually:Z

.field private isFromLocalDatastore:Z

.field private isRunning:Z

.field private final isRunningLock:Ljava/lang/Object;

.field private limit:I

.field private maxCacheAge:J

.field private objectsParsed:J

.field private order:Ljava/lang/String;

.field private pinName:Ljava/lang/String;

.field private queryReceived:J

.field private querySent:J

.field private queryStart:J

.field private selectedKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private skip:I

.field private trace:Z

.field private where:Lcom/parse/ParseQuery$QueryConstraints;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 301
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    .local p1, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/parse/ParseObject;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;-><init>(Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "theClassName"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    const/4 v2, 0x0

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParseQuery;->extraOptions:Ljava/util/HashMap;

    .line 219
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery;->isRunningLock:Ljava/lang/Object;

    .line 220
    iput-boolean v2, p0, Lcom/parse/ParseQuery;->isRunning:Z

    .line 312
    iput-object p1, p0, Lcom/parse/ParseQuery;->className:Ljava/lang/String;

    .line 313
    const/4 v0, -0x1

    iput v0, p0, Lcom/parse/ParseQuery;->limit:I

    .line 314
    iput v2, p0, Lcom/parse/ParseQuery;->skip:I

    .line 315
    new-instance v0, Lcom/parse/ParseQuery$QueryConstraints;

    invoke-direct {v0}, Lcom/parse/ParseQuery$QueryConstraints;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery;->where:Lcom/parse/ParseQuery$QueryConstraints;

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery;->include:Ljava/util/ArrayList;

    .line 317
    sget-object v0, Lcom/parse/ParseQuery$CachePolicy;->IGNORE_CACHE:Lcom/parse/ParseQuery$CachePolicy;

    iput-object v0, p0, Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    .line 318
    iput-boolean v2, p0, Lcom/parse/ParseQuery;->isFromLocalDatastore:Z

    .line 319
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/parse/ParseQuery;->maxCacheAge:J

    .line 321
    iput-boolean v2, p0, Lcom/parse/ParseQuery;->trace:Z

    .line 322
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery;->extraOptions:Ljava/util/HashMap;

    .line 323
    return-void
.end method

.method static synthetic access$000(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;Z)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQuery;
    .param p1, "x1"    # Lcom/parse/ParseUser;
    .param p2, "x2"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseQuery;->countFromNetworkAsync(Lcom/parse/ParseUser;Z)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQuery;
    .param p1, "x1"    # Lcom/parse/ParseUser;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/parse/ParseQuery;->countFromCacheAsync(Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1002(Lcom/parse/ParseQuery;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseQuery;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/parse/ParseQuery;->isRunning:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/parse/ParseQuery;)Lbolts/Task$TaskCompletionSource;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQuery;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parse/ParseQuery;->ct:Lbolts/Task$TaskCompletionSource;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/parse/ParseQuery;Lbolts/Task$TaskCompletionSource;)Lbolts/Task$TaskCompletionSource;
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseQuery;
    .param p1, "x1"    # Lbolts/Task$TaskCompletionSource;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/parse/ParseQuery;->ct:Lbolts/Task$TaskCompletionSource;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/parse/ParseQuery;)Lcom/parse/ParseQuery$CachePolicy;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQuery;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/parse/ParseQuery;J)J
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQuery;
    .param p1, "x1"    # J

    .prologue
    .line 78
    iput-wide p1, p0, Lcom/parse/ParseQuery;->queryStart:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/parse/ParseQuery;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQuery;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/parse/ParseQuery;->isFromLocalDatastore:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQuery;
    .param p1, "x1"    # Lcom/parse/ParseUser;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/parse/ParseQuery;->findFromLocalDatastoreAsync(Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/parse/ParseQuery;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQuery;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/parse/ParseQuery;->getUserAsync()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQuery;
    .param p1, "x1"    # Lcom/parse/ParseUser;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/parse/ParseQuery;->getFirstFromLocalDatastoreAsync(Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery$CachePolicy;Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQuery;
    .param p1, "x1"    # Lcom/parse/ParseQuery$CachePolicy;
    .param p2, "x2"    # Lcom/parse/ParseUser;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseQuery;->getFirstWithCachePolicyAsync(Lcom/parse/ParseQuery$CachePolicy;Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQuery;
    .param p1, "x1"    # Lcom/parse/ParseUser;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/parse/ParseQuery;->countFromLocalDatastoreAsync(Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;Z)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQuery;
    .param p1, "x1"    # Lcom/parse/ParseUser;
    .param p2, "x2"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseQuery;->findFromNetworkAsync(Lcom/parse/ParseUser;Z)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery$CachePolicy;Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQuery;
    .param p1, "x1"    # Lcom/parse/ParseQuery$CachePolicy;
    .param p2, "x2"    # Lcom/parse/ParseUser;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseQuery;->countWithCachePolicyAsync(Lcom/parse/ParseQuery$CachePolicy;Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/parse/ParseQuery;Ljava/lang/String;Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQuery;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/parse/ParseUser;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseQuery;->getFromLocalDatastoreAsync(Ljava/lang/String;Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/parse/ParseQuery;Ljava/lang/String;Lcom/parse/ParseQuery$CachePolicy;Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQuery;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/parse/ParseQuery$CachePolicy;
    .param p3, "x3"    # Lcom/parse/ParseUser;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/ParseQuery;->getWithCachePolicyAsync(Ljava/lang/String;Lcom/parse/ParseQuery$CachePolicy;Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQuery;
    .param p1, "x1"    # Lcom/parse/ParseUser;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/parse/ParseQuery;->findFromCacheAsync(Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcom/parse/ParseQuery;J)J
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQuery;
    .param p1, "x1"    # J

    .prologue
    .line 78
    iput-wide p1, p0, Lcom/parse/ParseQuery;->queryReceived:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/parse/ParseQuery;Lorg/json/JSONObject;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQuery;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/parse/ParseQuery;->convertFindResponse(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;)Lcom/parse/ParseRESTQueryCommand;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQuery;
    .param p1, "x1"    # Lcom/parse/ParseUser;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/parse/ParseQuery;->currentFindCommand(Lcom/parse/ParseUser;)Lcom/parse/ParseRESTQueryCommand;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/parse/ParseQuery;)J
    .locals 2
    .param p0, "x0"    # Lcom/parse/ParseQuery;

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/parse/ParseQuery;->maxCacheAge:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;)Lcom/parse/ParseRESTCommand;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQuery;
    .param p1, "x1"    # Lcom/parse/ParseUser;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/parse/ParseQuery;->currentCountCommand(Lcom/parse/ParseUser;)Lcom/parse/ParseRESTCommand;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/parse/ParseQuery;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQuery;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parse/ParseQuery;->isRunningLock:Ljava/lang/Object;

    return-object v0
.end method

.method private addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "condition"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1441
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1443
    const/4 v1, 0x0

    .line 1446
    .local v1, "whereValue":Lcom/parse/ParseQuery$KeyConstraints;
    iget-object v2, p0, Lcom/parse/ParseQuery;->where:Lcom/parse/ParseQuery$QueryConstraints;

    invoke-virtual {v2, p1}, Lcom/parse/ParseQuery$QueryConstraints;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1447
    iget-object v2, p0, Lcom/parse/ParseQuery;->where:Lcom/parse/ParseQuery$QueryConstraints;

    invoke-virtual {v2, p1}, Lcom/parse/ParseQuery$QueryConstraints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1448
    .local v0, "existingValue":Ljava/lang/Object;
    instance-of v2, v0, Lcom/parse/ParseQuery$KeyConstraints;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1449
    check-cast v1, Lcom/parse/ParseQuery$KeyConstraints;

    .line 1452
    .end local v0    # "existingValue":Ljava/lang/Object;
    :cond_0
    if-nez v1, :cond_1

    .line 1453
    new-instance v1, Lcom/parse/ParseQuery$KeyConstraints;

    .end local v1    # "whereValue":Lcom/parse/ParseQuery$KeyConstraints;
    invoke-direct {v1}, Lcom/parse/ParseQuery$KeyConstraints;-><init>()V

    .line 1456
    .restart local v1    # "whereValue":Lcom/parse/ParseQuery$KeyConstraints;
    :cond_1
    invoke-virtual {v1, p2, p3}, Lcom/parse/ParseQuery$KeyConstraints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1458
    iget-object v2, p0, Lcom/parse/ParseQuery;->where:Lcom/parse/ParseQuery$QueryConstraints;

    invoke-virtual {v2, p1, v1}, Lcom/parse/ParseQuery$QueryConstraints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1459
    return-object p0
.end method

.method private build()Lcom/parse/ParseQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 803
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    iget-boolean v0, p0, Lcom/parse/ParseQuery;->isFromLocalDatastore:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/parse/ParseQuery;->ignoreACLs:Z

    if-eqz v0, :cond_0

    .line 804
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "`ignoreACLs` cannot be combined with network queries"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 807
    :cond_0
    return-object p0
.end method

.method private checkIfRunning()V
    .locals 1

    .prologue
    .line 326
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->checkIfRunning(Z)V

    .line 327
    return-void
.end method

.method private checkIfRunning(Z)V
    .locals 3
    .param p1, "grabLock"    # Z

    .prologue
    .line 330
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    iget-object v1, p0, Lcom/parse/ParseQuery;->isRunningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 331
    :try_start_0
    iget-boolean v0, p0, Lcom/parse/ParseQuery;->isRunning:Z

    if-eqz v0, :cond_0

    .line 332
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "This query has an outstanding network connection. You have to wait until it\'s done."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 334
    :cond_0
    if-eqz p1, :cond_1

    .line 335
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/parse/ParseQuery;->isRunning:Z

    .line 336
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseQuery;->ct:Lbolts/Task$TaskCompletionSource;

    .line 338
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    return-void
.end method

.method private static checkLDSEnabled(Z)V
    .locals 2
    .param p0, "enabled"    # Z

    .prologue
    .line 649
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/parse/OfflineStore;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 650
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method requires Local Datastore. Please refer to `Parse#enableLocalDatastore(Context)`."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 653
    :cond_0
    if-nez p0, :cond_1

    invoke-static {}, Lcom/parse/OfflineStore;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 654
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported method when Local Datastore is enabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 656
    :cond_1
    return-void
.end method

.method public static clearAllCachedResults()V
    .locals 1

    .prologue
    .line 1336
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/parse/ParseQuery;->checkLDSEnabled(Z)V

    .line 1338
    invoke-static {}, Lcom/parse/ParseKeyValueCache;->clearKeyValueCacheDir()V

    .line 1339
    return-void
.end method

.method private convertFindResponse(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 18
    .param p1, "response"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 408
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v2, "answer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const-string v10, "results"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 410
    .local v8, "results":Lorg/json/JSONArray;
    if-nez v8, :cond_2

    .line 411
    const-string v10, "com.parse.ParseQuery"

    const-string v11, "null results in find response"

    invoke-static {v10, v11}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/parse/ParseQuery;->objectsParsed:J

    .line 434
    const-string v10, "trace"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 435
    const-string v10, "trace"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 436
    .local v9, "serverTrace":Ljava/lang/Object;
    const-string v10, "ParseQuery"

    const-string v11, "Query pre-processing took %f seconds\n%s\nClient side parsing took %f seconds\n"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/parse/ParseQuery;->querySent:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parse/ParseQuery;->queryStart:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    long-to-float v14, v14

    const v15, 0x49742400    # 1000000.0f

    div-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v9, v12, v13

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/parse/ParseQuery;->objectsParsed:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parse/ParseQuery;->queryReceived:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    long-to-float v14, v14

    const v15, 0x49742400    # 1000000.0f

    div-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    .end local v9    # "serverTrace":Ljava/lang/Object;
    :cond_1
    return-object v2

    .line 413
    :cond_2
    const-string v10, "className"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 414
    .local v7, "resultClassName":Ljava/lang/String;
    const-string v10, ""

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 415
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/parse/ParseQuery;->className:Ljava/lang/String;

    .line 417
    :cond_3
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v4, v10, :cond_0

    .line 418
    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 419
    .local v3, "data":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/parse/ParseQuery;->selectedKeys:Ljava/util/ArrayList;

    if-nez v10, :cond_5

    const/4 v10, 0x1

    :goto_1
    invoke-static {v3, v7, v10}, Lcom/parse/ParseObject;->fromJSON(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/parse/ParseObject;

    move-result-object v5

    .line 420
    .local v5, "object":Lcom/parse/ParseObject;, "TT;"
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/parse/ParseQuery;->where:Lcom/parse/ParseQuery$QueryConstraints;

    const-string v11, "$relatedTo"

    invoke-virtual {v10, v11}, Lcom/parse/ParseQuery$QueryConstraints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parse/ParseQuery$RelationConstraint;

    .line 427
    .local v6, "relation":Lcom/parse/ParseQuery$RelationConstraint;
    if-eqz v6, :cond_4

    .line 428
    invoke-virtual {v6}, Lcom/parse/ParseQuery$RelationConstraint;->getRelation()Lcom/parse/ParseRelation;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/parse/ParseRelation;->addKnownObject(Lcom/parse/ParseObject;)V

    .line 417
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 419
    .end local v5    # "object":Lcom/parse/ParseObject;, "TT;"
    .end local v6    # "relation":Lcom/parse/ParseQuery$RelationConstraint;
    :cond_5
    const/4 v10, 0x0

    goto :goto_1
.end method

.method private countFromCacheAsync(Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 2
    .param p1, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 850
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    new-instance v0, Lcom/parse/ParseQuery$10;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseQuery$10;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;)V

    sget-object v1, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private countFromLocalDatastoreAsync(Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 3
    .param p1, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 906
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-static {}, Lcom/parse/OfflineStore;->getCurrent()Lcom/parse/OfflineStore;

    move-result-object v0

    .line 908
    .local v0, "store":Lcom/parse/OfflineStore;
    iget-object v2, p0, Lcom/parse/ParseQuery;->pinName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 909
    iget-object v2, p0, Lcom/parse/ParseQuery;->pinName:Ljava/lang/String;

    invoke-static {v2}, Lcom/parse/ParsePin;->getParsePin(Ljava/lang/String;)Lbolts/Task;

    move-result-object v1

    .line 913
    .local v1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParsePin;>;"
    :goto_0
    new-instance v2, Lcom/parse/ParseQuery$12;

    invoke-direct {v2, p0, v0, p1}, Lcom/parse/ParseQuery$12;-><init>(Lcom/parse/ParseQuery;Lcom/parse/OfflineStore;Lcom/parse/ParseUser;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    return-object v2

    .line 911
    .end local v1    # "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParsePin;>;"
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    .restart local v1    # "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParsePin;>;"
    goto :goto_0
.end method

.method private countFromNetworkAsync(Lcom/parse/ParseUser;Z)Lbolts/Task;
    .locals 5
    .param p1, "user"    # Lcom/parse/ParseUser;
    .param p2, "shouldRetry"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            "Z)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1153
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0, p1}, Lcom/parse/ParseQuery;->currentCountCommand(Lcom/parse/ParseUser;)Lcom/parse/ParseRESTCommand;

    move-result-object v1

    .line 1154
    .local v1, "command":Lcom/parse/ParseRESTCommand;
    if-eqz p2, :cond_0

    .line 1155
    invoke-virtual {v1}, Lcom/parse/ParseRESTCommand;->enableRetrying()V

    .line 1158
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseQuery;->ct:Lbolts/Task$TaskCompletionSource;

    if-nez v2, :cond_1

    .line 1159
    invoke-virtual {v1}, Lcom/parse/ParseRESTCommand;->cancel()V

    .line 1173
    :goto_0
    iget-object v2, p0, Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    sget-object v3, Lcom/parse/ParseQuery$CachePolicy;->IGNORE_CACHE:Lcom/parse/ParseQuery$CachePolicy;

    if-eq v2, v3, :cond_2

    const/4 v0, 0x1

    .line 1174
    .local v0, "caching":Z
    :goto_1
    invoke-virtual {v1}, Lcom/parse/ParseRESTCommand;->executeAsync()Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseQuery$23;

    invoke-direct {v3, p0, v0, v1}, Lcom/parse/ParseQuery$23;-><init>(Lcom/parse/ParseQuery;ZLcom/parse/ParseRESTCommand;)V

    sget-object v4, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v2, v3, v4}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseQuery$22;

    invoke-direct {v3, p0}, Lcom/parse/ParseQuery$22;-><init>(Lcom/parse/ParseQuery;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    return-object v2

    .line 1161
    .end local v0    # "caching":Z
    :cond_1
    iget-object v2, p0, Lcom/parse/ParseQuery;->ct:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v2}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseQuery$21;

    invoke-direct {v3, p0, v1}, Lcom/parse/ParseQuery$21;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseRESTCommand;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    goto :goto_0

    .line 1173
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private countWithCachePolicyAsync(Lcom/parse/ParseQuery$CachePolicy;Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 2
    .param p1, "policy"    # Lcom/parse/ParseQuery$CachePolicy;
    .param p2, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery$CachePolicy;",
            "Lcom/parse/ParseUser;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 489
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    new-instance v0, Lcom/parse/ParseQuery$3;

    invoke-direct {v0, p0, p2}, Lcom/parse/ParseQuery$3;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;)V

    .line 500
    .local v0, "callbacks":Lcom/parse/ParseQuery$CommandDelegate;, "Lcom/parse/ParseQuery$CommandDelegate<Ljava/lang/Integer;>;"
    invoke-direct {p0, v0, p1}, Lcom/parse/ParseQuery;->runCommandWithPolicyAsync(Lcom/parse/ParseQuery$CommandDelegate;Lcom/parse/ParseQuery$CachePolicy;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method private currentCountCommand(Lcom/parse/ParseUser;)Lcom/parse/ParseRESTCommand;
    .locals 1
    .param p1, "user"    # Lcom/parse/ParseUser;

    .prologue
    .line 402
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0, p1}, Lcom/parse/ParseQuery;->currentFindCommand(Lcom/parse/ParseUser;)Lcom/parse/ParseRESTQueryCommand;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseRESTQueryCommand;->countCommand(Lcom/parse/ParseRESTQueryCommand;)Lcom/parse/ParseRESTQueryCommand;

    move-result-object v0

    return-object v0
.end method

.method private currentFindCommand(Lcom/parse/ParseUser;)Lcom/parse/ParseRESTQueryCommand;
    .locals 10
    .param p1, "user"    # Lcom/parse/ParseUser;

    .prologue
    .line 396
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/parse/ParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v9

    .line 397
    .local v9, "sessionToken":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/parse/ParseQuery;->className:Ljava/lang/String;

    iget-object v1, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    iget-object v2, p0, Lcom/parse/ParseQuery;->where:Lcom/parse/ParseQuery$QueryConstraints;

    iget-object v3, p0, Lcom/parse/ParseQuery;->selectedKeys:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/parse/ParseQuery;->include:Ljava/util/ArrayList;

    iget v5, p0, Lcom/parse/ParseQuery;->limit:I

    iget v6, p0, Lcom/parse/ParseQuery;->skip:I

    iget-object v7, p0, Lcom/parse/ParseQuery;->extraOptions:Ljava/util/HashMap;

    iget-boolean v8, p0, Lcom/parse/ParseQuery;->trace:Z

    invoke-static/range {v0 .. v9}, Lcom/parse/ParseRESTQueryCommand;->findCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;IILjava/util/Map;ZLjava/lang/String;)Lcom/parse/ParseRESTQueryCommand;

    move-result-object v0

    return-object v0

    .line 396
    .end local v9    # "sessionToken":Ljava/lang/String;
    :cond_0
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private doInBackground(Lcom/parse/ParseQuery$CallableWithCachePolicy;Lcom/parse/ParseCallback2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/parse/ParseQuery$CallableWithCachePolicy",
            "<",
            "Lbolts/Task",
            "<TTResult;>;>;",
            "Lcom/parse/ParseCallback2",
            "<TTResult;",
            "Lcom/parse/ParseException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 960
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    .local p1, "callable":Lcom/parse/ParseQuery$CallableWithCachePolicy;, "Lcom/parse/ParseQuery$CallableWithCachePolicy<Lbolts/Task<TTResult;>;>;"
    .local p2, "callback":Lcom/parse/ParseCallback2;, "Lcom/parse/ParseCallback2<TTResult;Lcom/parse/ParseException;>;"
    new-instance v0, Lcom/parse/ParseQuery$14;

    invoke-direct {v0, p0, p1, p2}, Lcom/parse/ParseQuery$14;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery$CallableWithCachePolicy;Lcom/parse/ParseCallback2;)V

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->doWithRunningCheck(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 982
    return-void
.end method

.method private doWithRunningCheck(Ljava/util/concurrent/Callable;)Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lbolts/Task",
            "<TTResult;>;>;)",
            "Lbolts/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 933
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    .local p1, "runnable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lbolts/Task<TTResult;>;>;"
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/parse/ParseQuery;->checkIfRunning(Z)V

    .line 936
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbolts/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 940
    .local v1, "task":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    :goto_0
    new-instance v2, Lcom/parse/ParseQuery$13;

    invoke-direct {v2, p0}, Lcom/parse/ParseQuery$13;-><init>(Lcom/parse/ParseQuery;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    return-object v2

    .line 937
    .end local v1    # "task":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    :catch_0
    move-exception v0

    .line 938
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v1

    .restart local v1    # "task":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    goto :goto_0
.end method

.method private findFromCacheAsync(Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 2
    .param p1, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 819
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    new-instance v0, Lcom/parse/ParseQuery$9;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseQuery$9;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;)V

    sget-object v1, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private findFromLocalDatastoreAsync(Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 3
    .param p1, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 881
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-static {}, Lcom/parse/OfflineStore;->getCurrent()Lcom/parse/OfflineStore;

    move-result-object v0

    .line 883
    .local v0, "store":Lcom/parse/OfflineStore;
    iget-object v2, p0, Lcom/parse/ParseQuery;->pinName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 884
    iget-object v2, p0, Lcom/parse/ParseQuery;->pinName:Ljava/lang/String;

    invoke-static {v2}, Lcom/parse/ParsePin;->getParsePin(Ljava/lang/String;)Lbolts/Task;

    move-result-object v1

    .line 888
    .local v1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParsePin;>;"
    :goto_0
    new-instance v2, Lcom/parse/ParseQuery$11;

    invoke-direct {v2, p0, v0, p1}, Lcom/parse/ParseQuery$11;-><init>(Lcom/parse/ParseQuery;Lcom/parse/OfflineStore;Lcom/parse/ParseUser;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    return-object v2

    .line 886
    .end local v1    # "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParsePin;>;"
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    .restart local v1    # "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParsePin;>;"
    goto :goto_0
.end method

.method private findFromNetworkAsync(Lcom/parse/ParseUser;Z)Lbolts/Task;
    .locals 5
    .param p1, "user"    # Lcom/parse/ParseUser;
    .param p2, "shouldRetry"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            "Z)",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 612
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0, p1}, Lcom/parse/ParseQuery;->currentFindCommand(Lcom/parse/ParseUser;)Lcom/parse/ParseRESTQueryCommand;

    move-result-object v1

    .line 613
    .local v1, "command":Lcom/parse/ParseRESTCommand;
    if-eqz p2, :cond_0

    .line 614
    invoke-virtual {v1}, Lcom/parse/ParseRESTCommand;->enableRetrying()V

    .line 617
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseQuery;->ct:Lbolts/Task$TaskCompletionSource;

    if-nez v2, :cond_1

    .line 618
    invoke-virtual {v1}, Lcom/parse/ParseRESTCommand;->cancel()V

    .line 632
    :goto_0
    iget-object v2, p0, Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    sget-object v3, Lcom/parse/ParseQuery$CachePolicy;->IGNORE_CACHE:Lcom/parse/ParseQuery$CachePolicy;

    if-eq v2, v3, :cond_2

    const/4 v0, 0x1

    .line 633
    .local v0, "caching":Z
    :goto_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/parse/ParseQuery;->querySent:J

    .line 634
    invoke-virtual {v1}, Lcom/parse/ParseRESTCommand;->executeAsync()Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseQuery$8;

    invoke-direct {v3, p0, v0, v1}, Lcom/parse/ParseQuery$8;-><init>(Lcom/parse/ParseQuery;ZLcom/parse/ParseRESTCommand;)V

    sget-object v4, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v2, v3, v4}, Lbolts/Task;->onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v2

    return-object v2

    .line 620
    .end local v0    # "caching":Z
    :cond_1
    iget-object v2, p0, Lcom/parse/ParseQuery;->ct:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v2}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseQuery$7;

    invoke-direct {v3, p0, v1}, Lcom/parse/ParseQuery$7;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseRESTCommand;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    goto :goto_0

    .line 632
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getFirstFromLocalDatastoreAsync(Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 2
    .param p1, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            ")",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 535
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    const/4 v0, 0x1

    iput v0, p0, Lcom/parse/ParseQuery;->limit:I

    .line 536
    invoke-direct {p0, p1}, Lcom/parse/ParseQuery;->findFromLocalDatastoreAsync(Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseQuery$6;

    invoke-direct {v1, p0}, Lcom/parse/ParseQuery$6;-><init>(Lcom/parse/ParseQuery;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private getFirstWithCachePolicyAsync(Lcom/parse/ParseQuery$CachePolicy;Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 2
    .param p1, "policy"    # Lcom/parse/ParseQuery$CachePolicy;
    .param p2, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery$CachePolicy;",
            "Lcom/parse/ParseUser;",
            ")",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 519
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    const/4 v0, 0x1

    iput v0, p0, Lcom/parse/ParseQuery;->limit:I

    .line 520
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParseQuery;->findWithCachePolicyAsync(Lcom/parse/ParseQuery$CachePolicy;Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseQuery$5;

    invoke-direct {v1, p0}, Lcom/parse/ParseQuery$5;-><init>(Lcom/parse/ParseQuery;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private getFromLocalDatastoreAsync(Ljava/lang/String;Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 2
    .param p1, "objectId"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseUser;",
            ")",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 558
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/parse/ParseQuery;->skip:I

    .line 559
    new-instance v0, Lcom/parse/ParseQuery$QueryConstraints;

    invoke-direct {v0}, Lcom/parse/ParseQuery$QueryConstraints;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery;->where:Lcom/parse/ParseQuery$QueryConstraints;

    .line 560
    iget-object v0, p0, Lcom/parse/ParseQuery;->where:Lcom/parse/ParseQuery$QueryConstraints;

    const-string v1, "objectId"

    invoke-virtual {v0, v1, p1}, Lcom/parse/ParseQuery$QueryConstraints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    invoke-direct {p0, p2}, Lcom/parse/ParseQuery;->getFirstFromLocalDatastoreAsync(Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static getQuery(Ljava/lang/Class;)Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/parse/ParseQuery;

    invoke-direct {v0, p0}, Lcom/parse/ParseQuery;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static getQuery(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 188
    new-instance v0, Lcom/parse/ParseQuery;

    invoke-direct {v0, p0}, Lcom/parse/ParseQuery;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getUserAsync()Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    iget-boolean v0, p0, Lcom/parse/ParseQuery;->ignoreACLs:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUserAsync()Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUserQuery()Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 198
    invoke-static {}, Lcom/parse/ParseUser;->getQuery()Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method private getWithCachePolicyAsync(Ljava/lang/String;Lcom/parse/ParseQuery$CachePolicy;Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 2
    .param p1, "objectId"    # Ljava/lang/String;
    .param p2, "policy"    # Lcom/parse/ParseQuery$CachePolicy;
    .param p3, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery$CachePolicy;",
            "Lcom/parse/ParseUser;",
            ")",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 551
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/parse/ParseQuery;->skip:I

    .line 552
    new-instance v0, Lcom/parse/ParseQuery$QueryConstraints;

    invoke-direct {v0}, Lcom/parse/ParseQuery$QueryConstraints;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery;->where:Lcom/parse/ParseQuery$QueryConstraints;

    .line 553
    iget-object v0, p0, Lcom/parse/ParseQuery;->where:Lcom/parse/ParseQuery$QueryConstraints;

    const-string v1, "objectId"

    invoke-virtual {v0, v1, p1}, Lcom/parse/ParseQuery$QueryConstraints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    invoke-direct {p0, p2, p3}, Lcom/parse/ParseQuery;->getFirstWithCachePolicyAsync(Lcom/parse/ParseQuery$CachePolicy;Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static or(Ljava/util/List;)Lcom/parse/ParseQuery;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseQuery",
            "<TT;>;>;)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "queries":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseQuery<TT;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v2, "localList":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseQuery<+TT;>;>;"
    const/4 v0, 0x0

    .line 152
    .local v0, "className":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 153
    if-eqz v0, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parse/ParseQuery;

    iget-object v4, v4, Lcom/parse/ParseQuery;->className:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 154
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "All of the queries in an or query must be on the same class "

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 157
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parse/ParseQuery;

    iget-object v0, v4, Lcom/parse/ParseQuery;->className:Ljava/lang/String;

    .line 158
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 161
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Can\'t take an or of an empty list of queries"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 163
    :cond_2
    new-instance v3, Lcom/parse/ParseQuery;

    invoke-direct {v3, v0}, Lcom/parse/ParseQuery;-><init>(Ljava/lang/String;)V

    .line 164
    .local v3, "value":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {v3, v2}, Lcom/parse/ParseQuery;->whereSatifiesAnyOf(Ljava/util/List;)Lcom/parse/ParseQuery;

    move-result-object v4

    return-object v4
.end method

.method private runCommandWithPolicyAsync(Lcom/parse/ParseQuery$CommandDelegate;Lcom/parse/ParseQuery$CachePolicy;)Lbolts/Task;
    .locals 3
    .param p2, "policy"    # Lcom/parse/ParseQuery$CachePolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/parse/ParseQuery$CommandDelegate",
            "<TTResult;>;",
            "Lcom/parse/ParseQuery$CachePolicy;",
            ")",
            "Lbolts/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 450
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    .local p1, "c":Lcom/parse/ParseQuery$CommandDelegate;, "Lcom/parse/ParseQuery$CommandDelegate<TTResult;>;"
    sget-object v0, Lcom/parse/ParseQuery$31;->$SwitchMap$com$parse$ParseQuery$CachePolicy:[I

    invoke-virtual {p2}, Lcom/parse/ParseQuery$CachePolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 484
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown cache policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :pswitch_0
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/parse/ParseQuery$CommandDelegate;->runOnNetworkAsync(Z)Lbolts/Task;

    move-result-object v0

    .line 467
    :goto_0
    return-object v0

    .line 455
    :pswitch_1
    invoke-interface {p1}, Lcom/parse/ParseQuery$CommandDelegate;->runFromCacheAsync()Lbolts/Task;

    move-result-object v0

    goto :goto_0

    .line 457
    :pswitch_2
    invoke-interface {p1}, Lcom/parse/ParseQuery$CommandDelegate;->runFromCacheAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseQuery$1;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseQuery$1;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery$CommandDelegate;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    goto :goto_0

    .line 467
    :pswitch_3
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/parse/ParseQuery$CommandDelegate;->runOnNetworkAsync(Z)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseQuery$2;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseQuery$2;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery$CommandDelegate;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    goto :goto_0

    .line 482
    :pswitch_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You cannot use the cache policy CACHE_THEN_NETWORK with find()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private whereSatifiesAnyOf(Ljava/util/List;)Lcom/parse/ParseQuery;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseQuery",
            "<+TT;>;>;)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1654
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    .local p1, "queries":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseQuery<+TT;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1655
    .local v0, "constraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parse/ParseQuery$QueryConstraints;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseQuery;

    .line 1656
    .local v2, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<+TT;>;"
    iget v3, v2, Lcom/parse/ParseQuery;->limit:I

    if-ltz v3, :cond_0

    .line 1657
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot have limits in sub queries of an \'OR\' query"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1659
    :cond_0
    iget v3, v2, Lcom/parse/ParseQuery;->skip:I

    if-lez v3, :cond_1

    .line 1660
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot have skips in sub queries of an \'OR\' query"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1662
    :cond_1
    iget-object v3, v2, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1663
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot have an order in sub queries of an \'OR\' query"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1665
    :cond_2
    iget-object v3, v2, Lcom/parse/ParseQuery;->include:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1666
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot have an include in sub queries of an \'OR\' query"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1668
    :cond_3
    iget-object v3, v2, Lcom/parse/ParseQuery;->selectedKeys:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    .line 1669
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot have an selectKeys in sub queries of an \'OR\' query"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1673
    :cond_4
    invoke-virtual {v2}, Lcom/parse/ParseQuery;->getConstraints()Lcom/parse/ParseQuery$QueryConstraints;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1675
    .end local v2    # "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<+TT;>;"
    :cond_5
    iget-object v3, p0, Lcom/parse/ParseQuery;->where:Lcom/parse/ParseQuery$QueryConstraints;

    const-string v4, "$or"

    invoke-virtual {v3, v4, v0}, Lcom/parse/ParseQuery$QueryConstraints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1676
    return-object p0
.end method


# virtual methods
.method public addAscendingOrder(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1978
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1980
    iget-object v0, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1981
    iput-object p1, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    .line 1985
    :goto_0
    return-object p0

    .line 1983
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    goto :goto_0
.end method

.method public addDescendingOrder(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2012
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 2014
    iget-object v0, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    .line 2019
    :goto_0
    return-object p0

    .line 2017
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    goto :goto_0
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 569
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    iget-object v1, p0, Lcom/parse/ParseQuery;->isRunningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 570
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseQuery;->ct:Lbolts/Task$TaskCompletionSource;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/parse/ParseQuery;->ct:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->trySetCancelled()Z

    .line 572
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParseQuery;->ct:Lbolts/Task$TaskCompletionSource;

    .line 574
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/ParseQuery;->isRunning:Z

    .line 575
    monitor-exit v1

    .line 576
    return-void

    .line 575
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearCachedResult()V
    .locals 3

    .prologue
    .line 1319
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/parse/ParseQuery;->checkLDSEnabled(Z)V

    .line 1321
    const/4 v1, 0x0

    .line 1323
    .local v1, "user":Lcom/parse/ParseUser;
    :try_start_0
    invoke-direct {p0}, Lcom/parse/ParseQuery;->getUserAsync()Lbolts/Task;

    move-result-object v2

    invoke-static {v2}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/parse/ParseUser;

    move-object v1, v0
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1329
    :goto_0
    invoke-direct {p0, v1}, Lcom/parse/ParseQuery;->currentFindCommand(Lcom/parse/ParseUser;)Lcom/parse/ParseRESTQueryCommand;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParseRESTQueryCommand;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/parse/ParseKeyValueCache;->clearFromKeyValueCache(Ljava/lang/String;)V

    .line 1330
    return-void

    .line 1324
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public count()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1149
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-virtual {p0}, Lcom/parse/ParseQuery;->countInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public countInBackground()Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1200
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->build()Lcom/parse/ParseQuery;

    .line 1202
    new-instance v0, Lcom/parse/ParseQuery$24;

    invoke-direct {v0, p0}, Lcom/parse/ParseQuery$24;-><init>(Lcom/parse/ParseQuery;)V

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->doWithRunningCheck(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public countInBackground(Lcom/parse/CountCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/parse/CountCallback;

    .prologue
    .line 1230
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->build()Lcom/parse/ParseQuery;

    .line 1233
    const/4 v0, 0x0

    .line 1234
    .local v0, "c":Lcom/parse/ParseCallback2;, "Lcom/parse/ParseCallback2<Ljava/lang/Integer;Lcom/parse/ParseException;>;"
    if-eqz p1, :cond_0

    .line 1235
    new-instance v0, Lcom/parse/ParseQuery$25;

    .end local v0    # "c":Lcom/parse/ParseCallback2;, "Lcom/parse/ParseCallback2<Ljava/lang/Integer;Lcom/parse/ParseException;>;"
    invoke-direct {v0, p0, p1}, Lcom/parse/ParseQuery$25;-><init>(Lcom/parse/ParseQuery;Lcom/parse/CountCallback;)V

    .line 1243
    .restart local v0    # "c":Lcom/parse/ParseCallback2;, "Lcom/parse/ParseCallback2<Ljava/lang/Integer;Lcom/parse/ParseException;>;"
    :cond_0
    iget-boolean v1, p0, Lcom/parse/ParseQuery;->isFromLocalDatastore:Z

    if-eqz v1, :cond_1

    .line 1244
    new-instance v1, Lcom/parse/ParseQuery$26;

    invoke-direct {v1, p0}, Lcom/parse/ParseQuery$26;-><init>(Lcom/parse/ParseQuery;)V

    invoke-direct {p0, v1}, Lcom/parse/ParseQuery;->doWithRunningCheck(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 1272
    :goto_0
    return-void

    .line 1258
    :cond_1
    new-instance v1, Lcom/parse/ParseQuery$27;

    invoke-direct {v1, p0}, Lcom/parse/ParseQuery$27;-><init>(Lcom/parse/ParseQuery;)V

    invoke-direct {p0, v1, v0}, Lcom/parse/ParseQuery;->doInBackground(Lcom/parse/ParseQuery$CallableWithCachePolicy;Lcom/parse/ParseCallback2;)V

    goto :goto_0
.end method

.method public find()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 588
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-virtual {p0}, Lcom/parse/ParseQuery;->findInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public findInBackground()Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 995
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->build()Lcom/parse/ParseQuery;

    .line 997
    new-instance v0, Lcom/parse/ParseQuery$15;

    invoke-direct {v0, p0}, Lcom/parse/ParseQuery$15;-><init>(Lcom/parse/ParseQuery;)V

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->doWithRunningCheck(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public findInBackground(Lcom/parse/FindCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/FindCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1028
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    .local p1, "callback":Lcom/parse/FindCallback;, "Lcom/parse/FindCallback<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->build()Lcom/parse/ParseQuery;

    .line 1030
    iget-boolean v0, p0, Lcom/parse/ParseQuery;->isFromLocalDatastore:Z

    if-eqz v0, :cond_0

    .line 1031
    new-instance v0, Lcom/parse/ParseQuery$16;

    invoke-direct {v0, p0}, Lcom/parse/ParseQuery$16;-><init>(Lcom/parse/ParseQuery;)V

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->doWithRunningCheck(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 1059
    :goto_0
    return-void

    .line 1045
    :cond_0
    new-instance v0, Lcom/parse/ParseQuery$17;

    invoke-direct {v0, p0}, Lcom/parse/ParseQuery$17;-><init>(Lcom/parse/ParseQuery;)V

    invoke-direct {p0, v0, p1}, Lcom/parse/ParseQuery;->doInBackground(Lcom/parse/ParseQuery$CallableWithCachePolicy;Lcom/parse/ParseCallback2;)V

    goto :goto_0
.end method

.method findWithCachePolicyAsync(Lcom/parse/ParseQuery$CachePolicy;Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 2
    .param p1, "policy"    # Lcom/parse/ParseQuery$CachePolicy;
    .param p2, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery$CachePolicy;",
            "Lcom/parse/ParseUser;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 504
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    new-instance v0, Lcom/parse/ParseQuery$4;

    invoke-direct {v0, p0, p2}, Lcom/parse/ParseQuery$4;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;)V

    .line 515
    .local v0, "callbacks":Lcom/parse/ParseQuery$CommandDelegate;, "Lcom/parse/ParseQuery$CommandDelegate<Ljava/util/List<TT;>;>;"
    invoke-direct {p0, v0, p1}, Lcom/parse/ParseQuery;->runCommandWithPolicyAsync(Lcom/parse/ParseQuery$CommandDelegate;Lcom/parse/ParseQuery$CachePolicy;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public fromLocalDatastore()Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 721
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parse/ParseQuery;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method fromNetwork()Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 696
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/parse/ParseQuery;->checkLDSEnabled(Z)V

    .line 697
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 699
    sget-object v0, Lcom/parse/ParseQuery$CachePolicy;->NETWORK_ONLY:Lcom/parse/ParseQuery$CachePolicy;

    iput-object v0, p0, Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    .line 700
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/ParseQuery;->isFromLocalDatastore:Z

    .line 701
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParseQuery;->pinName:Ljava/lang/String;

    .line 702
    return-object p0
.end method

.method public fromPin()Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 741
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    const-string v0, "_default"

    invoke-virtual {p0, v0}, Lcom/parse/ParseQuery;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method public fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    const/4 v0, 0x1

    .line 756
    invoke-static {v0}, Lcom/parse/ParseQuery;->checkLDSEnabled(Z)V

    .line 757
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 759
    iput-boolean v0, p0, Lcom/parse/ParseQuery;->isFromLocalDatastore:Z

    .line 760
    iput-object p1, p0, Lcom/parse/ParseQuery;->pinName:Ljava/lang/String;

    .line 761
    return-object p0
.end method

.method public get(Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 1
    .param p1, "objectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1288
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery;->getInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    return-object v0
.end method

.method public getCachePolicy()Lcom/parse/ParseQuery$CachePolicy;
    .locals 1

    .prologue
    .line 681
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/parse/ParseQuery;->checkLDSEnabled(Z)V

    .line 683
    iget-object v0, p0, Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2095
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery;->className:Ljava/lang/String;

    return-object v0
.end method

.method getConstraints()Lcom/parse/ParseQuery$QueryConstraints;
    .locals 1

    .prologue
    .line 343
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery;->where:Lcom/parse/ParseQuery$QueryConstraints;

    return-object v0
.end method

.method public getFirst()Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 603
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-virtual {p0}, Lcom/parse/ParseQuery;->getFirstInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    return-object v0
.end method

.method public getFirstInBackground()Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1074
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->build()Lcom/parse/ParseQuery;

    .line 1076
    new-instance v0, Lcom/parse/ParseQuery$18;

    invoke-direct {v0, p0}, Lcom/parse/ParseQuery$18;-><init>(Lcom/parse/ParseQuery;)V

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->doWithRunningCheck(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public getFirstInBackground(Lcom/parse/GetCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/GetCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1109
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    .local p1, "callback":Lcom/parse/GetCallback;, "Lcom/parse/GetCallback<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->build()Lcom/parse/ParseQuery;

    .line 1111
    iget-boolean v0, p0, Lcom/parse/ParseQuery;->isFromLocalDatastore:Z

    if-eqz v0, :cond_0

    .line 1112
    new-instance v0, Lcom/parse/ParseQuery$19;

    invoke-direct {v0, p0}, Lcom/parse/ParseQuery$19;-><init>(Lcom/parse/ParseQuery;)V

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->doWithRunningCheck(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 1140
    :goto_0
    return-void

    .line 1126
    :cond_0
    new-instance v0, Lcom/parse/ParseQuery$20;

    invoke-direct {v0, p0}, Lcom/parse/ParseQuery$20;-><init>(Lcom/parse/ParseQuery;)V

    invoke-direct {p0, v0, p1}, Lcom/parse/ParseQuery;->doInBackground(Lcom/parse/ParseQuery$CallableWithCachePolicy;Lcom/parse/ParseCallback2;)V

    goto :goto_0
.end method

.method public getInBackground(Ljava/lang/String;)Lbolts/Task;
    .locals 1
    .param p1, "objectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1355
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->build()Lcom/parse/ParseQuery;

    .line 1357
    new-instance v0, Lcom/parse/ParseQuery$28;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseQuery$28;-><init>(Lcom/parse/ParseQuery;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->doWithRunningCheck(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public getInBackground(Ljava/lang/String;Lcom/parse/GetCallback;)V
    .locals 1
    .param p1, "objectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/GetCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1390
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    .local p2, "callback":Lcom/parse/GetCallback;, "Lcom/parse/GetCallback<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->build()Lcom/parse/ParseQuery;

    .line 1392
    iget-boolean v0, p0, Lcom/parse/ParseQuery;->isFromLocalDatastore:Z

    if-eqz v0, :cond_0

    .line 1393
    new-instance v0, Lcom/parse/ParseQuery$29;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseQuery$29;-><init>(Lcom/parse/ParseQuery;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->doWithRunningCheck(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 1421
    :goto_0
    return-void

    .line 1407
    :cond_0
    new-instance v0, Lcom/parse/ParseQuery$30;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseQuery$30;-><init>(Lcom/parse/ParseQuery;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/parse/ParseQuery;->doInBackground(Lcom/parse/ParseQuery$CallableWithCachePolicy;Lcom/parse/ParseCallback2;)V

    goto :goto_0
.end method

.method getIncludes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1893
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery;->include:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .prologue
    .line 2066
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    iget v0, p0, Lcom/parse/ParseQuery;->limit:I

    return v0
.end method

.method public getMaxCacheAge()J
    .locals 2

    .prologue
    .line 796
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/parse/ParseQuery;->checkLDSEnabled(Z)V

    .line 798
    iget-wide v0, p0, Lcom/parse/ParseQuery;->maxCacheAge:J

    return-wide v0
.end method

.method public getSkip()I
    .locals 1

    .prologue
    .line 2088
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    iget v0, p0, Lcom/parse/ParseQuery;->skip:I

    return v0
.end method

.method public hasCachedResult()Z
    .locals 8

    .prologue
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    const/4 v5, 0x0

    .line 1296
    invoke-static {v5}, Lcom/parse/ParseQuery;->checkLDSEnabled(Z)V

    .line 1298
    const/4 v3, 0x0

    .line 1300
    .local v3, "user":Lcom/parse/ParseUser;
    :try_start_0
    invoke-direct {p0}, Lcom/parse/ParseQuery;->getUserAsync()Lbolts/Task;

    move-result-object v4

    invoke-static {v4}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/parse/ParseUser;

    move-object v3, v0
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1309
    :goto_0
    invoke-direct {p0, v3}, Lcom/parse/ParseQuery;->currentFindCommand(Lcom/parse/ParseUser;)Lcom/parse/ParseRESTQueryCommand;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parse/ParseRESTQueryCommand;->getCacheKey()Ljava/lang/String;

    move-result-object v4

    iget-wide v6, p0, Lcom/parse/ParseQuery;->maxCacheAge:J

    invoke-static {v4, v6, v7}, Lcom/parse/ParseKeyValueCache;->loadFromKeyValueCache(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 1310
    .local v2, "raw":Ljava/lang/String;
    if-eqz v2, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_0
    move v4, v5

    goto :goto_1

    .line 1301
    .end local v2    # "raw":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public ignoreACLs()Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    const/4 v0, 0x1

    .line 772
    invoke-static {v0}, Lcom/parse/ParseQuery;->checkLDSEnabled(Z)V

    .line 773
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 775
    iput-boolean v0, p0, Lcom/parse/ParseQuery;->ignoreACLs:Z

    .line 776
    return-object p0
.end method

.method public include(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1883
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1885
    iget-object v0, p0, Lcom/parse/ParseQuery;->include:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1886
    return-object p0
.end method

.method isFromLocalDatastore()Z
    .locals 1

    .prologue
    .line 725
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/parse/ParseQuery;->checkLDSEnabled(Z)V

    .line 727
    iget-boolean v0, p0, Lcom/parse/ParseQuery;->isFromLocalDatastore:Z

    return v0
.end method

.method isFromNetwork()Z
    .locals 3

    .prologue
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    const/4 v0, 0x1

    .line 706
    invoke-static {v0}, Lcom/parse/ParseQuery;->checkLDSEnabled(Z)V

    .line 708
    iget-object v1, p0, Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    sget-object v2, Lcom/parse/ParseQuery$CachePolicy;->NETWORK_ONLY:Lcom/parse/ParseQuery$CachePolicy;

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public orderByAscending(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1962
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1964
    iput-object p1, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    .line 1965
    return-object p0
.end method

.method public orderByDescending(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1996
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    .line 1999
    return-object p0
.end method

.method redirectClassNameForKey(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1950
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery;->extraOptions:Ljava/util/HashMap;

    const-string v1, "redirectClassNameForKey"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1951
    return-object p0
.end method

.method public selectKeys(Ljava/util/Collection;)Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1911
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1913
    iget-object v0, p0, Lcom/parse/ParseQuery;->selectedKeys:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1914
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery;->selectedKeys:Ljava/util/ArrayList;

    .line 1916
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseQuery;->selectedKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1917
    return-object p0
.end method

.method public setCachePolicy(Lcom/parse/ParseQuery$CachePolicy;)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "newCachePolicy"    # Lcom/parse/ParseQuery$CachePolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery$CachePolicy;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 670
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/parse/ParseQuery;->checkLDSEnabled(Z)V

    .line 671
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 673
    iput-object p1, p0, Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    .line 674
    return-object p0
.end method

.method public setLimit(I)Lcom/parse/ParseQuery;
    .locals 0
    .param p1, "newLimit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2042
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 2044
    iput p1, p0, Lcom/parse/ParseQuery;->limit:I

    .line 2045
    return-object p0
.end method

.method public setMaxCacheAge(J)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "maxAgeInMilliseconds"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 785
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/parse/ParseQuery;->checkLDSEnabled(Z)V

    .line 787
    iput-wide p1, p0, Lcom/parse/ParseQuery;->maxCacheAge:J

    .line 788
    return-object p0
.end method

.method public setSkip(I)Lcom/parse/ParseQuery;
    .locals 0
    .param p1, "newSkip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2078
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 2080
    iput p1, p0, Lcom/parse/ParseQuery;->skip:I

    .line 2081
    return-object p0
.end method

.method public setTrace(Z)Lcom/parse/ParseQuery;
    .locals 0
    .param p1, "shouldTrace"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2056
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 2058
    iput-boolean p1, p0, Lcom/parse/ParseQuery;->trace:Z

    .line 2059
    return-object p0
.end method

.method sortKeys()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2026
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2027
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 2029
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method toREST()Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 357
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 360
    .local v3, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "className"

    iget-object v5, p0, Lcom/parse/ParseQuery;->className:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 361
    const-string v4, "where"

    iget-object v5, p0, Lcom/parse/ParseQuery;->where:Lcom/parse/ParseQuery$QueryConstraints;

    invoke-static {}, Lcom/parse/PointerEncodingStrategy;->get()Lcom/parse/PointerEncodingStrategy;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    iget v4, p0, Lcom/parse/ParseQuery;->limit:I

    if-ltz v4, :cond_0

    .line 364
    const-string v4, "limit"

    iget v5, p0, Lcom/parse/ParseQuery;->limit:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 366
    :cond_0
    iget v4, p0, Lcom/parse/ParseQuery;->skip:I

    if-lez v4, :cond_1

    .line 367
    const-string v4, "skip"

    iget v5, p0, Lcom/parse/ParseQuery;->skip:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 369
    :cond_1
    iget-object v4, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 370
    const-string v4, "order"

    iget-object v5, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 372
    :cond_2
    iget-object v4, p0, Lcom/parse/ParseQuery;->include:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 373
    const-string v4, "include"

    const-string v5, ","

    iget-object v6, p0, Lcom/parse/ParseQuery;->include:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Lcom/parse/Parse;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 375
    :cond_3
    iget-object v4, p0, Lcom/parse/ParseQuery;->selectedKeys:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    .line 376
    const-string v4, "fields"

    const-string v5, ","

    iget-object v6, p0, Lcom/parse/ParseQuery;->selectedKeys:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Lcom/parse/Parse;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 378
    :cond_4
    iget-boolean v4, p0, Lcom/parse/ParseQuery;->trace:Z

    if-eqz v4, :cond_5

    .line 379
    const-string v4, "trace"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 383
    :cond_5
    iget-object v4, p0, Lcom/parse/ParseQuery;->extraOptions:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 384
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/parse/ParseQuery;->extraOptions:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {}, Lcom/parse/PointerEncodingStrategy;->get()Lcom/parse/PointerEncodingStrategy;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 386
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Lorg/json/JSONException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 390
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_6
    return-object v3
.end method

.method public whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1543
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Object;>;"
    const-string v0, "$in"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method public whereContains(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "substring"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1834
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1835
    .local v0, "regex":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseQuery;->whereMatches(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 1836
    return-object p0
.end method

.method public whereContainsAll(Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1561
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const-string v0, "$all"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method public whereDoesNotExist(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1941
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    const-string v0, "$exists"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method public whereDoesNotMatchKeyInQuery(Ljava/lang/String;Ljava/lang/String;Lcom/parse/ParseQuery;)Lcom/parse/ParseQuery;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "keyInQuery"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery",
            "<*>;)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1633
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    .local p3, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<*>;"
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1635
    .local v0, "condition":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "key"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1636
    const-string v2, "query"

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1640
    const-string v2, "$dontSelect"

    invoke-direct {p0, p1, v2, v0}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    move-result-object v2

    return-object v2

    .line 1637
    :catch_0
    move-exception v1

    .line 1638
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public whereDoesNotMatchQuery(Ljava/lang/String;Lcom/parse/ParseQuery;)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery",
            "<*>;)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1593
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    .local p2, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<*>;"
    const-string v0, "$notInQuery"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method public whereEndsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1868
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1869
    .local v0, "regex":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseQuery;->whereMatches(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 1870
    return-object p0
.end method

.method public whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1434
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1435
    iget-object v0, p0, Lcom/parse/ParseQuery;->where:Lcom/parse/ParseQuery$QueryConstraints;

    invoke-virtual {v0, p1, p2}, Lcom/parse/ParseQuery$QueryConstraints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1436
    return-object p0
.end method

.method public whereExists(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1929
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    const-string v0, "$exists"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method public whereGreaterThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1501
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    const-string v0, "$gt"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method public whereGreaterThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1529
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    const-string v0, "$gte"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method public whereLessThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1473
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    const-string v0, "$lt"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method public whereLessThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1515
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    const-string v0, "$lte"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method public whereMatches(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "regex"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1795
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    const-string v0, "$regex"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method public whereMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "regex"    # Ljava/lang/String;
    .param p3, "modifiers"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1815
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    const-string v0, "$regex"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    .line 1816
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1817
    const-string v0, "$options"

    invoke-direct {p0, p1, v0, p3}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    .line 1819
    :cond_0
    return-object p0
.end method

.method public whereMatchesKeyInQuery(Ljava/lang/String;Ljava/lang/String;Lcom/parse/ParseQuery;)Lcom/parse/ParseQuery;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "keyInQuery"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery",
            "<*>;)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1609
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    .local p3, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<*>;"
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1611
    .local v0, "condition":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "key"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1612
    const-string v2, "query"

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1616
    const-string v2, "$select"

    invoke-direct {p0, p1, v2, v0}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    move-result-object v2

    return-object v2

    .line 1613
    :catch_0
    move-exception v1

    .line 1614
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public whereMatchesQuery(Ljava/lang/String;Lcom/parse/ParseQuery;)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery",
            "<*>;)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1577
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    .local p2, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<*>;"
    const-string v0, "$inQuery"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method public whereNear(Ljava/lang/String;Lcom/parse/ParseGeoPoint;)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "point"    # Lcom/parse/ParseGeoPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseGeoPoint;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1704
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    const-string v0, "$nearSphere"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method public whereNotContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1690
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Object;>;"
    const-string v0, "$nin"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method public whereNotEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1487
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    const-string v0, "$ne"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method whereRelatedTo(Lcom/parse/ParseObject;Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 3
    .param p1, "parent"    # Lcom/parse/ParseObject;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1945
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery;->where:Lcom/parse/ParseQuery$QueryConstraints;

    const-string v1, "$relatedTo"

    new-instance v2, Lcom/parse/ParseQuery$RelationConstraint;

    invoke-direct {v2, p2, p1}, Lcom/parse/ParseQuery$RelationConstraint;-><init>(Ljava/lang/String;Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseQuery$QueryConstraints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1946
    return-object p0
.end method

.method public whereStartsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1851
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1852
    .local v0, "regex":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseQuery;->whereMatches(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 1853
    return-object p0
.end method

.method public whereWithinGeoBox(Ljava/lang/String;Lcom/parse/ParseGeoPoint;Lcom/parse/ParseGeoPoint;)Lcom/parse/ParseQuery;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "southwest"    # Lcom/parse/ParseGeoPoint;
    .param p3, "northeast"    # Lcom/parse/ParseGeoPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseGeoPoint;",
            "Lcom/parse/ParseGeoPoint;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1774
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1775
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1776
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1777
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1778
    .local v1, "dictionary":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    const-string v2, "$box"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1779
    const-string v2, "$within"

    invoke-direct {p0, p1, v2, v1}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    move-result-object v2

    return-object v2
.end method

.method public whereWithinKilometers(Ljava/lang/String;Lcom/parse/ParseGeoPoint;D)Lcom/parse/ParseQuery;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "point"    # Lcom/parse/ParseGeoPoint;
    .param p3, "maxDistance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseGeoPoint;",
            "D)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1740
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    sget-wide v0, Lcom/parse/ParseGeoPoint;->EARTH_MEAN_RADIUS_KM:D

    div-double v0, p3, v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/parse/ParseQuery;->whereWithinRadians(Ljava/lang/String;Lcom/parse/ParseGeoPoint;D)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method public whereWithinMiles(Ljava/lang/String;Lcom/parse/ParseGeoPoint;D)Lcom/parse/ParseQuery;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "point"    # Lcom/parse/ParseGeoPoint;
    .param p3, "maxDistance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseGeoPoint;",
            "D)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1722
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    sget-wide v0, Lcom/parse/ParseGeoPoint;->EARTH_MEAN_RADIUS_MILE:D

    div-double v0, p3, v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/parse/ParseQuery;->whereWithinRadians(Ljava/lang/String;Lcom/parse/ParseGeoPoint;D)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method public whereWithinRadians(Ljava/lang/String;Lcom/parse/ParseGeoPoint;D)Lcom/parse/ParseQuery;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "point"    # Lcom/parse/ParseGeoPoint;
    .param p3, "maxDistance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseGeoPoint;",
            "D)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1756
    .local p0, "this":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    const-string v0, "$nearSphere"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    .line 1757
    const-string v0, "$maxDistance"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method
