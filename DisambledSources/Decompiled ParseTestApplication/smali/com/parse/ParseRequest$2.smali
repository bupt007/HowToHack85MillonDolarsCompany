.class Lcom/parse/ParseRequest$2;
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
        "<TResponse;",
        "Lbolts/Task",
        "<TResponse;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseRequest;


# direct methods
.method constructor <init>(Lcom/parse/ParseRequest;)V
    .locals 0

    .prologue
    .line 260
    .local p0, "this":Lcom/parse/ParseRequest$2;, "Lcom/parse/ParseRequest.2;"
    iput-object p1, p0, Lcom/parse/ParseRequest$2;->this$0:Lcom/parse/ParseRequest;

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
            "<TResponse;>;)",
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
    .line 263
    .local p0, "this":Lcom/parse/ParseRequest$2;, "Lcom/parse/ParseRequest.2;"
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<TResponse;>;"
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    .line 265
    .local v0, "error":Ljava/lang/Exception;
    instance-of v1, v0, Lorg/apache/http/client/ClientProtocolException;

    if-eqz v1, :cond_1

    .line 266
    iget-object v1, p0, Lcom/parse/ParseRequest$2;->this$0:Lcom/parse/ParseRequest;

    const-string v2, "bad protocol"

    invoke-virtual {v1, v2, v0}, Lcom/parse/ParseRequest;->newTemporaryException(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/parse/ParseException;

    move-result-object v1

    invoke-static {v1}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object p1

    .line 271
    .end local v0    # "error":Ljava/lang/Exception;
    .end local p1    # "task":Lbolts/Task;, "Lbolts/Task<TResponse;>;"
    :cond_0
    :goto_0
    return-object p1

    .line 267
    .restart local v0    # "error":Ljava/lang/Exception;
    .restart local p1    # "task":Lbolts/Task;, "Lbolts/Task<TResponse;>;"
    :cond_1
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/parse/ParseRequest$2;->this$0:Lcom/parse/ParseRequest;

    const-string v2, "i/o failure"

    invoke-virtual {v1, v2, v0}, Lcom/parse/ParseRequest;->newTemporaryException(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/parse/ParseException;

    move-result-object v1

    invoke-static {v1}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object p1

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
    .line 260
    .local p0, "this":Lcom/parse/ParseRequest$2;, "Lcom/parse/ParseRequest.2;"
    invoke-virtual {p0, p1}, Lcom/parse/ParseRequest$2;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
