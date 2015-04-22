.class Lcom/parse/ParseUser$5$1$1;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser$5$1;->then(Lbolts/Task;)Lbolts/Task;
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
.field final synthetic this$2:Lcom/parse/ParseUser$5$1;

.field final synthetic val$signUpTask:Lbolts/Task;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$5$1;Lbolts/Task;)V
    .locals 0

    .prologue
    .line 801
    iput-object p1, p0, Lcom/parse/ParseUser$5$1$1;->this$2:Lcom/parse/ParseUser$5$1;

    iput-object p2, p0, Lcom/parse/ParseUser$5$1$1;->val$signUpTask:Lbolts/Task;

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
    .line 804
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseUser$5$1$1;->val$signUpTask:Lbolts/Task;

    invoke-virtual {v0}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseUser$5$1$1;->val$signUpTask:Lbolts/Task;

    invoke-virtual {v0}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/parse/ParseUser$5$1$1;->this$2:Lcom/parse/ParseUser$5$1;

    iget-object v0, v0, Lcom/parse/ParseUser$5$1;->this$1:Lcom/parse/ParseUser$5;

    iget-object v0, v0, Lcom/parse/ParseUser$5;->this$0:Lcom/parse/ParseUser;

    iget-object v1, v0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 806
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseUser$5$1$1;->this$2:Lcom/parse/ParseUser$5$1;

    iget-object v0, v0, Lcom/parse/ParseUser$5$1;->this$1:Lcom/parse/ParseUser$5;

    iget-object v0, v0, Lcom/parse/ParseUser$5;->this$0:Lcom/parse/ParseUser;

    const/4 v2, 0x1

    # setter for: Lcom/parse/ParseUser;->isNew:Z
    invoke-static {v0, v2}, Lcom/parse/ParseUser;->access$602(Lcom/parse/ParseUser;Z)Z

    .line 807
    iget-object v0, p0, Lcom/parse/ParseUser$5$1$1;->this$2:Lcom/parse/ParseUser$5$1;

    iget-object v0, v0, Lcom/parse/ParseUser$5$1;->this$1:Lcom/parse/ParseUser$5;

    iget-object v0, v0, Lcom/parse/ParseUser$5;->this$0:Lcom/parse/ParseUser;

    const/4 v2, 0x0

    # setter for: Lcom/parse/ParseUser;->dirty:Z
    invoke-static {v0, v2}, Lcom/parse/ParseUser;->access$702(Lcom/parse/ParseUser;Z)Z

    .line 808
    iget-object v0, p0, Lcom/parse/ParseUser$5$1$1;->this$2:Lcom/parse/ParseUser$5$1;

    iget-object v0, v0, Lcom/parse/ParseUser$5$1;->this$1:Lcom/parse/ParseUser$5;

    iget-object v0, v0, Lcom/parse/ParseUser$5;->this$0:Lcom/parse/ParseUser;

    const/4 v2, 0x0

    # setter for: Lcom/parse/ParseUser;->isLazy:Z
    invoke-static {v0, v2}, Lcom/parse/ParseUser;->access$802(Lcom/parse/ParseUser;Z)Z

    .line 809
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 810
    iget-object v0, p0, Lcom/parse/ParseUser$5$1$1;->this$2:Lcom/parse/ParseUser$5$1;

    iget-object v0, v0, Lcom/parse/ParseUser$5$1;->this$1:Lcom/parse/ParseUser$5;

    iget-object v0, v0, Lcom/parse/ParseUser$5;->this$0:Lcom/parse/ParseUser;

    # invokes: Lcom/parse/ParseUser;->saveCurrentUserAsync(Lcom/parse/ParseUser;)Lbolts/Task;
    invoke-static {v0}, Lcom/parse/ParseUser;->access$100(Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    invoke-virtual {v0}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v0

    .line 812
    :goto_0
    return-object v0

    .line 809
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseUser$5$1$1;->val$signUpTask:Lbolts/Task;

    invoke-virtual {v0}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v0

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
    .line 801
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$5$1$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
