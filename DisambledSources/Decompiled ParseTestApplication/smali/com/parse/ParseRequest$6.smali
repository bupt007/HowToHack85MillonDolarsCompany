.class Lcom/parse/ParseRequest$6;
.super Ljava/lang/Object;
.source "ParseRequest.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseRequest;->executeAsync(Lcom/parse/ProgressCallback;Lcom/parse/ProgressCallback;)Lbolts/Task;
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
        "<TResponse;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseRequest;

.field final synthetic val$downloadProgressCallback:Lcom/parse/ProgressCallback;

.field final synthetic val$uploadProgressCallback:Lcom/parse/ProgressCallback;


# direct methods
.method constructor <init>(Lcom/parse/ParseRequest;Lcom/parse/ProgressCallback;Lcom/parse/ProgressCallback;)V
    .locals 0

    .prologue
    .line 296
    .local p0, "this":Lcom/parse/ParseRequest$6;, "Lcom/parse/ParseRequest.6;"
    iput-object p1, p0, Lcom/parse/ParseRequest$6;->this$0:Lcom/parse/ParseRequest;

    iput-object p2, p0, Lcom/parse/ParseRequest$6;->val$uploadProgressCallback:Lcom/parse/ProgressCallback;

    iput-object p3, p0, Lcom/parse/ParseRequest$6;->val$downloadProgressCallback:Lcom/parse/ProgressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<TResponse;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 299
    .local p0, "this":Lcom/parse/ParseRequest$6;, "Lcom/parse/ParseRequest.6;"
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    # getter for: Lcom/parse/ParseRequest;->defaultInitialRetryDelay:J
    invoke-static {}, Lcom/parse/ParseRequest;->access$200()J

    move-result-wide v2

    # getter for: Lcom/parse/ParseRequest;->defaultInitialRetryDelay:J
    invoke-static {}, Lcom/parse/ParseRequest;->access$200()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-long v4, v4

    add-long v0, v2, v4

    .line 301
    .local v0, "delay":J
    iget-object v2, p0, Lcom/parse/ParseRequest$6;->this$0:Lcom/parse/ParseRequest;

    # getter for: Lcom/parse/ParseRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-static {v2}, Lcom/parse/ParseRequest;->access$000(Lcom/parse/ParseRequest;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    if-nez v2, :cond_0

    .line 302
    iget-object v2, p0, Lcom/parse/ParseRequest$6;->this$0:Lcom/parse/ParseRequest;

    iget-object v3, p0, Lcom/parse/ParseRequest$6;->this$0:Lcom/parse/ParseRequest;

    iget-object v4, p0, Lcom/parse/ParseRequest$6;->this$0:Lcom/parse/ParseRequest;

    iget-object v4, v4, Lcom/parse/ParseRequest;->method:Lcom/parse/ParseRequest$Method;

    iget-object v5, p0, Lcom/parse/ParseRequest$6;->val$uploadProgressCallback:Lcom/parse/ProgressCallback;

    invoke-virtual {v3, v4, v5}, Lcom/parse/ParseRequest;->newRequest(Lcom/parse/ParseRequest$Method;Lcom/parse/ProgressCallback;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v3

    # setter for: Lcom/parse/ParseRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-static {v2, v3}, Lcom/parse/ParseRequest;->access$002(Lcom/parse/ParseRequest;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/client/methods/HttpUriRequest;

    .line 304
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseRequest$6;->this$0:Lcom/parse/ParseRequest;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/parse/ParseRequest$6;->val$downloadProgressCallback:Lcom/parse/ProgressCallback;

    # invokes: Lcom/parse/ParseRequest;->executeAsync(IJLcom/parse/ProgressCallback;)Lbolts/Task;
    invoke-static {v2, v3, v0, v1, v4}, Lcom/parse/ParseRequest;->access$300(Lcom/parse/ParseRequest;IJLcom/parse/ProgressCallback;)Lbolts/Task;

    move-result-object v2

    return-object v2
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
    .line 296
    .local p0, "this":Lcom/parse/ParseRequest$6;, "Lcom/parse/ParseRequest.6;"
    invoke-virtual {p0, p1}, Lcom/parse/ParseRequest$6;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
