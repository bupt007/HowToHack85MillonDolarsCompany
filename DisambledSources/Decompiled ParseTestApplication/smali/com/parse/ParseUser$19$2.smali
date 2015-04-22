.class Lcom/parse/ParseUser$19$2;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser$19;->then(Lbolts/Task;)Lbolts/Task;
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
        "Lcom/parse/ParseUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser$19;

.field final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$19;Lcom/parse/ParseUser;)V
    .locals 0

    .prologue
    .line 1596
    iput-object p1, p0, Lcom/parse/ParseUser$19$2;->this$0:Lcom/parse/ParseUser$19;

    iput-object p2, p0, Lcom/parse/ParseUser$19$2;->val$user:Lcom/parse/ParseUser;

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
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1599
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1600
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    .line 1601
    .local v0, "error":Ljava/lang/Exception;
    instance-of v1, v0, Lcom/parse/ParseException;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/parse/ParseException;

    .end local v0    # "error":Ljava/lang/Exception;
    invoke-virtual {v0}, Lcom/parse/ParseException;->getCode()I

    move-result v1

    const/16 v2, 0xd0

    if-ne v1, v2, :cond_0

    .line 1605
    const/4 v1, 0x0

    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseUser$19$2;->this$0:Lcom/parse/ParseUser$19;

    iget-object v2, v2, Lcom/parse/ParseUser$19;->val$logInWithTask:Lbolts/Continuation;

    invoke-virtual {v1, v2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    .line 1611
    :goto_0
    return-object v1

    .line 1608
    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1609
    invoke-static {}, Lbolts/Task;->cancelled()Lbolts/Task;

    move-result-object v1

    goto :goto_0

    .line 1611
    :cond_1
    iget-object v1, p0, Lcom/parse/ParseUser$19$2;->val$user:Lcom/parse/ParseUser;

    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    goto :goto_0
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
    .line 1596
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$19$2;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
