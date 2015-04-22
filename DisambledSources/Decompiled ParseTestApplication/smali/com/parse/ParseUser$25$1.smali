.class Lcom/parse/ParseUser$25$1;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser$25;->then(Lbolts/Task;)Lbolts/Task;
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
.field final synthetic this$1:Lcom/parse/ParseUser$25;

.field final synthetic val$command:Lcom/parse/ParseRESTUserCommand;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$25;Lcom/parse/ParseRESTUserCommand;)V
    .locals 0

    .prologue
    .line 1727
    iput-object p1, p0, Lcom/parse/ParseUser$25$1;->this$1:Lcom/parse/ParseUser$25;

    iput-object p2, p0, Lcom/parse/ParseUser$25$1;->val$command:Lcom/parse/ParseRESTUserCommand;

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
    .line 1730
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1731
    .local v0, "commandResult":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/parse/ParseUser$25$1;->val$command:Lcom/parse/ParseRESTUserCommand;

    invoke-virtual {v3}, Lcom/parse/ParseRESTUserCommand;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc9

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    .line 1736
    .local v1, "isNew":Z
    :goto_0
    invoke-static {}, Lcom/parse/OfflineStore;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    .line 1737
    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v2

    .line 1747
    .local v2, "resultTask":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    :goto_1
    new-instance v3, Lcom/parse/ParseUser$25$1$2;

    invoke-direct {v3, p0, v1}, Lcom/parse/ParseUser$25$1$2;-><init>(Lcom/parse/ParseUser$25$1;Z)V

    invoke-virtual {v2, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v3

    return-object v3

    .line 1731
    .end local v1    # "isNew":Z
    .end local v2    # "resultTask":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1739
    .restart local v1    # "isNew":Z
    :cond_1
    iget-object v3, p0, Lcom/parse/ParseUser$25$1;->this$1:Lcom/parse/ParseUser$25;

    iget-object v4, v3, Lcom/parse/ParseUser$25;->this$0:Lcom/parse/ParseUser;

    iget-object v3, p0, Lcom/parse/ParseUser$25$1;->this$1:Lcom/parse/ParseUser$25;

    iget-object v3, v3, Lcom/parse/ParseUser$25;->val$operations:Lbolts/Capture;

    invoke-virtual {v3}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseOperationSet;

    invoke-virtual {v4, v0, v3}, Lcom/parse/ParseUser;->handleSaveResultAsync(Lorg/json/JSONObject;Lcom/parse/ParseOperationSet;)Lbolts/Task;

    move-result-object v3

    new-instance v4, Lcom/parse/ParseUser$25$1$1;

    invoke-direct {v4, p0, v0}, Lcom/parse/ParseUser$25$1$1;-><init>(Lcom/parse/ParseUser$25$1;Lorg/json/JSONObject;)V

    invoke-virtual {v3, v4}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    .restart local v2    # "resultTask":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    goto :goto_1
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
    .line 1727
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$25$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
