.class Lcom/parse/ParseRESTUserCommand;
.super Lcom/parse/ParseRESTCommand;
.source "ParseRESTUserCommand.java"


# static fields
.field private static final HEADER_REVOCABLE_SESSION:Ljava/lang/String; = "X-Parse-Revocable-Session"

.field private static final HEADER_TRUE:Ljava/lang/String; = "1"


# instance fields
.field private isRevocableSessionEnabled:Z

.field private statusCode:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Ljava/util/Map;Ljava/lang/String;)V
    .locals 6
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
    .line 77
    .local p3, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/parse/ParseRESTUserCommand;-><init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Ljava/util/Map;Ljava/lang/String;Z)V

    .line 78
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Ljava/util/Map;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "httpPath"    # Ljava/lang/String;
    .param p2, "httpMethod"    # Lcom/parse/ParseRequest$Method;
    .param p4, "sessionToken"    # Ljava/lang/String;
    .param p5, "isRevocableSessionEnabled"    # Z
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
            "Z)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p3, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parse/ParseRESTCommand;-><init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Ljava/util/Map;Ljava/lang/String;)V

    .line 88
    iput-boolean p5, p0, Lcom/parse/ParseRESTUserCommand;->isRevocableSessionEnabled:Z

    .line 89
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6
    .param p1, "httpPath"    # Ljava/lang/String;
    .param p2, "httpMethod"    # Lcom/parse/ParseRequest$Method;
    .param p3, "parameters"    # Lorg/json/JSONObject;
    .param p4, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 82
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/parse/ParseRESTUserCommand;-><init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 83
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "httpPath"    # Ljava/lang/String;
    .param p2, "httpMethod"    # Lcom/parse/ParseRequest$Method;
    .param p3, "parameters"    # Lorg/json/JSONObject;
    .param p4, "sessionToken"    # Ljava/lang/String;
    .param p5, "isRevocableSessionEnabled"    # Z

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parse/ParseRESTCommand;-><init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 94
    iput-boolean p5, p0, Lcom/parse/ParseRESTUserCommand;->isRevocableSessionEnabled:Z

    .line 95
    return-void
.end method

.method public static getCurrentUserCommand(Ljava/lang/String;)Lcom/parse/ParseRESTUserCommand;
    .locals 4
    .param p0, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 19
    new-instance v1, Lcom/parse/ParseRESTUserCommand;

    const-string v2, "users/me"

    sget-object v3, Lcom/parse/ParseRequest$Method;->GET:Lcom/parse/ParseRequest$Method;

    const/4 v0, 0x0

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v2, v3, v0, p0}, Lcom/parse/ParseRESTUserCommand;-><init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Ljava/util/Map;Ljava/lang/String;)V

    return-object v1
.end method

.method public static logInUserCommand(Ljava/lang/String;Ljava/lang/String;Z)Lcom/parse/ParseRESTUserCommand;
    .locals 6
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "revocableSession"    # Z

    .prologue
    .line 32
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 33
    .local v3, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "username"

    invoke-interface {v3, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v0, "password"

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v0, Lcom/parse/ParseRESTUserCommand;

    const-string v1, "login"

    sget-object v2, Lcom/parse/ParseRequest$Method;->GET:Lcom/parse/ParseRequest$Method;

    const/4 v4, 0x0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/parse/ParseRESTUserCommand;-><init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Ljava/util/Map;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static logOutUserCommand(Ljava/lang/String;)Lcom/parse/ParseRESTUserCommand;
    .locals 4
    .param p0, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 69
    new-instance v0, Lcom/parse/ParseRESTUserCommand;

    const-string v1, "logout"

    sget-object v2, Lcom/parse/ParseRequest$Method;->POST:Lcom/parse/ParseRequest$Method;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/parse/ParseRESTUserCommand;-><init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-object v0
.end method

.method public static resetUserPasswordCommand(Ljava/lang/String;)Lcom/parse/ParseRESTUserCommand;
    .locals 5
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 59
    .local v0, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "email"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v1, Lcom/parse/ParseRESTUserCommand;

    const-string v2, "requestPasswordReset"

    sget-object v3, Lcom/parse/ParseRequest$Method;->POST:Lcom/parse/ParseRequest$Method;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/parse/ParseRESTUserCommand;-><init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Ljava/util/Map;Ljava/lang/String;)V

    return-object v1
