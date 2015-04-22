.class final Lcom/parse/ParseObject$47;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;Z)Lbolts/Task;
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
        "Ljava/lang/Void;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$object:Lcom/parse/ParseObject;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;)V
    .locals 0

    .prologue
    .line 3473
    iput-object p1, p0, Lcom/parse/ParseObject$47;->val$object:Lcom/parse/ParseObject;

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
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    const/4 v3, 0x0

    .line 3476
    iget-object v1, p0, Lcom/parse/ParseObject$47;->val$object:Lcom/parse/ParseObject;

    const-string v2, "ACL"

    # invokes: Lcom/parse/ParseObject;->isDataAvailable(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/parse/ParseObject;->access$500(Lcom/parse/ParseObject;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3477
    invoke-static {v3}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    .line 3489
    :goto_0
    return-object v1

    .line 3480
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseObject$47;->val$object:Lcom/parse/ParseObject;

    const/4 v2, 0x0

    # invokes: Lcom/parse/ParseObject;->getACL(Z)Lcom/parse/ParseACL;
    invoke-static {v1, v2}, Lcom/parse/ParseObject;->access$600(Lcom/parse/ParseObject;Z)Lcom/parse/ParseACL;

    move-result-object v0

    .line 3481
    .local v0, "acl":Lcom/parse/ParseACL;
    if-nez v0, :cond_1

    .line 3482
    invoke-static {v3}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    goto :goto_0

    .line 3485
    :cond_1
    invoke-virtual {v0}, Lcom/parse/ParseACL;->hasUnresolvedUser()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3486
    invoke-static {v3}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    goto :goto_0

    .line 3489
    :cond_2
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUserAsync()Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseObject$47$1;

    invoke-direct {v2, p0}, Lcom/parse/ParseObject$47$1;-><init>(Lcom/parse/ParseObject$47;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

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
    .line 3473
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$47;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
