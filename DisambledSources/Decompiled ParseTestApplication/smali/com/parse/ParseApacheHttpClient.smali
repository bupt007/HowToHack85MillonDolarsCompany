.class Lcom/parse/ParseApacheHttpClient;
.super Lcom/parse/ParseHttpClient;
.source "ParseApacheHttpClient.java"


# static fields
.field private static final SOCKET_OPERATION_TIMEOUT:I = 0x2710


# instance fields
.field private httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v13, 0x14

    const/4 v9, 0x0

    const/16 v12, 0x2710

    .line 40
    invoke-direct {p0}, Lcom/parse/ParseHttpClient;-><init>()V

    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Context passed to newHttpClient should not be null."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 44
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 47
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 51
    .local v2, "params":Lorg/apache/http/params/HttpParams;
    invoke-static {v2, v9}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 53
    invoke-static {v2, v12}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 54
    invoke-static {v2, v12}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 55
    const/16 v8, 0x2000

    invoke-static {v2, v8}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 59
    invoke-static {v2, v9}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 62
    new-instance v7, Landroid/net/SSLSessionCache;

    invoke-direct {v7, p1}, Landroid/net/SSLSessionCache;-><init>(Landroid/content/Context;)V

    .line 65
    .local v7, "sessionCache":Landroid/net/SSLSessionCache;
    invoke-direct {p0, p1}, Lcom/parse/ParseApacheHttpClient;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 66
    new-instance v6, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 67
    .local v6, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v8, Lorg/apache/http/conn/scheme/Scheme;

    const-string v9, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v10

    const/16 v11, 0x50

    invoke-direct {v8, v9, v10, v11}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v6, v8}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 68
    new-instance v8, Lorg/apache/http/conn/scheme/Scheme;

    const-string v9, "https"

    invoke-static {v12, v7}, Landroid/net/SSLCertificateSocketFactory;->getHttpSocketFactory(ILandroid/net/SSLSessionCache;)Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v10

    const/16 v11, 0x1bb

    invoke-direct {v8, v9, v10, v11}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v6, v8}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 73
    new-instance v8, Lorg/apache/http/conn/params/ConnPerRouteBean;

    invoke-direct {v8, v13}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v2, v8}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 74
    invoke-static {v2, v13}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 77
    const-string v8, "http.proxyHost"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "host":Ljava/lang/String;
    const-string v8, "http.proxyPort"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, "portString":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1

    .line 80
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 81
    .local v3, "port":I
    new-instance v5, Lorg/apache/http/HttpHost;

    const-string v8, "http"

    invoke-direct {v5, v0, v3, v8}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 82
    .local v5, "proxy":Lorg/apache/http/HttpHost;
    const-string v8, "http.route.default-proxy"

    invoke-interface {v2, v8, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 85
    .end local v3    # "port":I
    .end local v5    # "proxy":Lorg/apache/http/HttpHost;
    :cond_1
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v2, v6}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 86
    .local v1, "manager":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v8, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v8, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v8, p0, Lcom/parse/ParseApacheHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 87
    return-void
.end method

.method private getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    const-string v1, "unknown"

    .line 92
    .local v1, "packageVersion":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v2, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 94
    .local v2, "versionCode":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 98
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v2    # "versionCode":I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parse Android SDK 1.9.1 ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") API Level "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 95
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/parse/ParseHttpResponse;
    .locals 2
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v1, p0, Lcom/parse/ParseApacheHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 106
    .local v0, "response":Lorg/apache/http/HttpResponse;
    invoke-static {v0}, Lcom/parse/ParseHttpResponse;->createParseApacheHttpResponse(Lorg/apache/http/HttpResponse;)Lcom/parse/ParseHttpResponse;

    move-result-object v1

    return-object v1
.end method
