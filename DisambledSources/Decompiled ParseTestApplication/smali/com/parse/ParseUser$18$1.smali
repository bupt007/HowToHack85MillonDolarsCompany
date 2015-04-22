.class Lcom/parse/ParseUser$18$1;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser$18;->then(Lbolts/Task;)Lbolts/Task;
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
        "Ljava/lang/Object;",
        "Lbolts/Task",
        "<",
        "Lcom/parse/ParseUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser$18;

.field final synthetic val$command:Lcom/parse/ParseRESTUserCommand;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$18;Lcom/parse/ParseRESTUserCommand;)V
    .locals 0

    .prologue
    .line 1528
    iput-object p1, p0, Lcom/parse/ParseUser$18$1;->this$0:Lcom/parse/ParseUser$18;

    iput-object p2, p0, Lcom/parse/ParseUser$18$1;->val$command:Lcom/parse/ParseRESTUserCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 8
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
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Object;>;"
    const/4 v3, 0x1

    .line 1531
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 1532
    .local v1, "result":Lorg/json/JSONObject;
    const-string v4, "_User"

    invoke-static {v1, v4, v3}, Lcom/parse/ParseObject;->fromJSON(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/parse/ParseObject;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseUser;

    .line 1533
    .local v2, "user":Lcom/parse/ParseUser;
    iget-object v4, v2, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v4

    .line 1535
    :try_start_0
    # getter for: Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/parse/ParseUser;->access$1800(Lcom/parse/ParseUser;)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p0, Lcom/parse/ParseUser$18$1;->this$0:Lcom/parse/ParseUser$18;

    iget-object v6, v6, Lcom/parse/ParseUser$18;->val$authType:Ljava/lang/String;

    iget-object v7, p0, Lcom/parse/ParseUser$18$1;->this$0:Lcom/parse/ParseUser$18;

    iget-object v7, v7, Lcom/parse/ParseUser$18;->val$authData:Lorg/json/JSONObject;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1536
    # getter for: Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;
    invoke-static {v2}, Lcom/parse/ParseUser;->access$1900(Lcom/parse/ParseUser;)Ljava/util/Set;

    move-result-object v5

    iget-object v6, p0, Lcom/parse/ParseUser$18$1;->this$0:Lcom/parse/ParseUser$18;

    iget-object v6, v6, Lcom/parse/ParseUser$18;->val$authType:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1540
    :try_start_1
    iget-object v5, p0, Lcom/parse/ParseUser$18$1;->val$command:Lcom/parse/ParseRESTUserCommand;

    invoke-virtual {v5}, Lcom/parse/ParseRESTUserCommand;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc9

    if-ne v5, v6, :cond_0

    :goto_0
    # setter for: Lcom/parse/ParseUser;->isNew:Z
    invoke-static {v2, v3}, Lcom/parse/ParseUser;->access$602(Lcom/parse/ParseUser;Z)Z

    .line 1541
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1542
    # invokes: Lcom/parse/ParseUser;->saveCurrentUserAsync(Lcom/parse/ParseUser;)Lbolts/Task;
    invoke-static {v2}, Lcom/parse/ParseUser;->access$100(Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v3

    return-object v3

    .line 1537
    :catch_0
    move-exception v0

    .line 1538
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    new-instance v3, Lcom/parse/ParseException;

    invoke-direct {v3, v0}, Lcom/parse/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1541
    .end local v0    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1540
    :cond_0
    const/4 v3, 0x0

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
    .line 1528
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$18$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
