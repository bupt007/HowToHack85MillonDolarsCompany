.class final Lcom/parse/PushRouter$11;
.super Ljava/lang/Object;
.source "PushRouter.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/PushRouter;->makeUnhandledExceptionsFatal(Lbolts/Task;)Lbolts/Task;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 288
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
    .line 288
    invoke-virtual {p0, p1}, Lcom/parse/PushRouter$11;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 291
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    sget-object v0, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/parse/PushRouter$11$1;

    invoke-direct {v1, p0, p1}, Lcom/parse/PushRouter$11$1;-><init>(Lcom/parse/PushRouter$11;Lbolts/Task;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 300
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
