.class Lcom/parse/ParsePinningEventuallyQueue$13$1$2;
.super Ljava/lang/Object;
.source "ParsePinningEventuallyQueue.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParsePinningEventuallyQueue$13$1;->then(Lbolts/Task;)Lbolts/Task;
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
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/parse/ParsePinningEventuallyQueue$13$1;

.field final synthetic val$saveTask:Lbolts/Task;


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue$13$1;Lbolts/Task;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1$2;->this$2:Lcom/parse/ParsePinningEventuallyQueue$13$1;

    iput-object p2, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1$2;->val$saveTask:Lbolts/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 3
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 524
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1$2;->val$saveTask:Lbolts/Task;

    invoke-virtual {v1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 525
    .local v0, "result":Ljava/lang/Object;
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1$2;->this$2:Lcom/parse/ParsePinningEventuallyQueue$13$1;

    iget v1, v1, Lcom/parse/ParsePinningEventuallyQueue$13$1;->val$type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 526
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1$2;->this$2:Lcom/parse/ParsePinningEventuallyQueue$13$1;

    iget-object v1, v1, Lcom/parse/ParsePinningEventuallyQueue$13$1;->val$object:Lcom/parse/ParseObject;

    check-cast v0, Lorg/json/JSONObject;

    .end local v0    # "result":Ljava/lang/Object;
    iget-object v2, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1$2;->this$2:Lcom/parse/ParsePinningEventuallyQueue$13$1;

    iget-object v2, v2, Lcom/parse/ParsePinningEventuallyQueue$13$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$13;

    iget-object v2, v2, Lcom/parse/ParsePinningEventuallyQueue$13;->val$operationSet:Lcom/parse/ParseOperationSet;

    invoke-virtual {v1, v0, v2}, Lcom/parse/ParseObject;->handleSaveEventuallyResultAsync(Lorg/json/JSONObject;Lcom/parse/ParseOperationSet;)Lbolts/Task;

    move-result-object p1

    .line 530
    .end local p1    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :cond_0
    :goto_0
    return-object p1

    .line 527
    .restart local v0    # "result":Ljava/lang/Object;
    .restart local p1    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :cond_1
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1$2;->this$2:Lcom/parse/ParsePinningEventuallyQueue$13$1;

    iget v1, v1, Lcom/parse/ParsePinningEventuallyQueue$13$1;->val$type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 528
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1$2;->this$2:Lcom/parse/ParsePinningEventuallyQueue$13$1;

    iget-object v1, v1, Lcom/parse/ParsePinningEventuallyQueue$13$1;->val$object:Lcom/parse/ParseObject;

    invoke-virtual {v1, v0}, Lcom/parse/ParseObject;->handleDeleteEventuallyResultAsync(Ljava/lang/Object;)Lbolts/Task;

    move-result-object p1

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
    .line 521
    invoke-virtual {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$13$1$2;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
