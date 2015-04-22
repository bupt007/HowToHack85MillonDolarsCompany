.class Lcom/parse/ParseRESTPushCommand;
.super Lcom/parse/ParseRESTCommand;
.source "ParseRESTPushCommand.java"


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
    .line 14
    .local p3, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parse/ParseRESTCommand;-><init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Ljava/util/Map;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public static sendPushCommand(Lcom/parse/ParseQuery;Ljava/util/Set;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/parse/ParseRESTPushCommand;
    .locals 8
    .param p2, "targetDeviceType"    # Ljava/lang/String;
    .param p3, "expirationTime"    # Ljava/lang/Long;
    .param p4, "expirationInterval"    # Ljava/lang/Long;
    .param p5, "payload"    # Lorg/json/JSONObject;
    .param p6, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseRESTPushCommand;"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/parse/ParseInstallation;>;"
    .local p1, "targetChannels":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 22
    .local v2, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p0, :cond_5

    .line 23
    invoke-virtual {p0}, Lcom/parse/ParseQuery;->getConstraints()Lcom/parse/ParseQuery$QueryConstraints;

    move-result-object v3

    .line 24
    .local v3, "where":Lcom/parse/ParseQuery$QueryConstraints;
    invoke-static {}, Lcom/parse/PointerEncodingStrategy;->get()Lcom/parse/PointerEncodingStrategy;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 25
    .local v4, "whereJSON":Lorg/json/JSONObject;
    const-string v5, "where"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .end local v3    # "where":Lcom/parse/ParseQuery$QueryConstraints;
    .end local v4    # "whereJSON":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 33
    .local v0, "deviceTypeCondition":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "deviceType"

    invoke-virtual {v0, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    const-string v5, "where"

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .end local v0    # "deviceTypeCondition":Lorg/json/JSONObject;
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 42
    const-string v5, "where"

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_2
    if-eqz p3, :cond_6

    .line 46
    const-string v5, "expiration_time"

    invoke-interface {v2, v5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_3
    :goto_1
    if-eqz p5, :cond_4

    .line 52
    const-string v5, "data"

    invoke-interface {v2, v5, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_4
    new-instance v5, Lcom/parse/ParseRESTPushCommand;

    const-string v6, "push"

    sget-object v7, Lcom/parse/ParseRequest$Method;->POST:Lcom/parse/ParseRequest$Method;

    invoke-direct {v5, v6, v7, v2, p6}, Lcom/parse/ParseRESTPushCommand;-><init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Ljava/util/Map;Ljava/lang/String;)V

    return-object v5

    .line 27
    :cond_5
    if-eqz p1, :cond_0

    .line 28
    const-string v5, "channels"

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 34
    .restart local v0    # "deviceTypeCondition":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 35
    .local v1, "e":Lorg/json/JSONException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 47
    .end local v0    # "deviceTypeCondition":Lorg/json/JSONObject;
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_6
    if-eqz p4, :cond_3

    .line 48
    const-string v5, "expiration_interval"

    invoke-interface {v2, v5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
