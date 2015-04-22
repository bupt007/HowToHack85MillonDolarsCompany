.class Lcom/parse/ParsePinningEventuallyQueue$10$1;
.super Ljava/lang/Object;
.source "ParsePinningEventuallyQueue.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParsePinningEventuallyQueue$10;->then(Lbolts/Task;)Lbolts/Task;
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
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParsePinningEventuallyQueue$10;


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue$10;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$10$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$10;

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
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 350
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    .line 351
    .local v0, "error":Ljava/lang/Exception;
    if-eqz v0, :cond_3

    .line 352
    instance-of v2, v0, Lcom/parse/ParsePinningEventuallyQueue$PauseException;

    if-eqz v2, :cond_0

    .line 354
    invoke-virtual {p1}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v2

    .line 375
    :goto_0
    return-object v2

    .line 357
    :cond_0
    const/4 v2, 0x6

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 358
    const-string v2, "ParsePinningEventuallyQueue"

    const-string v3, "Failed to run command."

    invoke-static {v2, v3, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 361
    :cond_1
    iget-object v2, p0, Lcom/parse/ParsePinningEventuallyQueue$10$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$10;

    iget-object v2, v2, Lcom/parse/ParsePinningEventuallyQueue$10;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Lcom/parse/ParsePinningEventuallyQueue;->notifyTestHelper(ILjava/lang/Throwable;)V

    .line 366
    :goto_1
    iget-object v2, p0, Lcom/parse/ParsePinningEventuallyQueue$10$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$10;

    iget-object v2, v2, Lcom/parse/ParsePinningEventuallyQueue$10;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    # getter for: Lcom/parse/ParsePinningEventuallyQueue;->pendingOperationSetUUIDTasks:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/parse/ParsePinningEventuallyQueue;->access$200(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue$10$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$10;

    iget-object v3, v3, Lcom/parse/ParsePinningEventuallyQueue$10;->val$eventuallyPin:Lcom/parse/EventuallyPin;

    invoke-virtual {v3}, Lcom/parse/EventuallyPin;->getUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbolts/Task$TaskCompletionSource;

    .line 368
    .local v1, "tcs":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<Ljava/lang/Object;>.TaskCompletionSource;"
    if-eqz v1, :cond_2

    .line 369
    if-eqz v0, :cond_4

    .line 370
    invoke-virtual {v1, v0}, Lbolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 375
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v2

    goto :goto_0

    .line 363
    .end local v1    # "tcs":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<Ljava/lang/Object;>.TaskCompletionSource;"
    :cond_3
    iget-object v2, p0, Lcom/parse/ParsePinningEventuallyQueue$10$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$10;

    iget-object v2, v2, Lcom/parse/ParsePinningEventuallyQueue$10;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/parse/ParsePinningEventuallyQueue;->notifyTestHelper(I)V

    goto :goto_1

    .line 372
    .restart local v1    # "tcs":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<Ljava/lang/Object;>.TaskCompletionSource;"
    :cond_4
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_2
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
    .line 347
    invoke-virtual {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$10$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
