.class Lcom/parse/ParseObject$36$1$1;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject$36$1;->then(Lbolts/Task;)Lbolts/Task;
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
.field final synthetic this$1:Lcom/parse/ParseObject$36$1;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$36$1;)V
    .locals 0

    .prologue
    .line 2055
    iput-object p1, p0, Lcom/parse/ParseObject$36$1$1;->this$1:Lcom/parse/ParseObject$36$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 8
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
    .line 2058
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2059
    .local v3, "commands":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseRESTObjectCommand;>;"
    iget-object v7, p0, Lcom/parse/ParseObject$36$1$1;->this$1:Lcom/parse/ParseObject$36$1;

    iget-object v7, v7, Lcom/parse/ParseObject$36$1;->val$uniqueObjects:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parse/ParseObject;

    .line 2060
    .local v6, "uniqueObject":Lcom/parse/ParseObject;
    iget-object v7, p0, Lcom/parse/ParseObject$36$1$1;->this$1:Lcom/parse/ParseObject$36$1;

    iget-object v7, v7, Lcom/parse/ParseObject$36$1;->this$0:Lcom/parse/ParseObject$36;

    iget-object v7, v7, Lcom/parse/ParseObject$36;->val$sessionToken:Ljava/lang/String;

    # invokes: Lcom/parse/ParseObject;->currentDeleteCommand(Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;
    invoke-static {v6, v7}, Lcom/parse/ParseObject;->access$1200(Lcom/parse/ParseObject;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;

    move-result-object v2

    .line 2062
    .local v2, "command":Lcom/parse/ParseRESTObjectCommand;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2065
    .end local v2    # "command":Lcom/parse/ParseRESTObjectCommand;
    .end local v6    # "uniqueObject":Lcom/parse/ParseObject;
    :cond_0
    iget-object v7, p0, Lcom/parse/ParseObject$36$1$1;->this$1:Lcom/parse/ParseObject$36$1;

    iget-object v7, v7, Lcom/parse/ParseObject$36$1;->this$0:Lcom/parse/ParseObject$36;

    iget-object v7, v7, Lcom/parse/ParseObject$36;->val$sessionToken:Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/parse/ParseRESTObjectBatchCommand;->batchCommands(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2067
    .local v0, "batchCommands":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseRESTObjectBatchCommand;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2068
    .local v5, "tasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseRESTCommand;

    .line 2069
    .local v2, "command":Lcom/parse/ParseRESTCommand;
    invoke-virtual {v2}, Lcom/parse/ParseRESTCommand;->executeAsync()Lbolts/Task;

    move-result-object v7

    invoke-virtual {v7}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v1

    .line 2070
    .local v1, "batchTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2072
    .end local v1    # "batchTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    .end local v2    # "command":Lcom/parse/ParseRESTCommand;
    :cond_1
    invoke-static {v5}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v7

    invoke-virtual {v7}, Lbolts/Task;->makeVoid()Lbolts/Task;

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
    .line 2055
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$36$1$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
