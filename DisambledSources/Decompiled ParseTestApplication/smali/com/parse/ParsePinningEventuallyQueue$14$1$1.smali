.class Lcom/parse/ParsePinningEventuallyQueue$14$1$1;
.super Ljava/lang/Object;
.source "ParsePinningEventuallyQueue.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParsePinningEventuallyQueue$14$1;->then(Lbolts/Task;)Lbolts/Task;
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
.field final synthetic this$2:Lcom/parse/ParsePinningEventuallyQueue$14$1;


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue$14$1;)V
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$14$1$1;->this$2:Lcom/parse/ParsePinningEventuallyQueue$14$1;

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
    .line 570
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/util/List<Lcom/parse/EventuallyPin;>;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 572
    .local v2, "pins":Ljava/util/List;, "Ljava/util/List<Lcom/parse/EventuallyPin;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 573
    .local v3, "tasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/EventuallyPin;

    .line 574
    .local v1, "pin":Lcom/parse/EventuallyPin;
    const-string v4, "_eventuallyPin"

    invoke-virtual {v1, v4}, Lcom/parse/EventuallyPin;->unpinInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 576
    .end local v1    # "pin":Lcom/parse/EventuallyPin;
    :cond_0
    invoke-static {v3}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v4

    return-object v4
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
    .line 567
    invoke-virtual {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$14$1$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
