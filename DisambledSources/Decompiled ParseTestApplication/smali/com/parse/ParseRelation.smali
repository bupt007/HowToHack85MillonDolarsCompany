.class public Lcom/parse/ParseRelation;
.super Ljava/lang/Object;
.source "ParseRelation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parse/ParseObject;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private key:Ljava/lang/String;

.field private knownObjects:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mutex:Ljava/lang/Object;

.field private parent:Lcom/parse/ParseObject;

.field private targetClass:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Ljava/lang/String;)V
    .locals 1
    .param p1, "parent"    # Lcom/parse/ParseObject;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 30
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    .line 31
    iput-object p1, p0, Lcom/parse/ParseRelation;->parent:Lcom/parse/ParseObject;

    .line 32
    iput-object p2, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    .line 34
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "targetClass"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    .line 37
    iput-object v1, p0, Lcom/parse/ParseRelation;->parent:Lcom/parse/ParseObject;

    .line 38
    iput-object v1, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    .line 40
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)V
    .locals 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "decoder"    # Lcom/parse/ParseDecoder;

    .prologue
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    const/4 v3, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    .line 28
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    .line 46
    iput-object v3, p0, Lcom/parse/ParseRelation;->parent:Lcom/parse/ParseObject;

    .line 47
    const-string v2, "className"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    .line 48
    iput-object v3, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    .line 49
    const-string v2, "objects"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 50
    .local v1, "objectsArray":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    .line 51
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 52
    iget-object v3, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/parse/ParseDecoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseObject;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/parse/ParseObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    .local p1, "object":Lcom/parse/ParseObject;, "TT;"
    iget-object v2, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 84
    :try_start_0
    new-instance v0, Lcom/parse/ParseRelationOperation;

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lcom/parse/ParseRelationOperation;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    .line 86
    .local v0, "operation":Lcom/parse/ParseRelationOperation;, "Lcom/parse/ParseRelationOperation<TT;>;"
    invoke-virtual {v0}, Lcom/parse/ParseRelationOperation;->getTargetClass()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    .line 87
    iget-object v1, p0, Lcom/parse/ParseRelation;->parent:Lcom/parse/ParseObject;

    iget-object v3, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 89
    iget-object v1, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    monitor-exit v2

    .line 91
    return-void

    .line 90
    .end local v0    # "operation":Lcom/parse/ParseRelationOperation;, "Lcom/parse/ParseRelationOperation<TT;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method addKnownObject(Lcom/parse/ParseObject;)V
    .locals 2
    .param p1, "object"    # Lcom/parse/ParseObject;

    .prologue
    .line 163
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    iget-object v1, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    monitor-exit v1

    .line 166
    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method encodeToJSON(Lcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;
    .locals 7
    .param p1, "objectEncoder"    # Lcom/parse/ParseObjectEncodingStrategy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    iget-object v5, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    monitor-enter v5

    .line 131
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 132
    .local v3, "relation":Lorg/json/JSONObject;
    const-string v4, "__type"

    const-string v6, "Relation"

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    const-string v4, "className"

    iget-object v6, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 135
    .local v2, "knownObjectsArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .local v1, "knownObject":Lcom/parse/ParseObject;
    :try_start_1
    invoke-interface {p1, v1}, Lcom/parse/ParseObjectEncodingStrategy;->encodeRelatedObject(Lcom/parse/ParseObject;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v4

    goto :goto_0

    .line 142
    .end local v1    # "knownObject":Lcom/parse/ParseObject;
    :cond_0
    :try_start_2
    const-string v4, "objects"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    monitor-exit v5

    return-object v3

    .line 144
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "knownObjectsArray":Lorg/json/JSONArray;
    .end local v3    # "relation":Lorg/json/JSONObject;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method ensureParentAndKey(Lcom/parse/ParseObject;Ljava/lang/String;)V
    .locals 3
    .param p1, "someParent"    # Lcom/parse/ParseObject;
    .param p2, "someKey"    # Ljava/lang/String;

    .prologue
    .line 58
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    iget-object v1, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseRelation;->parent:Lcom/parse/ParseObject;

    if-nez v0, :cond_0

    .line 60
    iput-object p1, p0, Lcom/parse/ParseRelation;->parent:Lcom/parse/ParseObject;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 63
    iput-object p2, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseRelation;->parent:Lcom/parse/ParseObject;

    if-eq v0, p1, :cond_2

    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Internal error. One ParseRelation retrieved from two different ParseObjects."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 69
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 70
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Internal error. One ParseRelation retrieved from two different keys."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    return-void
.end method

.method public getQuery()Lcom/parse/ParseQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    iget-object v2, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/parse/ParseRelation;->parent:Lcom/parse/ParseObject;

    invoke-virtual {v1}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    .line 120
    .local v0, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    iget-object v1, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->redirectClassNameForKey(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 124
    :goto_0
    iget-object v1, p0, Lcom/parse/ParseRelation;->parent:Lcom/parse/ParseObject;

    iget-object v3, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/parse/ParseQuery;->whereRelatedTo(Lcom/parse/ParseObject;Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 125
    monitor-exit v2

    return-object v0

    .line 122
    .end local v0    # "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    invoke-static {v1}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    .restart local v0    # "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    goto :goto_0

    .line 126
    .end local v0    # "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getTargetClass()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    iget-object v1, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hasKnownObject(Lcom/parse/ParseObject;)Z
    .locals 2
    .param p1, "object"    # Lcom/parse/ParseObject;

    .prologue
    .line 182
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    iget-object v1, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Lcom/parse/ParseObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    .local p1, "object":Lcom/parse/ParseObject;, "TT;"
    iget-object v2, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 101
    :try_start_0
    new-instance v0, Lcom/parse/ParseRelationOperation;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/parse/ParseRelationOperation;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    .line 103
    .local v0, "operation":Lcom/parse/ParseRelationOperation;, "Lcom/parse/ParseRelationOperation<TT;>;"
    invoke-virtual {v0}, Lcom/parse/ParseRelationOperation;->getTargetClass()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lcom/parse/ParseRelation;->parent:Lcom/parse/ParseObject;

    iget-object v3, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 106
    iget-object v1, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 107
    monitor-exit v2

    .line 108
    return-void

    .line 107
    .end local v0    # "operation":Lcom/parse/ParseRelationOperation;, "Lcom/parse/ParseRelationOperation<TT;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeKnownObject(Lcom/parse/ParseObject;)V
    .locals 2
    .param p1, "object"    # Lcom/parse/ParseObject;

    .prologue
    .line 172
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    iget-object v1, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 174
    monitor-exit v1

    .line 175
    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setTargetClass(Ljava/lang/String;)V
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 154
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    iget-object v1, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 155
    :try_start_0
    iput-object p1, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    .line 156
    monitor-exit v1

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
