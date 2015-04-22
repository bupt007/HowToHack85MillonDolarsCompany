.class Lcom/parse/ParseObject$40$2$3$1$1;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject$40$2$3$1;->then(Lbolts/Task;)Lbolts/Task;
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
.field final synthetic this$3:Lcom/parse/ParseObject$40$2$3$1;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$40$2$3$1;)V
    .locals 0

    .prologue
    .line 2342
    iput-object p1, p0, Lcom/parse/ParseObject$40$2$3$1$1;->this$3:Lcom/parse/ParseObject$40$2$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 9
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
    .line 2345
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2346
    .local v2, "commands":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseRESTObjectCommand;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2347
    .local v6, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseOperationSet;>;"
    iget-object v7, p0, Lcom/parse/ParseObject$40$2$3$1$1;->this$3:Lcom/parse/ParseObject$40$2$3$1;

    iget-object v7, v7, Lcom/parse/ParseObject$40$2$3$1;->val$batch:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parse/ParseObject;

    .line 2349
    .local v4, "obj":Lcom/parse/ParseObject;
    iget-object v8, v4, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v8

    .line 2350
    :try_start_0
    invoke-virtual {v4}, Lcom/parse/ParseObject;->validateSave()V

    .line 2351
    invoke-virtual {v4}, Lcom/parse/ParseObject;->startSave()Lcom/parse/ParseOperationSet;

    move-result-object v5

    .line 2352
    .local v5, "operationSet":Lcom/parse/ParseOperationSet;
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2353
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2354
    invoke-static {}, Lcom/parse/PointerEncodingStrategy;->get()Lcom/parse/PointerEncodingStrategy;

    move-result-object v7

    iget-object v8, p0, Lcom/parse/ParseObject$40$2$3$1$1;->this$3:Lcom/parse/ParseObject$40$2$3$1;

    iget-object v8, v8, Lcom/parse/ParseObject$40$2$3$1;->this$2:Lcom/parse/ParseObject$40$2$3;

    iget-object v8, v8, Lcom/parse/ParseObject$40$2$3;->this$1:Lcom/parse/ParseObject$40$2;

    iget-object v8, v8, Lcom/parse/ParseObject$40$2;->this$0:Lcom/parse/ParseObject$40;

    iget-object v8, v8, Lcom/parse/ParseObject$40;->val$sessionToken:Ljava/lang/String;

    invoke-virtual {v4, v5, v7, v8}, Lcom/parse/ParseObject;->currentSaveCommand(Lcom/parse/ParseOperationSet;Lcom/parse/ParseObjectEncodingStrategy;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;

    move-result-object v1

    .line 2356
    .local v1, "command":Lcom/parse/ParseRESTObjectCommand;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2352
    .end local v1    # "command":Lcom/parse/ParseRESTObjectCommand;
    .end local v5    # "operationSet":Lcom/parse/ParseOperationSet;
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 2359
    .end local v4    # "obj":Lcom/parse/ParseObject;
    :cond_0
    iget-object v7, p0, Lcom/parse/ParseObject$40$2$3$1$1;->this$3:Lcom/parse/ParseObject$40$2$3$1;

    iget-object v7, v7, Lcom/parse/ParseObject$40$2$3$1;->this$2:Lcom/parse/ParseObject$40$2$3;

    iget-object v7, v7, Lcom/parse/ParseObject$40$2$3;->this$1:Lcom/parse/ParseObject$40$2;

    iget-object v7, v7, Lcom/parse/ParseObject$40$2;->this$0:Lcom/parse/ParseObject$40;

    iget-object v7, v7, Lcom/parse/ParseObject$40;->val$sessionToken:Ljava/lang/String;

    invoke-static {v2, v7}, Lcom/parse/ParseRESTObjectBatchCommand;->batchCommand(Ljava/util/List;Ljava/lang/String;)Lcom/parse/ParseRESTObjectBatchCommand;

    move-result-object v0

    .line 2361
    .local v0, "batchCommand":Lcom/parse/ParseRESTObjectBatchCommand;
    invoke-virtual {v0}, Lcom/parse/ParseRESTObjectBatchCommand;->executeAsync()Lbolts/Task;

    move-result-object v7

    invoke-virtual {v7}, Lbolts/Task;->cast()Lbolts/Task;

    move-result-object v7

    new-instance v8, Lcom/parse/ParseObject$40$2$3$1$1$1;

    invoke-direct {v8, p0, v6}, Lcom/parse/ParseObject$40$2$3$1$1$1;-><init>(Lcom/parse/ParseObject$40$2$3$1$1;Ljava/util/List;)V

    invoke-virtual {v7, v8}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v7

    return-object v7
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
    .line 2342
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$40$2$3$1$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
