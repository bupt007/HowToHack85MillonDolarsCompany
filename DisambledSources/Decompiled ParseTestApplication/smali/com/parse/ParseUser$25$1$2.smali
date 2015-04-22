.class Lcom/parse/ParseUser$25$1$2;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser$25$1;->then(Lbolts/Task;)Lbolts/Task;
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
        "Lcom/parse/ParseUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/parse/ParseUser$25$1;

.field final synthetic val$isNew:Z


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$25$1;Z)V
    .locals 0

    .prologue
    .line 1747
    iput-object p1, p0, Lcom/parse/ParseUser$25$1$2;->this$2:Lcom/parse/ParseUser$25$1;

    iput-boolean p2, p0, Lcom/parse/ParseUser$25$1$2;->val$isNew:Z

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
            "Lorg/json/JSONObject;",
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
    .line 1750
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1751
    .local v0, "commandResult":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/parse/ParseUser$25$1$2;->this$2:Lcom/parse/ParseUser$25$1;

    iget-object v2, v2, Lcom/parse/ParseUser$25$1;->this$1:Lcom/parse/ParseUser$25;

    iget-object v2, v2, Lcom/parse/ParseUser$25;->this$0:Lcom/parse/ParseUser;

    iget-object v3, v2, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 1752
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseUser$25$1$2;->this$2:Lcom/parse/ParseUser$25$1;

    iget-object v2, v2, Lcom/parse/ParseUser$25$1;->this$1:Lcom/parse/ParseUser$25;

    iget-object v2, v2, Lcom/parse/ParseUser$25;->this$0:Lcom/parse/ParseUser;

    const/4 v4, 0x0

    # setter for: Lcom/parse/ParseUser;->dirty:Z
    invoke-static {v2, v4}, Lcom/parse/ParseUser;->access$702(Lcom/parse/ParseUser;Z)Z

    .line 1753
    iget-boolean v2, p0, Lcom/parse/ParseUser$25$1$2;->val$isNew:Z

    if-eqz v2, :cond_0

    .line 1757
    iget-object v2, p0, Lcom/parse/ParseUser$25$1$2;->this$2:Lcom/parse/ParseUser$25$1;

    iget-object v2, v2, Lcom/parse/ParseUser$25$1;->this$1:Lcom/parse/ParseUser$25;

    iget-object v2, v2, Lcom/parse/ParseUser$25;->this$0:Lcom/parse/ParseUser;

    const/4 v4, 0x0

    # setter for: Lcom/parse/ParseUser;->isLazy:Z
    invoke-static {v2, v4}, Lcom/parse/ParseUser;->access$802(Lcom/parse/ParseUser;Z)Z

    .line 1758
    iget-object v2, p0, Lcom/parse/ParseUser$25$1$2;->this$2:Lcom/parse/ParseUser$25$1;

    iget-object v2, v2, Lcom/parse/ParseUser$25$1;->this$1:Lcom/parse/ParseUser$25;

    iget-object v2, v2, Lcom/parse/ParseUser$25;->this$0:Lcom/parse/ParseUser;

    invoke-static {v2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v2

    monitor-exit v3

    .line 1764
    :goto_0
    return-object v2

    .line 1760
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1763
    const-string v2, "_User"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/parse/ParseObject;->fromJSON(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/parse/ParseObject;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseUser;

    .line 1764
    .local v1, "newUser":Lcom/parse/ParseUser;
    # invokes: Lcom/parse/ParseUser;->saveCurrentUserAsync(Lcom/parse/ParseUser;)Lbolts/Task;
    invoke-static {v1}, Lcom/parse/ParseUser;->access$100(Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v2

    goto :goto_0

    .line 1760
    .end local v1    # "newUser":Lcom/parse/ParseUser;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
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
    .line 1747
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$25$1$2;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
