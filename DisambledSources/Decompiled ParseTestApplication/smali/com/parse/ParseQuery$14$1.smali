.class Lcom/parse/ParseQuery$14$1;
.super Ljava/lang/Object;
.source "ParseQuery.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery$14;->call()Lbolts/Task;
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
.field final synthetic this$1:Lcom/parse/ParseQuery$14;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery$14;)V
    .locals 0

    .prologue
    .line 967
    .local p0, "this":Lcom/parse/ParseQuery$14$1;, "Lcom/parse/ParseQuery$14.1;"
    iput-object p1, p0, Lcom/parse/ParseQuery$14$1;->this$1:Lcom/parse/ParseQuery$14;

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
    .line 970
    .local p0, "this":Lcom/parse/ParseQuery$14$1;, "Lcom/parse/ParseQuery$14.1;"
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 973
    .end local p1    # "task":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    :goto_0
    return-object p1

    .restart local p1    # "task":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseQuery$14$1;->this$1:Lcom/parse/ParseQuery$14;

    iget-object v0, v0, Lcom/parse/ParseQuery$14;->val$callable:Lcom/parse/ParseQuery$CallableWithCachePolicy;

    sget-object v1, Lcom/parse/ParseQuery$CachePolicy;->NETWORK_ONLY:Lcom/parse/ParseQuery$CachePolicy;

    invoke-interface {v0, v1}, Lcom/parse/ParseQuery$CallableWithCachePolicy;->call(Lcom/parse/ParseQuery$CachePolicy;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/Task;

    move-object p1, v0

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
    .line 967
    .local p0, "this":Lcom/parse/ParseQuery$14$1;, "Lcom/parse/ParseQuery$14.1;"
    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery$14$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
