.class Lcom/parse/ParseFile$3$1;
.super Ljava/lang/Object;
.source "ParseFile.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFile$3;->then(Lbolts/Task;)Ljava/lang/Void;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseFile$3;


# direct methods
.method constructor <init>(Lcom/parse/ParseFile$3;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/parse/ParseFile$3$1;->this$1:Lcom/parse/ParseFile$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lbolts/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 373
    invoke-virtual {p0, p1}, Lcom/parse/ParseFile$3$1;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 376
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseFile$3$1;->this$1:Lcom/parse/ParseFile$3;

    iget-object v0, v0, Lcom/parse/ParseFile$3;->this$0:Lcom/parse/ParseFile;

    # getter for: Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;
    invoke-static {v0}, Lcom/parse/ParseFile;->access$000(Lcom/parse/ParseFile;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseFile$3$1;->this$1:Lcom/parse/ParseFile$3;

    iget-object v1, v1, Lcom/parse/ParseFile$3;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 377
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/parse/ParseFile$3$1;->this$1:Lcom/parse/ParseFile$3;

    iget-object v0, v0, Lcom/parse/ParseFile$3;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->trySetCancelled()Z

    .line 384
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 379
    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/parse/ParseFile$3$1;->this$1:Lcom/parse/ParseFile$3;

    iget-object v0, v0, Lcom/parse/ParseFile$3;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/Task$TaskCompletionSource;->trySetError(Ljava/lang/Exception;)Z

    goto :goto_0

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseFile$3$1;->this$1:Lcom/parse/ParseFile$3;

    iget-object v0, v0, Lcom/parse/ParseFile$3;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/Task$TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    goto :goto_0
.end method
