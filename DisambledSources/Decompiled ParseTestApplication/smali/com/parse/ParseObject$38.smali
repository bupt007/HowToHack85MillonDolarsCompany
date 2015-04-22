.class final Lcom/parse/ParseObject$38;
.super Lcom/parse/ParseTraverser;
.source "ParseObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$alreadySeen:Ljava/util/IdentityHashMap;

.field final synthetic val$alreadySeenNew:Ljava/util/IdentityHashMap;

.field final synthetic val$dirtyChildren:Ljava/util/List;

.field final synthetic val$dirtyFiles:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V
    .locals 0

    .prologue
    .line 2141
    iput-object p1, p0, Lcom/parse/ParseObject$38;->val$dirtyFiles:Ljava/util/List;

    iput-object p2, p0, Lcom/parse/ParseObject$38;->val$dirtyChildren:Ljava/util/List;

    iput-object p3, p0, Lcom/parse/ParseObject$38;->val$alreadySeen:Ljava/util/IdentityHashMap;

    iput-object p4, p0, Lcom/parse/ParseObject$38;->val$alreadySeenNew:Ljava/util/IdentityHashMap;

    invoke-direct {p0}, Lcom/parse/ParseTraverser;-><init>()V

    return-void
.end method


# virtual methods
.method protected visit(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "node"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x1

    .line 2145
    instance-of v6, p1, Lcom/parse/ParseFile;

    if-eqz v6, :cond_2

    .line 2146
    iget-object v6, p0, Lcom/parse/ParseObject$38;->val$dirtyFiles:Ljava/util/List;

    if-nez v6, :cond_1

    .line 2201
    :cond_0
    :goto_0
    return v9

    :cond_1
    move-object v0, p1

    .line 2150
    check-cast v0, Lcom/parse/ParseFile;

    .line 2151
    .local v0, "file":Lcom/parse/ParseFile;
    invoke-virtual {v0}, Lcom/parse/ParseFile;->getUrl()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 2152
    iget-object v6, p0, Lcom/parse/ParseObject$38;->val$dirtyFiles:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2158
    .end local v0    # "file":Lcom/parse/ParseFile;
    :cond_2
    instance-of v6, p1, Lcom/parse/ParseObject;

    if-eqz v6, :cond_0

    .line 2162
    iget-object v6, p0, Lcom/parse/ParseObject$38;->val$dirtyChildren:Ljava/util/List;

    if-eqz v6, :cond_0

    move-object v1, p1

    .line 2167
    check-cast v1, Lcom/parse/ParseObject;

    .line 2168
    .local v1, "object":Lcom/parse/ParseObject;
    iget-object v2, p0, Lcom/parse/ParseObject$38;->val$alreadySeen:Ljava/util/IdentityHashMap;

    .line 2169
    .local v2, "seen":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/parse/ParseObject;Lcom/parse/ParseObject;>;"
    iget-object v4, p0, Lcom/parse/ParseObject$38;->val$alreadySeenNew:Ljava/util/IdentityHashMap;

    .line 2173
    .local v4, "seenNew":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/parse/ParseObject;Lcom/parse/ParseObject;>;"
    invoke-virtual {v1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 2174
    new-instance v4, Ljava/util/IdentityHashMap;

    .end local v4    # "seenNew":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/parse/ParseObject;Lcom/parse/ParseObject;>;"
    invoke-direct {v4}, Ljava/util/IdentityHashMap;-><init>()V

    .line 2186
    .restart local v4    # "seenNew":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/parse/ParseObject;Lcom/parse/ParseObject;>;"
    :goto_1
    invoke-virtual {v2, v1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2189
    new-instance v3, Ljava/util/IdentityHashMap;

    invoke-direct {v3, v2}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    .line 2190
    .end local v2    # "seen":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/parse/ParseObject;Lcom/parse/ParseObject;>;"
    .local v3, "seen":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/parse/ParseObject;Lcom/parse/ParseObject;>;"
    invoke-virtual {v3, v1, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2195
    # getter for: Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;
    invoke-static {v1}, Lcom/parse/ParseObject;->access$300(Lcom/parse/ParseObject;)Ljava/util/Map;

    move-result-object v6

    iget-object v7, p0, Lcom/parse/ParseObject$38;->val$dirtyChildren:Ljava/util/List;

    iget-object v8, p0, Lcom/parse/ParseObject$38;->val$dirtyFiles:Ljava/util/List;

    # invokes: Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V
    invoke-static {v6, v7, v8, v3, v4}, Lcom/parse/ParseObject;->access$1300(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V

    .line 2197
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/parse/ParseObject;->isDirty(Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2198
    iget-object v6, p0, Lcom/parse/ParseObject$38;->val$dirtyChildren:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2176
    .end local v3    # "seen":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/parse/ParseObject;Lcom/parse/ParseObject;>;"
    .restart local v2    # "seen":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/parse/ParseObject;Lcom/parse/ParseObject;>;"
    :cond_3
    invoke-virtual {v4, v1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2177
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Found a circular dependency while saving."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2179
    :cond_4
    new-instance v5, Ljava/util/IdentityHashMap;

    invoke-direct {v5, v4}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    .line 2180
    .end local v4    # "seenNew":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/parse/ParseObject;Lcom/parse/ParseObject;>;"
    .local v5, "seenNew":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/parse/ParseObject;Lcom/parse/ParseObject;>;"
    invoke-virtual {v5, v1, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v5

    .end local v5    # "seenNew":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/parse/ParseObject;Lcom/parse/ParseObject;>;"
    .restart local v4    # "seenNew":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/parse/ParseObject;Lcom/parse/ParseObject;>;"
    goto :goto_1
.end method
