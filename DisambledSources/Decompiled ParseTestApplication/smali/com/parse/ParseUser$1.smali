.class Lcom/parse/ParseUser$1;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->saveAsync(Lbolts/Task;)Lbolts/Task;
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
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;)V
    .locals 0

    .prologue
    .line 592
    iput-object p1, p0, Lcom/parse/ParseUser$1;->this$0:Lcom/parse/ParseUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
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
    .line 596
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseUser$1;->this$0:Lcom/parse/ParseUser;

    invoke-virtual {v0}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/parse/ParseUser$1;->this$0:Lcom/parse/ParseUser;

    # invokes: Lcom/parse/ParseUser;->cleanUpAuthData()V
    invoke-static {v0}, Lcom/parse/ParseUser;->access$000(Lcom/parse/ParseUser;)V

    .line 598
    iget-object v0, p0, Lcom/parse/ParseUser$1;->this$0:Lcom/parse/ParseUser;

    # invokes: Lcom/parse/ParseUser;->saveCurrentUserAsync(Lcom/parse/ParseUser;)Lbolts/Task;
    invoke-static {v0}, Lcom/parse/ParseUser;->access$100(Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    invoke-virtual {v0}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v0

    .line 600
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

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
    .line 592
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
