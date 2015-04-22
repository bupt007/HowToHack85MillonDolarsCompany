.class Lcom/parse/ParseFile$3$2;
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
        "Lorg/json/JSONObject;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseFile$3;


# direct methods
.method constructor <init>(Lcom/parse/ParseFile$3;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/parse/ParseFile$3$2;->this$1:Lcom/parse/ParseFile$3;

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
            "Lorg/json/JSONObject;",
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
    .line 358
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 359
    .local v0, "result":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/parse/ParseFile$3$2;->this$1:Lcom/parse/ParseFile$3;

    iget-object v1, v1, Lcom/parse/ParseFile$3;->this$0:Lcom/parse/ParseFile;

    const-string v2, "name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/parse/ParseFile;->name:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/parse/ParseFile;->access$102(Lcom/parse/ParseFile;Ljava/lang/String;)Ljava/lang/String;

    .line 360
    iget-object v1, p0, Lcom/parse/ParseFile$3$2;->this$1:Lcom/parse/ParseFile$3;

    iget-object v1, v1, Lcom/parse/ParseFile$3;->this$0:Lcom/parse/ParseFile;

    const-string v2, "url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/parse/ParseFile;->url:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/parse/ParseFile;->access$202(Lcom/parse/ParseFile;Ljava/lang/String;)Ljava/lang/String;

    .line 364
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseFile$3$2;->this$1:Lcom/parse/ParseFile$3;

    iget-object v1, v1, Lcom/parse/ParseFile$3;->this$0:Lcom/parse/ParseFile;

    invoke-virtual {v1}, Lcom/parse/ParseFile;->getCacheFile()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseFile$3$2;->this$1:Lcom/parse/ParseFile$3;

    iget-object v2, v2, Lcom/parse/ParseFile$3;->this$0:Lcom/parse/ParseFile;

    iget-object v2, v2, Lcom/parse/ParseFile;->data:[B

    invoke-static {v1, v2}, Lcom/parse/ParseFileUtils;->writeByteArrayToFile(Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :goto_0
    iget-object v1, p0, Lcom/parse/ParseFile$3$2;->this$1:Lcom/parse/ParseFile$3;

    iget-object v1, v1, Lcom/parse/ParseFile$3;->this$0:Lcom/parse/ParseFile;

    const/4 v2, 0x0

    # setter for: Lcom/parse/ParseFile;->dirty:Z
    invoke-static {v1, v2}, Lcom/parse/ParseFile;->access$302(Lcom/parse/ParseFile;Z)Z

    .line 371
    invoke-virtual {p1}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v1

    return-object v1

    .line 365
    :catch_0
    move-exception v1

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
    .line 355
    invoke-virtual {p0, p1}, Lcom/parse/ParseFile$3$2;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
