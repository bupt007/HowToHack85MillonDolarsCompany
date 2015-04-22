.class Lcom/parse/SSLConnectionProvider;
.super Ljava/lang/Object;
.source "SSLConnectionProvider.java"

# interfaces
.implements Lcom/parse/HttpConnectionProvider;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 17
    .local v0, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {p0, v0}, Lcom/parse/SSLConnectionProvider;->initializeConnectionParameters(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;

    move-result-object v1

    return-object v1
.end method

.method public initializeConnectionParameters(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p1, "conn"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 21
    invoke-static {}, Lcom/parse/ACRA;->getConfig()Lcom/parse/ReportsCrashes;

    move-result-object v0

    invoke-interface {v0}, Lcom/parse/ReportsCrashes;->socketTimeout()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 22
    invoke-static {}, Lcom/parse/ACRA;->getConfig()Lcom/parse/ReportsCrashes;

    move-result-object v0

    invoke-interface {v0}, Lcom/parse/ReportsCrashes;->socketTimeout()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 23
    return-object p1
.end method
