.class Lcom/parse/ParsePinningEventuallyQueue$7;
.super Ljava/lang/Object;
.source "ParsePinningEventuallyQueue.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParsePinningEventuallyQueue;->populateQueueAsync(Lbolts/Task;)Lbolts/Task;
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
        "Ljava/util/List",
        "<",
        "Lcom/parse/EventuallyPin;",
        ">;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParsePinningEventuallyQueue;


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$7;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

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
            "Ljava/util/List",
            "<",
            "Lcom/parse/EventuallyPin;",
            ">;>;)",
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
    .line 289
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/util/List<Lcom/parse/EventuallyPin;>;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 291
    .local v2, "pins":Ljava/util/List;, "Ljava/util/List<Lcom/parse/EventuallyPin;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/EventuallyPin;

    .line 293
    .local v1, "pin":Lcom/parse/EventuallyPin;
    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue$7;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    # invokes: Lcom/parse/ParsePinningEventuallyQueue;->runEventuallyAsync(Lcom/parse/EventuallyPin;)Lbolts/Task;
    invoke-static {v3, v1}, Lcom/parse/ParsePinningEventuallyQueue;->access$500(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/EventuallyPin;)Lbolts/Task;

    goto :goto_0

    .line 296
    .end local v1    # "pin":Lcom/parse/EventuallyPin;
    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v3

    return-object v3
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
    .line 286
    invoke-virtual {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$7;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
