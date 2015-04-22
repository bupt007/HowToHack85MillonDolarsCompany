.class Lcom/parse/ParseRequest$3;
.super Ljava/lang/Object;
.source "ParseRequest.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseRequest;->sendOneRequestAsync(Lcom/parse/ProgressCallback;)Lbolts/Task;
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


# direct methods
.method constructor <init>(Lcom/parse/ParseRequest;Lcom/parse/ProgressCallback;)V
    .locals 0

    .prologue
    .line 254
    .local p0, "this":Lcom/parse/ParseRequest$3;, "Lcom/parse/ParseRequest.3;"
    iput-object p1, p0, Lcom/parse/ParseRequest$3;->this$0:Lcom/parse/ParseRequest;

    iput-object p2, p0, Lcom/parse/ParseRequest$3;->val$downloadProgressCallback:Lcom/parse/ProgressCallback;

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
    .line 257
    .local p0, "this":Lcom/parse/ParseRequest$3;, "Lcom/parse/ParseRequest.3;"
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/parse/ParseRequest$3;->this$0:Lcom/parse/ParseRequest;

    # getter for: Lcom/parse/ParseRequest;->client:Lcom/parse/ParseHttpClient;
    invoke-static {v1}, Lcom/parse/ParseRequest;->access$100(Lcom/parse/ParseRequest;)Lcom/parse/ParseHttpClient;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseRequest$3;->this$0:Lcom/parse/ParseRequest;

    # getter for: Lcom/parse/ParseRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-static {v2}, Lcom/parse/ParseRequest;->access$000(Lcom/parse/ParseRequest;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parse/ParseHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/parse/ParseHttpResponse;

    move-result-object v0

    .line 258
    .local v0, "response":Lcom/parse/ParseHttpResponse;
    iget-object v1, p0, Lcom/parse/ParseRequest$3;->this$0:Lcom/parse/ParseRequest;

    iget-object v2, p0, Lcom/parse/ParseRequest$3;->val$downloadProgressCallback:Lcom/parse/ProgressCallback;

    invoke-virtual {v1, v0, v2}, Lcom/parse/ParseRequest;->onResponse(Lcom/parse/ParseHttpResponse;Lcom/parse/ProgressCallback;)Lbolts/Task;

    move-result-object v1

    return-object v1
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
    .line 254
    .local p0, "this":Lcom/parse/ParseRequest$3;, "Lcom/parse/ParseRequest.3;"
    invoke-virtual {p0, p1}, Lcom/parse/ParseRequest$3;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
