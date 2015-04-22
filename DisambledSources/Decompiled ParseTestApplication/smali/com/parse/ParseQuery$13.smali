.class Lcom/parse/ParseQuery$13;
.super Ljava/lang/Object;
.source "ParseQuery.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery;->doWithRunningCheck(Ljava/util/concurrent/Callable;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<TTResult;",
        "Lbolts/Task",
        "<TTResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseQuery;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery;)V
    .locals 0

    .prologue
    .line 940
    .local p0, "this":Lcom/parse/ParseQuery$13;, "Lcom/parse/ParseQuery.13;"
    iput-object p1, p0, Lcom/parse/ParseQuery$13;->this$0:Lcom/parse/ParseQuery;

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
            "<TTResult;>;)",
            "Lbolts/Task",
            "<TTResult;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 943
    .local p0, "this":Lcom/parse/ParseQuery$13;, "Lcom/parse/ParseQuery.13;"
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery$13;->this$0:Lcom/parse/ParseQuery;

    # getter for: Lcom/parse/ParseQuery;->isRunningLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/parse/ParseQuery;->access$900(Lcom/parse/ParseQuery;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 944
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseQuery$13;->this$0:Lcom/parse/ParseQuery;

    const/4 v2, 0x0

    # setter for: Lcom/parse/ParseQuery;->isRunning:Z
    invoke-static {v0, v2}, Lcom/parse/ParseQuery;->access$1002(Lcom/parse/ParseQuery;Z)Z

    .line 945
    iget-object v0, p0, Lcom/parse/ParseQuery$13;->this$0:Lcom/parse/ParseQuery;

    # getter for: Lcom/parse/ParseQuery;->ct:Lbolts/Task$TaskCompletionSource;
    invoke-static {v0}, Lcom/parse/ParseQuery;->access$1100(Lcom/parse/ParseQuery;)Lbolts/Task$TaskCompletionSource;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/parse/ParseQuery$13;->this$0:Lcom/parse/ParseQuery;

    # getter for: Lcom/parse/ParseQuery;->ct:Lbolts/Task$TaskCompletionSource;
    invoke-static {v0}, Lcom/parse/ParseQuery;->access$1100(Lcom/parse/ParseQuery;)Lbolts/Task$TaskCompletionSource;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lbolts/Task$TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 948
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseQuery$13;->this$0:Lcom/parse/ParseQuery;

    const/4 v2, 0x0

    # setter for: Lcom/parse/ParseQuery;->ct:Lbolts/Task$TaskCompletionSource;
    invoke-static {v0, v2}, Lcom/parse/ParseQuery;->access$1102(Lcom/parse/ParseQuery;Lbolts/Task$TaskCompletionSource;)Lbolts/Task$TaskCompletionSource;

    .line 949
    monitor-exit v1

    .line 950
    return-object p1

    .line 949
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 940
    .local p0, "this":Lcom/parse/ParseQuery$13;, "Lcom/parse/ParseQuery.13;"
    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery$13;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
