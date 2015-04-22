.class Lcom/parse/CountingByteArrayEntity;
.super Lorg/apache/http/entity/ByteArrayEntity;
.source "CountingByteArrayEntity.java"


# static fields
.field private static final DEFAULT_CHUNK_SIZE:I = 0x1000


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
.method public constructor <init>([BLcom/parse/ProgressCallback;)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "progressCallback"    # Lcom/parse/ProgressCallback;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 21
    if-eqz p2, :cond_0

    .line 22
    new-instance v0, Lcom/parse/CountingByteArrayEntity$1;

    invoke-direct {v0, p0, p2}, Lcom/parse/CountingByteArrayEntity$1;-><init>(Lcom/parse/CountingByteArrayEntity;Lcom/parse/ProgressCallback;)V

    iput-object v0, p0, Lcom/parse/CountingByteArrayEntity;->progressCallback:Lcom/parse/ParseCallback2;

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/CountingByteArrayEntity;->progressCallback:Lcom/parse/ParseCallback2;

    goto :goto_0
.end method

.method private reportProgressIfNeeded(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/CountingByteArrayEntity;->progressCallback:Lcom/parse/ParseCallback2;

    invoke-static {v0, v1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 61
    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Output stream may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 43
    :cond_0
    const/4 v1, 0x0

    .line 44
    .local v1, "position":I
    iget-object v4, p0, Lcom/parse/CountingByteArrayEntity;->content:[B

    array-length v3, v4

    .line 45
    .local v3, "totalLength":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 46
    sub-int v0, v3, v1

    .line 47
    .local v0, "length":I
    const/16 v4, 0x1000

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 49
    iget-object v4, p0, Lcom/parse/CountingByteArrayEntity;->content:[B

    invoke-virtual {p1, v4, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 50
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 52
    add-int/2addr v1, v0

    .line 54
    mul-int/lit8 v4, v1, 0x64

    div-int v2, v4, v3

    .line 55
    .local v2, "progress":I
    invoke-direct {p0, v2}, Lcom/parse/CountingByteArrayEntity;->reportProgressIfNeeded(I)V

    goto :goto_0

    .line 57
    .end local v0    # "length":I
    .end local v2    # "progress":I
    :cond_1
    return-void
.end method
