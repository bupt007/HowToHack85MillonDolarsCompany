.class Lcom/parse/ParseObject$40$2$3$1$1$1$1;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject$40$2$3$1$1$1;->then(Lbolts/Task;)Lbolts/Task;
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
.field final synthetic this$5:Lcom/parse/ParseObject$40$2$3$1$1$1;

.field final synthetic val$commandTask:Lbolts/Task;

.field final synthetic val$tasks:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$40$2$3$1$1$1;Lbolts/Task;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 2379
    iput-object p1, p0, Lcom/parse/ParseObject$40$2$3$1$1$1$1;->this$5:Lcom/parse/ParseObject$40$2$3$1$1$1;

    iput-object p2, p0, Lcom/parse/ParseObject$40$2$3$1$1$1$1;->val$commandTask:Lbolts/Task;

    iput-object p3, p0, Lcom/parse/ParseObject$40$2$3$1$1$1$1;->val$tasks:Ljava/util/List;

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
    .line 2382
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/parse/ParseObject$40$2$3$1$1$1$1;->val$commandTask:Lbolts/Task;

    invoke-virtual {v2}, Lbolts/Task;->isFaulted()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/parse/ParseObject$40$2$3$1$1$1$1;->val$commandTask:Lbolts/Task;

    invoke-virtual {v2}, Lbolts/Task;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2384
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseObject$40$2$3$1$1$1$1;->val$commandTask:Lbolts/Task;

    invoke-virtual {v2}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v1

    .line 2399
    :goto_0
    return-object v1

    .line 2387
    :cond_1
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2393
    iget-object v2, p0, Lcom/parse/ParseObject$40$2$3$1$1$1$1;->val$tasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbolts/Task;

    .line 2394
    .local v1, "t":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-virtual {v1}, Lbolts/Task;->isFaulted()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "t":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :cond_3
    move-object v1, p1

    .line 2399
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
    .line 2379
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$40$2$3$1$1$1$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
