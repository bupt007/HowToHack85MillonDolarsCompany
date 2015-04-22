.class Lcom/parse/ParseUser$5$1;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser$5;->then(Lbolts/Task;)Lbolts/Task;
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
.field final synthetic this$1:Lcom/parse/ParseUser$5;

.field final synthetic val$operations:Lcom/parse/ParseOperationSet;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$5;Lcom/parse/ParseOperationSet;)V
    .locals 0

    .prologue
    .line 797
    iput-object p1, p0, Lcom/parse/ParseUser$5$1;->this$1:Lcom/parse/ParseUser$5;

    iput-object p2, p0, Lcom/parse/ParseUser$5$1;->val$operations:Lcom/parse/ParseOperationSet;

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
    .line 800
    .local p1, "signUpTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/parse/ParseUser$5$1;->this$1:Lcom/parse/ParseUser$5;

    iget-object v1, v0, Lcom/parse/ParseUser$5;->this$0:Lcom/parse/ParseUser;

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/parse/ParseUser$5$1;->val$operations:Lcom/parse/ParseOperationSet;

    invoke-virtual {v1, v0, v2}, Lcom/parse/ParseUser;->handleSaveResultAsync(Lorg/json/JSONObject;Lcom/parse/ParseOperationSet;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseUser$5$1$1;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseUser$5$1$1;-><init>(Lcom/parse/ParseUser$5$1;Lbolts/Task;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

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
    .line 797
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$5$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
