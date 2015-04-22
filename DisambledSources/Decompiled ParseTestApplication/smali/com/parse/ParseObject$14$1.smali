.class Lcom/parse/ParseObject$14$1;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject$14;->then(Lbolts/Task;)Lbolts/Task;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseObject$14;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$14;)V
    .locals 0

    .prologue
    .line 1379
    iput-object p1, p0, Lcom/parse/ParseObject$14$1;->this$1:Lcom/parse/ParseObject$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lbolts/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1379
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$14$1;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1382
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseObject$14$1;->this$1:Lcom/parse/ParseObject$14;

    iget-object v0, v0, Lcom/parse/ParseObject$14;->this$0:Lcom/parse/ParseObject;

    const/4 v1, 0x0

    # invokes: Lcom/parse/ParseObject;->getACL(Z)Lcom/parse/ParseACL;
    invoke-static {v0, v1}, Lcom/parse/ParseObject;->access$600(Lcom/parse/ParseObject;Z)Lcom/parse/ParseACL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseACL;->hasUnresolvedUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1383
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ACL has an unresolved ParseUser. Save or sign up before attempting to serialize the ACL."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1386
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
