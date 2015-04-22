.class abstract Lcom/parse/ParseAuthenticationProvider;
.super Ljava/lang/Object;
.source "ParseAuthenticationProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method


# virtual methods
.method public abstract authenticateAsync()Lbolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract cancel()V
.end method

.method public abstract deauthenticate()V
.end method

.method public abstract getAuthType()Ljava/lang/String;
.end method

.method public linkAsync(Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 2
    .param p1, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/parse/ParseAuthenticationProvider;->authenticateAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseAuthenticationProvider$2;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseAuthenticationProvider$2;-><init>(Lcom/parse/ParseAuthenticationProvider;Lcom/parse/ParseUser;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public linkAsync(Lcom/parse/ParseUser;Lorg/json/JSONObject;)Lbolts/Task;
    .locals 1
    .param p1, "user"    # Lcom/parse/ParseUser;
    .param p2, "authData"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            "Lorg/json/JSONObject;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/parse/ParseAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/parse/ParseUser;->linkWithAsync(Ljava/lang/String;Lorg/json/JSONObject;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public logInAsync()Lbolts/Task;
    .locals 2
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
    .line 50
    invoke-virtual {p0}, Lcom/parse/ParseAuthenticationProvider;->authenticateAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseAuthenticationProvider$1;

    invoke-direct {v1, p0}, Lcom/parse/ParseAuthenticationProvider$1;-><init>(Lcom/parse/ParseAuthenticationProvider;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public logInAsync(Lorg/json/JSONObject;)Lbolts/Task;
    .locals 1
    .param p1, "authData"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/parse/ParseAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseUser;->logInWithAsync(Ljava/lang/String;Lorg/json/JSONObject;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public abstract restoreAuthentication(Lorg/json/JSONObject;)Z
.end method

.method public unlinkAsync(Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 1
    .param p1, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/parse/ParseAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/parse/ParseUser;->unlinkFromAsync(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
