.class Lcom/parse/ParseFileUtils;
.super Ljava/lang/Object;
.source "ParseFileUtils.java"


# static fields
.field private static final FILE_COPY_BUFFER_SIZE:J = 0x1e00000L

.field public static final ONE_KB:J = 0x400L

.field public static final ONE_MB:J = 0x100000L


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanDirectory(Ljava/io/File;)V
    .locals 11
    .param p0, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 395
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " does not exist"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 396
    .local v7, "message":Ljava/lang/String;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 399
    .end local v7    # "message":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_1

    .line 400
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not a directory"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 401
    .restart local v7    # "message":Ljava/lang/String;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 404
    .end local v7    # "message":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 405
    .local v3, "files":[Ljava/io/File;
    if-nez v3, :cond_2

    .line 406
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to list contents of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 409
    :cond_2
    const/4 v1, 0x0

    .line 410
    .local v1, "exception":Ljava/io/IOException;
    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v2, v0, v4

    .line 412
    .local v2, "file":Ljava/io/File;
    :try_start_0
    invoke-static {v2}, Lcom/parse/ParseFileUtils;->forceDelete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 413
    :catch_0
    move-exception v5

    .line 414
    .local v5, "ioe":Ljava/io/IOException;
    move-object v1, v5

    goto :goto_1

    .line 418
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "ioe":Ljava/io/IOException;
    :cond_3
    if-eqz v1, :cond_4

    .line 419
    throw v1

    .line 421
    :cond_4
    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/parse/ParseFileUtils;->copyFile(Ljava/io/File;Ljava/io/File;Z)V

    .line 215
    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;Z)V
    .locals 4
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;
    .param p2, "preserveFileDate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    if-nez p0, :cond_0

    .line 246
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Source must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 248
    :cond_0
    if-nez p1, :cond_1

    .line 249
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Destination must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 252
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Source \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 254
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 255
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Source \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' exists but is a directory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 257
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 258
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Source \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' and destination \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' are the same"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 260
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 261
    .local v0, "parentFile":Ljava/io/File;
    if-eqz v0, :cond_5

    .line 262
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_5

    .line 263
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destination \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' directory cannot be created"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 266
    :cond_5
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_6

    .line 267
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destination \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' exists but is read-only"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 269
    :cond_6
    invoke-static {p0, p1, p2}, Lcom/parse/ParseFileUtils;->doCopyFile(Ljava/io/File;Ljava/io/File;Z)V

    .line 270
    return-void
.end method

