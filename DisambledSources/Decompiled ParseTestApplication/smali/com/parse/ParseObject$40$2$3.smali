.class Lcom/parse/ParseObject$40$2$3;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject$40$2;->then(Lbolts/Task;)Lbolts/Task;
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
.field final synthetic this$1:Lcom/parse/ParseObject$40$2;

.field final synthetic val$current:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$40$2;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 2328
    iput-object p1, p0, Lcom/parse/ParseObject$40$2$3;->this$1:Lcom/parse/ParseObject$40$2;

    iput-object p2, p0, Lcom/parse/ParseObject$40$2$3;->val$current:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 7
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
    .line 2331
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v5, p0, Lcom/parse/ParseObject$40$2$3;->val$current:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 2332
    const/4 v5, 0x0

    invoke-static {v5}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v5

    .line 2410
    :goto_0
    return-object v5

    .line 2335
    :cond_0
    iget-object v5, p0, Lcom/parse/ParseObject$40$2$3;->val$current:Ljava/util/List;

    const/16 v6, 0x32

    invoke-static {v5, v6}, Lcom/parse/Parse;->partitionList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v3

    .line 2337
    .local v3, "objectBatches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/parse/ParseObject;>;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2338
    .local v4, "tasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2339
    .local v0, "batch":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    new-instance v5, Lcom/parse/ParseObject$40$2$3$1;

    invoke-direct {v5, p0, v0}, Lcom/parse/ParseObject$40$2$3$1;-><init>(Lcom/parse/ParseObject$40$2$3;Ljava/util/List;)V

    invoke-static {v0, v5}, Lcom/parse/ParseObject;->enqueueForAll(Ljava/util/List;Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    .line 2408
    .local v1, "batchTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2410
    .end local v0    # "batch":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    .end local v1    # "batchTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :cond_1
    invoke-static {v4}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v5

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
    .line 2328
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$40$2$3;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
