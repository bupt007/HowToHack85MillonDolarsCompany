.class Lcom/parse/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doPost(Ljava/util/Map;Ljava/net/URL;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/net/URL;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "parameters":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const-string v0, "application/x-www-form-urlencoded"

    invoke-static {p0, p1, v0}, Lcom/parse/HttpUtils;->doPost(Ljava/util/Map;Ljava/net/URL;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static doPost(Ljava/util/Map;Ljava/net/URL;Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "parameters":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const-string v3, "application/json"

    if-ne p2, v3, :cond_0

    .line 60
    invoke-static {p0}, Lcom/parse/HttpUtils;->encodeParametersJson(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "content":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .line 66
    .local v1, "provider":Lcom/parse/HttpConnectionProvider;
    invoke-static {}, Lcom/parse/ACRA;->getConfig()Lcom/parse/ReportsCrashes;

    move-result-object v3

    invoke-interface {v3}, Lcom/parse/ReportsCrashes;->checkSSLCertsOnCrashReport()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    new-instance v1, Lcom/parse/SSLConnectionProvider;

    .end local v1    # "provider":Lcom/parse/HttpConnectionProvider;
    invoke-direct {v1}, Lcom/parse/SSLConnectionProvider;-><init>()V

    .line 72
    .restart local v1    # "provider":Lcom/parse/HttpConnectionProvider;
    :goto_1
    new-instance v2, Lcom/parse/HttpRequest;

    invoke-direct {v2, v1}, Lcom/parse/HttpRequest;-><init>(Lcom/parse/HttpConnectionProvider;)V

    .line 73
    .local v2, "req":Lcom/parse/HttpRequest;
    new-instance v3, Lcom/parse/ACRAResponse;

    invoke-direct {v3}, Lcom/parse/ACRAResponse;-><init>()V

    invoke-virtual {v2, p1, v0, v3, p2}, Lcom/parse/HttpRequest;->sendPost(Ljava/net/URL;Ljava/lang/String;Lcom/parse/ACRAResponse;Ljava/lang/String;)V

    .line 74
    return-void

    .line 62
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "provider":Lcom/parse/HttpConnectionProvider;
    .end local v2    # "req":Lcom/parse/HttpRequest;
    :cond_0
    invoke-static {p0}, Lcom/parse/HttpUtils;->encodeParametersFormUrlEncoded(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "content":Ljava/lang/String;
    goto :goto_0

    .line 69
    .restart local v1    # "provider":Lcom/parse/HttpConnectionProvider;
    :cond_1
    new-instance v1, Lcom/parse/UnsafeConnectionProvider;

    .end local v1    # "provider":Lcom/parse/HttpConnectionProvider;
    invoke-direct {v1}, Lcom/parse/UnsafeConnectionProvider;-><init>()V

    .restart local v1    # "provider":Lcom/parse/HttpConnectionProvider;
    goto :goto_1
.end method

.method public static encodeParametersFormUrlEncoded(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "parameters":Ljava/util/Map;, "Ljava/util/Map<**>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v0, "dataBfr":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 79
    .local v2, "key":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 80
    const/16 v4, 0x26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    :cond_0
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 83
    .local v3, "value":Ljava/lang/Object;
    if-nez v3, :cond_1

    .line 84
    const-string v3, ""

    .line 86
    .end local v3    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 91
    .end local v2    # "key":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static encodeParametersJson(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "parameters":Ljava/util/Map;, "Ljava/util/Map<**>;"
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 96
    .local v0, "jsonParams":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
