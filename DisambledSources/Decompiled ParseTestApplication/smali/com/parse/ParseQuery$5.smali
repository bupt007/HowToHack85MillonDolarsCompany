.class Lcom/parse/ParseQuery$5;
.super Ljava/lang/Object;
.source "ParseQuery.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery;->getFirstWithCachePolicyAsync(Lcom/parse/ParseQuery$CachePolicy;Lcom/parse/ParseUser;)Lbolts/Task;
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
        "<TT;>;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseQuery;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery;)V
    .locals 0

    .prologue
    .line 520
    .local p0, "this":Lcom/parse/ParseQuery$5;, "Lcom/parse/ParseQuery.5;"
    iput-object p1, p0, Lcom/parse/ParseQuery$5;->this$0:Lcom/parse/ParseQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lcom/parse/ParseObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 523
    .local p0, "this":Lcom/parse/ParseQuery$5;, "Lcom/parse/ParseQuery.5;"
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/util/List<TT;>;>;"
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 526
    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 527
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    return-object v0

    .line 529
    :cond_1
    new-instance v0, Lcom/parse/ParseException;

    const/16 v1, 0x65

    const-string v2, "no results found for query"

    invoke-direct {v0, v1, v2}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v0
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
    .line 520
    .local p0, "this":Lcom/parse/ParseQuery$5;, "Lcom/parse/ParseQuery.5;"
    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery$5;->then(Lbolts/Task;)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method
