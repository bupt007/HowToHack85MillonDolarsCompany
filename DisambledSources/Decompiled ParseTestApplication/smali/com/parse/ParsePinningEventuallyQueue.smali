.class Lcom/parse/ParsePinningEventuallyQueue;
.super Lcom/parse/ParseEventuallyQueue;
.source "ParsePinningEventuallyQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParsePinningEventuallyQueue$PauseException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ParsePinningEventuallyQueue"


# instance fields
.field private final connectionLock:Ljava/lang/Object;

.field private connectionTaskCompletionSource:Lbolts/Task$TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">.TaskCompletionSource;"
        }
    .end annotation
.end field

.field private eventuallyPinUUIDQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/parse/ConnectivityNotifier$ConnectivityListener;

.field private notifier:Lcom/parse/ConnectivityNotifier;

.field private operationSetTaskQueue:Lcom/parse/TaskQueue;

.field private pendingEventuallyTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Object;",
            ">.TaskCompletionSource;>;"
        }
    .end annotation
.end field

.field private pendingOperationSetUUIDTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Object;",
            ">.TaskCompletionSource;>;"
        }
    .end annotation
.end field

.field private taskQueue:Lcom/parse/TaskQueue;

.field private final taskQueueSyncLock:Ljava/lang/Object;

.field private uuidToEventuallyPin:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/EventuallyPin;",
            ">;"
        }
    .end annotation
.end field

