.class Lcom/parse/ParseRESTQueryCommand;
.super Lcom/parse/ParseRESTCommand;
.source "ParseRESTQueryCommand.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .param p1, "httpPath"    # Ljava/lang/String;
    .param p2, "httpMethod"    # Lcom/parse/ParseRequest$Method;
    .param p4, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseRequest$Method;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 12
    .local p3, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parse/ParseRESTCommand;-><init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Ljava/util/Map;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static countCommand(Lcom/parse/ParseRESTQueryCommand;)Lcom/parse/ParseRESTQueryCommand;
    .locals 6
    .param p0, "findCommand"    # Lcom/parse/ParseRESTQueryCommand;

    .prologue
    .line 25
    new-instance v0, Lcom/parse/ParseDecoder;

    invoke-direct {v0}, Lcom/parse/ParseDecoder;-><init>()V

    .line 26
    .local v0, "decoder":Lcom/parse/ParseDecoder;
    iget-object v2, p0, Lcom/parse/ParseRESTQueryCommand;->jsonParameters:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lcom/parse/ParseDecoder;->convertJSONObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    .line 27
    .local v1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "count"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v2, "limit"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v2, "skip"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v2, Lcom/parse/ParseRESTQueryCommand;

    iget-object v3, p0, Lcom/parse/ParseRESTQueryCommand;->httpPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/parse/ParseRESTQueryCommand;->method:Lcom/parse/ParseRequest$Method;

    iget-object v5, p0, Lcom/parse/ParseRESTQueryCommand;->sessionToken:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/parse/ParseRESTQueryCommand;-><init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Ljava/util/Map;Ljava/lang/String;)V

    return-object v2
.end method

.method public static findCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;IILjava/util/Map;ZLjava/lang/String;)Lcom/parse/ParseRESTQueryCommand;
    .locals 5
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "order"    # Ljava/lang/String;
    .param p5, "limit"    # I
    .param p6, "skip"    # I
    .param p8, "tracingEnabled"    # Z
    .param p9, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseRESTQueryCommand;"
        }
    .end annotation

    .prologue
    .line 18
    .local p2, "conditions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .local p3, "selectedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "includedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "extraOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v2, "classes/%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, "httpPath":Ljava/lang/String;
    invoke-static/range {p1 .. p8}, Lcom/parse/ParseRESTQueryCommand;->findCommandParameters(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;IILjava/util/Map;Z)Ljava/util/Map;

    move-result-object v1

    .line 21
    .local v1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/parse/ParseRESTQueryCommand;

    sget-object v3, Lcom/parse/ParseRequest$Method;->GET:Lcom/parse/ParseRequest$Method;

    invoke-direct {v2, v0, v3, v1, p9}, Lcom/parse/ParseRESTQueryCommand;-><init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Ljava/util/Map;Ljava/lang/String;)V

    return-object v2
.end method

.method public static findCommandParameters(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;IILjava/util/Map;Z)Ljava/util/Map;
    .locals 7
    .param p0, "order"    # Ljava/lang/String;
    .param p4, "limit"    # I
    .param p5, "skip"    # I
    .param p7, "tracingEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "conditions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .local p2, "selectedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "includedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "extraOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 38
    .local v4, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 39
    const-string v5, "order"

    invoke-virtual {v4, v5, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 42
    invoke-static {}, Lcom/parse/PointerEncodingStrategy;->get()Lcom/parse/PointerEncodingStrategy;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 44
    .local v0, "encodedConditions":Lorg/json/JSONObject;
    const-string v5, "where"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .end local v0    # "encodedConditions":Lorg/json/JSONObject;
    :cond_1
    if-eqz p2, :cond_2

    .line 47
    const-string v5, "keys"

    const-string v6, ","

    invoke-static {v6, p2}, Lcom/parse/Parse;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_2
    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 50
    const-string v5, "include"

    const-string v6, ","

    invoke-static {v6, p3}, Lcom/parse/Parse;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_3
    if-ltz p4, :cond_4

    .line 53
    const-string v5, "limit"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_4
    if-lez p5, :cond_5

    .line 56
    const-string v5, "skip"

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_5
    invoke-interface {p6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 59
    .local v3, "key":Ljava/lang/String;
    invoke-interface {p6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {}, Lcom/parse/PointerEncodingStrategy;->get()Lcom/parse/PointerEncodingStrategy;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 61
    .local v1, "encodedExtraOptions":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 63
    .end local v1    # "encodedExtraOptions":Lorg/json/JSONObject;
    .end local v3    # "key":Ljava/lang/String;
    :cond_6
    if-eqz p7, :cond_7

    .line 64
    const-string v5, "trace"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_7
    return-object v4
.end method
