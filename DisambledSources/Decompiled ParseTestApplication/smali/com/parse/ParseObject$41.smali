.class final Lcom/parse/ParseObject$41;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->fetchAllIfNeededAsync(Ljava/util/List;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Ljava/util/List",
        "<TT;>;",
        "Ljava/util/List",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$objects:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 2487
    iput-object p1, p0, Lcom/parse/ParseObject$41;->val$objects:Ljava/util/List;

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
    .line 2487
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$41;->then(Lbolts/Task;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2490
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/util/List<TT;>;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2491
    .local v4, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseObject;

    .line 2492
    .local v2, "o":Lcom/parse/ParseObject;, "TT;"
    invoke-virtual {v2}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2494
    .end local v2    # "o":Lcom/parse/ParseObject;, "TT;"
    :cond_0
    iget-object v5, p0, Lcom/parse/ParseObject$41;->val$objects:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseObject;

    .line 2495
    .local v3, "object":Lcom/parse/ParseObject;
    invoke-virtual {v3}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2498
    invoke-virtual {v3}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseObject;

    .line 2499
    .local v1, "newObject":Lcom/parse/ParseObject;, "TT;"
    if-nez v1, :cond_2

    .line 2500
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Object id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not exist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2504
    :cond_2
    invoke-virtual {v3, v1}, Lcom/parse/ParseObject;->mergeFromObject(Lcom/parse/ParseObject;)V

    .line 2505
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/parse/ParseObject;->hasBeenFetched:Z

    goto :goto_1

    .line 2507
    .end local v1    # "newObject":Lcom/parse/ParseObject;, "TT;"
    .end local v3    # "object":Lcom/parse/ParseObject;
    :cond_3
    iget-object v5, p0, Lcom/parse/ParseObject$41;->val$objects:Ljava/util/List;

    return-object v5
.end method
