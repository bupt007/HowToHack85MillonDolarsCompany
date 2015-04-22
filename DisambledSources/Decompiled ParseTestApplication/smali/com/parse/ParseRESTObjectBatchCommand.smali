.class Lcom/parse/ParseRESTObjectBatchCommand;
.super Lcom/parse/ParseRESTCommand;
.source "ParseRESTObjectBatchCommand.java"


# static fields
.field public static final COMMAND_OBJECT_BATCH_MAX_SIZE:I = 0x32


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
    .line 21
    .local p3, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parse/ParseRESTCommand;-><init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Ljava/util/Map;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static batchCommand(Ljava/util/List;Ljava/lang/String;)Lcom/parse/ParseRESTObjectBatchCommand;
    .locals 12
    .param p1, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseRESTObjectCommand;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseRESTObjectBatchCommand;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "commands":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseRESTObjectCommand;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v6, "requests":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseRESTObjectCommand;

    .line 41
    .local v1, "command":Lcom/parse/ParseRESTObjectCommand;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 42
    .local v5, "requestParameters":Lorg/json/JSONObject;
    const-string v7, "method"

    iget-object v8, v1, Lcom/parse/ParseRESTObjectCommand;->method:Lcom/parse/ParseRequest$Method;

    invoke-virtual {v8}, Lcom/parse/ParseRequest$Method;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    const-string v7, "path"

    const-string v8, "/1/%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, v1, Lcom/parse/ParseRESTObjectCommand;->httpPath:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    iget-object v0, v1, Lcom/parse/ParseRESTObjectCommand;->jsonParameters:Lorg/json/JSONObject;

    .line 45
    .local v0, "body":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 46
    const-string v7, "body"

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    :cond_0
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    .end local v0    # "body":Lorg/json/JSONObject;
    .end local v1    # "command":Lcom/parse/ParseRESTObjectCommand;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "requestParameters":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 51
    .local v2, "e":Lorg/json/JSONException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 54
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 55
    .local v4, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/json/JSONObject;>;>;"
    const-string v7, "requests"

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v7, Lcom/parse/ParseRESTObjectBatchCommand;

    const-string v8, "batch"

    sget-object v9, Lcom/parse/ParseRequest$Method;->POST:Lcom/parse/ParseRequest$Method;

    invoke-direct {v7, v8, v9, v4, p1}, Lcom/parse/ParseRESTObjectBatchCommand;-><init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Ljava/util/Map;Ljava/lang/String;)V

    return-object v7
.end method

.method public static batchCommands(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseRESTObjectCommand;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseRESTObjectBatchCommand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "commands":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseRESTObjectCommand;>;"
    const/16 v5, 0x32

    invoke-static {p0, v5}, Lcom/parse/Parse;->partitionList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    .line 28
    .local v2, "batches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/parse/ParseRESTObjectCommand;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v1, "batchCommands":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseRESTObjectBatchCommand;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 30
    .local v0, "batch":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseRESTObjectCommand;>;"
    invoke-static {v0, p1}, Lcom/parse/ParseRESTObjectBatchCommand;->batchCommand(Ljava/util/List;Ljava/lang/String;)Lcom/parse/ParseRESTObjectBatchCommand;

    move-result-object v4

    .line 31
    .local v4, "multiCommand":Lcom/parse/ParseRESTObjectBatchCommand;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33
    .end local v0    # "batch":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseRESTObjectCommand;>;"
    .end local v4    # "multiCommand":Lcom/parse/ParseRESTObjectBatchCommand;
    :cond_0
    return-object v1
.end method


# virtual methods
.method protected onPostExecute(Lbolts/Task;)Lbolts/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 93
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "results"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 97
    .local v2, "results":Lorg/json/JSONArray;
    invoke-static {v2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v3

    .end local v2    # "results":Lorg/json/JSONArray;
    :goto_0
    return-object v3

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "corrupted json"

    invoke-virtual {p0, v3, v0}, Lcom/parse/ParseRESTObjectBatchCommand;->newTemporaryException(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/parse/ParseException;

    move-result-object v3

    invoke-static {v3}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v3

    goto :goto_0
.end method

.method protected onResponse(Lcom/parse/ParseHttpResponse;Lcom/parse/ProgressCallback;)Lbolts/Task;
    .locals 7
    .param p1, "response"    # Lcom/parse/ParseHttpResponse;
    .param p2, "downloadProgressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseHttpResponse;",
            "Lcom/parse/ProgressCallback;",
            ")",
            "Lbolts/Task",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    const/4 v4, 0x0

    .line 63
    .local v4, "responseStream":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 65
    .local v0, "content":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lcom/parse/ParseHttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 66
    new-instance v1, Ljava/lang/String;

    invoke-static {v4}, Lcom/parse/ParseIOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .end local v0    # "content":Ljava/lang/String;
    .local v1, "content":Ljava/lang/String;
    invoke-static {v4}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 75
    :try_start_1
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 76
    .local v5, "results":Lorg/json/JSONArray;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 77
    .local v3, "json":Lorg/json/JSONObject;
    const-string v6, "results"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 82
    invoke-static {v3}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v6

    move-object v0, v1

    .end local v1    # "content":Ljava/lang/String;
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v5    # "results":Lorg/json/JSONArray;
    .restart local v0    # "content":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 67
    :catch_0
    move-exception v2

    .line 68
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-static {v2}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 70
    invoke-static {v4}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    invoke-static {v4}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v6

    .line 78
    .end local v0    # "content":Ljava/lang/String;
    .restart local v1    # "content":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 79
    .local v2, "e":Lorg/json/JSONException;
    const-string v6, "bad json response"

    invoke-virtual {p0, v6, v2}, Lcom/parse/ParseRESTObjectBatchCommand;->newTemporaryException(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/parse/ParseException;

    move-result-object v6

    invoke-static {v6}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v6

    move-object v0, v1

    .end local v1    # "content":Ljava/lang/String;
    .restart local v0    # "content":Ljava/lang/String;
    goto :goto_0
.end method
