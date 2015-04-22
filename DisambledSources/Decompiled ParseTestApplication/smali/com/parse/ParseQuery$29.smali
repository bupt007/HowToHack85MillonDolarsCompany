.class Lcom/parse/ParseQuery$29;
.super Ljava/lang/Object;
.source "ParseQuery.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery;->getInBackground(Ljava/lang/String;Lcom/parse/GetCallback;)V
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
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseQuery;

.field final synthetic val$objectId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1393
    .local p0, "this":Lcom/parse/ParseQuery$29;, "Lcom/parse/ParseQuery.29;"
    iput-object p1, p0, Lcom/parse/ParseQuery$29;->this$0:Lcom/parse/ParseQuery;

    iput-object p2, p0, Lcom/parse/ParseQuery$29;->val$objectId:Ljava/lang/String;

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
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1396
    .local p0, "this":Lcom/parse/ParseQuery$29;, "Lcom/parse/ParseQuery.29;"
    iget-object v0, p0, Lcom/parse/ParseQuery$29;->this$0:Lcom/parse/ParseQuery;

    # invokes: Lcom/parse/ParseQuery;->getUserAsync()Lbolts/Task;
    invoke-static {v0}, Lcom/parse/ParseQuery;->access$1600(Lcom/parse/ParseQuery;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseQuery$29$1;

    invoke-direct {v1, p0}, Lcom/parse/ParseQuery$29$1;-><init>(Lcom/parse/ParseQuery$29;)V

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
    .line 1393
    .local p0, "this":Lcom/parse/ParseQuery$29;, "Lcom/parse/ParseQuery.29;"
    invoke-virtual {p0}, Lcom/parse/ParseQuery$29;->call()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
