.class Lcom/parse/ParseRequest$5;
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
        "<TResponse;",
        "Lbolts/Task",
        "<TResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseRequest;


# direct methods
.method constructor <init>(Lcom/parse/ParseRequest;)V
    .locals 0

    .prologue
    .line 306
    .local p0, "this":Lcom/parse/ParseRequest$5;, "Lcom/parse/ParseRequest.5;"
    iput-object p1, p0, Lcom/parse/ParseRequest$5;->this$0:Lcom/parse/ParseRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<TResponse;>;)",
            "Lbolts/Task",
            "<TResult;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 309
    .local p0, "this":Lcom/parse/ParseRequest$5;, "Lcom/parse/ParseRequest.5;"
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<TResponse;>;"
    iget-object v0, p0, Lcom/parse/ParseRequest$5;->this$0:Lcom/parse/ParseRequest;

    invoke-virtual {v0, p1}, Lcom/parse/ParseRequest;->onPostExecute(Lbolts/Task;)Lbolts/Task;

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
    .line 306
    .local p0, "this":Lcom/parse/ParseRequest$5;, "Lcom/parse/ParseRequest.5;"
    invoke-virtual {p0, p1}, Lcom/parse/ParseRequest$5;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
