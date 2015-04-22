.class Lcom/parse/ParseCommandCache$3;
.super Ljava/lang/Object;
.source "ParseCommandCache.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseCommandCache;->waitForTaskWithoutLock(Lbolts/Task;)Ljava/lang/Object;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseCommandCache;

.field final synthetic val$finished:Lbolts/Capture;


# direct methods
.method constructor <init>(Lcom/parse/ParseCommandCache;Lbolts/Capture;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/parse/ParseCommandCache$3;->this$0:Lcom/parse/ParseCommandCache;

    iput-object p2, p0, Lcom/parse/ParseCommandCache$3;->val$finished:Lbolts/Capture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lbolts/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 414
    invoke-virtual {p0, p1}, Lcom/parse/ParseCommandCache$3;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<TT;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 417
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseCommandCache$3;->val$finished:Lbolts/Capture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/Capture;->set(Ljava/lang/Object;)V

    .line 418
    # getter for: Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;
    invoke-static {}, Lcom/parse/ParseCommandCache;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 419
    :try_start_0
    # getter for: Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;
    invoke-static {}, Lcom/parse/ParseCommandCache;->access$100()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 420
    monitor-exit v1

    .line 421
    const/4 v0, 0x0

    return-object v0

    .line 420
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
