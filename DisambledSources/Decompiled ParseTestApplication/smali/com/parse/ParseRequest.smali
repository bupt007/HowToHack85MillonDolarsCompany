.class abstract Lcom/parse/ParseRequest;
.super Ljava/lang/Object;
.source "ParseRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseRequest$9;,
        Lcom/parse/ParseRequest$ParseRequestException;,
        Lcom/parse/ParseRequest$Method;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Response:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field static final DEFAULT_INITIAL_RETRY_DELAY:J = 0x3e8L

.field protected static final DEFAULT_MAX_RETRIES:I = 0x4

.field private static final KEEP_ALIVE_TIME:J = 0x1L

.field private static final MAX_POOL_SIZE:I

.field private static final MAX_QUEUE_SIZE:I = 0x80

.field static final NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final SOCKET_OPERATION_TIMEOUT:I = 0x2710

.field private static defaultClient:Lcom/parse/ParseHttpClient;

.field private static defaultInitialRetryDelay:J

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private client:Lcom/parse/ParseHttpClient;

.field private currentTask:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lbolts/Task",
            "<TResult;>.TaskCompletionSource;>;"
        }
    .end annotation
.end field

.field protected maxRetries:I

.field protected method:Lcom/parse/ParseRequest$Method;

.field private request:Lorg/apache/http/client/methods/HttpUriRequest;

