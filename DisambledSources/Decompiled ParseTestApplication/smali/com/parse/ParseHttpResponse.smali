.class abstract Lcom/parse/ParseHttpResponse;
.super Ljava/lang/Object;
.source "ParseHttpResponse.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createParseApacheHttpResponse(Lorg/apache/http/HttpResponse;)Lcom/parse/ParseHttpResponse;
    .locals 1
    .param p0, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 22
    new-instance v0, Lcom/parse/ParseApacheHttpResponse;

    invoke-direct {v0, p0}, Lcom/parse/ParseApacheHttpResponse;-><init>(Lorg/apache/http/HttpResponse;)V

    return-object v0
.end method


# virtual methods
.method public abstract getContent()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getReasonPhrase()Ljava/lang/String;
.end method

.method public abstract getStatusCode()I
.end method

.method public abstract getTotalSize()I
.end method
