.class Lcom/parse/ParseAddOperation;
.super Ljava/lang/Object;
.source "ParseAddOperation.java"

# interfaces
.implements Lcom/parse/ParseFieldOperation;


# instance fields
.field protected final objects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
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
    .line 17
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseAddOperation;->objects:Ljava/util/ArrayList;

    .line 18
    iget-object v0, p0, Lcom/parse/ParseAddOperation;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 19
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Lcom/parse/ParseObject;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "oldValue"    # Ljava/lang/Object;
    .param p2, "object"    # Lcom/parse/ParseObject;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 60
    iget-object v2, p0, Lcom/parse/ParseAddOperation;->objects:Ljava/util/ArrayList;

    .line 69
    .end local p1    # "oldValue":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 61
    .restart local p1    # "oldValue":Ljava/lang/Object;
    :cond_0
    instance-of v3, p1, Lorg/json/JSONArray;

    if-eqz v3, :cond_1

    .line 62
    check-cast p1, Lorg/json/JSONArray;

    .end local p1    # "oldValue":Ljava/lang/Object;
    invoke-static {p1}, Lcom/parse/ParseFieldOperations;->jsonArrayAsArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    .line 64
    .local v1, "old":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {p0, v1, p2, p3}, Lcom/parse/ParseAddOperation;->apply(Ljava/lang/Object;Lcom/parse/ParseObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 65
    .local v0, "newValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 66
    .end local v0    # "newValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v1    # "old":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local p1    # "oldValue":Ljava/lang/Object;
    :cond_1
    instance-of v3, p1, Ljava/util/List;

    if-eqz v3, :cond_2

    .line 67
    new-instance v2, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/List;

    .end local p1    # "oldValue":Ljava/lang/Object;
    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 68
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/parse/ParseAddOperation;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 71
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local p1    # "oldValue":Ljava/lang/Object;
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Operation is invalid after previous operation."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
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
    .line 14
    invoke-virtual {p0, p1}, Lcom/parse/ParseAddOperation;->encode(Lcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public encode(Lcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "objectEncoder"    # Lcom/parse/ParseObjectEncodingStrategy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 24
    .local v0, "output":Lorg/json/JSONObject;
    const-string v1, "__op"

    const-string v2, "Add"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    const-string v1, "objects"

    iget-object v2, p0, Lcom/parse/ParseAddOperation;->objects:Ljava/util/ArrayList;

    invoke-static {v2, p1}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    return-object v0
.end method

.method public mergeWithPrevious(Lcom/parse/ParseFieldOperation;)Lcom/parse/ParseFieldOperation;
    .locals 4
    .param p1, "previous"    # Lcom/parse/ParseFieldOperation;

    .prologue
    .line 31
    if-nez p1, :cond_0

    .line 51
    .end local p0    # "this":Lcom/parse/ParseAddOperation;
    .end local p1    # "previous":Lcom/parse/ParseFieldOperation;
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :goto_0
    return-object p0

    .line 33
    .end local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local p0    # "this":Lcom/parse/ParseAddOperation;
    .restart local p1    # "previous":Lcom/parse/ParseFieldOperation;
    :cond_0
    instance-of v2, p1, Lcom/parse/ParseDeleteOperation;

    if-eqz v2, :cond_1

    .line 34
    new-instance v2, Lcom/parse/ParseSetOperation;

    iget-object v3, p0, Lcom/parse/ParseAddOperation;->objects:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Lcom/parse/ParseSetOperation;-><init>(Ljava/lang/Object;)V

    move-object p0, v2

    goto :goto_0

    .line 35
    :cond_1
    instance-of v2, p1, Lcom/parse/ParseSetOperation;

    if-eqz v2, :cond_4

    .line 36
    check-cast p1, Lcom/parse/ParseSetOperation;

    .end local p1    # "previous":Lcom/parse/ParseFieldOperation;
    invoke-virtual {p1}, Lcom/parse/ParseSetOperation;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 37
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Lorg/json/JSONArray;

    if-eqz v2, :cond_2

    .line 38
    check-cast v1, Lorg/json/JSONArray;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-static {v1}, Lcom/parse/ParseFieldOperations;->jsonArrayAsArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 39
    .restart local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/parse/ParseAddOperation;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 40
    new-instance p0, Lcom/parse/ParseSetOperation;

    .end local p0    # "this":Lcom/parse/ParseAddOperation;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v2}, Lcom/parse/ParseSetOperation;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 41
    .end local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v1    # "value":Ljava/lang/Object;
    .restart local p0    # "this":Lcom/parse/ParseAddOperation;
    :cond_2
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_3

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 43
    .restart local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/parse/ParseAddOperation;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 44
    new-instance p0, Lcom/parse/ParseSetOperation;

    .end local p0    # "this":Lcom/parse/ParseAddOperation;
    invoke-direct {p0, v0}, Lcom/parse/ParseSetOperation;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 46
    .end local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v1    # "value":Ljava/lang/Object;
    .restart local p0    # "this":Lcom/parse/ParseAddOperation;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "You can only add an item to a List or JSONArray."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 48
    .end local v1    # "value":Ljava/lang/Object;
    .restart local p1    # "previous":Lcom/parse/ParseFieldOperation;
    :cond_4
    instance-of v2, p1, Lcom/parse/ParseAddOperation;

    if-eqz v2, :cond_5

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    check-cast p1, Lcom/parse/ParseAddOperation;

    .end local p1    # "previous":Lcom/parse/ParseFieldOperation;
    iget-object v2, p1, Lcom/parse/ParseAddOperation;->objects:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 50
    .restart local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/parse/ParseAddOperation;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 51
    new-instance p0, Lcom/parse/ParseAddOperation;

    .end local p0    # "this":Lcom/parse/ParseAddOperation;
    invoke-direct {p0, v0}, Lcom/parse/ParseAddOperation;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 53
    .end local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local p0    # "this":Lcom/parse/ParseAddOperation;
    .restart local p1    # "previous":Lcom/parse/ParseFieldOperation;
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Operation is invalid after previous operation."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