.field private uuidToOperationSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseOperationSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/parse/ParseEventuallyQueue;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingOperationSetUUIDTasks:Ljava/util/HashMap;

    .line 41
    new-instance v0, Lcom/parse/TaskQueue;

    invoke-direct {v0}, Lcom/parse/TaskQueue;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->taskQueue:Lcom/parse/TaskQueue;

    .line 48
    new-instance v0, Lcom/parse/TaskQueue;

    invoke-direct {v0}, Lcom/parse/TaskQueue;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->operationSetTaskQueue:Lcom/parse/TaskQueue;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->eventuallyPinUUIDQueue:Ljava/util/ArrayList;

    .line 62
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:Lbolts/Task$TaskCompletionSource;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Lcom/parse/ParsePinningEventuallyQueue$1;

    invoke-direct {v0, p0}, Lcom/parse/ParsePinningEventuallyQueue$1;-><init>(Lcom/parse/ParsePinningEventuallyQueue;)V

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->listener:Lcom/parse/ConnectivityNotifier$ConnectivityListener;

    .line 385
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->taskQueueSyncLock:Ljava/lang/Object;

    .line 390
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;

    .line 396
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToOperationSet:Ljava/util/HashMap;

    .line 402
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToEventuallyPin:Ljava/util/HashMap;

    .line 80
    invoke-static {p1}, Lcom/parse/ConnectivityNotifier;->isConnected(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/parse/ParsePinningEventuallyQueue;->setConnected(Z)V

    .line 82
    invoke-static {p1}, Lcom/parse/ConnectivityNotifier;->getNotifier(Landroid/content/Context;)Lcom/parse/ConnectivityNotifier;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->notifier:Lcom/parse/ConnectivityNotifier;

    .line 83
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->notifier:Lcom/parse/ConnectivityNotifier;

    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->listener:Lcom/parse/ConnectivityNotifier$ConnectivityListener;

    invoke-virtual {v0, v1}, Lcom/parse/ConnectivityNotifier;->addListener(Lcom/parse/ConnectivityNotifier$ConnectivityListener;)V

    .line 85
    invoke-virtual {p0}, Lcom/parse/ParsePinningEventuallyQueue;->resume()V

    .line 86
    return-void
.end method

.method static synthetic access$100(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/ParseNetworkCommand;Lcom/parse/ParseObject;Lbolts/Task;Lbolts/Task$TaskCompletionSource;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePinningEventuallyQueue;
    .param p1, "x1"    # Lcom/parse/ParseNetworkCommand;
    .param p2, "x2"    # Lcom/parse/ParseObject;
    .param p3, "x3"    # Lbolts/Task;
    .param p4, "x4"    # Lbolts/Task$TaskCompletionSource;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parse/ParsePinningEventuallyQueue;->enqueueEventuallyAsync(Lcom/parse/ParseNetworkCommand;Lcom/parse/ParseObject;Lbolts/Task;Lbolts/Task$TaskCompletionSource;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePinningEventuallyQueue;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePinningEventuallyQueue;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToOperationSet:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePinningEventuallyQueue;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToEventuallyPin:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/EventuallyPin;Lcom/parse/ParseOperationSet;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePinningEventuallyQueue;
    .param p1, "x1"    # Lcom/parse/EventuallyPin;
    .param p2, "x2"    # Lcom/parse/ParseOperationSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/parse/ParsePinningEventuallyQueue;->process(Lcom/parse/EventuallyPin;Lcom/parse/ParseOperationSet;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePinningEventuallyQueue;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingOperationSetUUIDTasks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parse/ParsePinningEventuallyQueue;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePinningEventuallyQueue;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/parse/ParsePinningEventuallyQueue;->populateQueueAsync()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/parse/ParsePinningEventuallyQueue;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePinningEventuallyQueue;
    .param p1, "x1"    # Lbolts/Task;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue;->populateQueueAsync(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/EventuallyPin;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePinningEventuallyQueue;
    .param p1, "x1"    # Lcom/parse/EventuallyPin;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue;->runEventuallyAsync(Lcom/parse/EventuallyPin;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePinningEventuallyQueue;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->eventuallyPinUUIDQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/EventuallyPin;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePinningEventuallyQueue;
    .param p1, "x1"    # Lcom/parse/EventuallyPin;
    .param p2, "x2"    # Lbolts/Task;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/parse/ParsePinningEventuallyQueue;->runEventuallyAsync(Lcom/parse/EventuallyPin;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/parse/ParsePinningEventuallyQueue;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePinningEventuallyQueue;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/parse/ParsePinningEventuallyQueue;->waitForConnectionAsync()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePinningEventuallyQueue;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->taskQueueSyncLock:Ljava/lang/Object;

    return-object v0
.end method

.method private enqueueEventuallyAsync(Lcom/parse/ParseNetworkCommand;Lcom/parse/ParseObject;Lbolts/Task;Lbolts/Task$TaskCompletionSource;)Lbolts/Task;
    .locals 1
    .param p1, "command"    # Lcom/parse/ParseNetworkCommand;
    .param p2, "object"    # Lcom/parse/ParseObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseNetworkCommand;",
            "Lcom/parse/ParseObject;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Object;",
            ">.TaskCompletionSource;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    .local p3, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    .local p4, "tcs":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<Ljava/lang/Object;>.TaskCompletionSource;"
    new-instance v0, Lcom/parse/ParsePinningEventuallyQueue$5;

    invoke-direct {v0, p0, p2, p1, p4}, Lcom/parse/ParsePinningEventuallyQueue$5;-><init>(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/ParseObject;Lcom/parse/ParseNetworkCommand;Lbolts/Task$TaskCompletionSource;)V

    invoke-virtual {p3, v0}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private populateQueueAsync()Lbolts/Task;
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
    .line 271
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParsePinningEventuallyQueue$6;

    invoke-direct {v1, p0}, Lcom/parse/ParsePinningEventuallyQueue$6;-><init>(Lcom/parse/ParsePinningEventuallyQueue;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private populateQueueAsync(Lbolts/Task;)Lbolts/Task;
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
    .line 280
    .local p1, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v0, Lcom/parse/ParsePinningEventuallyQueue$8;

    invoke-direct {v0, p0}, Lcom/parse/ParsePinningEventuallyQueue$8;-><init>(Lcom/parse/ParsePinningEventuallyQueue;)V

    invoke-virtual {p1, v0}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePinningEventuallyQueue$7;

    invoke-direct {v1, p0}, Lcom/parse/ParsePinningEventuallyQueue$7;-><init>(Lcom/parse/ParsePinningEventuallyQueue;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private process(Lcom/parse/EventuallyPin;Lcom/parse/ParseOperationSet;)Lbolts/Task;
    .locals 2
    .param p1, "eventuallyPin"    # Lcom/parse/EventuallyPin;
    .param p2, "operationSet"    # Lcom/parse/ParseOperationSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/EventuallyPin;",
            "Lcom/parse/ParseOperationSet;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 482
    invoke-direct {p0}, Lcom/parse/ParsePinningEventuallyQueue;->waitForConnectionAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePinningEventuallyQueue$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/parse/ParsePinningEventuallyQueue$13;-><init>(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/EventuallyPin;Lcom/parse/ParseOperationSet;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private runEventuallyAsync(Lcom/parse/EventuallyPin;)Lbolts/Task;
    .locals 4
    .param p1, "eventuallyPin"    # Lcom/parse/EventuallyPin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/EventuallyPin;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 308
    invoke-virtual {p1}, Lcom/parse/EventuallyPin;->getUUID()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "uuid":Ljava/lang/String;
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->eventuallyPinUUIDQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    invoke-static {v3}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    .line 328
    :goto_0
    return-object v1

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->eventuallyPinUUIDQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->operationSetTaskQueue:Lcom/parse/TaskQueue;

    new-instance v2, Lcom/parse/ParsePinningEventuallyQueue$9;

    invoke-direct {v2, p0, p1, v0}, Lcom/parse/ParsePinningEventuallyQueue$9;-><init>(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/EventuallyPin;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    .line 328
    invoke-static {v3}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    goto :goto_0
.end method

.method private runEventuallyAsync(Lcom/parse/EventuallyPin;Lbolts/Task;)Lbolts/Task;
    .locals 2
    .param p1, "eventuallyPin"    # Lcom/parse/EventuallyPin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/EventuallyPin;",
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
    .line 338
    .local p2, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v0, Lcom/parse/ParsePinningEventuallyQueue$11;

    invoke-direct {v0, p0}, Lcom/parse/ParsePinningEventuallyQueue$11;-><init>(Lcom/parse/ParsePinningEventuallyQueue;)V

    invoke-virtual {p2, v0}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePinningEventuallyQueue$10;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$10;-><init>(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/EventuallyPin;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private waitForConnectionAsync()Lbolts/Task;
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
    .line 196
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private whenAll(Ljava/util/Collection;)Lbolts/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/parse/TaskQueue;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 603
    .local p1, "taskQueues":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/parse/TaskQueue;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 605
    .local v3, "tasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/TaskQueue;

    .line 606
    .local v2, "taskQueue":Lcom/parse/TaskQueue;
    new-instance v4, Lcom/parse/ParsePinningEventuallyQueue$15;

    invoke-direct {v4, p0}, Lcom/parse/ParsePinningEventuallyQueue$15;-><init>(Lcom/parse/ParsePinningEventuallyQueue;)V

    invoke-virtual {v2, v4}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    .line 613
    .local v1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 616
    .end local v1    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    .end local v2    # "taskQueue":Lcom/parse/TaskQueue;
    :cond_0
    invoke-static {v3}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/parse/ParsePinningEventuallyQueue;->pause()V

    .line 561
    iget-object v2, p0, Lcom/parse/ParsePinningEventuallyQueue;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v3, Lcom/parse/ParsePinningEventuallyQueue$14;

    invoke-direct {v3, p0}, Lcom/parse/ParsePinningEventuallyQueue$14;-><init>(Lcom/parse/ParsePinningEventuallyQueue;)V

    invoke-virtual {v2, v3}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    .line 585
    .local v1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :try_start_0
    invoke-static {v1}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    invoke-virtual {p0}, Lcom/parse/ParsePinningEventuallyQueue;->simulateReboot()V

    .line 592
    invoke-virtual {p0}, Lcom/parse/ParsePinningEventuallyQueue;->resume()V

    .line 593
    return-void

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, "e":Lcom/parse/ParseException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public enqueueEventuallyAsync(Lcom/parse/ParseNetworkCommand;Lcom/parse/ParseObject;)Lbolts/Task;
    .locals 3
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
    .line 209
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v1}, Lcom/parse/Parse;->requirePermission(Ljava/lang/String;)V

    .line 210
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v0

    .line 212
    .local v0, "tcs":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<Ljava/lang/Object;>.TaskCompletionSource;"
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v2, Lcom/parse/ParsePinningEventuallyQueue$4;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/parse/ParsePinningEventuallyQueue$4;-><init>(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/ParseNetworkCommand;Lcom/parse/ParseObject;Lbolts/Task$TaskCompletionSource;)V

    invoke-virtual {v1, v2}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    .line 219
    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->notifier:Lcom/parse/ConnectivityNotifier;

    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->listener:Lcom/parse/ConnectivityNotifier$ConnectivityListener;

    invoke-virtual {v0, v1}, Lcom/parse/ConnectivityNotifier;->removeListener(Lcom/parse/ConnectivityNotifier$ConnectivityListener;)V

    .line 93
    return-void
.end method

.method public pause()V
    .locals 7

    .prologue
    .line 157
    iget-object v4, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionLock:Ljava/lang/Object;

    monitor-enter v4

    .line 159
    :try_start_0
    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:Lbolts/Task$TaskCompletionSource;

    new-instance v5, Lcom/parse/ParsePinningEventuallyQueue$PauseException;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/parse/ParsePinningEventuallyQueue$PauseException;-><init>(Lcom/parse/ParsePinningEventuallyQueue$1;)V

    invoke-virtual {v3, v5}, Lbolts/Task$TaskCompletionSource;->trySetError(Ljava/lang/Exception;)Z

    .line 160
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v3

    iput-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:Lbolts/Task$TaskCompletionSource;

    .line 161
    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:Lbolts/Task$TaskCompletionSource;

    new-instance v5, Lcom/parse/ParsePinningEventuallyQueue$PauseException;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/parse/ParsePinningEventuallyQueue$PauseException;-><init>(Lcom/parse/ParsePinningEventuallyQueue$1;)V

    invoke-virtual {v3, v5}, Lbolts/Task$TaskCompletionSource;->trySetError(Ljava/lang/Exception;)Z

    .line 162
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 164
    iget-object v4, p0, Lcom/parse/ParsePinningEventuallyQueue;->taskQueueSyncLock:Ljava/lang/Object;

    monitor-enter v4

    .line 165
    :try_start_1
    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 167
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbolts/Task$TaskCompletionSource;

    new-instance v5, Lcom/parse/ParsePinningEventuallyQueue$PauseException;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/parse/ParsePinningEventuallyQueue$PauseException;-><init>(Lcom/parse/ParsePinningEventuallyQueue$1;)V

    invoke-virtual {v3, v5}, Lbolts/Task$TaskCompletionSource;->trySetError(Ljava/lang/Exception;)Z

    goto :goto_0

    .line 172
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 162
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 169
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 170
    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToOperationSet:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 171
    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToEventuallyPin:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 172
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 175
    const/4 v3, 0x2

    :try_start_4
    new-array v3, v3, [Lcom/parse/TaskQueue;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/parse/ParsePinningEventuallyQueue;->taskQueue:Lcom/parse/TaskQueue;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/parse/ParsePinningEventuallyQueue;->operationSetTaskQueue:Lcom/parse/TaskQueue;

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/parse/ParsePinningEventuallyQueue;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v3

    invoke-static {v3}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;
    :try_end_4
    .catch Lcom/parse/ParseException; {:try_start_4 .. :try_end_4} :catch_0

    .line 179
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Lcom/parse/ParseException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public pendingCount()I
    .locals 2

    .prologue
    .line 114
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParsePinningEventuallyQueue;->pendingCountAsync()Lbolts/Task;

    move-result-object v1

    invoke-static {v1}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Lcom/parse/ParseException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public pendingCountAsync()Lbolts/Task;
    .locals 3
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
    .line 121
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v0

    .line 123
    .local v0, "tcs":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<Ljava/lang/Integer;>.TaskCompletionSource;"
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v2, Lcom/parse/ParsePinningEventuallyQueue$2;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParsePinningEventuallyQueue$2;-><init>(Lcom/parse/ParsePinningEventuallyQueue;Lbolts/Task$TaskCompletionSource;)V

    invoke-virtual {v1, v2}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    .line 137
    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public pendingCountAsync(Lbolts/Task;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v0, Lcom/parse/ParsePinningEventuallyQueue$3;

    invoke-direct {v0, p0}, Lcom/parse/ParsePinningEventuallyQueue$3;-><init>(Lcom/parse/ParsePinningEventuallyQueue;)V

    invoke-virtual {p1, v0}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public resume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 184
    invoke-virtual {p0}, Lcom/parse/ParsePinningEventuallyQueue;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v0, v1}, Lbolts/Task$TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 186
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:Lbolts/Task$TaskCompletionSource;

    .line 187
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v0, v1}, Lbolts/Task$TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 192
    :goto_0
    invoke-direct {p0}, Lcom/parse/ParsePinningEventuallyQueue;->populateQueueAsync()Lbolts/Task;

    .line 193
    return-void

    .line 189
    :cond_0
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:Lbolts/Task$TaskCompletionSource;

    goto :goto_0
.end method

.method public setConnected(Z)V
    .locals 3
    .param p1, "connected"    # Z

    .prologue
    .line 97
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 98
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParsePinningEventuallyQueue;->isConnected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 99
    invoke-super {p0, p1}, Lcom/parse/ParseEventuallyQueue;->setConnected(Z)V

    .line 100
    if-eqz p1, :cond_1

    .line 101
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:Lbolts/Task$TaskCompletionSource;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lbolts/Task$TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 102
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:Lbolts/Task$TaskCompletionSource;

    .line 103
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:Lbolts/Task$TaskCompletionSource;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lbolts/Task$TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 108
    :cond_0
    :goto_0
    monitor-exit v1

    .line 109
    return-void

    .line 105
    :cond_1
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:Lbolts/Task$TaskCompletionSource;

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method simulateReboot()V
    .locals 1

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/parse/ParsePinningEventuallyQueue;->pause()V

    .line 549
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingOperationSetUUIDTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 550
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 551
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToOperationSet:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 552
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToEventuallyPin:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 554
    invoke-virtual {p0}, Lcom/parse/ParsePinningEventuallyQueue;->resume()V

    .line 555
    return-void
.end method

.method waitForOperationSetAndEventuallyPin(Lcom/parse/ParseOperationSet;Lcom/parse/EventuallyPin;)Lbolts/Task;
    .locals 6
    .param p1, "operationSet"    # Lcom/parse/ParseOperationSet;
    .param p2, "eventuallyPin"    # Lcom/parse/EventuallyPin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseOperationSet;",
            "Lcom/parse/EventuallyPin;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 419
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/parse/EventuallyPin;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 420
    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Lcom/parse/ParsePinningEventuallyQueue;->process(Lcom/parse/EventuallyPin;Lcom/parse/ParseOperationSet;)Lbolts/Task;

    move-result-object v3

    .line 453
    :goto_0
    return-object v3

    .line 426
    :cond_0
    iget-object v4, p0, Lcom/parse/ParsePinningEventuallyQueue;->taskQueueSyncLock:Ljava/lang/Object;

    monitor-enter v4

    .line 427
    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    .line 428
    :try_start_0
    invoke-virtual {p1}, Lcom/parse/ParseOperationSet;->getUUID()Ljava/lang/String;

    move-result-object v2

    .line 429
    .local v2, "uuid":Ljava/lang/String;
    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToOperationSet:Ljava/util/HashMap;

    invoke-virtual {v3, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    :goto_1
    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToEventuallyPin:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/parse/EventuallyPin;

    move-object p2, v0

    .line 438
    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToOperationSet:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/parse/ParseOperationSet;

    move-object p1, v0

    .line 440
    if-eqz p2, :cond_1

    if-nez p1, :cond_5

    .line 441
    :cond_1
    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 442
    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbolts/Task$TaskCompletionSource;

    .line 447
    .local v1, "tcs":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<Ljava/lang/Object;>.TaskCompletionSource;"
    :goto_2
    invoke-virtual {v1}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v3

    monitor-exit v4

    goto :goto_0

    .line 451
    .end local v1    # "tcs":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<Ljava/lang/Object;>.TaskCompletionSource;"
    .end local v2    # "uuid":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 430
    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    .line 431
    :try_start_1
    invoke-virtual {p2}, Lcom/parse/EventuallyPin;->getOperationSetUUID()Ljava/lang/String;

    move-result-object v2

    .line 432
    .restart local v2    # "uuid":Ljava/lang/String;
    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToEventuallyPin:Ljava/util/HashMap;

    invoke-virtual {v3, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 434
    .end local v2    # "uuid":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "Either operationSet or eventuallyPin must be set."

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 444
    .restart local v2    # "uuid":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v1

    .line 445
    .restart local v1    # "tcs":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<Ljava/lang/Object;>.TaskCompletionSource;"
    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 449
    .end local v1    # "tcs":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<Ljava/lang/Object;>.TaskCompletionSource;"
    :cond_5
    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbolts/Task$TaskCompletionSource;

    .line 451
    .restart local v1    # "tcs":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<Ljava/lang/Object;>.TaskCompletionSource;"
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 453
    invoke-direct {p0, p2, p1}, Lcom/parse/ParsePinningEventuallyQueue;->process(Lcom/parse/EventuallyPin;Lcom/parse/ParseOperationSet;)Lbolts/Task;

    move-result-object v3

    new-instance v4, Lcom/parse/ParsePinningEventuallyQueue$12;

    invoke-direct {v4, p0, v2, v1}, Lcom/parse/ParsePinningEventuallyQueue$12;-><init>(Lcom/parse/ParsePinningEventuallyQueue;Ljava/lang/String;Lbolts/Task$TaskCompletionSource;)V

    invoke-virtual {v3, v4}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v3

    goto :goto_0
.end method
