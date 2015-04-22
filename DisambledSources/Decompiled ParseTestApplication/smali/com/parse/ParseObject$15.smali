.class Lcom/parse/ParseObject$15;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->saveEventually()Lbolts/Task;
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
        "Ljava/lang/Object;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject;

.field final synthetic val$operationSet:Lcom/parse/ParseOperationSet;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Lcom/parse/ParseOperationSet;)V
    .locals 0

    .prologue
    .line 1544
    iput-object p1, p0, Lcom/parse/ParseObject$15;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$15;->val$operationSet:Lcom/parse/ParseOperationSet;

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
            "Ljava/lang/Object;",
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
    .line 1547
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1548
    .local v0, "json":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/parse/ParseObject$15;->this$0:Lcom/parse/ParseObject;

    iget-object v2, p0, Lcom/parse/ParseObject$15;->val$operationSet:Lcom/parse/ParseOperationSet;

    invoke-virtual {v1, v0, v2}, Lcom/parse/ParseObject;->handleSaveEventuallyResultAsync(Lorg/json/JSONObject;Lcom/parse/ParseOperationSet;)Lbolts/Task;

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
    .line 1544
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$15;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
