.class Lcom/parse/ParsePinningEventuallyQueue$2;
.super Ljava/lang/Object;
.source "ParsePinningEventuallyQueue.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParsePinningEventuallyQueue;->pendingCountAsync()Lbolts/Task;
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
.field final synthetic this$0:Lcom/parse/ParsePinningEventuallyQueue;

.field final synthetic val$tcs:Lbolts/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue;Lbolts/Task$TaskCompletionSource;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$2;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    iput-object p2, p0, Lcom/parse/ParsePinningEventuallyQueue$2;->val$tcs:Lbolts/Task$TaskCompletionSource;

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
    .line 126
    .local p1, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$2;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    invoke-virtual {v0, p1}, Lcom/parse/ParsePinningEventuallyQueue;->pendingCountAsync(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePinningEventuallyQueue$2$1;

    invoke-direct {v1, p0}, Lcom/parse/ParsePinningEventuallyQueue$2$1;-><init>(Lcom/parse/ParsePinningEventuallyQueue$2;)V

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
    .line 123
    invoke-virtual {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$2;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
