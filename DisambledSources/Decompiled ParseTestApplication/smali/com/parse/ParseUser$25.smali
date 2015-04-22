.class Lcom/parse/ParseUser$25;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->resolveLazinessAsync(Lbolts/Task;)Lbolts/Task;
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
        "Lcom/parse/ParseOperationSet;",
        "Lbolts/Task",
        "<",
        "Lcom/parse/ParseUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser;

.field final synthetic val$operations:Lbolts/Capture;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;Lbolts/Capture;)V
    .locals 0

    .prologue
    .line 1721
    iput-object p1, p0, Lcom/parse/ParseUser$25;->this$0:Lcom/parse/ParseUser;

    iput-object p2, p0, Lcom/parse/ParseUser$25;->val$operations:Lbolts/Capture;

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
            "Lcom/parse/ParseOperationSet;",
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
    .line 1724
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseOperationSet;>;"
    iget-object v1, p0, Lcom/parse/ParseUser$25;->val$operations:Lbolts/Capture;

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbolts/Capture;->set(Ljava/lang/Object;)V

    .line 1725
    iget-object v2, p0, Lcom/parse/ParseUser$25;->this$0:Lcom/parse/ParseUser;

    iget-object v1, p0, Lcom/parse/ParseUser$25;->val$operations:Lbolts/Capture;

    invoke-virtual {v1}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseOperationSet;

    # invokes: Lcom/parse/ParseUser;->currentServiceLogInCommand(Lcom/parse/ParseOperationSet;)Lcom/parse/ParseRESTUserCommand;
    invoke-static {v2, v1}, Lcom/parse/ParseUser;->access$2400(Lcom/parse/ParseUser;Lcom/parse/ParseOperationSet;)Lcom/parse/ParseRESTUserCommand;

    move-result-object v0

    .line 1726
    .local v0, "command":Lcom/parse/ParseRESTUserCommand;
    invoke-virtual {v0}, Lcom/parse/ParseRESTUserCommand;->executeAsync()Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseUser$25$1;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseUser$25$1;-><init>(Lcom/parse/ParseUser$25;Lcom/parse/ParseRESTUserCommand;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1
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
    .line 1721
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$25;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
