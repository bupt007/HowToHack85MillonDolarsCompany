.class final Lcom/parse/ParseSession$1;
.super Ljava/lang/Object;
.source "ParseSession.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseSession;->getCurrentSessionInBackground()Lbolts/Task;
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
        "Lorg/json/JSONObject;",
        "Lcom/parse/ParseSession;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lcom/parse/ParseSession;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lcom/parse/ParseSession;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 50
    .local v0, "json":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 51
    const/4 v1, 0x0

    .line 53
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "_Session"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/parse/ParseObject;->fromJSON(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/parse/ParseObject;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseSession;

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
    .line 46
    invoke-virtual {p0, p1}, Lcom/parse/ParseSession$1;->then(Lbolts/Task;)Lcom/parse/ParseSession;

    move-result-object v0

    return-object v0
.end method
