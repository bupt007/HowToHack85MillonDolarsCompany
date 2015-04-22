.class Lcom/parse/ParseObject$16$1;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject$16;->then(Lbolts/Task;)Lbolts/Task;
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
.field final synthetic this$1:Lcom/parse/ParseObject$16;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$16;)V
    .locals 0

    .prologue
    .line 1567
    iput-object p1, p0, Lcom/parse/ParseObject$16$1;->this$1:Lcom/parse/ParseObject$16;

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
    .line 1570
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/parse/Parse;->getEventuallyQueue()Lcom/parse/ParseEventuallyQueue;

    move-result-object v0

    .line 1571
    .local v0, "cache":Lcom/parse/ParseEventuallyQueue;
    iget-object v1, p0, Lcom/parse/ParseObject$16$1;->this$1:Lcom/parse/ParseObject$16;

    iget-object v1, v1, Lcom/parse/ParseObject$16;->val$operationSet:Lcom/parse/ParseOperationSet;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseEventuallyQueue;->waitForOperationSetAndEventuallyPin(Lcom/parse/ParseOperationSet;Lcom/parse/EventuallyPin;)Lbolts/Task;

    move-result-object v1

    invoke-virtual {v1}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v1

    return-object v1
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
    .line 1567
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$16$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
