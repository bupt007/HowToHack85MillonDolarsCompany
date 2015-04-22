.class Lcom/parse/ParsePinningEventuallyQueue$13;
.super Ljava/lang/Object;
.source "ParsePinningEventuallyQueue.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParsePinningEventuallyQueue;->process(Lcom/parse/EventuallyPin;Lcom/parse/ParseOperationSet;)Lbolts/Task;
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
        "Ljava/lang/Void;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParsePinningEventuallyQueue;

.field final synthetic val$eventuallyPin:Lcom/parse/EventuallyPin;

.field final synthetic val$operationSet:Lcom/parse/ParseOperationSet;


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/EventuallyPin;Lcom/parse/ParseOperationSet;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$13;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    iput-object p2, p0, Lcom/parse/ParsePinningEventuallyQueue$13;->val$eventuallyPin:Lcom/parse/EventuallyPin;

    iput-object p3, p0, Lcom/parse/ParsePinningEventuallyQueue$13;->val$operationSet:Lcom/parse/ParseOperationSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
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
    .line 485
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v5, p0, Lcom/parse/ParsePinningEventuallyQueue$13;->val$eventuallyPin:Lcom/parse/EventuallyPin;

    invoke-virtual {v5}, Lcom/parse/EventuallyPin;->getType()I

    move-result v4

    .line 486
    .local v4, "type":I
    iget-object v5, p0, Lcom/parse/ParsePinningEventuallyQueue$13;->val$eventuallyPin:Lcom/parse/EventuallyPin;

    invoke-virtual {v5}, Lcom/parse/EventuallyPin;->getObject()Lcom/parse/ParseObject;

    move-result-object v2

    .line 487
    .local v2, "object":Lcom/parse/ParseObject;
    iget-object v5, p0, Lcom/parse/ParsePinningEventuallyQueue$13;->val$eventuallyPin:Lcom/parse/EventuallyPin;

    invoke-virtual {v5}, Lcom/parse/EventuallyPin;->getSessionToken()Ljava/lang/String;

    move-result-object v3

    .line 490
    .local v3, "sessionToken":Ljava/lang/String;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 491
    iget-object v5, p0, Lcom/parse/ParsePinningEventuallyQueue$13;->val$operationSet:Lcom/parse/ParseOperationSet;

    invoke-virtual {v2, v5, v3}, Lcom/parse/ParseObject;->saveAsync(Lcom/parse/ParseOperationSet;Ljava/lang/String;)Lbolts/Task;

    move-result-object v1

    .line 499
    .local v1, "executeTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Object;>;"
    :goto_0
    new-instance v5, Lcom/parse/ParsePinningEventuallyQueue$13$1;

    invoke-direct {v5, p0, v4, v2}, Lcom/parse/ParsePinningEventuallyQueue$13$1;-><init>(Lcom/parse/ParsePinningEventuallyQueue$13;ILcom/parse/ParseObject;)V

    invoke-virtual {v1, v5}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v5

    return-object v5

    .line 492
    .end local v1    # "executeTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Object;>;"
    :cond_0
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 493
    invoke-virtual {v2, v3}, Lcom/parse/ParseObject;->deleteAsync(Ljava/lang/String;)Lbolts/Task;

    move-result-object v1

    .restart local v1    # "executeTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Object;>;"
    goto :goto_0

    .line 495
    .end local v1    # "executeTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Object;>;"
    :cond_1
    iget-object v5, p0, Lcom/parse/ParsePinningEventuallyQueue$13;->val$eventuallyPin:Lcom/parse/EventuallyPin;

    invoke-virtual {v5}, Lcom/parse/EventuallyPin;->getCommand()Lcom/parse/ParseNetworkCommand;

    move-result-object v0

    .line 496
    .local v0, "command":Lcom/parse/ParseNetworkCommand;
    invoke-virtual {v0}, Lcom/parse/ParseNetworkCommand;->executeAsync()Lbolts/Task;

    move-result-object v1

    .restart local v1    # "executeTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Object;>;"
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
    .line 482
    invoke-virtual {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$13;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
