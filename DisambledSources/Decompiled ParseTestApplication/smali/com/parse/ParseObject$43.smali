.class final Lcom/parse/ParseObject$43;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->fetchAllIfNeededInBackground(Ljava/util/List;)Lbolts/Task;
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
        "Ljava/util/List",
        "<TT;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$objects:Ljava/util/List;

.field final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/parse/ParseUser;)V
    .locals 0

    .prologue
    .line 2522
    iput-object p1, p0, Lcom/parse/ParseObject$43;->val$objects:Ljava/util/List;

    iput-object p2, p0, Lcom/parse/ParseObject$43;->val$user:Lcom/parse/ParseUser;

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
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2525
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseObject$43;->val$objects:Ljava/util/List;

    iget-object v1, p0, Lcom/parse/ParseObject$43;->val$user:Lcom/parse/ParseUser;

    # invokes: Lcom/parse/ParseObject;->fetchAllIfNeededAsync(Ljava/util/List;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;
    invoke-static {v0, v1, p1}, Lcom/parse/ParseObject;->access$1500(Ljava/util/List;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;

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
    .line 2522
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$43;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
