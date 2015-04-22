.class abstract Lcom/parse/ParseNetworkCommand;
.super Lcom/parse/ParseRequest;
.source "ParseNetworkCommand.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/parse/ParseRequest",
        "<TR;TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/parse/ParseRequest$Method;Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Lcom/parse/ParseRequest$Method;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 13
    .local p0, "this":Lcom/parse/ParseNetworkCommand;, "Lcom/parse/ParseNetworkCommand<TR;TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseRequest;-><init>(Lcom/parse/ParseRequest$Method;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method protected static getLocalPointersIn(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 7
    .param p0, "container"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "localPointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    instance-of v5, p0, Lorg/json/JSONObject;

    if-eqz v5, :cond_2

    move-object v4, p0

    .line 43
    check-cast v4, Lorg/json/JSONObject;

    .line 44
    .local v4, "object":Lorg/json/JSONObject;
    const-string v5, "Pointer"

    const-string v6, "__type"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "localId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 45
    check-cast p0, Lorg/json/JSONObject;

    .end local p0    # "container":Ljava/lang/Object;
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .end local v4    # "object":Lorg/json/JSONObject;
    :cond_0
    return-void

    .line 49
    .restart local v4    # "object":Lorg/json/JSONObject;
    .restart local p0    # "container":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 50
    .local v3, "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 51
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 52
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/parse/ParseNetworkCommand;->getLocalPointersIn(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 56
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "object":Lorg/json/JSONObject;
    :cond_2
    instance-of v5, p0, Lorg/json/JSONArray;

    if-eqz v5, :cond_0

    move-object v0, p0

    .line 57
    check-cast v0, Lorg/json/JSONArray;

    .line 58
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 59
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/parse/ParseNetworkCommand;->getLocalPointersIn(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method abstract getLocalId()Ljava/lang/String;
.end method

.method abstract getOperationSetUUID()Ljava/lang/String;
.end method

.method abstract getSessionToken()Ljava/lang/String;
.end method

.method abstract releaseLocalIds()V
.end method

.method abstract retainLocalIds()V
.end method

.method abstract setLocalId(Ljava/lang/String;)V
.end method

.method abstract setOperationSetUUID(Ljava/lang/String;)V
.end method

.method abstract toJSONObject()Lorg/json/JSONObject;
.end method
