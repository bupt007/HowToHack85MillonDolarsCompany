.class Lcom/parse/ParseFile$5;
.super Ljava/lang/Object;
.source "ParseFile.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFile;->saveAsync(Ljava/lang/String;Lcom/parse/ProgressCallback;Lbolts/Task$TaskCompletionSource;)Lbolts/Task;
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
.field final synthetic this$0:Lcom/parse/ParseFile;

.field final synthetic val$sessionToken:Ljava/lang/String;

.field final synthetic val$tcs:Lbolts/Task$TaskCompletionSource;

.field final synthetic val$uploadProgressCallback:Lcom/parse/ProgressCallback;


# direct methods
.method constructor <init>(Lcom/parse/ParseFile;Ljava/lang/String;Lcom/parse/ProgressCallback;Lbolts/Task$TaskCompletionSource;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lcom/parse/ParseFile$5;->this$0:Lcom/parse/ParseFile;

    iput-object p2, p0, Lcom/parse/ParseFile$5;->val$sessionToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/parse/ParseFile$5;->val$uploadProgressCallback:Lcom/parse/ProgressCallback;

    iput-object p4, p0, Lcom/parse/ParseFile$5;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 4
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
    .line 427
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseFile$5;->this$0:Lcom/parse/ParseFile;

    iget-object v1, p0, Lcom/parse/ParseFile$5;->val$sessionToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/parse/ParseFile$5;->val$uploadProgressCallback:Lcom/parse/ProgressCallback;

    iget-object v3, p0, Lcom/parse/ParseFile$5;->val$tcs:Lbolts/Task$TaskCompletionSource;

    # invokes: Lcom/parse/ParseFile;->saveAsync(Ljava/lang/String;Lcom/parse/ProgressCallback;Lbolts/Task;Lbolts/Task$TaskCompletionSource;)Lbolts/Task;
    invoke-static {v0, v1, v2, p1, v3}, Lcom/parse/ParseFile;->access$600(Lcom/parse/ParseFile;Ljava/lang/String;Lcom/parse/ProgressCallback;Lbolts/Task;Lbolts/Task$TaskCompletionSource;)Lbolts/Task;

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
    .line 424
    invoke-virtual {p0, p1}, Lcom/parse/ParseFile$5;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
