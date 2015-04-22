.class Lcom/parse/OfflineStore$12;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore;->fetchLocallyAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
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
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$object:Lcom/parse/ParseObject;

.field final synthetic val$tcs:Lbolts/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Lbolts/Task$TaskCompletionSource;Lcom/parse/ParseObject;)V
    .locals 0

    .prologue
    .line 799
    iput-object p1, p0, Lcom/parse/OfflineStore$12;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$12;->val$tcs:Lbolts/Task$TaskCompletionSource;

    iput-object p3, p0, Lcom/parse/OfflineStore$12;->val$object:Lcom/parse/ParseObject;

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
            "<",
            "Ljava/lang/Void;",
            ">;)",
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
    .line 802
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/parse/OfflineStore$12;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->setCancelled()V

    .line 809
    :goto_0
    iget-object v0, p0, Lcom/parse/OfflineStore$12;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v0

    return-object v0

    .line 804
    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 805
    iget-object v0, p0, Lcom/parse/OfflineStore$12;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 807
    :cond_1
    iget-object v0, p0, Lcom/parse/OfflineStore$12;->val$tcs:Lbolts/Task$TaskCompletionSource;

    iget-object v1, p0, Lcom/parse/OfflineStore$12;->val$object:Lcom/parse/ParseObject;

    invoke-virtual {v0, v1}, Lbolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

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
    .line 799
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$12;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
