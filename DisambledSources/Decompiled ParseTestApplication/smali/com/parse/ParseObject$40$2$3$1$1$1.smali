.class Lcom/parse/ParseObject$40$2$3$1$1$1;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject$40$2$3$1$1;->then(Lbolts/Task;)Lbolts/Task;
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
        "Lorg/json/JSONArray;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$4:Lcom/parse/ParseObject$40$2$3$1$1;

.field final synthetic val$operations:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$40$2$3$1$1;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 2362
    iput-object p1, p0, Lcom/parse/ParseObject$40$2$3$1$1$1;->this$4:Lcom/parse/ParseObject$40$2$3$1$1;

    iput-object p2, p0, Lcom/parse/ParseObject$40$2$3$1$1$1;->val$operations:Ljava/util/List;

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
            "Lorg/json/JSONArray;",
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
    .line 2366
    .local p1, "commandTask":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONArray;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 2368
    .local v0, "commandResult":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2369
    .local v4, "tasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/parse/ParseObject$40$2$3$1$1$1;->this$4:Lcom/parse/ParseObject$40$2$3$1$1;

    iget-object v5, v5, Lcom/parse/ParseObject$40$2$3$1$1;->this$3:Lcom/parse/ParseObject$40$2$3$1;

    iget-object v5, v5, Lcom/parse/ParseObject$40$2$3$1;->this$2:Lcom/parse/ParseObject$40$2$3;

    iget-object v5, v5, Lcom/parse/ParseObject$40$2$3;->val$current:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 2370
    const/4 v3, 0x0

    .line 2371
    .local v3, "result":Lorg/json/JSONObject;
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2372
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 2373
    .local v2, "objectResult":Lorg/json/JSONObject;
    const-string v5, "success"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 2375
    .end local v2    # "objectResult":Lorg/json/JSONObject;
    :cond_0
    iget-object v5, p0, Lcom/parse/ParseObject$40$2$3$1$1$1;->this$4:Lcom/parse/ParseObject$40$2$3$1$1;

    iget-object v5, v5, Lcom/parse/ParseObject$40$2$3$1$1;->this$3:Lcom/parse/ParseObject$40$2$3$1;

    iget-object v5, v5, Lcom/parse/ParseObject$40$2$3$1;->this$2:Lcom/parse/ParseObject$40$2$3;

    iget-object v5, v5, Lcom/parse/ParseObject$40$2$3;->val$current:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parse/ParseObject;

    iget-object v6, p0, Lcom/parse/ParseObject$40$2$3$1$1$1;->val$operations:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parse/ParseOperationSet;

    invoke-virtual {v5, v3, v6}, Lcom/parse/ParseObject;->handleSaveResultAsync(Lorg/json/JSONObject;Lcom/parse/ParseOperationSet;)Lbolts/Task;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2369
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2378
    .end local v3    # "result":Lorg/json/JSONObject;
    :cond_1
    invoke-static {v4}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v5

    new-instance v6, Lcom/parse/ParseObject$40$2$3$1$1$1$1;

    invoke-direct {v6, p0, p1, v4}, Lcom/parse/ParseObject$40$2$3$1$1$1$1;-><init>(Lcom/parse/ParseObject$40$2$3$1$1$1;Lbolts/Task;Ljava/util/List;)V

    invoke-virtual {v5, v6}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v5

    return-object v5
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
    .line 2362
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$40$2$3$1$1$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
