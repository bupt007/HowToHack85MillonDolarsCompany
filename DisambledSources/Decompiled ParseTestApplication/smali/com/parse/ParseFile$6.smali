.class Lcom/parse/ParseFile$6;
.super Ljava/lang/Object;
.source "ParseFile.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFile;->getDataAsync(Lcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseFile;

.field final synthetic val$progressCallback:Lcom/parse/ProgressCallback;

.field final synthetic val$tcs:Lbolts/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/parse/ParseFile;Lbolts/Task$TaskCompletionSource;Lcom/parse/ProgressCallback;)V
    .locals 0

    .prologue
    .line 491
    iput-object p1, p0, Lcom/parse/ParseFile$6;->this$0:Lcom/parse/ParseFile;

    iput-object p2, p0, Lcom/parse/ParseFile$6;->val$tcs:Lbolts/Task$TaskCompletionSource;

    iput-object p3, p0, Lcom/parse/ParseFile$6;->val$progressCallback:Lcom/parse/ProgressCallback;

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
    .line 491
    invoke-virtual {p0, p1}, Lcom/parse/ParseFile$6;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<[B>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<[B>;"
    const/4 v4, 0x0

    .line 494
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 495
    .local v1, "result":[B
    if-eqz v1, :cond_0

    .line 497
    iget-object v2, p0, Lcom/parse/ParseFile$6;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v2, v1}, Lbolts/Task$TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 541
    :goto_0
    return-object v4

    .line 502
    :cond_0
    new-instance v0, Lcom/parse/ParseAWSRequest;

    iget-object v2, p0, Lcom/parse/ParseFile$6;->this$0:Lcom/parse/ParseFile;

    # getter for: Lcom/parse/ParseFile;->url:Ljava/lang/String;
    invoke-static {v2}, Lcom/parse/ParseFile;->access$200(Lcom/parse/ParseFile;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/parse/ParseAWSRequest;-><init>(Ljava/lang/String;)V

    .line 503
    .local v0, "request":Lcom/parse/ParseAWSRequest;
    iget-object v2, p0, Lcom/parse/ParseFile$6;->val$progressCallback:Lcom/parse/ProgressCallback;

    invoke-virtual {v0, v4, v2}, Lcom/parse/ParseAWSRequest;->executeAsync(Lcom/parse/ProgressCallback;Lcom/parse/ProgressCallback;)Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseFile$6$2;

    invoke-direct {v3, p0}, Lcom/parse/ParseFile$6$2;-><init>(Lcom/parse/ParseFile$6;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseFile$6$1;

    invoke-direct {v3, p0}, Lcom/parse/ParseFile$6$1;-><init>(Lcom/parse/ParseFile$6;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    goto :goto_0
.end method
