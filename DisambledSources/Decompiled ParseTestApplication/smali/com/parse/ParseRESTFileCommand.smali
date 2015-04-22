.class Lcom/parse/ParseRESTFileCommand;
.super Lcom/parse/ParseRESTCommand;
.source "ParseRESTFileCommand.java"


# instance fields
.field private contentType:Ljava/lang/String;

.field private data:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .param p1, "httpPath"    # Ljava/lang/String;
    .param p2, "httpMethod"    # Lcom/parse/ParseRequest$Method;
    .param p4, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseRequest$Method;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parse/ParseRESTCommand;-><init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Ljava/util/Map;Ljava/lang/String;)V

    .line 14
    iput-object v0, p0, Lcom/parse/ParseRESTFileCommand;->data:[B

    .line 15
    iput-object v0, p0, Lcom/parse/ParseRESTFileCommand;->contentType:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public static uploadFileCommand(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Lcom/parse/ParseRESTFileCommand;
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 19
    const-string v2, "files/%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 20
    .local v1, "httpPath":Ljava/lang/String;
    new-instance v0, Lcom/parse/ParseRESTFileCommand;

    sget-object v2, Lcom/parse/ParseRequest$Method;->POST:Lcom/parse/ParseRequest$Method;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p3}, Lcom/parse/ParseRESTFileCommand;-><init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Ljava/util/Map;Ljava/lang/String;)V

    .line 22
    .local v0, "command":Lcom/parse/ParseRESTFileCommand;
    iput-object p1, v0, Lcom/parse/ParseRESTFileCommand;->data:[B

    .line 23
    iput-object p2, v0, Lcom/parse/ParseRESTFileCommand;->contentType:Ljava/lang/String;

    .line 24
    return-object v0
.end method


# virtual methods
.method protected newEntity(Lcom/parse/ProgressCallback;)Lorg/apache/http/HttpEntity;
    .locals 2
    .param p1, "uploadProgressCallback"    # Lcom/parse/ProgressCallback;

    .prologue
    .line 29
    new-instance v0, Lcom/parse/CountingByteArrayEntity;

    iget-object v1, p0, Lcom/parse/ParseRESTFileCommand;->data:[B

    invoke-direct {v0, v1, p1}, Lcom/parse/CountingByteArrayEntity;-><init>([BLcom/parse/ProgressCallback;)V

    .line 30
    .local v0, "entity":Lcom/parse/CountingByteArrayEntity;
    iget-object v1, p0, Lcom/parse/ParseRESTFileCommand;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/CountingByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 31
    return-object v0
.end method
