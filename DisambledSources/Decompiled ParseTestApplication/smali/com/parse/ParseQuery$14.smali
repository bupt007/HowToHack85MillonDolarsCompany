.class Lcom/parse/ParseQuery$14;
.super Ljava/lang/Object;
.source "ParseQuery.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery;->doInBackground(Lcom/parse/ParseQuery$CallableWithCachePolicy;Lcom/parse/ParseCallback2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lbolts/Task",
        "<TTResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseQuery;

.field final synthetic val$callable:Lcom/parse/ParseQuery$CallableWithCachePolicy;

.field final synthetic val$callback:Lcom/parse/ParseCallback2;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery$CallableWithCachePolicy;Lcom/parse/ParseCallback2;)V
    .locals 0

    .prologue
    .line 960
    .local p0, "this":Lcom/parse/ParseQuery$14;, "Lcom/parse/ParseQuery.14;"
    iput-object p1, p0, Lcom/parse/ParseQuery$14;->this$0:Lcom/parse/ParseQuery;

    iput-object p2, p0, Lcom/parse/ParseQuery$14;->val$callable:Lcom/parse/ParseQuery$CallableWithCachePolicy;

    iput-object p3, p0, Lcom/parse/ParseQuery$14;->val$callback:Lcom/parse/ParseCallback2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
    .line 964
    .local p0, "this":Lcom/parse/ParseQuery$14;, "Lcom/parse/ParseQuery.14;"
    iget-object v1, p0, Lcom/parse/ParseQuery$14;->this$0:Lcom/parse/ParseQuery;

    # getter for: Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;
    invoke-static {v1}, Lcom/parse/ParseQuery;->access$1200(Lcom/parse/ParseQuery;)Lcom/parse/ParseQuery$CachePolicy;

    move-result-object v1

    sget-object v2, Lcom/parse/ParseQuery$CachePolicy;->CACHE_THEN_NETWORK:Lcom/parse/ParseQuery$CachePolicy;

    if-ne v1, v2, :cond_0

    .line 965
    iget-object v1, p0, Lcom/parse/ParseQuery$14;->val$callable:Lcom/parse/ParseQuery$CallableWithCachePolicy;

    sget-object v2, Lcom/parse/ParseQuery$CachePolicy;->CACHE_ONLY:Lcom/parse/ParseQuery$CachePolicy;

    invoke-interface {v1, v2}, Lcom/parse/ParseQuery$CallableWithCachePolicy;->call(Lcom/parse/ParseQuery$CachePolicy;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/Task;

    .line 966
    .local v0, "findTask":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    iget-object v1, p0, Lcom/parse/ParseQuery$14;->val$callback:Lcom/parse/ParseCallback2;

    invoke-static {v0, v1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    move-result-object v0

    .line 967
    new-instance v1, Lcom/parse/ParseQuery$14$1;

    invoke-direct {v1, p0}, Lcom/parse/ParseQuery$14$1;-><init>(Lcom/parse/ParseQuery$14;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    .line 979
    :goto_0
    return-object v0

    .line 977
    .end local v0    # "findTask":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseQuery$14;->val$callable:Lcom/parse/ParseQuery$CallableWithCachePolicy;

    iget-object v2, p0, Lcom/parse/ParseQuery$14;->this$0:Lcom/parse/ParseQuery;

    # getter for: Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;
    invoke-static {v2}, Lcom/parse/ParseQuery;->access$1200(Lcom/parse/ParseQuery;)Lcom/parse/ParseQuery$CachePolicy;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/parse/ParseQuery$CallableWithCachePolicy;->call(Lcom/parse/ParseQuery$CachePolicy;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/Task;

    .restart local v0    # "findTask":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 960
    .local p0, "this":Lcom/parse/ParseQuery$14;, "Lcom/parse/ParseQuery.14;"
    invoke-virtual {p0}, Lcom/parse/ParseQuery$14;->call()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
