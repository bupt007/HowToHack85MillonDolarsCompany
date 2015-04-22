.class final Lcom/parse/TaskQueue$2;
.super Ljava/lang/Object;
.source "TaskQueue.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/TaskQueue;->waitFor(Lbolts/Task;)Lbolts/Continuation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$toAwait:Lbolts/Task;


# direct methods
.method constructor <init>(Lbolts/Task;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/parse/TaskQueue$2;->val$toAwait:Lbolts/Task;

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
    .line 85
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<TT;>;"
    iget-object v0, p0, Lcom/parse/TaskQueue$2;->val$toAwait:Lbolts/Task;

    new-instance v1, Lcom/parse/TaskQueue$2$1;

    invoke-direct {v1, p0, p1}, Lcom/parse/TaskQueue$2$1;-><init>(Lcom/parse/TaskQueue$2;Lbolts/Task;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
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
    .line 82
    invoke-virtual {p0, p1}, Lcom/parse/TaskQueue$2;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
