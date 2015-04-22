.class final Lcom/parse/ParseUser$16;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->logOutInBackground(Lbolts/Task;)Lbolts/Task;
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
.field final synthetic val$userTask:Lbolts/Task;


# direct methods
.method constructor <init>(Lbolts/Task;)V
    .locals 0

    .prologue
    .line 1253
    iput-object p1, p0, Lcom/parse/ParseUser$16;->val$userTask:Lbolts/Task;

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
    .line 1256
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/parse/ParseUser$16;->val$userTask:Lbolts/Task;

    new-instance v3, Lcom/parse/ParseUser$16$1;

    invoke-direct {v3, p0}, Lcom/parse/ParseUser$16$1;-><init>(Lcom/parse/ParseUser$16;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    .line 1267
    .local v1, "logOutTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/parse/ParseUser$16;->val$userTask:Lbolts/Task;

    new-instance v3, Lcom/parse/ParseUser$16$4;

    invoke-direct {v3, p0}, Lcom/parse/ParseUser$16$4;-><init>(Lcom/parse/ParseUser$16;)V

    sget-object v4, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v2, v3, v4}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseUser$16$3;

    invoke-direct {v3, p0}, Lcom/parse/ParseUser$16$3;-><init>(Lcom/parse/ParseUser$16;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseUser$16$2;

    invoke-direct {v3, p0}, Lcom/parse/ParseUser$16$2;-><init>(Lcom/parse/ParseUser$16;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    .line 1300
    .local v0, "diskTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    const/4 v2, 0x2

    new-array v2, v2, [Lbolts/Task;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v2

    return-object v2
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
    .line 1253
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$16;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
