.class Lcom/parse/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# static fields
.field public static final POST_CONTENT_TYPE_FORM_URLENCODED:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final POST_CONTENT_TYPE_JSON:Ljava/lang/String; = "application/json"


# instance fields
.field private mConnectionProvider:Lcom/parse/HttpConnectionProvider;


# direct methods
.method public constructor <init>(Lcom/parse/HttpConnectionProvider;)V
    .locals 0
    .param p1, "connectionProvider"    # Lcom/parse/HttpConnectionProvider;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/parse/HttpRequest;->mConnectionProvider:Lcom/parse/HttpConnectionProvider;

    .line 23
    return-void
.end method


# virtual methods
.method public sendPost(Ljava/net/URL;Ljava/lang/String;Lcom/parse/ACRAResponse;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "response"    # Lcom/parse/ACRAResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    const-string v0, "application/x-www-form-urlencoded"

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/parse/HttpRequest;->sendPost(Ljava/net/URL;Ljava/lang/String;Lcom/parse/ACRAResponse;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public sendPost(Ljava/net/URL;Ljava/lang/String;Lcom/parse/ACRAResponse;Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "response"    # Lcom/parse/ACRAResponse;
    .param p4, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    const/4 v2, 0x0

    .line 46
    .local v2, "urlConnection":Ljava/net/HttpURLConnection;
    iget-object v3, p0, Lcom/parse/HttpRequest;->mConnectionProvider:Lcom/parse/HttpConnectionProvider;

    invoke-interface {v3, p1}, Lcom/parse/HttpConnectionProvider;->getConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 48
    const-string v3, "POST"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 49
    const-string v3, "User-Agent"

    const-string v4, "Android"

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v3, "Content-Type"

    invoke-virtual {v2, v3, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v3, "Content-Encoding"

    const-string v4, "gzip"

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 55
    :try_start_0
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 56
    .local v0, "gzipStream":Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 57
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 58
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 59
    .local v1, "responseCode":I
    invoke-virtual {p3, v1}, Lcom/parse/ACRAResponse;->setStatusCode(I)V

    .line 60
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 64
    return-void

    .line 62
    .end local v0    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .end local v1    # "responseCode":I
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v3
.end method
