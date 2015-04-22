.class Lcom/parse/ParseObject$40$2;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject$40;->then(Lbolts/Task;)Lbolts/Task;
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
.field final synthetic this$0:Lcom/parse/ParseObject$40;

.field final synthetic val$remaining:Lbolts/Capture;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$40;Lbolts/Capture;)V
    .locals 0

    .prologue
    .line 2279
    iput-object p1, p0, Lcom/parse/ParseObject$40$2;->this$0:Lcom/parse/ParseObject$40;

    iput-object p2, p0, Lcom/parse/ParseObject$40$2;->val$remaining:Lbolts/Capture;

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
    .line 2284
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2285
    .local v0, "current":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2286
    .local v2, "nextBatch":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    iget-object v5, p0, Lcom/parse/ParseObject$40$2;->val$remaining:Lbolts/Capture;

    invoke-virtual {v5}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseObject;

    .line 2287
    .local v3, "obj":Lcom/parse/ParseObject;
    # invokes: Lcom/parse/ParseObject;->canBeSerialized()Z
    invoke-static {v3}, Lcom/parse/ParseObject;->access$1400(Lcom/parse/ParseObject;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2288
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2290
    :cond_0
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2293
    .end local v3    # "obj":Lcom/parse/ParseObject;
    :cond_1
    iget-object v5, p0, Lcom/parse/ParseObject$40$2;->val$remaining:Lbolts/Capture;

    invoke-virtual {v5, v2}, Lbolts/Capture;->set(Ljava/lang/Object;)V

    .line 2295
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 2299
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Unable to save a ParseObject with a relation to a cycle."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2304
    :cond_2
    const/4 v5, 0x0

    invoke-static {v5}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v4

    .line 2312
    .local v4, "result":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v5, p0, Lcom/parse/ParseObject$40$2;->this$0:Lcom/parse/ParseObject$40;

    iget-object v5, v5, Lcom/parse/ParseObject$40;->val$currentUser:Lcom/parse/ParseUser;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/parse/ParseObject$40$2;->this$0:Lcom/parse/ParseObject$40;

    iget-object v5, v5, Lcom/parse/ParseObject$40;->val$currentUser:Lcom/parse/ParseUser;

    invoke-virtual {v5}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/parse/ParseObject$40$2;->this$0:Lcom/parse/ParseObject$40;

    iget-object v5, v5, Lcom/parse/ParseObject$40;->val$currentUser:Lcom/parse/ParseUser;

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2313
    new-instance v5, Lcom/parse/ParseObject$40$2$2;

    invoke-direct {v5, p0}, Lcom/parse/ParseObject$40$2$2;-><init>(Lcom/parse/ParseObject$40$2;)V

    invoke-virtual {v4, v5}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v5

    new-instance v6, Lcom/parse/ParseObject$40$2$1;

    invoke-direct {v6, p0, v0}, Lcom/parse/ParseObject$40$2$1;-><init>(Lcom/parse/ParseObject$40$2;Ljava/util/List;)V

    invoke-virtual {v5, v6}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v4

    .line 2328
    :cond_3
    new-instance v5, Lcom/parse/ParseObject$40$2$3;

    invoke-direct {v5, p0, v0}, Lcom/parse/ParseObject$40$2$3;-><init>(Lcom/parse/ParseObject$40$2;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v4

    .line 2413
    return-object v4
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
    .line 2279
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$40$2;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
