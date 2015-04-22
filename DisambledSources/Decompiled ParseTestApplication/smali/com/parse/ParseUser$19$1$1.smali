.class Lcom/parse/ParseUser$19$1$1;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser$19$1;->then(Lbolts/Task;)Lbolts/Task;
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
        "Lcom/parse/ParseUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseUser$19$1;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$19$1;)V
    .locals 0

    .prologue
    .line 1573
    iput-object p1, p0, Lcom/parse/ParseUser$19$1$1;->this$1:Lcom/parse/ParseUser$19$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 3
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
    .line 1576
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseUser$19$1$1;->this$1:Lcom/parse/ParseUser$19$1;

    iget-object v0, v0, Lcom/parse/ParseUser$19$1;->val$user:Lcom/parse/ParseUser;

    iget-object v1, v0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1577
    :try_start_0
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1578
    iget-object v0, p0, Lcom/parse/ParseUser$19$1$1;->this$1:Lcom/parse/ParseUser$19$1;

    iget-object v0, v0, Lcom/parse/ParseUser$19$1;->val$user:Lcom/parse/ParseUser;

    # getter for: Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/parse/ParseUser;->access$1800(Lcom/parse/ParseUser;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/parse/ParseUser$19$1$1;->this$1:Lcom/parse/ParseUser$19$1;

    iget-object v2, v2, Lcom/parse/ParseUser$19$1;->this$0:Lcom/parse/ParseUser$19;

    iget-object v2, v2, Lcom/parse/ParseUser$19;->val$authType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1579
    iget-object v0, p0, Lcom/parse/ParseUser$19$1$1;->this$1:Lcom/parse/ParseUser$19$1;

    iget-object v0, v0, Lcom/parse/ParseUser$19$1;->val$user:Lcom/parse/ParseUser;

    # getter for: Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;
    invoke-static {v0}, Lcom/parse/ParseUser;->access$1900(Lcom/parse/ParseUser;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/parse/ParseUser$19$1$1;->this$1:Lcom/parse/ParseUser$19$1;

    iget-object v2, v2, Lcom/parse/ParseUser$19$1;->this$0:Lcom/parse/ParseUser$19;

    iget-object v2, v2, Lcom/parse/ParseUser$19;->val$authType:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1580
    iget-object v0, p0, Lcom/parse/ParseUser$19$1$1;->this$1:Lcom/parse/ParseUser$19$1;

    iget-object v0, v0, Lcom/parse/ParseUser$19$1;->val$user:Lcom/parse/ParseUser;

    iget-object v2, p0, Lcom/parse/ParseUser$19$1$1;->this$1:Lcom/parse/ParseUser$19$1;

    iget-object v2, v2, Lcom/parse/ParseUser$19$1;->val$oldAnonymousData:Lorg/json/JSONObject;

    # invokes: Lcom/parse/ParseUser;->restoreAnonymity(Lorg/json/JSONObject;)V
    invoke-static {v0, v2}, Lcom/parse/ParseUser;->access$400(Lcom/parse/ParseUser;Lorg/json/JSONObject;)V

    .line 1581
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    .line 1586
    :goto_0
    return-object v0

    .line 1583
    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1584
    invoke-static {}, Lbolts/Task;->cancelled()Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 1587
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1586
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/parse/ParseUser$19$1$1;->this$1:Lcom/parse/ParseUser$19$1;

    iget-object v0, v0, Lcom/parse/ParseUser$19$1;->val$user:Lcom/parse/ParseUser;

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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
    .line 1573
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$19$1$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
