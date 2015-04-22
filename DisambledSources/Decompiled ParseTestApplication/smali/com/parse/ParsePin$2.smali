.class final Lcom/parse/ParsePin$2;
.super Ljava/lang/Object;
.source "ParsePin.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParsePin;->pinAllObjectsAsync(Ljava/lang/String;Ljava/util/List;Z)Lbolts/Task;
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
        "Lcom/parse/ParsePin;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$includeChildren:Z

.field final synthetic val$objects:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Z)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/parse/ParsePin$2;->val$objects:Ljava/util/List;

    iput-boolean p2, p0, Lcom/parse/ParsePin$2;->val$includeChildren:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParsePin;",
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
    .line 50
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParsePin;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParsePin;

    .line 51
    .local v3, "pin":Lcom/parse/ParsePin;
    invoke-static {}, Lcom/parse/OfflineStore;->getCurrent()Lcom/parse/OfflineStore;

    move-result-object v4

    .line 62
    .local v4, "store":Lcom/parse/OfflineStore;
    invoke-virtual {v3}, Lcom/parse/ParsePin;->getObjects()Ljava/util/List;

    move-result-object v1

    .line 63
    .local v1, "modified":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    if-nez v1, :cond_1

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "modified":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    iget-object v5, p0, Lcom/parse/ParsePin$2;->val$objects:Ljava/util/List;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 72
    .restart local v1    # "modified":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    :cond_0
    invoke-virtual {v3, v1}, Lcom/parse/ParsePin;->setObjects(Ljava/util/List;)V

    .line 74
    iget-boolean v5, p0, Lcom/parse/ParsePin$2;->val$includeChildren:Z

    if-eqz v5, :cond_3

    .line 75
    invoke-virtual {v4, v3}, Lcom/parse/OfflineStore;->saveLocallyAsync(Lcom/parse/ParseObject;)Lbolts/Task;

    move-result-object v5

    .line 77
    :goto_0
    return-object v5

    .line 66
    :cond_1
    iget-object v5, p0, Lcom/parse/ParsePin$2;->val$objects:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseObject;

    .line 67
    .local v2, "object":Lcom/parse/ParseObject;
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 68
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 77
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "object":Lcom/parse/ParseObject;
    :cond_3
    invoke-virtual {v3}, Lcom/parse/ParsePin;->getObjects()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/parse/OfflineStore;->saveLocallyAsync(Lcom/parse/ParseObject;Ljava/util/List;)Lbolts/Task;

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
    .line 47
    invoke-virtual {p0, p1}, Lcom/parse/ParsePin$2;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