.end method

.method public static serviceLogInUserCommand(Ljava/lang/String;Lorg/json/JSONObject;Z)Lcom/parse/ParseRESTUserCommand;
    .locals 3
    .param p0, "authType"    # Ljava/lang/String;
    .param p1, "authData"    # Lorg/json/JSONObject;
    .param p2, "revocableSession"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 41
    .local v0, "authenticationData":Lorg/json/JSONObject;
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 44
    .local v1, "parameters":Lorg/json/JSONObject;
    const-string v2, "authData"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    const/4 v2, 0x0

    invoke-static {v1, v2, p2}, Lcom/parse/ParseRESTUserCommand;->serviceLogInUserCommand(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/parse/ParseRESTUserCommand;

    move-result-object v2

    return-object v2
.end method

.method public static serviceLogInUserCommand(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/parse/ParseRESTUserCommand;
    .locals 6
    .param p0, "parameters"    # Lorg/json/JSONObject;
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "revocableSession"    # Z

    .prologue
    .line 51
    new-instance v0, Lcom/parse/ParseRESTUserCommand;

    const-string v1, "users"

    sget-object v2, Lcom/parse/ParseRequest$Method;->POST:Lcom/parse/ParseRequest$Method;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/parse/ParseRESTUserCommand;-><init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static signUpUserCommand(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/parse/ParseRESTUserCommand;
    .locals 6
    .param p0, "parameters"    # Lorg/json/JSONObject;
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "revocableSession"    # Z

    .prologue
    .line 26
    new-instance v0, Lcom/parse/ParseRESTUserCommand;

    const-string v1, "classes/_User"

    sget-object v2, Lcom/parse/ParseRequest$Method;->POST:Lcom/parse/ParseRequest$Method;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/parse/ParseRESTUserCommand;-><init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static upgradeRevocableSessionCommand(Ljava/lang/String;)Lcom/parse/ParseRESTUserCommand;
    .locals 4
    .param p0, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 64
    new-instance v0, Lcom/parse/ParseRESTUserCommand;

    const-string v1, "upgradeToRevocableSession"

    sget-object v2, Lcom/parse/ParseRequest$Method;->POST:Lcom/parse/ParseRequest$Method;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/parse/ParseRESTUserCommand;-><init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/parse/ParseRESTUserCommand;->statusCode:I

    return v0
.end method

.method protected newRequest(Lcom/parse/ParseRequest$Method;Lcom/parse/ProgressCallback;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 3
    .param p1, "method"    # Lcom/parse/ParseRequest$Method;
    .param p2, "uploadProgressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-super {p0, p1, p2}, Lcom/parse/ParseRESTCommand;->newRequest(Lcom/parse/ParseRequest$Method;Lcom/parse/ProgressCallback;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 104
    .local v0, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    iget-boolean v1, p0, Lcom/parse/ParseRESTUserCommand;->isRevocableSessionEnabled:Z

    if-eqz v1, :cond_0

    .line 105
    const-string v1, "X-Parse-Revocable-Session"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_0
    return-object v0
.end method

.method protected onResponse(Lcom/parse/ParseHttpResponse;Lcom/parse/ProgressCallback;)Lbolts/Task;
    .locals 1
    .param p1, "response"    # Lcom/parse/ParseHttpResponse;
    .param p2, "progressCallback"    # Lcom/parse/ProgressCallback;
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
    .line 113
    invoke-virtual {p1}, Lcom/parse/ParseHttpResponse;->getStatusCode()I

    move-result v0

    iput v0, p0, Lcom/parse/ParseRESTUserCommand;->statusCode:I

    .line 114
    invoke-super {p0, p1, p2}, Lcom/parse/ParseRESTCommand;->onResponse(Lcom/parse/ParseHttpResponse;Lcom/parse/ProgressCallback;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
