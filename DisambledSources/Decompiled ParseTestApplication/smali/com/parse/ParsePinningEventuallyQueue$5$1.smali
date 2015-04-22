.class Lcom/parse/ParsePinningEventuallyQueue$5$1;
.super Ljava/lang/Object;
.source "ParsePinningEventuallyQueue.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParsePinningEventuallyQueue$5;->then(Lbolts/Task;)Lbolts/Task;
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
        "Lcom/parse/EventuallyPin;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParsePinningEventuallyQueue$5;


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue$5;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$5$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/parse/EventuallyPin;",
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
    .line 232
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/EventuallyPin;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/EventuallyPin;

    .line 233
    .local v1, "pin":Lcom/parse/EventuallyPin;
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    .line 234
    .local v0, "error":Ljava/lang/Exception;
    if-eqz v0, :cond_1

    .line 235
    const/4 v2, 0x5

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 236
    const-string v2, "ParsePinningEventuallyQueue"

    const-string v3, "Unable to save command for later."

    invoke-static {v2, v3, v0}, Lcom/parse/Parse;->logW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    :cond_0
    iget-object v2, p0, Lcom/parse/ParsePinningEventuallyQueue$5$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$5;

    iget-object v2, v2, Lcom/parse/ParsePinningEventuallyQueue$5;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/parse/ParsePinningEventuallyQueue;->notifyTestHelper(I)V

    .line 239
    const/4 v2, 0x0

    invoke-static {v2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v2

    .line 257
    :goto_0
    return-object v2

    .line 242
    :cond_1
    iget-object v2, p0, Lcom/parse/ParsePinningEventuallyQueue$5$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$5;

    iget-object v2, v2, Lcom/parse/ParsePinningEventuallyQueue$5;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    # getter for: Lcom/parse/ParsePinningEventuallyQueue;->pendingOperationSetUUIDTasks:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/parse/ParsePinningEventuallyQueue;->access$200(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1}, Lcom/parse/EventuallyPin;->getUUID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/parse/ParsePinningEventuallyQueue$5$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$5;

    iget-object v4, v4, Lcom/parse/ParsePinningEventuallyQueue$5;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v2, p0, Lcom/parse/ParsePinningEventuallyQueue$5$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$5;

    iget-object v2, v2, Lcom/parse/ParsePinningEventuallyQueue$5;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    # invokes: Lcom/parse/ParsePinningEventuallyQueue;->populateQueueAsync()Lbolts/Task;
    invoke-static {v2}, Lcom/parse/ParsePinningEventuallyQueue;->access$300(Lcom/parse/ParsePinningEventuallyQueue;)Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/ParsePinningEventuallyQueue$5$1$1;

    invoke-direct {v3, p0}, Lcom/parse/ParsePinningEventuallyQueue$5$1$1;-><init>(Lcom/parse/ParsePinningEventuallyQueue$5$1;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    .line 257
    invoke-virtual {p1}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v2

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
    .line 229
    invoke-virtual {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$5$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
