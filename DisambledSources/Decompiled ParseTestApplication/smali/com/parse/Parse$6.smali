.class final Lcom/parse/Parse$6;
.super Ljava/lang/Object;
.source "Parse.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;Z)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<TT;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/parse/ParseCallback2;

.field final synthetic val$reportCancellation:Z

.field final synthetic val$tcs:Lbolts/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(ZLbolts/Task$TaskCompletionSource;Lcom/parse/ParseCallback2;)V
    .locals 0

    .prologue
    .line 929
    iput-boolean p1, p0, Lcom/parse/Parse$6;->val$reportCancellation:Z

    iput-object p2, p0, Lcom/parse/Parse$6;->val$tcs:Lbolts/Task$TaskCompletionSource;

    iput-object p3, p0, Lcom/parse/Parse$6;->val$callback:Lcom/parse/ParseCallback2;

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
    .line 929
    invoke-virtual {p0, p1}, Lcom/parse/Parse$6;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<TT;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<TT;>;"
    const/4 v2, 0x0

    .line 932
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/parse/Parse$6;->val$reportCancellation:Z

    if-nez v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/parse/Parse$6;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->setCancelled()V

    .line 956
    :goto_0
    return-object v2

    .line 936
    :cond_0
    sget-object v0, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/parse/Parse$6$1;

    invoke-direct {v1, p0, p1}, Lcom/parse/Parse$6$1;-><init>(Lcom/parse/Parse$6;Lbolts/Task;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
