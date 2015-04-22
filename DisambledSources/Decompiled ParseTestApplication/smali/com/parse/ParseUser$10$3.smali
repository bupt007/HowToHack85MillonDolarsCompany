.class Lcom/parse/ParseUser$10$3;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser$10;->then(Lbolts/Task;)Lbolts/Task;
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
        "Lcom/parse/ParseUser;",
        "Lcom/parse/ParseUser;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser$10;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$10;)V
    .locals 0

    .prologue
    .line 1106
    iput-object p1, p0, Lcom/parse/ParseUser$10$3;->this$0:Lcom/parse/ParseUser$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lcom/parse/ParseUser;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;)",
            "Lcom/parse/ParseUser;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseUser;>;"
    const/4 v1, 0x1

    .line 1109
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    .line 1110
    .local v0, "current":Lcom/parse/ParseUser;
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1112
    .local v1, "matchesDisk":Z
    :goto_0
    # getter for: Lcom/parse/ParseUser;->MUTEX_CURRENT_USER:Ljava/lang/Object;
    invoke-static {}, Lcom/parse/ParseUser;->access$1000()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1113
    :try_start_0
    sput-object v0, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    .line 1114
    # setter for: Lcom/parse/ParseUser;->currentUserMatchesDisk:Z
    invoke-static {v1}, Lcom/parse/ParseUser;->access$1102(Z)Z

    .line 1115
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1117
    if-eqz v0, :cond_1

    .line 1118
    iget-object v3, v0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 1119
    const/4 v2, 0x1

    :try_start_1
    # setter for: Lcom/parse/ParseUser;->isCurrentUser:Z
    invoke-static {v0, v2}, Lcom/parse/ParseUser;->access$1202(Lcom/parse/ParseUser;Z)Z

    .line 1120
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1127
    .end local v0    # "current":Lcom/parse/ParseUser;
    :goto_1
    return-object v0

    .line 1110
    .end local v1    # "matchesDisk":Z
    .restart local v0    # "current":Lcom/parse/ParseUser;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1115
    .restart local v1    # "matchesDisk":Z
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1120
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 1124
    :cond_1
    iget-object v2, p0, Lcom/parse/ParseUser$10$3;->this$0:Lcom/parse/ParseUser$10;

    iget-boolean v2, v2, Lcom/parse/ParseUser$10;->val$shouldAutoCreateUser:Z

    if-eqz v2, :cond_2

    .line 1125
    invoke-static {}, Lcom/parse/ParseAnonymousUtils;->lazyLogIn()Lcom/parse/ParseUser;

    move-result-object v0

    goto :goto_1

    .line 1127
    :cond_2
    const/4 v0, 0x0

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
    .line 1106
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$10$3;->then(Lbolts/Task;)Lcom/parse/ParseUser;

    move-result-object v0

    return-object v0
.end method
