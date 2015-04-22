.class Lcom/parse/ParsePinningEventuallyQueue$9$1;
.super Ljava/lang/Object;
.source "ParsePinningEventuallyQueue.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParsePinningEventuallyQueue$9;->then(Lbolts/Task;)Lbolts/Task;
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
.field final synthetic this$1:Lcom/parse/ParsePinningEventuallyQueue$9;


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue$9;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$9$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$9;

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
    .line 321
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$9$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$9;

    iget-object v0, v0, Lcom/parse/ParsePinningEventuallyQueue$9;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    # getter for: Lcom/parse/ParsePinningEventuallyQueue;->eventuallyPinUUIDQueue:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/parse/ParsePinningEventuallyQueue;->access$600(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$9$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$9;

    iget-object v1, v1, Lcom/parse/ParsePinningEventuallyQueue$9;->val$uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 322
    return-object p1
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
    .line 318
    invoke-virtual {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$9$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
