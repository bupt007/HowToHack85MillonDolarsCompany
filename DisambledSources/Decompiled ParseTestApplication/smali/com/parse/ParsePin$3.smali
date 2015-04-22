.class final Lcom/parse/ParsePin$3;
.super Ljava/lang/Object;
.source "ParsePin.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParsePin;->unpinAllObjectsAsync(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;
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
.field final synthetic val$objects:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/parse/ParsePin$3;->val$objects:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 4
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
    .line 91
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParsePin;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParsePin;

    .line 92
    .local v1, "pin":Lcom/parse/ParsePin;
    invoke-static {}, Lcom/parse/OfflineStore;->getCurrent()Lcom/parse/OfflineStore;

    move-result-object v2

    .line 103
    .local v2, "store":Lcom/parse/OfflineStore;
    invoke-virtual {v1}, Lcom/parse/ParsePin;->getObjects()Ljava/util/List;

    move-result-object v0

    .line 104
    .local v0, "modified":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    if-nez v0, :cond_0

    .line 106
    const/4 v3, 0x0

    invoke-static {v3}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v3

    .line 115
    :goto_0
    return-object v3

    .line 109
    :cond_0
    iget-object v3, p0, Lcom/parse/ParsePin$3;->val$objects:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 110
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 111
    invoke-virtual {v2, v1}, Lcom/parse/OfflineStore;->unpinAsync(Lcom/parse/ParseObject;)Lbolts/Task;

    move-result-object v3

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {v1, v0}, Lcom/parse/ParsePin;->setObjects(Ljava/util/List;)V

    .line 115
    invoke-virtual {v2, v1}, Lcom/parse/OfflineStore;->saveLocallyAsync(Lcom/parse/ParseObject;)Lbolts/Task;

    move-result-object v3

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
    .line 88
    invoke-virtual {p0, p1}, Lcom/parse/ParsePin$3;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
