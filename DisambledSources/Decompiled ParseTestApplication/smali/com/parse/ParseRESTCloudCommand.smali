.class Lcom/parse/ParseRESTCloudCommand;
.super Lcom/parse/ParseRESTCommand;
.source "ParseRESTCloudCommand.java"


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Ljava/util/Map;Ljava/lang/String;)V
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
    .line 9
    .local p3, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parse/ParseRESTCommand;-><init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Ljava/util/Map;Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public static callFunctionCommand(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/parse/ParseRESTCloudCommand;
    .locals 4
    .param p0, "functionName"    # Ljava/lang/String;
    .param p2, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseRESTCloudCommand;"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v1, "functions/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 15
    .local v0, "httpPath":Ljava/lang/String;
    new-instance v1, Lcom/parse/ParseRESTCloudCommand;

    sget-object v2, Lcom/parse/ParseRequest$Method;->POST:Lcom/parse/ParseRequest$Method;

    invoke-direct {v1, v0, v2, p1, p2}, Lcom/parse/ParseRESTCloudCommand;-><init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Ljava/util/Map;Ljava/lang/String;)V

    return-object v1
.end method
