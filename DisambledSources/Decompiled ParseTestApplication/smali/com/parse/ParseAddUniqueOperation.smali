.class Lcom/parse/ParseAddUniqueOperation;
.super Ljava/lang/Object;
.source "ParseAddUniqueOperation.java"

# interfaces
.implements Lcom/parse/ParseFieldOperation;


# instance fields
.field protected objects:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
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
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseAddUniqueOperation;->objects:Ljava/util/LinkedHashSet;

    .line 20
    iget-object v0, p0, Lcom/parse/ParseAddUniqueOperation;->objects:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

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
    .line 56
    if-nez p1, :cond_1

    .line 57
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/parse/ParseAddUniqueOperation;->objects:Ljava/util/LinkedHashSet;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 90
    .end local p1    # "oldValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v7

    .line 58
    .restart local p1    # "oldValue":Ljava/lang/Object;
    :cond_1
    instance-of v8, p1, Lorg/json/JSONArray;

    if-eqz v8, :cond_2

    .line 59
    check-cast p1, Lorg/json/JSONArray;

    .end local p1    # "oldValue":Ljava/lang/Object;
    invoke-static {p1}, Lcom/parse/ParseFieldOperations;->jsonArrayAsArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v6

    .line 61
    .local v6, "old":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {p0, v6, p2, p3}, Lcom/parse/ParseAddUniqueOperation;->apply(Ljava/lang/Object;Lcom/parse/ParseObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 62
    .local v3, "newValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 63
    .end local v3    # "newValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v6    # "old":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local p1    # "oldValue":Ljava/lang/Object;
    :cond_2
    instance-of v8, p1, Ljava/util/List;

    if-eqz v8, :cond_8

    .line 64
    new-instance v7, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/List;

    .end local p1    # "oldValue":Ljava/lang/Object;
    invoke-direct {v7, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 67
    .local v7, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 68
    .local v0, "existingObjectIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_4

    .line 69
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/parse/ParseObject;

    if-eqz v8, :cond_3

    .line 70
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/parse/ParseObject;

    invoke-virtual {v8}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 76
    :cond_4
    iget-object v8, p0, Lcom/parse/ParseAddUniqueOperation;->objects:Ljava/util/LinkedHashSet;

    invoke-virtual {v8}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 77
    .local v4, "obj":Ljava/lang/Object;
    instance-of v8, v4, Lcom/parse/ParseObject;

    if-eqz v8, :cond_7

    move-object v8, v4

    .line 78
    check-cast v8, Lcom/parse/ParseObject;

    invoke-virtual {v8}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, "objectId":Ljava/lang/String;
    if-eqz v5, :cond_6

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 80
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 81
    :cond_6
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 82
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 85
    .end local v5    # "objectId":Ljava/lang/String;
    :cond_7
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 86
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 92
    .end local v0    # "existingObjectIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "obj":Ljava/lang/Object;
    .end local v7    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local p1    # "oldValue":Ljava/lang/Object;
    :cond_8
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
    invoke-virtual {p0, p1}, Lcom/parse/ParseAddUniqueOperation;->encode(Lcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;

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

    const-string v2, "AddUnique"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    const-string v1, "objects"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/parse/ParseAddUniqueOperation;->objects:Ljava/util/LinkedHashSet;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, p1}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    return-object v0
.end method

.method public mergeWithPrevious(Lcom/parse/ParseFieldOperation;)Lcom/parse/ParseFieldOperation;
    .locals 5
    .param p1, "previous"    # Lcom/parse/ParseFieldOperation;

    .prologue
    const/4 v4, 0x0

    .line 34
    if-nez p1, :cond_0

    .line 48
    .end local p0    # "this":Lcom/parse/ParseAddUniqueOperation;
    .end local p1    # "previous":Lcom/parse/ParseFieldOperation;
    .local v0, "previousResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_0
    return-object p0

    .line 36
    .end local v0    # "previousResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local p0    # "this":Lcom/parse/ParseAddUniqueOperation;
    .restart local p1    # "previous":Lcom/parse/ParseFieldOperation;
    :cond_0
    instance-of v2, p1, Lcom/parse/ParseDeleteOperation;

    if-eqz v2, :cond_1

    .line 37
    new-instance v2, Lcom/parse/ParseSetOperation;

    iget-object v3, p0, Lcom/parse/ParseAddUniqueOperation;->objects:Ljava/util/LinkedHashSet;

    invoke-direct {v2, v3}, Lcom/parse/ParseSetOperation;-><init>(Ljava/lang/Object;)V

    move-object p0, v2

    goto :goto_0

    .line 38
    :cond_1
    instance-of v2, p1, Lcom/parse/ParseSetOperation;

    if-eqz v2, :cond_4

    .line 39
    check-cast p1, Lcom/parse/ParseSetOperation;

    .end local p1    # "previous":Lcom/parse/ParseFieldOperation;
    invoke-virtual {p1}, Lcom/parse/ParseSetOperation;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 40
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Lorg/json/JSONArray;

    if-nez v2, :cond_2

    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_3

    .line 41
    :cond_2
    new-instance v2, Lcom/parse/ParseSetOperation;

    invoke-virtual {p0, v1, v4, v4}, Lcom/parse/ParseAddUniqueOperation;->apply(Ljava/lang/Object;Lcom/parse/ParseObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/parse/ParseSetOperation;-><init>(Ljava/lang/Object;)V

    move-object p0, v2

    goto :goto_0

    .line 43
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "You can only add an item to a List or JSONArray."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 45
    .end local v1    # "value":Ljava/lang/Object;
    .restart local p1    # "previous":Lcom/parse/ParseFieldOperation;
    :cond_4
    instance-of v2, p1, Lcom/parse/ParseAddUniqueOperation;

    if-eqz v2, :cond_5

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    check-cast p1, Lcom/parse/ParseAddUniqueOperation;

    .end local p1    # "previous":Lcom/parse/ParseFieldOperation;
    iget-object v2, p1, Lcom/parse/ParseAddUniqueOperation;->objects:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 48
    .restart local v0    # "previousResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v3, Lcom/parse/ParseAddUniqueOperation;

    invoke-virtual {p0, v0, v4, v4}, Lcom/parse/ParseAddUniqueOperation;->apply(Ljava/lang/Object;Lcom/parse/ParseObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {v3, v2}, Lcom/parse/ParseAddUniqueOperation;-><init>(Ljava/util/Collection;)V

    move-object p0, v3

    goto :goto_0

    .line 50
    .end local v0    # "previousResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local p1    # "previous":Lcom/parse/ParseFieldOperation;
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Operation is invalid after previous operation."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
