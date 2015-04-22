.class final Lcom/parse/ParseUser$10;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->getCurrentUserAsync(ZLbolts/Task;)Lbolts/Task;
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
        "Lcom/parse/ParseUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$shouldAutoCreateUser:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 1050
    iput-boolean p1, p0, Lcom/parse/ParseUser$10;->val$shouldAutoCreateUser:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 6
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
    .line 1055
    .local p1, "ignored":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    # getter for: Lcom/parse/ParseUser;->MUTEX_CURRENT_USER:Ljava/lang/Object;
    invoke-static {}, Lcom/parse/ParseUser;->access$1000()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1056
    :try_start_0
    sget-object v0, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    .line 1057
    .local v0, "current":Lcom/parse/ParseUser;
    # getter for: Lcom/parse/ParseUser;->currentUserMatchesDisk:Z
    invoke-static {}, Lcom/parse/ParseUser;->access$1100()Z

    move-result v1

    .line 1058
    .local v1, "matchesDisk":Z
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1060
    if-eqz v0, :cond_0

    .line 1061
    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v4

    .line 1106
    :goto_0
    return-object v4

    .line 1058
    .end local v0    # "current":Lcom/parse/ParseUser;
    .end local v1    # "matchesDisk":Z
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1064
    .restart local v0    # "current":Lcom/parse/ParseUser;
    .restart local v1    # "matchesDisk":Z
    :cond_0
    if-eqz v1, :cond_2

    .line 1065
    iget-boolean v4, p0, Lcom/parse/ParseUser$10;->val$shouldAutoCreateUser:Z

    if-eqz v4, :cond_1

    .line 1066
    invoke-static {}, Lcom/parse/ParseAnonymousUtils;->lazyLogIn()Lcom/parse/ParseUser;

    move-result-object v4

    invoke-static {v4}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v4

    goto :goto_0

    .line 1068
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1072
    :cond_2
    invoke-static {}, Lcom/parse/OfflineStore;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1074
    const-class v4, Lcom/parse/ParseUser;

    invoke-static {v4}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/Class;)Lcom/parse/ParseQuery;

    move-result-object v4

    const-string v5, "_currentUser"

    invoke-virtual {v4, v5}, Lcom/parse/ParseQuery;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parse/ParseQuery;->ignoreACLs()Lcom/parse/ParseQuery;

    move-result-object v2

    .line 1077
    .local v2, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/parse/ParseUser;>;"
    invoke-virtual {v2}, Lcom/parse/ParseQuery;->findInBackground()Lbolts/Task;

    move-result-object v4

    new-instance v5, Lcom/parse/ParseUser$10$2;

    invoke-direct {v5, p0}, Lcom/parse/ParseUser$10$2;-><init>(Lcom/parse/ParseUser$10;)V

    invoke-virtual {v4, v5}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v4

    new-instance v5, Lcom/parse/ParseUser$10$1;

    invoke-direct {v5, p0}, Lcom/parse/ParseUser$10$1;-><init>(Lcom/parse/ParseUser$10;)V

    invoke-virtual {v4, v5}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v3

    .line 1106
    .end local v2    # "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/parse/ParseUser;>;"
    .local v3, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseUser;>;"
    :goto_1
    new-instance v4, Lcom/parse/ParseUser$10$3;

    invoke-direct {v4, p0}, Lcom/parse/ParseUser$10$3;-><init>(Lcom/parse/ParseUser$10;)V

    invoke-virtual {v3, v4}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v4

    goto :goto_0

    .line 1103
    .end local v3    # "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseUser;>;"
    :cond_3
    sget-object v4, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    const-string v5, "currentUser"

    invoke-static {v4, v5}, Lcom/parse/ParseObject;->getFromDisk(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v4

    check-cast v4, Lcom/parse/ParseUser;

    invoke-static {v4}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v3

    .restart local v3    # "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseUser;>;"
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
    .line 1050
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$10;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
