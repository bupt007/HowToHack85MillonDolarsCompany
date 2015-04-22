.class Lcom/parse/ParseRemoveOperation;
.super Ljava/lang/Object;
.source "ParseRemoveOperation.java"

# interfaces
.implements Lcom/parse/ParseFieldOperation;


# instance fields
.field protected objects:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseRemoveOperation;->objects:Ljava/util/HashSet;

    .line 20
    iget-object v0, p0, Lcom/parse/ParseRemoveOperation;->objects:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 21
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Lcom/parse/ParseObject;Ljava/lang/String;)Ljava/lang/Object;
    .locals 10
    .param p1, "oldValue"    # Ljava/lang/Object;
    .param p2, "object"    # Lcom/parse/ParseObject;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 55
    if-nez p1, :cond_1

    .line 56
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .end local p1    # "oldValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v6

    .line 57
    .restart local p1    # "oldValue":Ljava/lang/Object;
    :cond_1
    instance-of v8, p1, Lorg/json/JSONArray;

    if-eqz v8, :cond_2

    .line 58
    check-cast p1, Lorg/json/JSONArray;

    .end local p1    # "oldValue":Ljava/lang/Object;
    invoke-static {p1}, Lcom/parse/ParseFieldOperations;->jsonArrayAsArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v5

    .line 60
    .local v5, "old":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {p0, v5, p2, p3}, Lcom/parse/ParseRemoveOperation;->apply(Ljava/lang/Object;Lcom/parse/ParseObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 61
    .local v1, "newValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 62
    .end local v1    # "newValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v5    # "old":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local p1    # "oldValue":Ljava/lang/Object;
    :cond_2
    instance-of v8, p1, Ljava/util/List;

    if-eqz v8, :cond_6

    .line 63
    new-instance v6, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/List;

    .end local p1    # "oldValue":Ljava/lang/Object;
    invoke-direct {v6, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 64
    .local v6, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v8, p0, Lcom/parse/ParseRemoveOperation;->objects:Ljava/util/HashSet;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 68
    new-instance v4, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/parse/ParseRemoveOperation;->objects:Ljava/util/HashSet;

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 69
    .local v4, "objectsToBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 72
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 73
    .local v3, "objectIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 74
    .local v2, "obj":Ljava/lang/Object;
    instance-of v8, v2, Lcom/parse/ParseObject;

    if-eqz v8, :cond_3

    .line 75
    check-cast v2, Lcom/parse/ParseObject;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-virtual {v2}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 80
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 81
    .local v7, "resultIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 82
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 83
    .restart local v2    # "obj":Ljava/lang/Object;
    instance-of v8, v2, Lcom/parse/ParseObject;

    if-eqz v8, :cond_5

    check-cast v2, Lcom/parse/ParseObject;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-virtual {v2}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 84
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 89
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "objectIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v4    # "objectsToBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v6    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v7    # "resultIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    .restart local p1    # "oldValue":Ljava/lang/Object;
    :cond_6
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Operation is invalid after previous operation."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public bridge synthetic encode(Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/parse/ParseObjectEncodingStrategy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/parse/ParseRemoveOperation;->encode(Lcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public encode(Lcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "objectEncoder"    # Lcom/parse/ParseObjectEncodingStrategy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 26
    .local v0, "output":Lorg/json/JSONObject;
    const-string v1, "__op"

    const-string v2, "Remove"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    const-string v1, "objects"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/parse/ParseRemoveOperation;->objects:Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, p1}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    return-object v0
.end method

.method public mergeWithPrevious(Lcom/parse/ParseFieldOperation;)Lcom/parse/ParseFieldOperation;
    .locals 4
    .param p1, "previous"    # Lcom/parse/ParseFieldOperation;

    .prologue
    const/4 v3, 0x0

    .line 33
    if-nez p1, :cond_0

    .line 47
    .end local p0    # "this":Lcom/parse/ParseRemoveOperation;
    .end local p1    # "previous":Lcom/parse/ParseFieldOperation;
    .local v0, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    :goto_0
    return-object p0

    .line 35
    .end local v0    # "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    .restart local p0    # "this":Lcom/parse/ParseRemoveOperation;
    .restart local p1    # "previous":Lcom/parse/ParseFieldOperation;
    :cond_0
    instance-of v2, p1, Lcom/parse/ParseDeleteOperation;

    if-eqz v2, :cond_1

    .line 36
    new-instance v2, Lcom/parse/ParseSetOperation;

    iget-object v3, p0, Lcom/parse/ParseRemoveOperation;->objects:Ljava/util/HashSet;

    invoke-direct {v2, v3}, Lcom/parse/ParseSetOperation;-><init>(Ljava/lang/Object;)V

    move-object p0, v2

    goto :goto_0

    .line 37
    :cond_1
    instance-of v2, p1, Lcom/parse/ParseSetOperation;

    if-eqz v2, :cond_4

    .line 38
    check-cast p1, Lcom/parse/ParseSetOperation;

    .end local p1    # "previous":Lcom/parse/ParseFieldOperation;
    invoke-virtual {p1}, Lcom/parse/ParseSetOperation;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 39
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Lorg/json/JSONArray;

    if-nez v2, :cond_2

    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_3

    .line 40
    :cond_2
    new-instance v2, Lcom/parse/ParseSetOperation;

    invoke-virtual {p0, v1, v3, v3}, Lcom/parse/ParseRemoveOperation;->apply(Ljava/lang/Object;Lcom/parse/ParseObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/parse/ParseSetOperation;-><init>(Ljava/lang/Object;)V

    move-object p0, v2

    goto :goto_0

    .line 42
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "You can only add an item to a List or JSONArray."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 44
    .end local v1    # "value":Ljava/lang/Object;
    .restart local p1    # "previous":Lcom/parse/ParseFieldOperation;
    :cond_4
    instance-of v2, p1, Lcom/parse/ParseRemoveOperation;

    if-eqz v2, :cond_5

    .line 45
    new-instance v0, Ljava/util/HashSet;

    check-cast p1, Lcom/parse/ParseRemoveOperation;

    .end local p1    # "previous":Lcom/parse/ParseFieldOperation;
    iget-object v2, p1, Lcom/parse/ParseRemoveOperation;->objects:Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 46
    .restart local v0    # "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/parse/ParseRemoveOperation;->objects:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 47
    new-instance p0, Lcom/parse/ParseRemoveOperation;

    .end local p0    # "this":Lcom/parse/ParseRemoveOperation;
    invoke-direct {p0, v0}, Lcom/parse/ParseRemoveOperation;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 49
    .end local v0    # "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    .restart local p0    # "this":Lcom/parse/ParseRemoveOperation;
    .restart local p1    # "previous":Lcom/parse/ParseFieldOperation;
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Operation is invalid after previous operation."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
