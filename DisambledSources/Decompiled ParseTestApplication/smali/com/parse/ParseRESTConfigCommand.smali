.class Lcom/parse/ParseRESTConfigCommand;
.super Lcom/parse/ParseRESTCommand;
.source "ParseRESTConfigCommand.java"


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
    .line 10
    .local p3, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parse/ParseRESTCommand;-><init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Ljava/util/Map;Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public static fetchConfigCommand(Ljava/lang/String;)Lcom/parse/ParseRESTConfigCommand;
    .locals 4
    .param p0, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 14
    new-instance v0, Lcom/parse/ParseRESTConfigCommand;

    const-string v1, "config"

    sget-object v2, Lcom/parse/ParseRequest$Method;->GET:Lcom/parse/ParseRequest$Method;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/parse/ParseRESTConfigCommand;-><init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Ljava/util/Map;Ljava/lang/String;)V

    return-object v0
.end method

.method public static updateConfigCommand(Ljava/util/Map;Ljava/lang/String;)Lcom/parse/ParseRESTConfigCommand;
    .locals 4
    .param p1, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseRESTConfigCommand;"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "configParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v0, 0x0

    .line 20
    .local v0, "commandParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;*>;>;"
    if-eqz p0, :cond_0

    .line 21
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "commandParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    .restart local v0    # "commandParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;*>;>;"
    const-string v1, "params"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_0
    new-instance v1, Lcom/parse/ParseRESTConfigCommand;

    const-string v2, "config"

    sget-object v3, Lcom/parse/ParseRequest$Method;->PUT:Lcom/parse/ParseRequest$Method;

    invoke-direct {v1, v2, v3, v0, p1}, Lcom/parse/ParseRESTConfigCommand;-><init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Ljava/util/Map;Ljava/lang/String;)V

    return-object v1
.end method
