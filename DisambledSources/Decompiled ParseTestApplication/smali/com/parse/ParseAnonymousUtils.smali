.class public final Lcom/parse/ParseAnonymousUtils;
.super Ljava/lang/Object;
.source "ParseAnonymousUtils.java"


# static fields
.field static final AUTH_TYPE:Ljava/lang/String; = "anonymous"

.field static final SERVICE_NAME:Ljava/lang/String; = "anonymous"

.field private static provider:Lcom/parse/AnonymousAuthenticationProvider;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method private static getProvider()Lcom/parse/AnonymousAuthenticationProvider;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/parse/ParseAnonymousUtils;->provider:Lcom/parse/AnonymousAuthenticationProvider;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/parse/AnonymousAuthenticationProvider;

    invoke-direct {v0}, Lcom/parse/AnonymousAuthenticationProvider;-><init>()V

    sput-object v0, Lcom/parse/ParseAnonymousUtils;->provider:Lcom/parse/AnonymousAuthenticationProvider;

    .line 37
    sget-object v0, Lcom/parse/ParseAnonymousUtils;->provider:Lcom/parse/AnonymousAuthenticationProvider;

    invoke-static {v0}, Lcom/parse/ParseUser;->registerAuthenticationProvider(Lcom/parse/ParseAuthenticationProvider;)V

    .line 39
    :cond_0
    sget-object v0, Lcom/parse/ParseAnonymousUtils;->provider:Lcom/parse/AnonymousAuthenticationProvider;

    return-object v0
.end method

.method public static isLinked(Lcom/parse/ParseUser;)Z
    .locals 1
    .param p0, "user"    # Lcom/parse/ParseUser;

    .prologue
    .line 51
    const-string v0, "anonymous"

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->isLinked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static lazyLogIn()Lcom/parse/ParseUser;
    .locals 4

    .prologue
    .line 75
    :try_start_0
    invoke-static {}, Lcom/parse/ParseAnonymousUtils;->getProvider()Lcom/parse/AnonymousAuthenticationProvider;

    move-result-object v1

    .line 76
    .local v1, "provider":Lcom/parse/AnonymousAuthenticationProvider;
    invoke-virtual {v1}, Lcom/parse/AnonymousAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/parse/AnonymousAuthenticationProvider;->getAuthData()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parse/ParseUser;->logInLazyUser(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/parse/ParseUser;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static logIn(Lcom/parse/LogInCallback;)V
    .locals 1
    .param p0, "callback"    # Lcom/parse/LogInCallback;

    .prologue
    .line 70
    invoke-static {}, Lcom/parse/ParseAnonymousUtils;->logInInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 71
    return-void
.end method

.method public static logInInBackground()Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {}, Lcom/parse/ParseAnonymousUtils;->getProvider()Lcom/parse/AnonymousAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/AnonymousAuthenticationProvider;->logInAsync()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
