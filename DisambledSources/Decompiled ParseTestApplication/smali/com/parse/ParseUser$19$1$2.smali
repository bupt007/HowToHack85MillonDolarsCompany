.class Lcom/parse/ParseUser$19$1$2;
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
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseUser$19$1;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$19$1;)V
    .locals 0

    .prologue
    .line 1561
    iput-object p1, p0, Lcom/parse/ParseUser$19$1$2;->this$1:Lcom/parse/ParseUser$19$1;

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
    .line 1564
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseUser$19$1$2;->this$1:Lcom/parse/ParseUser$19$1;

    iget-object v0, v0, Lcom/parse/ParseUser$19$1;->val$user:Lcom/parse/ParseUser;

    iget-object v1, v0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1566
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseUser$19$1$2;->this$1:Lcom/parse/ParseUser$19$1;

    iget-object v0, v0, Lcom/parse/ParseUser$19$1;->val$user:Lcom/parse/ParseUser;

    # invokes: Lcom/parse/ParseUser;->stripAnonymity()V
    invoke-static {v0}, Lcom/parse/ParseUser;->access$2000(Lcom/parse/ParseUser;)V

    .line 1568
    iget-object v0, p0, Lcom/parse/ParseUser$19$1$2;->this$1:Lcom/parse/ParseUser$19$1;

    iget-object v0, v0, Lcom/parse/ParseUser$19$1;->val$user:Lcom/parse/ParseUser;

    # getter for: Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/parse/ParseUser;->access$1800(Lcom/parse/ParseUser;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/parse/ParseUser$19$1$2;->this$1:Lcom/parse/ParseUser$19$1;

    iget-object v2, v2, Lcom/parse/ParseUser$19$1;->this$0:Lcom/parse/ParseUser$19;

    iget-object v2, v2, Lcom/parse/ParseUser$19;->val$authType:Ljava/lang/String;

    iget-object v3, p0, Lcom/parse/ParseUser$19$1$2;->this$1:Lcom/parse/ParseUser$19$1;

    iget-object v3, v3, Lcom/parse/ParseUser$19$1;->this$0:Lcom/parse/ParseUser$19;

    iget-object v3, v3, Lcom/parse/ParseUser$19;->val$authData:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1569
    iget-object v0, p0, Lcom/parse/ParseUser$19$1$2;->this$1:Lcom/parse/ParseUser$19$1;

    iget-object v0, v0, Lcom/parse/ParseUser$19$1;->val$user:Lcom/parse/ParseUser;

    # getter for: Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;
    invoke-static {v0}, Lcom/parse/ParseUser;->access$1900(Lcom/parse/ParseUser;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/parse/ParseUser$19$1$2;->this$1:Lcom/parse/ParseUser$19$1;

    iget-object v2, v2, Lcom/parse/ParseUser$19$1;->this$0:Lcom/parse/ParseUser$19;

    iget-object v2, v2, Lcom/parse/ParseUser$19;->val$authType:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1570
    iget-object v0, p0, Lcom/parse/ParseUser$19$1$2;->this$1:Lcom/parse/ParseUser$19$1;

    iget-object v0, v0, Lcom/parse/ParseUser$19$1;->val$user:Lcom/parse/ParseUser;

    # invokes: Lcom/parse/ParseUser;->resolveLazinessAsync(Lbolts/Task;)Lbolts/Task;
    invoke-static {v0, p1}, Lcom/parse/ParseUser;->access$2100(Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    invoke-virtual {v0}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1571
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
    .line 1561
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$19$1$2;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
