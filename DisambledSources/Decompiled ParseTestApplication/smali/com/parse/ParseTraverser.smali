.class abstract Lcom/parse/ParseTraverser;
.super Ljava/lang/Object;
.source "ParseTraverser.java"


# instance fields
.field private traverseParseObjects:Z

.field private yieldRoot:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v0, p0, Lcom/parse/ParseTraverser;->traverseParseObjects:Z

    .line 28
    iput-boolean v0, p0, Lcom/parse/ParseTraverser;->yieldRoot:Z

    .line 29
    return-void
.end method

.method private traverseInternal(Ljava/lang/Object;ZLjava/util/IdentityHashMap;)V
    .locals 17
    .param p1, "root"    # Ljava/lang/Object;
    .param p2, "yieldRoot"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/util/IdentityHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p3, "seen":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    if-eqz p2, :cond_2

    .line 46
    invoke-virtual/range {p0 .. p1}, Lcom/parse/ParseTraverser;->visit(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 51
    :cond_2
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    move-object/from16 v0, p1

    instance-of v15, v0, Lorg/json/JSONObject;

    if-eqz v15, :cond_3

    move-object/from16 v8, p1

    .line 54
    check-cast v8, Lorg/json/JSONObject;

    .line 55
    .local v8, "json":Lorg/json/JSONObject;
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    .line 56
    .local v10, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 57
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 59
    .local v9, "key":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, p3

    invoke-direct {v0, v15, v1, v2}, Lcom/parse/ParseTraverser;->traverseInternal(Ljava/lang/Object;ZLjava/util/IdentityHashMap;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 60
    :catch_0
    move-exception v5

    .line 62
    .local v5, "e":Lorg/json/JSONException;
    new-instance v15, Ljava/lang/RuntimeException;

    invoke-direct {v15, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v15

    .line 66
    .end local v5    # "e":Lorg/json/JSONException;
    .end local v8    # "json":Lorg/json/JSONObject;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v0, p1

    instance-of v15, v0, Lorg/json/JSONArray;

    if-eqz v15, :cond_4

    move-object/from16 v4, p1

    .line 67
    check-cast v4, Lorg/json/JSONArray;

    .line 68
    .local v4, "array":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v6, v15, :cond_0

    .line 70
    :try_start_1
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, p3

    invoke-direct {v0, v15, v1, v2}, Lcom/parse/ParseTraverser;->traverseInternal(Ljava/lang/Object;ZLjava/util/IdentityHashMap;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 71
    :catch_1
    move-exception v5

    .line 73
    .restart local v5    # "e":Lorg/json/JSONException;
    new-instance v15, Ljava/lang/RuntimeException;

    invoke-direct {v15, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v15

    .line 77
    .end local v4    # "array":Lorg/json/JSONArray;
    .end local v5    # "e":Lorg/json/JSONException;
    .end local v6    # "i":I
    :cond_4
    move-object/from16 v0, p1

    instance-of v15, v0, Ljava/util/Map;

    if-eqz v15, :cond_5

    move-object/from16 v12, p1

    .line 78
    check-cast v12, Ljava/util/Map;

    .line 79
    .local v12, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 80
    .local v14, "value":Ljava/lang/Object;
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v14, v15, v1}, Lcom/parse/ParseTraverser;->traverseInternal(Ljava/lang/Object;ZLjava/util/IdentityHashMap;)V

    goto :goto_3

    .line 83
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v12    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v14    # "value":Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p1

    instance-of v15, v0, Ljava/util/List;

    if-eqz v15, :cond_6

    move-object/from16 v11, p1

    .line 84
    check-cast v11, Ljava/util/List;

    .line 85
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 86
    .restart local v14    # "value":Ljava/lang/Object;
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v14, v15, v1}, Lcom/parse/ParseTraverser;->traverseInternal(Ljava/lang/Object;ZLjava/util/IdentityHashMap;)V

    goto :goto_4

    .line 89
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v14    # "value":Ljava/lang/Object;
    :cond_6
    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/parse/ParseObject;

    if-eqz v15, :cond_7

    .line 90
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/parse/ParseTraverser;->traverseParseObjects:Z

    if-eqz v15, :cond_0

    move-object/from16 v13, p1

    .line 91
    check-cast v13, Lcom/parse/ParseObject;

    .line 92
    .local v13, "object":Lcom/parse/ParseObject;
    invoke-virtual {v13}, Lcom/parse/ParseObject;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 93
    .restart local v9    # "key":Ljava/lang/String;
    invoke-virtual {v13, v9}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, p3

    invoke-direct {v0, v15, v1, v2}, Lcom/parse/ParseTraverser;->traverseInternal(Ljava/lang/Object;ZLjava/util/IdentityHashMap;)V

    goto :goto_5

    .line 97
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "key":Ljava/lang/String;
    .end local v13    # "object":Lcom/parse/ParseObject;
    :cond_7
    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/parse/ParseACL;

    if-eqz v15, :cond_0

    move-object/from16 v3, p1

    .line 98
    check-cast v3, Lcom/parse/ParseACL;

    .line 99
    .local v3, "acl":Lcom/parse/ParseACL;
    invoke-virtual {v3}, Lcom/parse/ParseACL;->hasUnresolvedUser()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 100
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v15

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, p3

    invoke-direct {v0, v15, v1, v2}, Lcom/parse/ParseTraverser;->traverseInternal(Ljava/lang/Object;ZLjava/util/IdentityHashMap;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public setTraverseParseObjects(Z)Lcom/parse/ParseTraverser;
    .locals 0
    .param p1, "newValue"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/parse/ParseTraverser;->traverseParseObjects:Z

    .line 111
    return-object p0
.end method

.method public setYieldRoot(Z)Lcom/parse/ParseTraverser;
    .locals 0
    .param p1, "newValue"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/parse/ParseTraverser;->yieldRoot:Z

    .line 120
    return-object p0
.end method

.method public traverse(Ljava/lang/Object;)V
    .locals 2
    .param p1, "root"    # Ljava/lang/Object;

    .prologue
    .line 127
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 128
    .local v0, "seen":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-boolean v1, p0, Lcom/parse/ParseTraverser;->yieldRoot:Z

    invoke-direct {p0, p1, v1, v0}, Lcom/parse/ParseTraverser;->traverseInternal(Ljava/lang/Object;ZLjava/util/IdentityHashMap;)V

    .line 129
    return-void
.end method

.method protected abstract visit(Ljava/lang/Object;)Z
.end method
