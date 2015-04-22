.class final Lcom/parse/ParseObject$36;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->deleteAllAsync(Ljava/util/List;Ljava/lang/String;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/parse/ParseObject;",
        ">;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$sessionToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2048
    iput-object p1, p0, Lcom/parse/ParseObject$36;->val$sessionToken:Ljava/lang/String;

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
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
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
    .line 2051
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/util/List<Lcom/parse/ParseObject;>;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2052
    .local v0, "uniqueObjects":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    new-instance v1, Lcom/parse/ParseObject$36$1;

    invoke-direct {v1, p0, v0}, Lcom/parse/ParseObject$36$1;-><init>(Lcom/parse/ParseObject$36;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/parse/ParseObject;->enqueueForAll(Ljava/util/List;Lbolts/Continuation;)Lbolts/Task;

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
    .line 2048
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$36;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
