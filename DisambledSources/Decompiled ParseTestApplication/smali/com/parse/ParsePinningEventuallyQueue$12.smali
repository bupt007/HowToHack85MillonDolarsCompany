.class Lcom/parse/ParsePinningEventuallyQueue$12;
.super Ljava/lang/Object;
.source "ParsePinningEventuallyQueue.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParsePinningEventuallyQueue;->waitForOperationSetAndEventuallyPin(Lcom/parse/ParseOperationSet;Lcom/parse/EventuallyPin;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Ljava/lang/Object;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParsePinningEventuallyQueue;

.field final synthetic val$tcs:Lbolts/Task$TaskCompletionSource;

.field final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue;Ljava/lang/String;Lbolts/Task$TaskCompletionSource;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    iput-object p2, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->val$uuid:Ljava/lang/String;

    iput-object p3, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 457
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    # getter for: Lcom/parse/ParsePinningEventuallyQueue;->taskQueueSyncLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/parse/ParsePinningEventuallyQueue;->access$900(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 458
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    # getter for: Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/parse/ParsePinningEventuallyQueue;->access$1000(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->val$uuid:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    # getter for: Lcom/parse/ParsePinningEventuallyQueue;->uuidToOperationSet:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/parse/ParsePinningEventuallyQueue;->access$1100(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->val$uuid:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    # getter for: Lcom/parse/ParsePinningEventuallyQueue;->uuidToEventuallyPin:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/parse/ParsePinningEventuallyQueue;->access$1200(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->val$uuid:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    .line 464
    .local v0, "error":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 465
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v1, v0}, Lbolts/Task$TaskCompletionSource;->trySetError(Ljava/lang/Exception;)Z

    .line 471
    :goto_0
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v1}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v1

    return-object v1

    .line 461
    .end local v0    # "error":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 466
    .restart local v0    # "error":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 467
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v1}, Lbolts/Task$TaskCompletionSource;->trySetCancelled()Z

    goto :goto_0

    .line 469
    :cond_1
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbolts/Task$TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lbolts/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 454
    invoke-virtual {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$12;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
