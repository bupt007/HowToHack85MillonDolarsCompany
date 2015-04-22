.class final Lcom/parse/EventuallyPin$2;
.super Ljava/lang/Object;
.source "EventuallyPin.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/EventuallyPin;->findAllPinned(Ljava/util/Collection;)Lbolts/Task;
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
        "<",
        "Lcom/parse/EventuallyPin;",
        ">;",
        "Lbolts/Task",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/parse/EventuallyPin;",
        ">;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 172
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
            "Ljava/util/List",
            "<",
            "Lcom/parse/EventuallyPin;",
            ">;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/parse/EventuallyPin;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/util/List<Lcom/parse/EventuallyPin;>;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 176
    .local v3, "pins":Ljava/util/List;, "Ljava/util/List<Lcom/parse/EventuallyPin;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v4, "tasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/EventuallyPin;

    .line 179
    .local v2, "pin":Lcom/parse/EventuallyPin;
    invoke-virtual {v2}, Lcom/parse/EventuallyPin;->getObject()Lcom/parse/ParseObject;

    move-result-object v1

    .line 180
    .local v1, "object":Lcom/parse/ParseObject;
    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {v1}, Lcom/parse/ParseObject;->fetchFromLocalDatastoreAsync()Lbolts/Task;

    move-result-object v5

    invoke-virtual {v5}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 185
    .end local v1    # "object":Lcom/parse/ParseObject;
    .end local v2    # "pin":Lcom/parse/EventuallyPin;
    :cond_1
    invoke-static {v4}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v5

    new-instance v6, Lcom/parse/EventuallyPin$2$1;

    invoke-direct {v6, p0, v3}, Lcom/parse/EventuallyPin$2$1;-><init>(Lcom/parse/EventuallyPin$2;Ljava/util/List;)V

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
    .line 172
    invoke-virtual {p0, p1}, Lcom/parse/EventuallyPin$2;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
