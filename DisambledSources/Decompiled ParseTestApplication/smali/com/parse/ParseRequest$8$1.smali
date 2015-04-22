.class Lcom/parse/ParseRequest$8$1;
.super Ljava/lang/Object;
.source "ParseRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseRequest$8;->then(Lbolts/Task;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseRequest$8;

.field final synthetic val$retryTask:Lbolts/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/parse/ParseRequest$8;Lbolts/Task$TaskCompletionSource;)V
    .locals 0

    .prologue
    .line 348
    .local p0, "this":Lcom/parse/ParseRequest$8$1;, "Lcom/parse/ParseRequest$8.1;"
    iput-object p1, p0, Lcom/parse/ParseRequest$8$1;->this$1:Lcom/parse/ParseRequest$8;

    iput-object p2, p0, Lcom/parse/ParseRequest$8$1;->val$retryTask:Lbolts/Task$TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 351
    .local p0, "this":Lcom/parse/ParseRequest$8$1;, "Lcom/parse/ParseRequest$8.1;"
    iget-object v0, p0, Lcom/parse/ParseRequest$8$1;->this$1:Lcom/parse/ParseRequest$8;

    iget-object v0, v0, Lcom/parse/ParseRequest$8;->this$0:Lcom/parse/ParseRequest;

    iget-object v1, p0, Lcom/parse/ParseRequest$8$1;->this$1:Lcom/parse/ParseRequest$8;

    iget v1, v1, Lcom/parse/ParseRequest$8;->val$attemptsMade:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/parse/ParseRequest$8$1;->this$1:Lcom/parse/ParseRequest$8;

    iget-wide v2, v2, Lcom/parse/ParseRequest$8;->val$delay:J

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    iget-object v4, p0, Lcom/parse/ParseRequest$8$1;->this$1:Lcom/parse/ParseRequest$8;

    iget-object v4, v4, Lcom/parse/ParseRequest$8;->val$downloadProgressCallback:Lcom/parse/ProgressCallback;

    # invokes: Lcom/parse/ParseRequest;->executeAsync(IJLcom/parse/ProgressCallback;)Lbolts/Task;
    invoke-static {v0, v1, v2, v3, v4}, Lcom/parse/ParseRequest;->access$300(Lcom/parse/ParseRequest;IJLcom/parse/ProgressCallback;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseRequest$8$1$1;

    invoke-direct {v1, p0}, Lcom/parse/ParseRequest$8$1$1;-><init>(Lcom/parse/ParseRequest$8$1;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    .line 365
    return-void
.end method
