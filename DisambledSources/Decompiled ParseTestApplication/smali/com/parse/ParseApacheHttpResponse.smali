.class Lcom/parse/ParseApacheHttpResponse;
.super Lcom/parse/ParseHttpResponse;
.source "ParseApacheHttpResponse.java"


# instance fields
.field private response:Lorg/apache/http/HttpResponse;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpResponse;)V
    .locals 0
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/parse/ParseHttpResponse;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/parse/ParseApacheHttpResponse;->response:Lorg/apache/http/HttpResponse;

    .line 16
    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parse/ParseApacheHttpResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/parse/ParseApacheHttpResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/parse/ParseApacheHttpResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    return v0
.end method

.method public getTotalSize()I
    .locals 4

    .prologue
    .line 30
    const/4 v1, -0x1

    .line 31
    .local v1, "totalSize":I
    iget-object v2, p0, Lcom/parse/ParseApacheHttpResponse;->response:Lorg/apache/http/HttpResponse;

    const-string v3, "Content-Length"

    invoke-interface {v2, v3}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    .line 34
    .local v0, "contentLengthHeader":[Lorg/apache/http/Header;
    array-length v2, v0

    if-lez v2, :cond_0

    .line 35
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 37
    :cond_0
    return v1
.end method
