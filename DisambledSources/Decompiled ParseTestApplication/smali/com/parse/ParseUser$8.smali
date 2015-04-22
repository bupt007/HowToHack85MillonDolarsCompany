.class final Lcom/parse/ParseUser$8;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->becomeInBackground(Ljava/lang/String;)Lbolts/Task;
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
        "Ljava/lang/Object;",
        "Lbolts/Task",
        "<",
        "Lcom/parse/ParseUser;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Object;",
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
    .line 954
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 955
    .local v0, "json":Lorg/json/JSONObject;
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v2, :cond_0

    .line 956
    new-instance v2, Lcom/parse/ParseException;

    const/16 v3, 0x65

    const-string v4, "invalid login credentials"

    invoke-direct {v2, v3, v4}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    invoke-static {v2}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v2

    .line 961
    :goto_0
    return-object v2

    .line 960
    :cond_0
    const-string v2, "_User"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/parse/ParseObject;->fromJSON(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/parse/ParseObject;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseUser;

    .line 961
    .local v1, "user":Lcom/parse/ParseUser;
    # invokes: Lcom/parse/ParseUser;->saveCurrentUserAsync(Lcom/parse/ParseUser;)Lbolts/Task;
    invoke-static {v1}, Lcom/parse/ParseUser;->access$100(Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v2

    goto :goto_0
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
    .line 951
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$8;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
