.class Lcom/parse/ParseRequest$8;
.super Ljava/lang/Object;
.source "ParseRequest.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseRequest;->executeAsync(IJLcom/parse/ProgressCallback;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<TResponse;",
        "Lbolts/Task",
        "<TResponse;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseRequest;

.field final synthetic val$attemptsMade:I

.field final synthetic val$delay:J

.field final synthetic val$downloadProgressCallback:Lcom/parse/ProgressCallback;


# direct methods
.method constructor <init>(Lcom/parse/ParseRequest;IJLcom/parse/ProgressCallback;)V
    .locals 1

    .prologue
    .line 329
    .local p0, "this":Lcom/parse/ParseRequest$8;, "Lcom/parse/ParseRequest.8;"
    iput-object p1, p0, Lcom/parse/ParseRequest$8;->this$0:Lcom/parse/ParseRequest;

    iput p2, p0, Lcom/parse/ParseRequest$8;->val$attemptsMade:I

    iput-wide p3, p0, Lcom/parse/ParseRequest$8;->val$delay:J

    iput-object p5, p0, Lcom/parse/ParseRequest$8;->val$downloadProgressCallback:Lcom/parse/ProgressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<TResponse;>;)",
            "Lbolts/Task",
            "<TResponse;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 332
    .local p0, "this":Lcom/parse/ParseRequest$8;, "Lcom/parse/ParseRequest.8;"
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<TResponse;>;"
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    .line 333
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v0, Lcom/parse/ParseException;

    if-eqz v2, :cond_0

    .line 334
    iget-object v2, p0, Lcom/parse/ParseRequest$8;->this$0:Lcom/parse/ParseRequest;

    # getter for: Lcom/parse/ParseRequest;->currentTask:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v2}, Lcom/parse/ParseRequest;->access$400(Lcom/parse/ParseRequest;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v2}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v2

    invoke-virtual {v2}, Lbolts/Task;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 335
    invoke-static {}, Lbolts/Task;->cancelled()Lbolts/Task;

    move-result-object p1

    .line 372
    .end local v0    # "e":Ljava/lang/Exception;
    .end local p1    # "task":Lbolts/Task;, "Lbolts/Task<TResponse;>;"
    :cond_0
    :goto_0
    return-object p1

    .line 338
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local p1    # "task":Lbolts/Task;, "Lbolts/Task<TResponse;>;"
    :cond_1
    instance-of v2, v0, Lcom/parse/ParseRequest$ParseRequestException;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/parse/ParseRequest$ParseRequestException;

    .end local v0    # "e":Ljava/lang/Exception;
    iget-boolean v2, v0, Lcom/parse/ParseRequest$ParseRequestException;->isPermanentFailure:Z

    if-nez v2, :cond_0

    .line 343
    :cond_2
    iget v2, p0, Lcom/parse/ParseRequest$8;->val$attemptsMade:I

    iget-object v3, p0, Lcom/parse/ParseRequest$8;->this$0:Lcom/parse/ParseRequest;

    iget v3, v3, Lcom/parse/ParseRequest;->maxRetries:I

    if-ge v2, v3, :cond_3

    .line 344
    const-string v2, "com.parse.ParseRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request failed. Waiting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/parse/ParseRequest$8;->val$delay:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " milliseconds before attempt #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/parse/ParseRequest$8;->val$attemptsMade:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parse/Parse;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v1

    .line 348
    .local v1, "retryTask":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<TResponse;>.TaskCompletionSource;"
    invoke-static {}, Lcom/parse/Parse;->getScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseRequest$8$1;

    invoke-direct {v3, p0, v1}, Lcom/parse/ParseRequest$8$1;-><init>(Lcom/parse/ParseRequest$8;Lbolts/Task$TaskCompletionSource;)V

    iget-wide v4, p0, Lcom/parse/ParseRequest$8;->val$delay:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 367
    invoke-virtual {v1}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object p1

    goto :goto_0

    .line 368
    .end local v1    # "retryTask":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<TResponse;>.TaskCompletionSource;"
    :cond_3
    iget-object v2, p0, Lcom/parse/ParseRequest$8;->this$0:Lcom/parse/ParseRequest;

    # getter for: Lcom/parse/ParseRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-static {v2}, Lcom/parse/ParseRequest;->access$000(Lcom/parse/ParseRequest;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 369
    const-string v2, "com.parse.ParseRequest"

    const-string v3, "Request failed. Giving up."

    invoke-static {v2, v3}, Lcom/parse/Parse;->logI(Ljava/lang/String;Ljava/lang/String;)V

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
    .line 329
    .local p0, "this":Lcom/parse/ParseRequest$8;, "Lcom/parse/ParseRequest.8;"
    invoke-virtual {p0, p1}, Lcom/parse/ParseRequest$8;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
