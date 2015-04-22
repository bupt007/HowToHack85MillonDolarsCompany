.class Lcom/parse/ParseFile$6$2;
.super Ljava/lang/Object;
.source "ParseFile.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFile$6;->then(Lbolts/Task;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<[B",
        "Lbolts/Task",
        "<[B>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseFile$6;


# direct methods
.method constructor <init>(Lcom/parse/ParseFile$6;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/parse/ParseFile$6$2;->this$1:Lcom/parse/ParseFile$6;

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
            "<[B>;)",
            "Lbolts/Task",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 507
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<[B>;"
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_1

    .line 509
    new-instance v0, Lcom/parse/ParseException;

    const/16 v1, 0x64

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object p1

    .line 523
    .end local p1    # "task":Lbolts/Task;, "Lbolts/Task<[B>;"
    :cond_0
    :goto_0
    return-object p1

    .line 514
    .restart local p1    # "task":Lbolts/Task;, "Lbolts/Task<[B>;"
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseFile$6$2;->this$1:Lcom/parse/ParseFile$6;

    iget-object v0, v0, Lcom/parse/ParseFile$6;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v0

    invoke-virtual {v0}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 515
    iget-object v0, p0, Lcom/parse/ParseFile$6$2;->this$1:Lcom/parse/ParseFile$6;

    iget-object v0, v0, Lcom/parse/ParseFile$6;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object p1

    goto :goto_0

    .line 518
    :cond_2
    iget-object v0, p0, Lcom/parse/ParseFile$6$2;->this$1:Lcom/parse/ParseFile$6;

    iget-object v1, v0, Lcom/parse/ParseFile$6;->this$0:Lcom/parse/ParseFile;

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, v1, Lcom/parse/ParseFile;->data:[B

    .line 519
    iget-object v0, p0, Lcom/parse/ParseFile$6$2;->this$1:Lcom/parse/ParseFile$6;

    iget-object v0, v0, Lcom/parse/ParseFile$6;->this$0:Lcom/parse/ParseFile;

    iget-object v0, v0, Lcom/parse/ParseFile;->data:[B

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/parse/ParseFile$6$2;->this$1:Lcom/parse/ParseFile$6;

    iget-object v0, v0, Lcom/parse/ParseFile$6;->this$0:Lcom/parse/ParseFile;

    invoke-virtual {v0}, Lcom/parse/ParseFile;->getCacheFile()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseFile$6$2;->this$1:Lcom/parse/ParseFile$6;

    iget-object v1, v1, Lcom/parse/ParseFile$6;->this$0:Lcom/parse/ParseFile;

    iget-object v1, v1, Lcom/parse/ParseFile;->data:[B

    invoke-static {v0, v1}, Lcom/parse/ParseFileUtils;->writeByteArrayToFile(Ljava/io/File;[B)V

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
    .line 504
    invoke-virtual {p0, p1}, Lcom/parse/ParseFile$6$2;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
