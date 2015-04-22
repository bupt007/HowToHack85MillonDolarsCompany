.class Lcom/parse/ParseKeyValueCache;
.super Ljava/lang/Object;
.source "ParseKeyValueCache.java"


# static fields
.field static final DEFAULT_MAX_KEY_VALUE_CACHE_BYTES:I = 0x200000

.field static final DEFAULT_MAX_KEY_VALUE_CACHE_FILES:I = 0x3e8

.field private static final DIR_NAME:Ljava/lang/String; = "ParseKeyValueCache"

.field private static final MUTEX_IO:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "ParseKeyValueCache"

.field private static directory:Ljava/io/File;

.field static maxKeyValueCacheBytes:I

.field static maxKeyValueCacheFiles:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/ParseKeyValueCache;->MUTEX_IO:Ljava/lang/Object;

    .line 38
    const/high16 v0, 0x200000

    sput v0, Lcom/parse/ParseKeyValueCache;->maxKeyValueCacheBytes:I

    .line 39
    const/16 v0, 0x3e8

    sput v0, Lcom/parse/ParseKeyValueCache;->maxKeyValueCacheFiles:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clearFromKeyValueCache(Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 158
    sget-object v2, Lcom/parse/ParseKeyValueCache;->MUTEX_IO:Ljava/lang/Object;

    monitor-enter v2

    .line 159
    :try_start_0
    invoke-static {p0}, Lcom/parse/ParseKeyValueCache;->getKeyValueCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 160
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 163
    :cond_0
    monitor-exit v2

    .line 164
    return-void

    .line 163
    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static clearKeyValueCacheDir()V
    .locals 8

    .prologue
    .line 87
    sget-object v7, Lcom/parse/ParseKeyValueCache;->MUTEX_IO:Ljava/lang/Object;

    monitor-enter v7

    .line 88
    :try_start_0
    invoke-static {}, Lcom/parse/ParseKeyValueCache;->getKeyValueCacheDir()Ljava/io/File;

    move-result-object v1

    .line 89
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 90
    .local v2, "entries":[Ljava/io/File;
    if-nez v2, :cond_0

    .line 91
    monitor-exit v7

    .line 97
    :goto_0
    return-void

    .line 93
    :cond_0
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v3, v0, v4

    .line 94
    .local v3, "entry":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 93
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 96
    .end local v3    # "entry":Ljava/io/File;
    :cond_1
    monitor-exit v7

    goto :goto_0

    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "entries":[Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private static createKeyValueCacheFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "filename":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/parse/ParseKeyValueCache;->getKeyValueCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private static getKeyValueCacheAge(Ljava/io/File;)J
    .locals 4
    .param p0, "cacheFile"    # Ljava/io/File;

    .prologue
    .line 72
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    const/16 v3, 0x2e

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 76
    :goto_0
    return-wide v2

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method static getKeyValueCacheDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/parse/ParseKeyValueCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method private static getKeyValueCacheFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "suffix":Ljava/lang/String;
    invoke-static {}, Lcom/parse/ParseKeyValueCache;->getKeyValueCacheDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseKeyValueCache$1;

    invoke-direct {v3, v1}, Lcom/parse/ParseKeyValueCache$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 66
    .local v0, "matches":[Ljava/io/File;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    aget-object v2, v0, v2

    goto :goto_0
.end method

.method static initialize(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 48
    .local v0, "appCacheDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "ParseKeyValueCache"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/parse/ParseKeyValueCache;->directory:Ljava/io/File;

    .line 49
    sget-object v1, Lcom/parse/ParseKeyValueCache;->directory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/parse/ParseKeyValueCache;->directory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not create ParseKeyValueCache directory"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_0
    return-void
.end method

.method static jsonFromKeyValueCache(Ljava/lang/String;J)Ljava/lang/Object;
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "maxAgeMilliseconds"    # J

    .prologue
    const/4 v3, 0x0

    .line 199
    invoke-static {p0, p1, p2}, Lcom/parse/ParseKeyValueCache;->loadFromKeyValueCache(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "raw":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 210
    :goto_0
    return-object v3

    .line 203
    :cond_0
    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 206
    .local v2, "tokener":Lorg/json/JSONTokener;
    :try_start_0
    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "ParseKeyValueCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "corrupted cache for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    invoke-static {p0}, Lcom/parse/ParseKeyValueCache;->clearFromKeyValueCache(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static loadFromKeyValueCache(Ljava/lang/String;J)Ljava/lang/String;
    .locals 15
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "maxAgeMilliseconds"    # J

    .prologue
    .line 169
    sget-object v8, Lcom/parse/ParseKeyValueCache;->MUTEX_IO:Ljava/lang/Object;

    monitor-enter v8

    .line 170
    :try_start_0
    invoke-static {p0}, Lcom/parse/ParseKeyValueCache;->getKeyValueCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 171
    .local v3, "file":Ljava/io/File;
    if-nez v3, :cond_0

    .line 172
    const/4 v5, 0x0

    monitor-exit v8

    .line 192
    :goto_0
    return-object v5

    .line 175
    :cond_0
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 176
    .local v4, "now":Ljava/util/Date;
    const-wide/16 v10, 0x0

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sub-long v12, v12, p1

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 177
    .local v6, "oldestAcceptableAge":J
    invoke-static {v3}, Lcom/parse/ParseKeyValueCache;->getKeyValueCacheAge(Ljava/io/File;)J

    move-result-wide v10

    cmp-long v5, v10, v6

    if-gez v5, :cond_1

    .line 178
    const/4 v5, 0x0

    monitor-exit v8

    goto :goto_0

    .line 194
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "now":Ljava/util/Date;
    .end local v6    # "oldestAcceptableAge":J
    :catchall_0
    move-exception v5

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 182
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "now":Ljava/util/Date;
    .restart local v6    # "oldestAcceptableAge":J
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    :try_start_2
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v2, v3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 186
    .local v2, "f":Ljava/io/RandomAccessFile;
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v10

    long-to-int v5, v10

    new-array v0, v5, [B

    .line 187
    .local v0, "bytes":[B
    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 188
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 189
    new-instance v5, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v5, v0, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v8

    goto :goto_0

    .line 190
    .end local v0    # "bytes":[B
    .end local v2    # "f":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "ParseKeyValueCache"

    const-string v9, "error reading from cache"

    invoke-static {v5, v9, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    const/4 v5, 0x0

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method static saveToKeyValueCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 101
    sget-object v13, Lcom/parse/ParseKeyValueCache;->MUTEX_IO:Ljava/lang/Object;

    monitor-enter v13

    .line 102
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/parse/ParseKeyValueCache;->getKeyValueCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 103
    .local v11, "prior":Ljava/io/File;
    if-eqz v11, :cond_0

    .line 104
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 106
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/parse/ParseKeyValueCache;->createKeyValueCacheFile(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 108
    .local v3, "f":Ljava/io/File;
    :try_start_1
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 109
    .local v10, "out":Ljava/io/FileOutputStream;
    const-string v12, "UTF-8"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/io/FileOutputStream;->write([B)V

    .line 110
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    .end local v10    # "out":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/parse/ParseKeyValueCache;->getKeyValueCacheDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 119
    .local v5, "files":[Ljava/io/File;
    array-length v9, v5

    .line 120
    .local v9, "numFiles":I
    const/4 v8, 0x0

    .line 121
    .local v8, "numBytes":I
    move-object v2, v5

    .local v2, "arr$":[Ljava/io/File;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_1

    aget-object v4, v2, v6

    .line 122
    .local v4, "file":Ljava/io/File;
    int-to-long v14, v8

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v16

    add-long v14, v14, v16

    long-to-int v8, v14

    .line 121
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 124
    .end local v4    # "file":Ljava/io/File;
    :cond_1
    sget v12, Lcom/parse/ParseKeyValueCache;->maxKeyValueCacheFiles:I

    if-gt v9, v12, :cond_2

    sget v12, Lcom/parse/ParseKeyValueCache;->maxKeyValueCacheBytes:I

    if-le v8, v12, :cond_3

    .line 130
    :cond_2
    new-instance v12, Lcom/parse/ParseKeyValueCache$2;

    invoke-direct {v12}, Lcom/parse/ParseKeyValueCache$2;-><init>()V

    invoke-static {v5, v12}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 142
    move-object v2, v5

    array-length v7, v2

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v7, :cond_3

    aget-object v4, v2, v6

    .line 143
    .restart local v4    # "file":Ljava/io/File;
    add-int/lit8 v9, v9, -0x1

    .line 144
    int-to-long v14, v8

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v16

    sub-long v14, v14, v16

    long-to-int v8, v14

    .line 145
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 147
    sget v12, Lcom/parse/ParseKeyValueCache;->maxKeyValueCacheFiles:I

    if-gt v9, v12, :cond_4

    sget v12, Lcom/parse/ParseKeyValueCache;->maxKeyValueCacheBytes:I

    if-gt v8, v12, :cond_4

    .line 152
    .end local v4    # "file":Ljava/io/File;
    :cond_3
    monitor-exit v13

    .line 153
    return-void

    .line 142
    .restart local v4    # "file":Ljava/io/File;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 152
    .end local v2    # "arr$":[Ljava/io/File;
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "files":[Ljava/io/File;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "numBytes":I
    .end local v9    # "numFiles":I
    .end local v11    # "prior":Ljava/io/File;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v12

    .line 113
    .restart local v3    # "f":Ljava/io/File;
    .restart local v11    # "prior":Ljava/io/File;
    :catch_0
    move-exception v12

    goto :goto_0

    .line 111
    :catch_1
    move-exception v12

    goto :goto_0
.end method
