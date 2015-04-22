.class Lcom/parse/UnsafeConnectionProvider;
.super Ljava/lang/Object;
.source "UnsafeConnectionProvider.java"

# interfaces
.implements Lcom/parse/HttpConnectionProvider;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 8
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 30
    .local v1, "conn":Ljava/net/HttpURLConnection;
    instance-of v6, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v6, :cond_0

    .line 32
    :try_start_0
    const-string v6, "TLS"

    invoke-static {v6}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 33
    .local v2, "ctx":Ljavax/net/ssl/SSLContext;
    const/4 v6, 0x1

    new-array v4, v6, [Ljavax/net/ssl/TrustManager;

    const/4 v6, 0x0

    new-instance v7, Lcom/parse/TrustEveryoneTrustManager;

    invoke-direct {v7}, Lcom/parse/TrustEveryoneTrustManager;-><init>()V

    aput-object v7, v4, v6

    .line 34
    .local v4, "manager":[Ljavax/net/ssl/TrustManager;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v4, v7}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 35
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    .line 36
    .local v5, "trustEveryoneSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v3, v0

    .line 37
    .local v3, "httpsConnection":Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {v3, v5}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 38
    new-instance v6, Lcom/parse/UnsafeConnectionProvider$1;

    invoke-direct {v6, p0}, Lcom/parse/UnsafeConnectionProvider$1;-><init>(Lcom/parse/UnsafeConnectionProvider;)V

    invoke-virtual {v3, v6}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v2    # "ctx":Ljavax/net/ssl/SSLContext;
    .end local v3    # "httpsConnection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v4    # "manager":[Ljavax/net/ssl/TrustManager;
    .end local v5    # "trustEveryoneSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/parse/UnsafeConnectionProvider;->initializeConnectionParameters(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;

    move-result-object v6

    return-object v6

    .line 46
    :catch_0
    move-exception v6

    goto :goto_0

    .line 44
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method public initializeConnectionParameters(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p1, "conn"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 55
    invoke-static {}, Lcom/parse/ACRA;->getConfig()Lcom/parse/ReportsCrashes;

    move-result-object v0

    invoke-interface {v0}, Lcom/parse/ReportsCrashes;->socketTimeout()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 56
    invoke-static {}, Lcom/parse/ACRA;->getConfig()Lcom/parse/ReportsCrashes;

    move-result-object v0

    invoke-interface {v0}, Lcom/parse/ReportsCrashes;->socketTimeout()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 57
    return-object p1
.end method
