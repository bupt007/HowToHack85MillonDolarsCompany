.class final Lcom/parse/ParseUser$14;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->saveCurrentUserAsync(Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;
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
.field final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;)V
    .locals 0

    .prologue
    .line 1164
    iput-object p1, p0, Lcom/parse/ParseUser$14;->val$user:Lcom/parse/ParseUser;

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
    .line 1168
    .local p1, "ignored":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    # getter for: Lcom/parse/ParseUser;->MUTEX_CURRENT_USER:Ljava/lang/Object;
    invoke-static {}, Lcom/parse/ParseUser;->access$1000()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1169
    :try_start_0
    sget-object v0, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    .line 1170
    .local v0, "oldCurrentUser":Lcom/parse/ParseUser;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1172
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/parse/ParseUser$14;->val$user:Lcom/parse/ParseUser;

    if-eq v0, v2, :cond_0

    .line 1175
    # invokes: Lcom/parse/ParseUser;->logOutInternal()Ljava/lang/String;
    invoke-static {v0}, Lcom/parse/ParseUser;->access$1400(Lcom/parse/ParseUser;)Ljava/lang/String;

    .line 1178
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseUser$14;->val$user:Lcom/parse/ParseUser;

    iget-object v3, v2, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 1179
    :try_start_1
    iget-object v2, p0, Lcom/parse/ParseUser$14;->val$user:Lcom/parse/ParseUser;

    const/4 v4, 0x1

    # setter for: Lcom/parse/ParseUser;->isCurrentUser:Z
    invoke-static {v2, v4}, Lcom/parse/ParseUser;->access$1202(Lcom/parse/ParseUser;Z)Z

    .line 1180
    iget-object v2, p0, Lcom/parse/ParseUser$14;->val$user:Lcom/parse/ParseUser;

    # invokes: Lcom/parse/ParseUser;->synchronizeAllAuthData()V
    invoke-static {v2}, Lcom/parse/ParseUser;->access$1500(Lcom/parse/ParseUser;)V

    .line 1181
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1184
    invoke-static {}, Lcom/parse/OfflineStore;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1185
    const-string v2, "_currentUser"

    invoke-static {v2}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseUser$14$1;

    invoke-direct {v3, p0}, Lcom/parse/ParseUser$14$1;-><init>(Lcom/parse/ParseUser$14;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    .line 1201
    .local v1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :goto_0
    return-object v1

    .line 1170
    .end local v0    # "oldCurrentUser":Lcom/parse/ParseUser;
    .end local v1    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1181
    .restart local v0    # "oldCurrentUser":Lcom/parse/ParseUser;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 1192
    :cond_1
    new-instance v2, Lcom/parse/ParseUser$14$2;

    invoke-direct {v2, p0}, Lcom/parse/ParseUser$14$2;-><init>(Lcom/parse/ParseUser$14;)V

    sget-object v3, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-static {v2, v3}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v1

    .restart local v1    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
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
    .line 1164
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$14;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
