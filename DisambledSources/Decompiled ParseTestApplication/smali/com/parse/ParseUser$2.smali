.class Lcom/parse/ParseUser$2;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->fetchAsync(Lbolts/Task;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<TT;",
        "Lbolts/Task",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;)V
    .locals 0

    .prologue
    .line 632
    iput-object p1, p0, Lcom/parse/ParseUser$2;->this$0:Lcom/parse/ParseUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<TT;>;)",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 635
    .local p1, "fetchAsyncTask":Lbolts/Task;, "Lbolts/Task<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseUser$2;->this$0:Lcom/parse/ParseUser;

    invoke-virtual {v0}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/parse/ParseUser$2;->this$0:Lcom/parse/ParseUser;

    # invokes: Lcom/parse/ParseUser;->cleanUpAuthData()V
    invoke-static {v0}, Lcom/parse/ParseUser;->access$000(Lcom/parse/ParseUser;)V

    .line 637
    iget-object v0, p0, Lcom/parse/ParseUser$2;->this$0:Lcom/parse/ParseUser;

    # invokes: Lcom/parse/ParseUser;->saveCurrentUserAsync(Lcom/parse/ParseUser;)Lbolts/Task;
    invoke-static {v0}, Lcom/parse/ParseUser;->access$100(Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseUser$2$1;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseUser$2$1;-><init>(Lcom/parse/ParseUser$2;Lbolts/Task;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object p1

    .line 644
    .end local p1    # "fetchAsyncTask":Lbolts/Task;, "Lbolts/Task<TT;>;"
    :cond_0
    return-object p1
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
    .line 632
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$2;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
