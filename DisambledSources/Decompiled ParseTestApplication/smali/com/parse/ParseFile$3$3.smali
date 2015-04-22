.class Lcom/parse/ParseFile$3$3;
.super Ljava/lang/Object;
.source "ParseFile.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFile$3;->then(Lbolts/Task;)Ljava/lang/Void;
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
        "Lorg/json/JSONObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseFile$3;


# direct methods
.method constructor <init>(Lcom/parse/ParseFile$3;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/parse/ParseFile$3$3;->this$1:Lcom/parse/ParseFile$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 327
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v4, p0, Lcom/parse/ParseFile$3$3;->this$1:Lcom/parse/ParseFile$3;

    iget-object v4, v4, Lcom/parse/ParseFile$3;->this$0:Lcom/parse/ParseFile;

    # getter for: Lcom/parse/ParseFile;->name:Ljava/lang/String;
    invoke-static {v4}, Lcom/parse/ParseFile;->access$100(Lcom/parse/ParseFile;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/parse/ParseFile$3$3;->this$1:Lcom/parse/ParseFile$3;

    iget-object v4, v4, Lcom/parse/ParseFile$3;->this$0:Lcom/parse/ParseFile;

    # getter for: Lcom/parse/ParseFile;->name:Ljava/lang/String;
    invoke-static {v4}, Lcom/parse/ParseFile;->access$100(Lcom/parse/ParseFile;)Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, "fileName":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    .line 329
    .local v3, "mimeType":Ljava/lang/String;
    iget-object v4, p0, Lcom/parse/ParseFile$3$3;->this$1:Lcom/parse/ParseFile$3;

    iget-object v4, v4, Lcom/parse/ParseFile$3;->this$0:Lcom/parse/ParseFile;

    # getter for: Lcom/parse/ParseFile;->contentType:Ljava/lang/String;
    invoke-static {v4}, Lcom/parse/ParseFile;->access$400(Lcom/parse/ParseFile;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 330
    iget-object v4, p0, Lcom/parse/ParseFile$3$3;->this$1:Lcom/parse/ParseFile$3;

    iget-object v4, v4, Lcom/parse/ParseFile$3;->this$0:Lcom/parse/ParseFile;

    # getter for: Lcom/parse/ParseFile;->contentType:Ljava/lang/String;
    invoke-static {v4}, Lcom/parse/ParseFile;->access$400(Lcom/parse/ParseFile;)Ljava/lang/String;

    move-result-object v3

    .line 335
    :cond_0
    :goto_1
    if-nez v3, :cond_1

    .line 336
    const-string v3, "application/octet-stream"

    .line 339
    :cond_1
    iget-object v4, p0, Lcom/parse/ParseFile$3$3;->this$1:Lcom/parse/ParseFile$3;

    iget-object v4, v4, Lcom/parse/ParseFile$3;->this$0:Lcom/parse/ParseFile;

    iget-object v4, v4, Lcom/parse/ParseFile;->data:[B

    iget-object v5, p0, Lcom/parse/ParseFile$3$3;->this$1:Lcom/parse/ParseFile$3;

    iget-object v5, v5, Lcom/parse/ParseFile$3;->val$sessionToken:Ljava/lang/String;

    invoke-static {v2, v4, v3, v5}, Lcom/parse/ParseRESTFileCommand;->uploadFileCommand(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Lcom/parse/ParseRESTFileCommand;

    move-result-object v0

    .line 341
    .local v0, "command":Lcom/parse/ParseRESTCommand;
    invoke-virtual {v0}, Lcom/parse/ParseRESTCommand;->enableRetrying()V

    .line 344
    iget-object v4, p0, Lcom/parse/ParseFile$3$3;->this$1:Lcom/parse/ParseFile$3;

    iget-object v4, v4, Lcom/parse/ParseFile$3;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v4}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v4

    new-instance v5, Lcom/parse/ParseFile$3$3$1;

    invoke-direct {v5, p0, v0}, Lcom/parse/ParseFile$3$3$1;-><init>(Lcom/parse/ParseFile$3$3;Lcom/parse/ParseRESTCommand;)V

    invoke-virtual {v4, v5}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    .line 353
    iget-object v4, p0, Lcom/parse/ParseFile$3$3;->this$1:Lcom/parse/ParseFile$3;

    iget-object v4, v4, Lcom/parse/ParseFile$3;->val$uploadProgressCallback:Lcom/parse/ProgressCallback;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/parse/ParseRESTCommand;->executeAsync(Lcom/parse/ProgressCallback;Lcom/parse/ProgressCallback;)Lbolts/Task;

    move-result-object v4

    invoke-virtual {v4}, Lbolts/Task;->cast()Lbolts/Task;

    move-result-object v4

    return-object v4

    .line 327
    .end local v0    # "command":Lcom/parse/ParseRESTCommand;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_2
    const-string v2, "file"

    goto :goto_0

    .line 331
    .restart local v2    # "fileName":Ljava/lang/String;
    .restart local v3    # "mimeType":Ljava/lang/String;
    :cond_3
    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 332
    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, "extension":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
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
    .line 324
    invoke-virtual {p0, p1}, Lcom/parse/ParseFile$3$3;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
