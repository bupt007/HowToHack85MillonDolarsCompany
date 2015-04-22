.class Lcom/parse/TaskQueue;
.super Ljava/lang/Object;
.source "TaskQueue.java"


# instance fields
.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private tail:Lbolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/parse/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method private getTaskToAwait()Lbolts/Task;
    .locals 3
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
    .line 28
    iget-object v1, p0, Lcom/parse/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 30
    :try_start_0
    iget-object v1, p0, Lcom/parse/TaskQueue;->tail:Lbolts/Task;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/parse/TaskQueue;->tail:Lbolts/Task;

    .line 31
    .local v0, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :goto_0
    new-instance v1, Lcom/parse/TaskQueue$1;

    invoke-direct {v1, p0}, Lcom/parse/TaskQueue$1;-><init>(Lcom/parse/TaskQueue;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 38
    iget-object v2, p0, Lcom/parse/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 30
    .end local v0    # "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 38
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/parse/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method static waitFor(Lbolts/Task;)Lbolts/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Continuation",
            "<TT;",
            "Lbolts/Task",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v0, Lcom/parse/TaskQueue$2;

    invoke-direct {v0, p0}, Lcom/parse/TaskQueue$2;-><init>(Lbolts/Task;)V

    return-object v0
.end method


# virtual methods
.method enqueue(Lbolts/Continuation;)Lbolts/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Continuation",
            "<",
            "Ljava/lang/Void;",
            "Lbolts/Task",
            "<TT;>;>;)",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "taskStart":Lbolts/Continuation;, "Lbolts/Continuation<Ljava/lang/Void;Lbolts/Task<TT;>;>;"
    iget-object v4, p0, Lcom/parse/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 55
    :try_start_0
    iget-object v4, p0, Lcom/parse/TaskQueue;->tail:Lbolts/Task;

    if-eqz v4, :cond_0

    iget-object v1, p0, Lcom/parse/TaskQueue;->tail:Lbolts/Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .local v1, "oldTail":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/parse/TaskQueue;->getTaskToAwait()Lbolts/Task;

    move-result-object v3

    .line 61
    .local v3, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-interface {p1, v3}, Lbolts/Continuation;->then(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbolts/Task;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .local v2, "task":Lbolts/Task;, "Lbolts/Task<TT;>;"
    const/4 v4, 0x2

    :try_start_2
    new-array v4, v4, [Lbolts/Task;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v4

    iput-object v4, p0, Lcom/parse/TaskQueue;->tail:Lbolts/Task;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    iget-object v4, p0, Lcom/parse/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    .line 55
    .end local v1    # "oldTail":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    .end local v2    # "task":Lbolts/Task;, "Lbolts/Task<TT;>;"
    .end local v3    # "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :cond_0
    const/4 v4, 0x0

    :try_start_3
    invoke-static {v4}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    goto :goto_0

    .line 62
    .restart local v1    # "oldTail":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/RuntimeException;
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "oldTail":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/parse/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4

    .line 64
    .restart local v1    # "oldTail":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :catch_1
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method getLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/parse/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method waitUntilFinished()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/parse/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/parse/TaskQueue;->tail:Lbolts/Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/parse/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 109
    :goto_0
    return-void

    .line 105
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/parse/TaskQueue;->tail:Lbolts/Task;

    invoke-virtual {v0}, Lbolts/Task;->waitForCompletion()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    iget-object v0, p0, Lcom/parse/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/parse/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
