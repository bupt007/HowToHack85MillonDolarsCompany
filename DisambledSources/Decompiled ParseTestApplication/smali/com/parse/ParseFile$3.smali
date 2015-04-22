.class Lcom/parse/ParseFile$3;
.super Ljava/lang/Object;
.source "ParseFile.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFile;->saveAsync(Ljava/lang/String;Lcom/parse/ProgressCallback;Lbolts/Task;Lbolts/Task$TaskCompletionSource;)Lbolts/Task;
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
.field final synthetic this$0:Lcom/parse/ParseFile;

.field final synthetic val$sessionToken:Ljava/lang/String;

.field final synthetic val$tcs:Lbolts/Task$TaskCompletionSource;

.field final synthetic val$uploadProgressCallback:Lcom/parse/ProgressCallback;


# direct methods
.method constructor <init>(Lcom/parse/ParseFile;Lbolts/Task$TaskCompletionSource;Ljava/lang/String;Lcom/parse/ProgressCallback;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/parse/ParseFile$3;->this$0:Lcom/parse/ParseFile;

    iput-object p2, p0, Lcom/parse/ParseFile$3;->val$tcs:Lbolts/Task$TaskCompletionSource;

    iput-object p3, p0, Lcom/parse/ParseFile$3;->val$sessionToken:Ljava/lang/String;

    iput-object p4, p0, Lcom/parse/ParseFile$3;->val$uploadProgressCallback:Lcom/parse/ProgressCallback;

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
    .line 316
    invoke-virtual {p0, p1}, Lcom/parse/ParseFile$3;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 3
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
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    const/4 v2, 0x0

    .line 319
    iget-object v0, p0, Lcom/parse/ParseFile$3;->this$0:Lcom/parse/ParseFile;

    invoke-virtual {v0}, Lcom/parse/ParseFile;->isDirty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/parse/ParseFile$3;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v0, v2}, Lbolts/Task$TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 387
    :goto_0
    return-object v2

    .line 324
    :cond_0
    invoke-static {v2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseFile$3$3;

    invoke-direct {v1, p0}, Lcom/parse/ParseFile$3$3;-><init>(Lcom/parse/ParseFile$3;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseFile$3$2;

    invoke-direct {v1, p0}, Lcom/parse/ParseFile$3$2;-><init>(Lcom/parse/ParseFile$3;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseFile$3$1;

    invoke-direct {v1, p0}, Lcom/parse/ParseFile$3$1;-><init>(Lcom/parse/ParseFile$3;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    goto :goto_0
.end method
