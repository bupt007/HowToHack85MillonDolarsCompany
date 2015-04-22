.class final Lcom/parse/ParseUser$9;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->getCurrentUserAsync(Z)Lbolts/Task;
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
        "Ljava/lang/Void;",
        "Lbolts/Task",
        "<",
        "Lcom/parse/ParseUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$shouldAutoCreateUser:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 1038
    iput-boolean p1, p0, Lcom/parse/ParseUser$9;->val$shouldAutoCreateUser:Z

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
    .line 1041
    .local p1, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-boolean v0, p0, Lcom/parse/ParseUser$9;->val$shouldAutoCreateUser:Z

    # invokes: Lcom/parse/ParseUser;->getCurrentUserAsync(ZLbolts/Task;)Lbolts/Task;
    invoke-static {v0, p1}, Lcom/parse/ParseUser;->access$900(ZLbolts/Task;)Lbolts/Task;

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
    .line 1038
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$9;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
