.class Lcom/parse/ParseUser$29;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->upgradeToRevocableSessionAsync(Lbolts/Task;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Lorg/json/JSONObject;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;)V
    .locals 0

    .prologue
    .line 1889
    iput-object p1, p0, Lcom/parse/ParseUser$29;->this$0:Lcom/parse/ParseUser;

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
            "Lorg/json/JSONObject;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1892
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1893
    .local v0, "json":Lorg/json/JSONObject;
    const-string v2, "_Session"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/parse/ParseObject;->fromJSON(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/parse/ParseObject;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseSession;

    .line 1894
    .local v1, "session":Lcom/parse/ParseSession;
    iget-object v2, p0, Lcom/parse/ParseUser$29;->this$0:Lcom/parse/ParseUser;

    invoke-virtual {v1}, Lcom/parse/ParseSession;->getSessionToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parse/ParseUser;->setSessionTokenInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v2

    return-object v2
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
    .line 1889
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$29;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
