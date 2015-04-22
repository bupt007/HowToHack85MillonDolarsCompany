.class abstract Lcom/parse/ParseHttpClient;
.super Ljava/lang/Object;
.source "ParseHttpClient.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/parse/ParseHttpClient;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    new-instance v0, Lcom/parse/ParseApacheHttpClient;

    invoke-direct {v0, p0}, Lcom/parse/ParseApacheHttpClient;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public abstract execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/parse/ParseHttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
