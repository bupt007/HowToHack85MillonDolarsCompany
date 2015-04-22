.class Lcom/parse/ParseQuery$1;
.super Ljava/lang/Object;
.source "ParseQuery.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery;->runCommandWithPolicyAsync(Lcom/parse/ParseQuery$CommandDelegate;Lcom/parse/ParseQuery$CachePolicy;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<TTResult;",
        "Lbolts/Task",
        "<TTResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseQuery;

.field final synthetic val$c:Lcom/parse/ParseQuery$CommandDelegate;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery$CommandDelegate;)V
    .locals 0

    .prologue
    .line 457
    .local p0, "this":Lcom/parse/ParseQuery$1;, "Lcom/parse/ParseQuery.1;"
    iput-object p1, p0, Lcom/parse/ParseQuery$1;->this$0:Lcom/parse/ParseQuery;

    iput-object p2, p0, Lcom/parse/ParseQuery$1;->val$c:Lcom/parse/ParseQuery$CommandDelegate;

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
            "<TTResult;>;)",
            "Lbolts/Task",
            "<TTResult;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 460
    .local p0, "this":Lcom/parse/ParseQuery$1;, "Lcom/parse/ParseQuery.1;"
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lcom/parse/ParseException;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/parse/ParseQuery$1;->val$c:Lcom/parse/ParseQuery$CommandDelegate;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/parse/ParseQuery$CommandDelegate;->runOnNetworkAsync(Z)Lbolts/Task;

    move-result-object p1

    .line 463
    .end local p1    # "task":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    :cond_0
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
    .line 457
    .local p0, "this":Lcom/parse/ParseQuery$1;, "Lcom/parse/ParseQuery.1;"
    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
