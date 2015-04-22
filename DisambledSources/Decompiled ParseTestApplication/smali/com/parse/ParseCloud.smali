.class public final Lcom/parse/ParseCloud;
.super Ljava/lang/Object;
.source "ParseCloud.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;

    .prologue
    .line 36
    invoke-static {p0}, Lcom/parse/ParseCloud;->convertCloudResponse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static callFunction(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {p0, p1}, Lcom/parse/ParseCloud;->callFunctionInBackground(Ljava/lang/String;Ljava/util/Map;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static callFunctionInBackground(Ljava/lang/String;Ljava/util/Map;)Lbolts/Task;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionTokenAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseCloud$1;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseCloud$1;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static callFunctionInBackground(Ljava/lang/String;Ljava/util/Map;Lcom/parse/FunctionCallback;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/parse/FunctionCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .local p2, "callback":Lcom/parse/FunctionCallback;, "Lcom/parse/FunctionCallback<TT;>;"
    invoke-static {p0, p1}, Lcom/parse/ParseCloud;->callFunctionInBackground(Ljava/lang/String;Ljava/util/Map;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 123
    return-void
.end method

.method private static convertCloudResponse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "result"    # Ljava/lang/Object;

    .prologue
    .line 42
    instance-of v4, p0, Lorg/json/JSONObject;

    if-eqz v4, :cond_0

    move-object v3, p0

    .line 43
    check-cast v3, Lorg/json/JSONObject;

    .line 45
    .local v3, "jsonResult":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "result"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 51
    .end local v3    # "jsonResult":Lorg/json/JSONObject;
    :cond_0
    new-instance v0, Lcom/parse/ParseDecoder;

    invoke-direct {v0}, Lcom/parse/ParseDecoder;-><init>()V

    .line 52
    .local v0, "decoder":Lcom/parse/ParseDecoder;
    invoke-virtual {v0, p0}, Lcom/parse/ParseDecoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 53
    .local v2, "finalResult":Ljava/lang/Object;
    if-eqz v2, :cond_1

    move-object p0, v2

    .line 57
    .end local v0    # "decoder":Lcom/parse/ParseDecoder;
    .end local v2    # "finalResult":Ljava/lang/Object;
    .end local p0    # "result":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object p0

    .line 46
    .restart local v3    # "jsonResult":Lorg/json/JSONObject;
    .restart local p0    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Lorg/json/JSONException;
    goto :goto_0
.end method
