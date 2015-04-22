.class Lcom/parse/Parse$6$1;
.super Ljava/lang/Object;
.source "Parse.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/Parse$6;->then(Lbolts/Task;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/Parse$6;

.field final synthetic val$task:Lbolts/Task;


# direct methods
.method constructor <init>(Lcom/parse/Parse$6;Lbolts/Task;)V
    .locals 0

    .prologue
    .line 936
    iput-object p1, p0, Lcom/parse/Parse$6$1;->this$0:Lcom/parse/Parse$6;

    iput-object p2, p0, Lcom/parse/Parse$6$1;->val$task:Lbolts/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 940
    :try_start_0
    iget-object v2, p0, Lcom/parse/Parse$6$1;->val$task:Lbolts/Task;

    invoke-virtual {v2}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    .line 941
    .local v0, "error":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/parse/ParseException;

    if-nez v2, :cond_0

    .line 942
    new-instance v1, Lcom/parse/ParseException;

    invoke-direct {v1, v0}, Lcom/parse/ParseException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "error":Ljava/lang/Exception;
    .local v1, "error":Ljava/lang/Exception;
    move-object v0, v1

    .line 944
    .end local v1    # "error":Ljava/lang/Exception;
    .restart local v0    # "error":Ljava/lang/Exception;
    :cond_0
    iget-object v2, p0, Lcom/parse/Parse$6$1;->this$0:Lcom/parse/Parse$6;

    iget-object v2, v2, Lcom/parse/Parse$6;->val$callback:Lcom/parse/ParseCallback2;

    iget-object v3, p0, Lcom/parse/Parse$6$1;->val$task:Lbolts/Task;

    invoke-virtual {v3}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v0, Lcom/parse/ParseException;

    .end local v0    # "error":Ljava/lang/Exception;
    invoke-interface {v2, v3, v0}, Lcom/parse/ParseCallback2;->done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 946
    iget-object v2, p0, Lcom/parse/Parse$6$1;->val$task:Lbolts/Task;

    invoke-virtual {v2}, Lbolts/Task;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 947
    iget-object v2, p0, Lcom/parse/Parse$6$1;->this$0:Lcom/parse/Parse$6;

    iget-object v2, v2, Lcom/parse/Parse$6;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v2}, Lbolts/Task$TaskCompletionSource;->setCancelled()V

    .line 954
    :goto_0
    return-void

    .line 948
    :cond_1
    iget-object v2, p0, Lcom/parse/Parse$6$1;->val$task:Lbolts/Task;

    invoke-virtual {v2}, Lbolts/Task;->isFaulted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 949
    iget-object v2, p0, Lcom/parse/Parse$6$1;->this$0:Lcom/parse/Parse$6;

    iget-object v2, v2, Lcom/parse/Parse$6;->val$tcs:Lbolts/Task$TaskCompletionSource;

    iget-object v3, p0, Lcom/parse/Parse$6$1;->val$task:Lbolts/Task;

    invoke-virtual {v3}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 951
    :cond_2
    iget-object v2, p0, Lcom/parse/Parse$6$1;->this$0:Lcom/parse/Parse$6;

    iget-object v2, v2, Lcom/parse/Parse$6;->val$tcs:Lbolts/Task$TaskCompletionSource;

    iget-object v3, p0, Lcom/parse/Parse$6$1;->val$task:Lbolts/Task;

    invoke-virtual {v3}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 946
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/parse/Parse$6$1;->val$task:Lbolts/Task;

    invoke-virtual {v3}, Lbolts/Task;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 947
    iget-object v3, p0, Lcom/parse/Parse$6$1;->this$0:Lcom/parse/Parse$6;

    iget-object v3, v3, Lcom/parse/Parse$6;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v3}, Lbolts/Task$TaskCompletionSource;->setCancelled()V

    .line 951
    :goto_1
    throw v2

    .line 948
    :cond_3
    iget-object v3, p0, Lcom/parse/Parse$6$1;->val$task:Lbolts/Task;

    invoke-virtual {v3}, Lbolts/Task;->isFaulted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 949
    iget-object v3, p0, Lcom/parse/Parse$6$1;->this$0:Lcom/parse/Parse$6;

    iget-object v3, v3, Lcom/parse/Parse$6;->val$tcs:Lbolts/Task$TaskCompletionSource;

    iget-object v4, p0, Lcom/parse/Parse$6$1;->val$task:Lbolts/Task;

    invoke-virtual {v4}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v4

    invoke-virtual {v3, v4}, Lbolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 951
    :cond_4
    iget-object v3, p0, Lcom/parse/Parse$6$1;->this$0:Lcom/parse/Parse$6;

    iget-object v3, v3, Lcom/parse/Parse$6;->val$tcs:Lbolts/Task$TaskCompletionSource;

    iget-object v4, p0, Lcom/parse/Parse$6$1;->val$task:Lbolts/Task;

    invoke-virtual {v4}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lbolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_1
.end method
