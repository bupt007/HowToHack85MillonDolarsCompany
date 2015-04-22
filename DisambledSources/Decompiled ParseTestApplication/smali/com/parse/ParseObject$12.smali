.class Lcom/parse/ParseObject$12;
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
        "Ljava/lang/Void;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject;

.field final synthetic val$operations:Lbolts/Capture;

.field final synthetic val$sessionToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Lbolts/Capture;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1408
    iput-object p1, p0, Lcom/parse/ParseObject$12;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$12;->val$operations:Lbolts/Capture;

    iput-object p3, p0, Lcom/parse/ParseObject$12;->val$sessionToken:Ljava/lang/String;

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
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1411
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/parse/ParseObject$12;->this$0:Lcom/parse/ParseObject;

    iget-object v0, p0, Lcom/parse/ParseObject$12;->val$operations:Lbolts/Capture;

    invoke-virtual {v0}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseOperationSet;

    iget-object v2, p0, Lcom/parse/ParseObject$12;->val$sessionToken:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/parse/ParseObject;->saveAsync(Lcom/parse/ParseOperationSet;Ljava/lang/String;)Lbolts/Task;

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
    .line 1408
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$12;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
