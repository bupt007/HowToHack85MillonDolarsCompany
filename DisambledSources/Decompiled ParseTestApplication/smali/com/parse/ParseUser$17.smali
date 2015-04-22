.class Lcom/parse/ParseUser$17;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->unlinkFromAsync(Ljava/lang/String;)Lbolts/Task;
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
        "Ljava/lang/Void;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser;

.field final synthetic val$authType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1490
    iput-object p1, p0, Lcom/parse/ParseUser$17;->this$0:Lcom/parse/ParseUser;

    iput-object p2, p0, Lcom/parse/ParseUser$17;->val$authType:Ljava/lang/String;

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
    .line 1493
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseUser$17;->this$0:Lcom/parse/ParseUser;

    iget-object v1, v0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1494
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseUser$17;->this$0:Lcom/parse/ParseUser;

    # getter for: Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/parse/ParseUser;->access$1800(Lcom/parse/ParseUser;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/parse/ParseUser$17;->val$authType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1495
    iget-object v0, p0, Lcom/parse/ParseUser$17;->this$0:Lcom/parse/ParseUser;

    # getter for: Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/parse/ParseUser;->access$1800(Lcom/parse/ParseUser;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/parse/ParseUser$17;->val$authType:Ljava/lang/String;

    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1496
    iget-object v0, p0, Lcom/parse/ParseUser$17;->this$0:Lcom/parse/ParseUser;

    const/4 v2, 0x1

    # setter for: Lcom/parse/ParseUser;->dirty:Z
    invoke-static {v0, v2}, Lcom/parse/ParseUser;->access$702(Lcom/parse/ParseUser;Z)Z

    .line 1497
    iget-object v0, p0, Lcom/parse/ParseUser$17;->this$0:Lcom/parse/ParseUser;

    invoke-virtual {v0}, Lcom/parse/ParseUser;->saveInBackground()Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    .line 1499
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 1500
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 1490
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$17;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
