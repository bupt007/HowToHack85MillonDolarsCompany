.class Lcom/parse/ParseRequest$8$1$1;
.super Ljava/lang/Object;
.source "ParseRequest.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseRequest$8$1;->run()V
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
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/parse/ParseRequest$8$1;


# direct methods
.method constructor <init>(Lcom/parse/ParseRequest$8$1;)V
    .locals 0

    .prologue
    .line 352
    .local p0, "this":Lcom/parse/ParseRequest$8$1$1;, "Lcom/parse/ParseRequest$8$1.1;"
    iput-object p1, p0, Lcom/parse/ParseRequest$8$1$1;->this$2:Lcom/parse/ParseRequest$8$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<TResponse;>;)",
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
    .line 355
    .local p0, "this":Lcom/parse/ParseRequest$8$1$1;, "Lcom/parse/ParseRequest$8$1.1;"
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<TResponse;>;"
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/parse/ParseRequest$8$1$1;->this$2:Lcom/parse/ParseRequest$8$1;

    iget-object v0, v0, Lcom/parse/ParseRequest$8$1;->val$retryTask:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->setCancelled()V

    .line 362
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 357
    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/parse/ParseRequest$8$1$1;->this$2:Lcom/parse/ParseRequest$8$1;

    iget-object v0, v0, Lcom/parse/ParseRequest$8$1;->val$retryTask:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseRequest$8$1$1;->this$2:Lcom/parse/ParseRequest$8$1;

    iget-object v0, v0, Lcom/parse/ParseRequest$8$1;->val$retryTask:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

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
    .line 352
    .local p0, "this":Lcom/parse/ParseRequest$8$1$1;, "Lcom/parse/ParseRequest$8$1.1;"
    invoke-virtual {p0, p1}, Lcom/parse/ParseRequest$8$1$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
