.class Lcom/parse/OfflineStore$OfflineEncodingStrategy$1;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore$OfflineEncodingStrategy;->whenFinished()Lbolts/Task;
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
.field final synthetic this$1:Lcom/parse/OfflineStore$OfflineEncodingStrategy;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$OfflineEncodingStrategy;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/parse/OfflineStore$OfflineEncodingStrategy$1;->this$1:Lcom/parse/OfflineStore$OfflineEncodingStrategy;

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
    .line 141
    .local p1, "ignore":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/parse/OfflineStore$OfflineEncodingStrategy$1;->this$1:Lcom/parse/OfflineStore$OfflineEncodingStrategy;

    # getter for: Lcom/parse/OfflineStore$OfflineEncodingStrategy;->tasksLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/parse/OfflineStore$OfflineEncodingStrategy;->access$000(Lcom/parse/OfflineStore$OfflineEncodingStrategy;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 143
    :try_start_0
    iget-object v2, p0, Lcom/parse/OfflineStore$OfflineEncodingStrategy$1;->this$1:Lcom/parse/OfflineStore$OfflineEncodingStrategy;

    # getter for: Lcom/parse/OfflineStore$OfflineEncodingStrategy;->tasks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/parse/OfflineStore$OfflineEncodingStrategy;->access$100(Lcom/parse/OfflineStore$OfflineEncodingStrategy;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbolts/Task;

    .line 144
    .local v1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-virtual {v1}, Lbolts/Task;->isFaulted()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lbolts/Task;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    :cond_1
    monitor-exit v3

    .line 149
    .end local v1    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :goto_0
    return-object v1

    .line 148
    :cond_2
    iget-object v2, p0, Lcom/parse/OfflineStore$OfflineEncodingStrategy$1;->this$1:Lcom/parse/OfflineStore$OfflineEncodingStrategy;

    # getter for: Lcom/parse/OfflineStore$OfflineEncodingStrategy;->tasks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/parse/OfflineStore$OfflineEncodingStrategy;->access$100(Lcom/parse/OfflineStore$OfflineEncodingStrategy;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 149
    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Void;

    invoke-static {v2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    monitor-exit v3

    goto :goto_0

    .line 150
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
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
    .line 138
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$OfflineEncodingStrategy$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
