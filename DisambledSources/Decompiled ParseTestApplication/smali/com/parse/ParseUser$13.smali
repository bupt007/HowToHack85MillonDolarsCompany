.class final Lcom/parse/ParseUser$13;
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
        "Lcom/parse/ParseUser;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;)V
    .locals 0

    .prologue
    .line 1203
    iput-object p1, p0, Lcom/parse/ParseUser$13;->val$user:Lcom/parse/ParseUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lcom/parse/ParseUser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
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
    .line 1206
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    # getter for: Lcom/parse/ParseUser;->MUTEX_CURRENT_USER:Ljava/lang/Object;
    invoke-static {}, Lcom/parse/ParseUser;->access$1000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1207
    :try_start_0
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/parse/ParseUser;->currentUserMatchesDisk:Z
    invoke-static {v0}, Lcom/parse/ParseUser;->access$1102(Z)Z

    .line 1208
    iget-object v0, p0, Lcom/parse/ParseUser$13;->val$user:Lcom/parse/ParseUser;

    sput-object v0, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    .line 1209
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1210
    iget-object v0, p0, Lcom/parse/ParseUser$13;->val$user:Lcom/parse/ParseUser;

    return-object v0

    .line 1207
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1209
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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
    .line 1203
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$13;->then(Lbolts/Task;)Lcom/parse/ParseUser;

    move-result-object v0

    return-object v0
.end method
