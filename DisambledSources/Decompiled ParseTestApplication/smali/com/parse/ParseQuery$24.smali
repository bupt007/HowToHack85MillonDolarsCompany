.class Lcom/parse/ParseQuery$24;
.super Ljava/lang/Object;
.source "ParseQuery.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery;->countInBackground()Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseQuery;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery;)V
    .locals 0

    .prologue
    .line 1202
    .local p0, "this":Lcom/parse/ParseQuery$24;, "Lcom/parse/ParseQuery.24;"
    iput-object p1, p0, Lcom/parse/ParseQuery$24;->this$0:Lcom/parse/ParseQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1205
    .local p0, "this":Lcom/parse/ParseQuery$24;, "Lcom/parse/ParseQuery.24;"
    iget-object v0, p0, Lcom/parse/ParseQuery$24;->this$0:Lcom/parse/ParseQuery;

    # invokes: Lcom/parse/ParseQuery;->getUserAsync()Lbolts/Task;
    invoke-static {v0}, Lcom/parse/ParseQuery;->access$1600(Lcom/parse/ParseQuery;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseQuery$24$1;

    invoke-direct {v1, p0}, Lcom/parse/ParseQuery$24$1;-><init>(Lcom/parse/ParseQuery$24;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1202
    .local p0, "this":Lcom/parse/ParseQuery$24;, "Lcom/parse/ParseQuery.24;"
    invoke-virtual {p0}, Lcom/parse/ParseQuery$24;->call()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
