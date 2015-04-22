.class final Lcom/parse/ParseUser$18;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->logInWithAsync(Ljava/lang/String;Lorg/json/JSONObject;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Ljava/lang/Void;",
        "Lbolts/Task",
        "<",
        "Lcom/parse/ParseUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$authData:Lorg/json/JSONObject;

.field final synthetic val$authType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 1523
    iput-object p1, p0, Lcom/parse/ParseUser$18;->val$authType:Ljava/lang/String;

    iput-object p2, p0, Lcom/parse/ParseUser$18;->val$authData:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1526
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/parse/ParseUser$18;->val$authType:Ljava/lang/String;

    iget-object v2, p0, Lcom/parse/ParseUser$18;->val$authData:Lorg/json/JSONObject;

    # invokes: Lcom/parse/ParseUser;->isRevocableSessionEnabled()Z
    invoke-static {}, Lcom/parse/ParseUser;->access$500()Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/parse/ParseRESTUserCommand;->serviceLogInUserCommand(Ljava/lang/String;Lorg/json/JSONObject;Z)Lcom/parse/ParseRESTUserCommand;

    move-result-object v0

    .line 1528
    .local v0, "command":Lcom/parse/ParseRESTUserCommand;
    invoke-virtual {v0}, Lcom/parse/ParseRESTUserCommand;->executeAsync()Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseUser$18$1;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseUser$18$1;-><init>(Lcom/parse/ParseUser$18;Lcom/parse/ParseRESTUserCommand;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lbolts/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1523
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$18;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
