.class Lcom/parse/ParseObject$11;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->saveAsync(Lbolts/Task;)Lbolts/Task;
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

.field final synthetic val$operations:Lbolts/Capture;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Lbolts/Capture;)V
    .locals 0

    .prologue
    .line 1413
    iput-object p1, p0, Lcom/parse/ParseObject$11;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$11;->val$operations:Lbolts/Capture;

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
    .line 1416
    .local p1, "saveTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1417
    .local v0, "json":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/parse/ParseObject$11;->this$0:Lcom/parse/ParseObject;

    iget-object v1, p0, Lcom/parse/ParseObject$11;->val$operations:Lbolts/Capture;

    invoke-virtual {v1}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseOperationSet;

    invoke-virtual {v2, v0, v1}, Lcom/parse/ParseObject;->handleSaveResultAsync(Lorg/json/JSONObject;Lcom/parse/ParseOperationSet;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseObject$11$1;

    invoke-direct {v2, p0, p1}, Lcom/parse/ParseObject$11$1;-><init>(Lcom/parse/ParseObject$11;Lbolts/Task;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

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
    .line 1413
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$11;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
