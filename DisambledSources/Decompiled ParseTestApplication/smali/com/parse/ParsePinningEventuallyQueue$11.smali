.class Lcom/parse/ParsePinningEventuallyQueue$11;
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


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$11;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 1
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
    .line 341
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$11;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    # invokes: Lcom/parse/ParsePinningEventuallyQueue;->waitForConnectionAsync()Lbolts/Task;
    invoke-static {v0}, Lcom/parse/ParsePinningEventuallyQueue;->access$800(Lcom/parse/ParsePinningEventuallyQueue;)Lbolts/Task;

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
    .line 338
    invoke-virtual {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$11;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
