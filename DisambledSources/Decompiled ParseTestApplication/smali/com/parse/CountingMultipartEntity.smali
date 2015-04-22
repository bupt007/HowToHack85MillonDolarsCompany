.class Lcom/parse/CountingMultipartEntity;
.super Lcom/parse/entity/mime/MultipartEntity;
.source "CountingMultipartEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/CountingMultipartEntity$CountingOutputStream;
    }
.end annotation


# instance fields
.field private final progressCallback:Lcom/parse/ParseCallback2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/ParseCallback2",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/parse/ParseException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parse/ProgressCallback;)V
    .locals 2
    .param p1, "progressCallback"    # Lcom/parse/ProgressCallback;

    .prologue
    const/4 v1, 0x0

    .line 22
    sget-object v0, Lcom/parse/entity/mime/HttpMultipartMode;->STRICT:Lcom/parse/entity/mime/HttpMultipartMode;

    invoke-direct {p0, v0, v1, v1, p1}, Lcom/parse/CountingMultipartEntity;-><init>(Lcom/parse/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;Lcom/parse/ProgressCallback;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/parse/entity/mime/HttpMultipartMode;Lcom/parse/ProgressCallback;)V
    .locals 1
    .param p1, "mode"    # Lcom/parse/entity/mime/HttpMultipartMode;
    .param p2, "progressCallback"    # Lcom/parse/ProgressCallback;

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/parse/CountingMultipartEntity;-><init>(Lcom/parse/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;Lcom/parse/ProgressCallback;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/parse/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;Lcom/parse/ProgressCallback;)V
    .locals 1
    .param p1, "mode"    # Lcom/parse/entity/mime/HttpMultipartMode;
    .param p2, "boundary"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .param p4, "progressCallback"    # Lcom/parse/ProgressCallback;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/entity/mime/MultipartEntity;-><init>(Lcom/parse/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 35
    if-eqz p4, :cond_0

    .line 36
    new-instance v0, Lcom/parse/CountingMultipartEntity$1;

    invoke-direct {v0, p0, p4}, Lcom/parse/CountingMultipartEntity$1;-><init>(Lcom/parse/CountingMultipartEntity;Lcom/parse/ProgressCallback;)V

    iput-object v0, p0, Lcom/parse/CountingMultipartEntity;->progressCallback:Lcom/parse/ParseCallback2;

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/CountingMultipartEntity;->progressCallback:Lcom/parse/ParseCallback2;

    goto :goto_0
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;

    iget-object v1, p0, Lcom/parse/CountingMultipartEntity;->progressCallback:Lcom/parse/ParseCallback2;

    invoke-virtual {p0}, Lcom/parse/CountingMultipartEntity;->getContentLength()J

    move-result-wide v2

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/parse/CountingMultipartEntity$CountingOutputStream;-><init>(Ljava/io/OutputStream;Lcom/parse/ParseCallback2;J)V

    invoke-super {p0, v0}, Lcom/parse/entity/mime/MultipartEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 55
    return-void
.end method
