.class Lcom/parse/ParseRESTObjectCommand;
.super Lcom/parse/ParseRESTCommand;
.source "ParseRESTObjectCommand.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p1, "httpPath"    # Ljava/lang/String;
    .param p2, "httpMethod"    # Lcom/parse/ParseRequest$Method;
    .param p3, "parameters"    # Lorg/json/JSONObject;
    .param p4, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parse/ParseRESTCommand;-><init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public static createObjectCommand(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;
    .locals 5
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "changes"    # Lorg/json/JSONObject;
    .param p2, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 25
    const-string v1, "classes/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "httpPath":Ljava/lang/String;
    new-instance v1, Lcom/parse/ParseRESTObjectCommand;

    sget-object v2, Lcom/parse/ParseRequest$Method;->POST:Lcom/parse/ParseRequest$Method;

    invoke-direct {v1, v0, v2, p1, p2}, Lcom/parse/ParseRESTObjectCommand;-><init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-object v1
.end method

.method public static deleteObjectCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;
    .locals 6
    .param p0, "objectId"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "sessionToken"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 37
    const-string v1, "classes/%s"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "httpPath":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/%s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    :cond_0
    new-instance v1, Lcom/parse/ParseRESTObjectCommand;

    sget-object v2, Lcom/parse/ParseRequest$Method;->DELETE:Lcom/parse/ParseRequest$Method;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3, p2}, Lcom/parse/ParseRESTObjectCommand;-><init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getObjectCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;
    .locals 5
    .param p0, "objectId"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 19
    const-string v1, "classes/%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "httpPath":Ljava/lang/String;
    new-instance v1, Lcom/parse/ParseRESTObjectCommand;

    sget-object v2, Lcom/parse/ParseRequest$Method;->GET:Lcom/parse/ParseRequest$Method;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3, p2}, Lcom/parse/ParseRESTObjectCommand;-><init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-object v1
.end method

.method public static updateObjectCommand(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;
    .locals 5
    .param p0, "objectId"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "changes"    # Lorg/json/JSONObject;
    .param p3, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 31
    const-string v1, "classes/%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "httpPath":Ljava/lang/String;
    new-instance v1, Lcom/parse/ParseRESTObjectCommand;

    sget-object v2, Lcom/parse/ParseRequest$Method;->PUT:Lcom/parse/ParseRequest$Method;

    invoke-direct {v1, v0, v2, p2, p3}, Lcom/parse/ParseRESTObjectCommand;-><init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-object v1
.end method
