.class Lcom/parse/ParseObject$14;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->saveAsync(Lbolts/Task;)Lbolts/Task;
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
.field final synthetic this$0:Lcom/parse/ParseObject;

.field final synthetic val$operations:Lbolts/Capture;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Lbolts/Capture;)V
    .locals 0

    .prologue
    .line 1371
    iput-object p1, p0, Lcom/parse/ParseObject$14;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$14;->val$operations:Lbolts/Capture;

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
    .line 1374
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseObject$14;->this$0:Lcom/parse/ParseObject;

    iget-object v1, v0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1375
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject$14;->this$0:Lcom/parse/ParseObject;

    invoke-virtual {v0}, Lcom/parse/ParseObject;->validateSave()V

    .line 1376
    iget-object v0, p0, Lcom/parse/ParseObject$14;->val$operations:Lbolts/Capture;

    iget-object v2, p0, Lcom/parse/ParseObject$14;->this$0:Lcom/parse/ParseObject;

    invoke-virtual {v2}, Lcom/parse/ParseObject;->startSave()Lcom/parse/ParseOperationSet;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbolts/Capture;->set(Ljava/lang/Object;)V

    .line 1377
    iget-object v0, p0, Lcom/parse/ParseObject$14;->this$0:Lcom/parse/ParseObject;

    const-string v2, "ACL"

    # invokes: Lcom/parse/ParseObject;->isDataAvailable(Ljava/lang/String;)Z
    invoke-static {v0, v2}, Lcom/parse/ParseObject;->access$500(Lcom/parse/ParseObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseObject$14;->this$0:Lcom/parse/ParseObject;

    const/4 v2, 0x0

    # invokes: Lcom/parse/ParseObject;->getACL(Z)Lcom/parse/ParseACL;
    invoke-static {v0, v2}, Lcom/parse/ParseObject;->access$600(Lcom/parse/ParseObject;Z)Lcom/parse/ParseACL;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseObject$14;->this$0:Lcom/parse/ParseObject;

    const/4 v2, 0x0

    # invokes: Lcom/parse/ParseObject;->getACL(Z)Lcom/parse/ParseACL;
    invoke-static {v0, v2}, Lcom/parse/ParseObject;->access$600(Lcom/parse/ParseObject;Z)Lcom/parse/ParseACL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseACL;->hasUnresolvedUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1379
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseUser;->saveInBackground()Lbolts/Task;

    move-result-object v0

    new-instance v2, Lcom/parse/ParseObject$14$1;

    invoke-direct {v2, p0}, Lcom/parse/ParseObject$14$1;-><init>(Lcom/parse/ParseObject$14;)V

    invoke-virtual {v0, v2}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object p1

    .end local p1    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    monitor-exit v1

    .line 1390
    :goto_0
    return-object p1

    .restart local p1    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :cond_0
    monitor-exit v1

    goto :goto_0

    .line 1391
    .end local p1    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
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
    .line 1371
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$14;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