.field protected url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 36
    new-instance v0, Lcom/parse/ParseRequest$1;

    invoke-direct {v0}, Lcom/parse/ParseRequest$1;-><init>()V

    sput-object v0, Lcom/parse/ParseRequest;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 48
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/parse/ParseRequest;->CPU_COUNT:I

    .line 49
    sget v0, Lcom/parse/ParseRequest;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/parse/ParseRequest;->CORE_POOL_SIZE:I

    .line 50
    sget v0, Lcom/parse/ParseRequest;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/parse/ParseRequest;->MAX_POOL_SIZE:I

    .line 65
    sget v0, Lcom/parse/ParseRequest;->CORE_POOL_SIZE:I

    sget v1, Lcom/parse/ParseRequest;->MAX_POOL_SIZE:I

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v5, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v6, 0x80

    invoke-direct {v5, v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sget-object v6, Lcom/parse/ParseRequest;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static/range {v0 .. v6}, Lcom/parse/ParseRequest;->newThreadPoolExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/parse/ParseRequest;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 121
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/ParseRequest;->defaultClient:Lcom/parse/ParseHttpClient;

    .line 122
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/parse/ParseRequest;->defaultInitialRetryDelay:J

    return-void
.end method

.method public constructor <init>(Lcom/parse/ParseRequest$Method;Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Lcom/parse/ParseRequest$Method;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 163
    .local p0, "this":Lcom/parse/ParseRequest;, "Lcom/parse/ParseRequest<TResponse;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 v0, 0x4

    iput v0, p0, Lcom/parse/ParseRequest;->maxRetries:I

    .line 156
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseRequest;->currentTask:Ljava/util/concurrent/atomic/AtomicReference;

    .line 164
    sget-object v0, Lcom/parse/ParseRequest;->defaultClient:Lcom/parse/ParseHttpClient;

    iput-object v0, p0, Lcom/parse/ParseRequest;->client:Lcom/parse/ParseHttpClient;

    .line 165
    iput-object p1, p0, Lcom/parse/ParseRequest;->method:Lcom/parse/ParseRequest$Method;

    .line 166
    iput-object p2, p0, Lcom/parse/ParseRequest;->url:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 160
    .local p0, "this":Lcom/parse/ParseRequest;, "Lcom/parse/ParseRequest<TResponse;TResult;>;"
    sget-object v0, Lcom/parse/ParseRequest$Method;->GET:Lcom/parse/ParseRequest$Method;

    invoke-direct {p0, v0, p1}, Lcom/parse/ParseRequest;-><init>(Lcom/parse/ParseRequest$Method;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/parse/ParseRequest;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseRequest;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parse/ParseRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    return-object v0
.end method

.method static synthetic access$002(Lcom/parse/ParseRequest;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseRequest;
    .param p1, "x1"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/parse/ParseRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    return-object p1
.end method

.method static synthetic access$100(Lcom/parse/ParseRequest;)Lcom/parse/ParseHttpClient;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseRequest;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parse/ParseRequest;->client:Lcom/parse/ParseHttpClient;

    return-object v0
.end method

.method static synthetic access$200()J
    .locals 2

    .prologue
    .line 34
    sget-wide v0, Lcom/parse/ParseRequest;->defaultInitialRetryDelay:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/parse/ParseRequest;IJLcom/parse/ProgressCallback;)Lbolts/Task;
    .locals 2
    .param p0, "x0"    # Lcom/parse/ParseRequest;
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # Lcom/parse/ProgressCallback;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parse/ParseRequest;->executeAsync(IJLcom/parse/ProgressCallback;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/parse/ParseRequest;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseRequest;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parse/ParseRequest;->currentTask:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method private executeAsync(IJLcom/parse/ProgressCallback;)Lbolts/Task;
    .locals 8
    .param p1, "attemptsMade"    # I
    .param p2, "delay"    # J
    .param p4, "downloadProgressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lcom/parse/ProgressCallback;",
            ")",
            "Lbolts/Task",
            "<TResponse;>;"
        }
    .end annotation

    .prologue
    .line 329
    .local p0, "this":Lcom/parse/ParseRequest;, "Lcom/parse/ParseRequest<TResponse;TResult;>;"
    invoke-direct {p0, p4}, Lcom/parse/ParseRequest;->sendOneRequestAsync(Lcom/parse/ProgressCallback;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseRequest$8;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/parse/ParseRequest$8;-><init>(Lcom/parse/ParseRequest;IJLcom/parse/ProgressCallback;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultClient()Lcom/parse/ParseHttpClient;
    .locals 2

    .prologue
    .line 129
    sget-object v0, Lcom/parse/ParseRequest;->defaultClient:Lcom/parse/ParseHttpClient;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t send Parse HTTPS request before Parse.initialize()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    sget-object v0, Lcom/parse/ParseRequest;->defaultClient:Lcom/parse/ParseHttpClient;

    return-object v0
.end method

.method public static getDefaultInitialRetryDelay()J
    .locals 2

    .prologue
    .line 139
    sget-wide v0, Lcom/parse/ParseRequest;->defaultInitialRetryDelay:J

    return-wide v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    sget-object v0, Lcom/parse/ParseRequest;->defaultClient:Lcom/parse/ParseHttpClient;

    if-nez v0, :cond_0

    .line 145
    invoke-static {p0}, Lcom/parse/ParseHttpClient;->create(Landroid/content/Context;)Lcom/parse/ParseHttpClient;

    move-result-object v0

    sput-object v0, Lcom/parse/ParseRequest;->defaultClient:Lcom/parse/ParseHttpClient;

    .line 147
    :cond_0
    return-void
.end method

.method private static newThreadPoolExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 10
    .param p0, "corePoolSize"    # I
    .param p1, "maxPoolSize"    # I
    .param p2, "keepAliveTime"    # J
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")",
            "Ljava/util/concurrent/ThreadPoolExecutor;"
        }
    .end annotation

    .prologue
    .line 57
    .local p5, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    move v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 59
    .local v1, "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_0

    .line 60
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 62
    :cond_0
    return-object v1
.end method

.method private sendOneRequestAsync(Lcom/parse/ProgressCallback;)Lbolts/Task;
    .locals 3
    .param p1, "downloadProgressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ProgressCallback;",
            ")",
            "Lbolts/Task",
            "<TResponse;>;"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "this":Lcom/parse/ParseRequest;, "Lcom/parse/ParseRequest<TResponse;TResult;>;"
    iget-object v0, p0, Lcom/parse/ParseRequest;->currentTask:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v0

    invoke-virtual {v0}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-static {}, Lbolts/Task;->cancelled()Lbolts/Task;

    move-result-object v0

    .line 254
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseRequest$3;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseRequest$3;-><init>(Lcom/parse/ParseRequest;Lcom/parse/ProgressCallback;)V

    sget-object v2, Lcom/parse/ParseRequest;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseRequest$2;

    invoke-direct {v1, p0}, Lcom/parse/ParseRequest$2;-><init>(Lcom/parse/ParseRequest;)V

    sget-object v2, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public static setDefaultClient(Lcom/parse/ParseHttpClient;)V
    .locals 0
    .param p0, "client"    # Lcom/parse/ParseHttpClient;

    .prologue
    .line 125
    sput-object p0, Lcom/parse/ParseRequest;->defaultClient:Lcom/parse/ParseHttpClient;

    .line 126
    return-void
.end method

.method public static setDefaultInitialRetryDelay(J)V
    .locals 0
    .param p0, "delay"    # J

    .prologue
    .line 136
    sput-wide p0, Lcom/parse/ParseRequest;->defaultInitialRetryDelay:J

    .line 137
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 378
    .local p0, "this":Lcom/parse/ParseRequest;, "Lcom/parse/ParseRequest<TResponse;TResult;>;"
    iget-object v1, p0, Lcom/parse/ParseRequest;->currentTask:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/Task$TaskCompletionSource;

    .line 379
    .local v0, "curr":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<TResult;>.TaskCompletionSource;"
    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->trySetCancelled()Z

    .line 382
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_1

    .line 383
    iget-object v1, p0, Lcom/parse/ParseRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 385
    :cond_1
    return-void
.end method

.method public executeAsync()Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<TResult;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/parse/ParseRequest;, "Lcom/parse/ParseRequest<TResponse;TResult;>;"
    const/4 v0, 0x0

    .line 280
    invoke-virtual {p0, v0, v0}, Lcom/parse/ParseRequest;->executeAsync(Lcom/parse/ProgressCallback;Lcom/parse/ProgressCallback;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public executeAsync(Lcom/parse/ProgressCallback;Lcom/parse/ProgressCallback;)Lbolts/Task;
    .locals 3
    .param p1, "uploadProgressCallback"    # Lcom/parse/ProgressCallback;
    .param p2, "downloadProgressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ProgressCallback;",
            "Lcom/parse/ProgressCallback;",
            ")",
            "Lbolts/Task",
            "<TResult;>;"
        }
    .end annotation

    .prologue
    .line 288
    .local p0, "this":Lcom/parse/ParseRequest;, "Lcom/parse/ParseRequest<TResponse;TResult;>;"
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v0

    .line 289
    .local v0, "tcs":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<TResult;>.TaskCompletionSource;"
    iget-object v1, p0, Lcom/parse/ParseRequest;->currentTask:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 291
    const/4 v1, 0x0

    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseRequest$7;

    invoke-direct {v2, p0}, Lcom/parse/ParseRequest$7;-><init>(Lcom/parse/ParseRequest;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseRequest$6;

    invoke-direct {v2, p0, p1, p2}, Lcom/parse/ParseRequest$6;-><init>(Lcom/parse/ParseRequest;Lcom/parse/ProgressCallback;Lcom/parse/ProgressCallback;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseRequest$5;

    invoke-direct {v2, p0}, Lcom/parse/ParseRequest$5;-><init>(Lcom/parse/ParseRequest;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseRequest$4;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseRequest$4;-><init>(Lcom/parse/ParseRequest;Lbolts/Task$TaskCompletionSource;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    .line 324
    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method protected newEntity(Lcom/parse/ProgressCallback;)Lorg/apache/http/HttpEntity;
    .locals 1
    .param p1, "uploadProgressCallback"    # Lcom/parse/ProgressCallback;

    .prologue
    .line 192
    .local p0, "this":Lcom/parse/ParseRequest;, "Lcom/parse/ParseRequest<TResponse;TResult;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected newPermanentException(ILjava/lang/String;)Lcom/parse/ParseException;
    .locals 2
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 391
    .local p0, "this":Lcom/parse/ParseRequest;, "Lcom/parse/ParseRequest<TResponse;TResult;>;"
    new-instance v0, Lcom/parse/ParseRequest$ParseRequestException;

    invoke-direct {v0, p1, p2}, Lcom/parse/ParseRequest$ParseRequestException;-><init>(ILjava/lang/String;)V

    .line 392
    .local v0, "e":Lcom/parse/ParseRequest$ParseRequestException;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/parse/ParseRequest$ParseRequestException;->isPermanentFailure:Z

    .line 393
    return-object v0
.end method

.method protected newRequest(Lcom/parse/ParseRequest$Method;Lcom/parse/ProgressCallback;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 10
    .param p1, "method"    # Lcom/parse/ParseRequest$Method;
    .param p2, "uploadProgressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 198
    .local p0, "this":Lcom/parse/ParseRequest;, "Lcom/parse/ParseRequest<TResponse;TResult;>;"
    sget-object v7, Lcom/parse/ParseRequest$9;->$SwitchMap$com$parse$ParseRequest$Method:[I

    invoke-virtual {p1}, Lcom/parse/ParseRequest$Method;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 236
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid method "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 200
    :pswitch_0
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    iget-object v7, p0, Lcom/parse/ParseRequest;->url:Ljava/lang/String;

    invoke-direct {v4, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 238
    .local v4, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    :goto_0
    invoke-static {v4}, Landroid/net/http/AndroidHttpClient;->modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V

    .line 239
    return-object v4

    .line 203
    .end local v4    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    :pswitch_1
    new-instance v4, Lorg/apache/http/client/methods/HttpDelete;

    iget-object v7, p0, Lcom/parse/ParseRequest;->url:Ljava/lang/String;

    invoke-direct {v4, v7}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 204
    .restart local v4    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_0

    .line 211
    .end local v4    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    :pswitch_2
    const/4 v0, 0x0

    .line 212
    .local v0, "hostHeader":Ljava/lang/String;
    iget-object v7, p0, Lcom/parse/ParseRequest;->url:Ljava/lang/String;

    const-string v8, ".s3.amazonaws.com"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 213
    const-string v7, "^https://([a-zA-Z0-9.]*\\.s3\\.amazonaws\\.com)/?.*"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 214
    .local v6, "s3UrlPattern":Ljava/util/regex/Pattern;
    iget-object v7, p0, Lcom/parse/ParseRequest;->url:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 215
    .local v5, "s3UrlMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 216
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "hostname":Ljava/lang/String;
    iget-object v7, p0, Lcom/parse/ParseRequest;->url:Ljava/lang/String;

    const-string v8, "s3.amazonaws.com"

    invoke-virtual {v7, v1, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/parse/ParseRequest;->url:Ljava/lang/String;

    .line 218
    move-object v0, v1

    .line 222
    .end local v1    # "hostname":Ljava/lang/String;
    .end local v5    # "s3UrlMatcher":Ljava/util/regex/Matcher;
    .end local v6    # "s3UrlPattern":Ljava/util/regex/Pattern;
    :cond_0
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    iget-object v7, p0, Lcom/parse/ParseRequest;->url:Ljava/lang/String;

    invoke-direct {v2, v7}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 223
    .local v2, "post":Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {p0, p2}, Lcom/parse/ParseRequest;->newEntity(Lcom/parse/ProgressCallback;)Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 225
    if-eqz v0, :cond_1

    .line 226
    const-string v7, "Host"

    invoke-virtual {v2, v7, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_1
    move-object v4, v2

    .line 229
    .restart local v4    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_0

    .line 231
    .end local v0    # "hostHeader":Ljava/lang/String;
    .end local v2    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v4    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    :pswitch_3
    new-instance v3, Lorg/apache/http/client/methods/HttpPut;

    iget-object v7, p0, Lcom/parse/ParseRequest;->url:Ljava/lang/String;

    invoke-direct {v3, v7}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 232
    .local v3, "put":Lorg/apache/http/client/methods/HttpPut;
    invoke-virtual {p0, p2}, Lcom/parse/ParseRequest;->newEntity(Lcom/parse/ProgressCallback;)Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 233
    move-object v4, v3

    .line 234
    .restart local v4    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method protected newTemporaryException(ILjava/lang/String;)Lcom/parse/ParseException;
    .locals 2
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 400
    .local p0, "this":Lcom/parse/ParseRequest;, "Lcom/parse/ParseRequest<TResponse;TResult;>;"
    new-instance v0, Lcom/parse/ParseRequest$ParseRequestException;

    invoke-direct {v0, p1, p2}, Lcom/parse/ParseRequest$ParseRequestException;-><init>(ILjava/lang/String;)V

    .line 401
    .local v0, "e":Lcom/parse/ParseRequest$ParseRequestException;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/parse/ParseRequest$ParseRequestException;->isPermanentFailure:Z

    .line 402
    return-object v0
.end method

.method protected newTemporaryException(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/parse/ParseException;
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 411
    .local p0, "this":Lcom/parse/ParseRequest;, "Lcom/parse/ParseRequest<TResponse;TResult;>;"
    new-instance v0, Lcom/parse/ParseRequest$ParseRequestException;

    const/16 v1, 0x64

    invoke-direct {v0, v1, p1, p2}, Lcom/parse/ParseRequest$ParseRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 413
    .local v0, "e":Lcom/parse/ParseRequest$ParseRequestException;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/parse/ParseRequest$ParseRequestException;->isPermanentFailure:Z

    .line 414
    return-object v0
.end method

.method protected onPostExecute(Lbolts/Task;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<TResponse;>;)",
            "Lbolts/Task",
            "<TResult;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "this":Lcom/parse/ParseRequest;, "Lcom/parse/ParseRequest<TResponse;TResult;>;"
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<TResponse;>;"
    invoke-virtual {p1}, Lbolts/Task;->cast()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute(Lbolts/Task;)Lbolts/Task;
    .locals 0
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
    .line 187
    .local p0, "this":Lcom/parse/ParseRequest;, "Lcom/parse/ParseRequest<TResponse;TResult;>;"
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    return-object p1
.end method

.method protected abstract onResponse(Lcom/parse/ParseHttpResponse;Lcom/parse/ProgressCallback;)Lbolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseHttpResponse;",
            "Lcom/parse/ProgressCallback;",
            ")",
            "Lbolts/Task",
            "<TResponse;>;"
        }
    .end annotation
.end method

.method public setClient(Lcom/parse/ParseHttpClient;)V
    .locals 0
    .param p1, "client"    # Lcom/parse/ParseHttpClient;

    .prologue
    .line 170
    .local p0, "this":Lcom/parse/ParseRequest;, "Lcom/parse/ParseRequest<TResponse;TResult;>;"
    iput-object p1, p0, Lcom/parse/ParseRequest;->client:Lcom/parse/ParseHttpClient;

    .line 171
    return-void
.end method

.method public setMaxRetries(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 182
    .local p0, "this":Lcom/parse/ParseRequest;, "Lcom/parse/ParseRequest<TResponse;TResult;>;"
    iput p1, p0, Lcom/parse/ParseRequest;->maxRetries:I

    .line 183
    return-void
.end method

.method public setMethod(Lcom/parse/ParseRequest$Method;)V
    .locals 0
    .param p1, "method"    # Lcom/parse/ParseRequest$Method;

    .prologue
    .line 174
    .local p0, "this":Lcom/parse/ParseRequest;, "Lcom/parse/ParseRequest<TResponse;TResult;>;"
    iput-object p1, p0, Lcom/parse/ParseRequest;->method:Lcom/parse/ParseRequest$Method;

    .line 175
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 178
    .local p0, "this":Lcom/parse/ParseRequest;, "Lcom/parse/ParseRequest<TResponse;TResult;>;"
    iput-object p1, p0, Lcom/parse/ParseRequest;->url:Ljava/lang/String;

    .line 179
    return-void
.end method
