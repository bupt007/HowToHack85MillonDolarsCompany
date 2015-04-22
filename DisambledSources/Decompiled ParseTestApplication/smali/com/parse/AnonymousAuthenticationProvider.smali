.class Lcom/parse/AnonymousAuthenticationProvider;
.super Lcom/parse/ParseAuthenticationProvider;
.source "AnonymousAuthenticationProvider.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/parse/ParseAuthenticationProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticateAsync()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/AnonymousAuthenticationProvider;->getAuthData()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 21
    :goto_0
    return-object v1

    .line 20
    :catch_0
    move-exception v0

    .line 21
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v1

    goto :goto_0
.end method

.method public cancel()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public deauthenticate()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public getAuthData()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 27
    .local v0, "authData":Lorg/json/JSONObject;
    const-string v1, "id"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    return-object v0
.end method

.method public getAuthType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "anonymous"

    return-object v0
.end method

.method public restoreAuthentication(Lorg/json/JSONObject;)Z
    .locals 1
    .param p1, "authData"    # Lorg/json/JSONObject;

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method
