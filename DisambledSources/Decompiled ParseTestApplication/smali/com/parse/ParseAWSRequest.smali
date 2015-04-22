.class Lcom/parse/ParseAWSRequest;
.super Lcom/parse/ParseRequest;
.source "ParseAWSRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/ParseRequest",
        "<[B[B>;"
    }
.end annotation


# instance fields
.field private data:[B

.field private mimeType:Ljava/lang/String;

.field private postParams:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/parse/ParseRequest$Method;Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Lcom/parse/ParseRequest$Method;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseRequest;-><init>(Lcom/parse/ParseRequest$Method;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/parse/ParseRequest;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected newEntity(Lcom/parse/ProgressCallback;)Lorg/apache/http/HttpEntity;
    .locals 9
    .param p1, "uploadProgressCallback"    # Lcom/parse/ProgressCallback;

    .prologue
    .line 51
    new-instance v1, Lcom/parse/CountingMultipartEntity;

    sget-object v4, Lcom/parse/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lcom/parse/entity/mime/HttpMultipartMode;

    invoke-direct {v1, v4, p1}, Lcom/parse/CountingMultipartEntity;-><init>(Lcom/parse/entity/mime/HttpMultipartMode;Lcom/parse/ProgressCallback;)V

    .line 55
    .local v1, "entity":Lcom/parse/CountingMultipartEntity;
    :try_start_0
    const-string v4, "Content-Type"

    new-instance v5, Lcom/parse/entity/mime/content/StringBody;

    iget-object v6, p0, Lcom/parse/ParseAWSRequest;->mimeType:Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/parse/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Lcom/parse/CountingMultipartEntity;->addPart(Ljava/lang/String;Lcom/parse/entity/mime/content/ContentBody;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 60
    iget-object v4, p0, Lcom/parse/ParseAWSRequest;->postParams:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 61
    .local v3, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 62
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 65
    .local v2, "key":Ljava/lang/String;
    :try_start_1
    new-instance v4, Lcom/parse/entity/mime/content/StringBody;

    iget-object v5, p0, Lcom/parse/ParseAWSRequest;->postParams:Lorg/json/JSONObject;

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/parse/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v4}, Lcom/parse/CountingMultipartEntity;->addPart(Ljava/lang/String;Lcom/parse/entity/mime/content/ContentBody;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 56
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_1
    move-exception v0

    .line 57
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 68
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_2
    move-exception v0

    .line 69
    .local v0, "e":Lorg/json/JSONException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 73
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    const-string v4, "file"

    new-instance v5, Lcom/parse/entity/mime/content/ByteArrayBody;

    iget-object v6, p0, Lcom/parse/ParseAWSRequest;->data:[B

    iget-object v7, p0, Lcom/parse/ParseAWSRequest;->mimeType:Ljava/lang/String;

    const-string v8, "file"

    invoke-direct {v5, v6, v7, v8}, Lcom/parse/entity/mime/content/ByteArrayBody;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Lcom/parse/CountingMultipartEntity;->addPart(Ljava/lang/String;Lcom/parse/entity/mime/content/ContentBody;)V

    .line 74
    return-object v1
.end method

.method protected onResponse(Lcom/parse/ParseHttpResponse;Lcom/parse/ProgressCallback;)Lbolts/Task;
    .locals 19
    .param p1, "response"    # Lcom/parse/ParseHttpResponse;
    .param p2, "downloadProgressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseHttpResponse;",
            "Lcom/parse/ProgressCallback;",
            ")",
            "Lbolts/Task",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseHttpResponse;->getStatusCode()I

    move-result v11

    .line 81
    .local v11, "statusCode":I
    const/16 v13, 0xc8

    if-lt v11, v13, :cond_0

    const/16 v13, 0x12c

    if-lt v11, v13, :cond_1

    :cond_0
    const/16 v13, 0x130

    if-ne v11, v13, :cond_2

    .line 89
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parse/ParseAWSRequest;->method:Lcom/parse/ParseRequest$Method;

    sget-object v14, Lcom/parse/ParseRequest$Method;->GET:Lcom/parse/ParseRequest$Method;

    if-eq v13, v14, :cond_4

    .line 90
    const/4 v13, 0x0

    .line 132
    :goto_0
    return-object v13

    .line 84
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parse/ParseAWSRequest;->method:Lcom/parse/ParseRequest$Method;

    sget-object v14, Lcom/parse/ParseRequest$Method;->GET:Lcom/parse/ParseRequest$Method;

    if-ne v13, v14, :cond_3

    const-string v2, "Download from"

    .line 85
    .local v2, "action":Ljava/lang/String;
    :goto_1
    new-instance v13, Lcom/parse/ParseException;

    const/16 v14, 0x64

    const-string v15, "%s S3 failed. %s"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v2, v16, v17

    const/16 v17, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    invoke-static {v13}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v13

    goto :goto_0

    .line 84
    .end local v2    # "action":Ljava/lang/String;
    :cond_3
    const-string v2, "Upload to"

    goto :goto_1

    .line 93
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseHttpResponse;->getTotalSize()I

    move-result v12

    .line 94
    .local v12, "totalSize":I
    const/4 v6, 0x0

    .line 95
    .local v6, "downloadedSize":I
    const/4 v10, 0x0

    .line 97
    .local v10, "responseStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseHttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v10

    .line 98
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 101
    .local v3, "buffer":Ljava/io/ByteArrayOutputStream;
    const v13, 0x8000

    new-array v5, v13, [B

    .line 104
    .local v5, "data":[B
    const/4 v4, 0x0

    .line 105
    .local v4, "c":Lcom/parse/ParseCallback2;, "Lcom/parse/ParseCallback2<Ljava/lang/Integer;Lcom/parse/ParseException;>;"
    if-eqz p2, :cond_5

    .line 106
    new-instance v4, Lcom/parse/ParseAWSRequest$1;

    .end local v4    # "c":Lcom/parse/ParseCallback2;, "Lcom/parse/ParseCallback2<Ljava/lang/Integer;Lcom/parse/ParseException;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v4, v0, v1}, Lcom/parse/ParseAWSRequest$1;-><init>(Lcom/parse/ParseAWSRequest;Lcom/parse/ProgressCallback;)V

    .line 119
    .restart local v4    # "c":Lcom/parse/ParseCallback2;, "Lcom/parse/ParseCallback2<Ljava/lang/Integer;Lcom/parse/ParseException;>;"
    :cond_5
    :goto_2
    const/4 v13, 0x0

    array-length v14, v5

    invoke-virtual {v10, v5, v13, v14}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    .local v8, "nRead":I
    const/4 v13, -0x1

    if-eq v8, v13, :cond_6

    .line 120
    const/4 v13, 0x0

    invoke-virtual {v3, v5, v13, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 121
    add-int/2addr v6, v8

    .line 122
    if-eqz v4, :cond_5

    const/4 v13, -0x1

    if-eq v12, v13, :cond_5

    .line 123
    int-to-float v13, v6

    int-to-float v14, v12

    div-float/2addr v13, v14

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 125
    .local v9, "progressToReport":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v13}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v13

    invoke-static {v13, v4}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 129
    .end local v3    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "c":Lcom/parse/ParseCallback2;, "Lcom/parse/ParseCallback2<Ljava/lang/Integer;Lcom/parse/ParseException;>;"
    .end local v5    # "data":[B
    .end local v8    # "nRead":I
    .end local v9    # "progressToReport":I
    :catch_0
    move-exception v7

    .line 130
    .local v7, "e":Ljava/io/IOException;
    :try_start_1
    invoke-static {v7}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    .line 132
    invoke-static {v10}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto/16 :goto_0

    .line 128
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v3    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "c":Lcom/parse/ParseCallback2;, "Lcom/parse/ParseCallback2<Ljava/lang/Integer;Lcom/parse/ParseException;>;"
    .restart local v5    # "data":[B
    .restart local v8    # "nRead":I
    :cond_6
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    invoke-static {v13}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v13

    .line 132
    invoke-static {v10}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto/16 :goto_0

    .end local v3    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "c":Lcom/parse/ParseCallback2;, "Lcom/parse/ParseCallback2<Ljava/lang/Integer;Lcom/parse/ParseException;>;"
    .end local v5    # "data":[B
    .end local v8    # "nRead":I
    :catchall_0
    move-exception v13

    invoke-static {v10}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v13
.end method

.method public setData([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 46
    iput-object p1, p0, Lcom/parse/ParseAWSRequest;->data:[B

    .line 47
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/parse/ParseAWSRequest;->mimeType:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setPostParams(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "postParams"    # Lorg/json/JSONObject;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/parse/ParseAWSRequest;->postParams:Lorg/json/JSONObject;

    .line 43
    return-void
.end method
