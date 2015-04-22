.class Lcom/parse/ParseFile$1;
.super Ljava/lang/Object;
.source "ParseFile.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFile;->setPinnedInBackground(Z)Lbolts/Task;
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

.field final synthetic val$pinned:Z


# direct methods
.method constructor <init>(Lcom/parse/ParseFile;Z)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/parse/ParseFile$1;->this$0:Lcom/parse/ParseFile;

    iput-boolean p2, p0, Lcom/parse/ParseFile$1;->val$pinned:Z

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
    .line 257
    invoke-virtual {p0, p1}, Lcom/parse/ParseFile$1;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 4
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
    const/4 v3, 0x0

    .line 260
    iget-boolean v2, p0, Lcom/parse/ParseFile$1;->val$pinned:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parse/ParseFile$1;->this$0:Lcom/parse/ParseFile;

    invoke-virtual {v2}, Lcom/parse/ParseFile;->isPinned()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/parse/ParseFile$1;->val$pinned:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/parse/ParseFile$1;->this$0:Lcom/parse/ParseFile;

    invoke-virtual {v2}, Lcom/parse/ParseFile;->isPinned()Z

    move-result v2

    if-nez v2, :cond_2

    .line 295
    :cond_1
    :goto_0
    return-object v3

    .line 266
    :cond_2
    iget-boolean v2, p0, Lcom/parse/ParseFile$1;->val$pinned:Z

    if-eqz v2, :cond_3

    .line 267
    iget-object v2, p0, Lcom/parse/ParseFile$1;->this$0:Lcom/parse/ParseFile;

    invoke-virtual {v2}, Lcom/parse/ParseFile;->getCacheFile()Ljava/io/File;

    move-result-object v1

    .line 268
    .local v1, "src":Ljava/io/File;
    iget-object v2, p0, Lcom/parse/ParseFile$1;->this$0:Lcom/parse/ParseFile;

    invoke-virtual {v2}, Lcom/parse/ParseFile;->getFilesFile()Ljava/io/File;

    move-result-object v0

    .line 274
    .local v0, "dest":Ljava/io/File;
    :goto_1
    if-nez v0, :cond_4

    .line 275
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to pin file before saving"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 270
    .end local v0    # "dest":Ljava/io/File;
    .end local v1    # "src":Ljava/io/File;
    :cond_3
    iget-object v2, p0, Lcom/parse/ParseFile$1;->this$0:Lcom/parse/ParseFile;

    invoke-virtual {v2}, Lcom/parse/ParseFile;->getFilesFile()Ljava/io/File;

    move-result-object v1

    .line 271
    .restart local v1    # "src":Ljava/io/File;
    iget-object v2, p0, Lcom/parse/ParseFile$1;->this$0:Lcom/parse/ParseFile;

    invoke-virtual {v2}, Lcom/parse/ParseFile;->getCacheFile()Ljava/io/File;

    move-result-object v0

    .restart local v0    # "dest":Ljava/io/File;
    goto :goto_1

    .line 278
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 279
    invoke-static {v0}, Lcom/parse/ParseFileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 282
    :cond_5
    iget-boolean v2, p0, Lcom/parse/ParseFile$1;->val$pinned:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/parse/ParseFile$1;->this$0:Lcom/parse/ParseFile;

    iget-object v2, v2, Lcom/parse/ParseFile;->data:[B

    if-eqz v2, :cond_6

    .line 283
    iget-object v2, p0, Lcom/parse/ParseFile$1;->this$0:Lcom/parse/ParseFile;

    iget-object v2, v2, Lcom/parse/ParseFile;->data:[B

    invoke-static {v0, v2}, Lcom/parse/ParseFileUtils;->writeByteArrayToFile(Ljava/io/File;[B)V

    .line 284
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 285
    invoke-static {v1}, Lcom/parse/ParseFileUtils;->deleteQuietly(Ljava/io/File;)Z

    goto :goto_0

    .line 290
    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_8

    .line 291
    :cond_7
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to pin file before retrieving"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 294
    :cond_8
    invoke-static {v1, v0}, Lcom/parse/ParseFileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0
.end method