.method public static deleteDirectory(Ljava/io/File;)V
    .locals 3
    .param p0, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 352
    :cond_0
    return-void

    .line 343
    :cond_1
    invoke-static {p0}, Lcom/parse/ParseFileUtils;->isSymlink(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 344
    invoke-static {p0}, Lcom/parse/ParseFileUtils;->cleanDirectory(Ljava/io/File;)V

    .line 347
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to delete directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static deleteQuietly(Ljava/io/File;)Z
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 370
    if-nez p0, :cond_0

    .line 383
    :goto_0
    return v1

    .line 374
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 375
    invoke-static {p0}, Lcom/parse/ParseFileUtils;->cleanDirectory(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 381
    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "ignored":Ljava/lang/Exception;
    goto :goto_0

    .line 377
    .end local v0    # "ignored":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private static doCopyFile(Ljava/io/File;Ljava/io/File;Z)V
    .locals 27
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;
    .param p2, "preserveFileDate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 289
    new-instance v24, Ljava/io/IOException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Destination \'"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\' exists but is a directory"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 292
    :cond_0
    const/4 v14, 0x0

    .line 293
    .local v14, "fis":Ljava/io/FileInputStream;
    const/16 v16, 0x0

    .line 294
    .local v16, "fos":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 295
    .local v5, "input":Ljava/nio/channels/FileChannel;
    const/4 v4, 0x0

    .line 297
    .local v4, "output":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    .end local v14    # "fis":Ljava/io/FileInputStream;
    .local v15, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 299
    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .local v17, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v15}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 300
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 301
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v20

    .line 302
    .local v20, "size":J
    const-wide/16 v6, 0x0

    .line 303
    .local v6, "pos":J
    const-wide/16 v8, 0x0

    .line 304
    .local v8, "count":J
    :goto_0
    cmp-long v24, v6, v20

    if-gez v24, :cond_1

    .line 305
    sub-long v18, v20, v6

    .line 306
    .local v18, "remain":J
    const-wide/32 v24, 0x1e00000

    cmp-long v24, v18, v24

    if-lez v24, :cond_2

    const-wide/32 v8, 0x1e00000

    .line 307
    :goto_1
    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-wide v10

    .line 308
    .local v10, "bytesCopied":J
    const-wide/16 v24, 0x0

    cmp-long v24, v10, v24

    if-nez v24, :cond_3

    .line 314
    .end local v10    # "bytesCopied":J
    .end local v18    # "remain":J
    :cond_1
    invoke-static {v4}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 315
    invoke-static/range {v17 .. v17}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 316
    invoke-static {v5}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 317
    invoke-static {v15}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 320
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v22

    .line 321
    .local v22, "srcLen":J
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 322
    .local v12, "dstLen":J
    cmp-long v24, v22, v12

    if-eqz v24, :cond_4

    .line 323
    new-instance v24, Ljava/io/IOException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Failed to copy full contents from \'"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\' to \'"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\' Expected length: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " Actual: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v24

    .end local v12    # "dstLen":J
    .end local v22    # "srcLen":J
    .restart local v18    # "remain":J
    :cond_2
    move-wide/from16 v8, v18

    .line 306
    goto :goto_1

    .line 311
    .restart local v10    # "bytesCopied":J
    :cond_3
    add-long/2addr v6, v10

    .line 312
    goto :goto_0

    .line 314
    .end local v6    # "pos":J
    .end local v8    # "count":J
    .end local v10    # "bytesCopied":J
    .end local v15    # "fis":Ljava/io/FileInputStream;
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .end local v18    # "remain":J
    .end local v20    # "size":J
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    .restart local v16    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v24

    :goto_2
    invoke-static {v4}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 315
    invoke-static/range {v16 .. v16}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 316
    invoke-static {v5}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 317
    invoke-static {v14}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v24

    .line 326
    .end local v14    # "fis":Ljava/io/FileInputStream;
    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "pos":J
    .restart local v8    # "count":J
    .restart local v12    # "dstLen":J
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v20    # "size":J
    .restart local v22    # "srcLen":J
    :cond_4
    if-eqz p2, :cond_5

    .line 327
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->lastModified()J

    move-result-wide v24

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    .line 329
    :cond_5
    return-void

    .line 314
    .end local v6    # "pos":J
    .end local v8    # "count":J
    .end local v12    # "dstLen":J
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .end local v20    # "size":J
    .end local v22    # "srcLen":J
    .restart local v16    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v24

    move-object v14, v15

    .end local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v14    # "fis":Ljava/io/FileInputStream;
    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v24

    move-object/from16 v16, v17

    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "fos":Ljava/io/FileOutputStream;
    move-object v14, v15

    .end local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static forceDelete(Ljava/io/File;)V
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 440
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 441
    invoke-static {p0}, Lcom/parse/ParseFileUtils;->deleteDirectory(Ljava/io/File;)V

    .line 453
    :cond_0
    return-void

    .line 443
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 444
    .local v0, "filePresent":Z
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 445
    if-nez v0, :cond_2

    .line 446
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File does not exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 448
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to delete file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static isSymlink(Ljava/io/File;)Z
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 473
    if-nez p0, :cond_0

    .line 474
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "File must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 479
    :cond_0
    const/4 v1, 0x0

    .line 480
    .local v1, "fileInCanonicalDir":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 481
    move-object v1, p0

    .line 487
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 488
    const/4 v2, 0x0

    .line 490
    :goto_1
    return v2

    .line 483
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 484
    .local v0, "canonicalDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    .end local v1    # "fileInCanonicalDir":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v1    # "fileInCanonicalDir":Ljava/io/File;
    goto :goto_0

    .line 490
    .end local v0    # "canonicalDir":Ljava/io/File;
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static moveFile(Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    if-nez p0, :cond_0

    .line 162
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Source must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_0
    if-nez p1, :cond_1

    .line 165
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Destination must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 168
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Source \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 170
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 171
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Source \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is a directory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 174
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destination \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' already exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 176
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 177
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destination \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is a directory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 179
    :cond_5
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 180
    .local v0, "rename":Z
    if-nez v0, :cond_6

    .line 181
    invoke-static {p0, p1}, Lcom/parse/ParseFileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 182
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_6

    .line 183
    invoke-static {p1}, Lcom/parse/ParseFileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 184
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete original file \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' after copy to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 188
    :cond_6
    return-void
.end method

.method public static openInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' exists but is a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_2

    .line 78
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' cannot be read"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_2
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static openOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' exists but is a directory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_2

    .line 134
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' cannot be written to"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 138
    .local v0, "parent":Ljava/io/File;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 139
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2

    .line 140
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' could not be created"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    .end local v0    # "parent":Ljava/io/File;
    :cond_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v1
.end method

.method public static readFileToByteArray(Ljava/io/File;)[B
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p0}, Lcom/parse/ParseFileUtils;->openInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/parse/ParseIOUtils;->toByteArray(Ljava/io/InputStream;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 49
    invoke-static {v0}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v1
.end method

.method public static writeByteArrayToFile(Ljava/io/File;[B)V
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 100
    .local v0, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-static {p0}, Lcom/parse/ParseFileUtils;->openOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 101
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-static {v0}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 105
    return-void

    .line 103
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v1
.end method
