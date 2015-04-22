.class Lcom/parse/ParsePinningEventuallyQueue$13$1;
.super Ljava/lang/Object;
.source "ParsePinningEventuallyQueue.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParsePinningEventuallyQueue$13;->then(Lbolts/Task;)Lbolts/Task;
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
.field final synthetic this$1:Lcom/parse/ParsePinningEventuallyQueue$13;

.field final synthetic val$object:Lcom/parse/ParseObject;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue$13;ILcom/parse/ParseObject;)V
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$13;

    iput p2, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1;->val$type:I

    iput-object p3, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1;->val$object:Lcom/parse/ParseObject;

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
    .line 502
    .local p1, "saveTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    .line 503
    .local v0, "error":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 504
    instance-of v1, v0, Lcom/parse/ParseException;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/parse/ParseException;

    .end local v0    # "error":Ljava/lang/Exception;
    invoke-virtual {v0}, Lcom/parse/ParseException;->getCode()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 508
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$13;

    iget-object v1, v1, Lcom/parse/ParsePinningEventuallyQueue$13;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/parse/ParsePinningEventuallyQueue;->setConnected(Z)V

    .line 510
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$13;

    iget-object v1, v1, Lcom/parse/ParsePinningEventuallyQueue$13;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/parse/ParsePinningEventuallyQueue;->notifyTestHelper(I)V

    .line 512
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$13;

    iget-object v1, v1, Lcom/parse/ParsePinningEventuallyQueue$13;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    iget-object v2, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$13;

    iget-object v2, v2, Lcom/parse/ParsePinningEventuallyQueue$13;->val$eventuallyPin:Lcom/parse/EventuallyPin;

    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$13;

    iget-object v3, v3, Lcom/parse/ParsePinningEventuallyQueue$13;->val$operationSet:Lcom/parse/ParseOperationSet;

    # invokes: Lcom/parse/ParsePinningEventuallyQueue;->process(Lcom/parse/EventuallyPin;Lcom/parse/ParseOperationSet;)Lbolts/Task;
    invoke-static {v1, v2, v3}, Lcom/parse/ParsePinningEventuallyQueue;->access$1300(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/EventuallyPin;Lcom/parse/ParseOperationSet;)Lbolts/Task;

    move-result-object v1

    .line 520
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$13;

    iget-object v1, v1, Lcom/parse/ParsePinningEventuallyQueue$13;->val$eventuallyPin:Lcom/parse/EventuallyPin;

    const-string v2, "_eventuallyPin"

    invoke-virtual {v1, v2}, Lcom/parse/EventuallyPin;->unpinInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParsePinningEventuallyQueue$13$1$2;

    invoke-direct {v2, p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$13$1$2;-><init>(Lcom/parse/ParsePinningEventuallyQueue$13$1;Lbolts/Task;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParsePinningEventuallyQueue$13$1$1;

    invoke-direct {v2, p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$13$1$1;-><init>(Lcom/parse/ParsePinningEventuallyQueue$13$1;Lbolts/Task;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

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
    .line 499
    invoke-virtual {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$13$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
