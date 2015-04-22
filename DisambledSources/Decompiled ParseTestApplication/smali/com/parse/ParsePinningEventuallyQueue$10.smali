.class Lcom/parse/ParsePinningEventuallyQueue$10;
.super Ljava/lang/Object;
.source "ParsePinningEventuallyQueue.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParsePinningEventuallyQueue;->runEventuallyAsync(Lcom/parse/EventuallyPin;Lbolts/Task;)Lbolts/Task;
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

.field final synthetic val$eventuallyPin:Lcom/parse/EventuallyPin;


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/EventuallyPin;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$10;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    iput-object p2, p0, Lcom/parse/ParsePinningEventuallyQueue$10;->val$eventuallyPin:Lcom/parse/EventuallyPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 3
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
    .line 346
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$10;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/parse/ParsePinningEventuallyQueue$10;->val$eventuallyPin:Lcom/parse/EventuallyPin;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParsePinningEventuallyQueue;->waitForOperationSetAndEventuallyPin(Lcom/parse/ParseOperationSet;Lcom/parse/EventuallyPin;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePinningEventuallyQueue$10$1;

    invoke-direct {v1, p0}, Lcom/parse/ParsePinningEventuallyQueue$10$1;-><init>(Lcom/parse/ParsePinningEventuallyQueue$10;)V

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
    .line 343
    invoke-virtual {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$10;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
