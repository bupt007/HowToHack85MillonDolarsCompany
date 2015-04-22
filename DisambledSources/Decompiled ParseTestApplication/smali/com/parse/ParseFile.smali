.class public Lcom/parse/ParseFile;
.super Ljava/lang/Object;
.source "ParseFile.java"


# instance fields
.field private contentType:Ljava/lang/String;

.field private currentTasks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lbolts/Task",
            "<*>.TaskCompletionSource;>;"
        }
    .end annotation
.end field

.field data:[B

.field private dirty:Z

.field private name:Ljava/lang/String;

.field final taskQueue:Lcom/parse/TaskQueue;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/ParseFile;->dirty:Z

    .line 49
    iput-object v1, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/parse/ParseFile;->url:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/parse/ParseFile;->contentType:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/parse/TaskQueue;

    invoke-direct {v0}, Lcom/parse/TaskQueue;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseFile;->taskQueue:Lcom/parse/TaskQueue;

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;

    .line 128
    iput-object p1, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    .line 129
    iput-object p2, p0, Lcom/parse/ParseFile;->url:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parse/ParseFile;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "contentType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v4, p0, Lcom/parse/ParseFile;->dirty:Z

    .line 49
    iput-object v0, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/parse/ParseFile;->url:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/parse/ParseFile;->contentType:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/parse/TaskQueue;

    invoke-direct {v0}, Lcom/parse/TaskQueue;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseFile;->taskQueue:Lcom/parse/TaskQueue;

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;

    .line 77
    array-length v0, p2

    sget v1, Lcom/parse/Parse;->maxParseFileSize:I

    if-le v0, v1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ParseFile must be less than %d bytes"

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lcom/parse/Parse;->maxParseFileSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    iput-object p1, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/parse/ParseFile;->data:[B

    .line 83
    iput-object p3, p0, Lcom/parse/ParseFile;->contentType:Ljava/lang/String;

    .line 85
    iput-boolean v2, p0, Lcom/parse/ParseFile;->dirty:Z

    .line 86
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "decoder"    # Lcom/parse/ParseDecoder;

    .prologue
    .line 617
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/parse/ParseFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, v0, p1, v0}, Lcom/parse/ParseFile;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    .line 96
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "contentType"    # Ljava/lang/String;

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/parse/ParseFile;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/parse/ParseFile;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseFile;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/ParseFile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseFile;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/parse/ParseFile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseFile;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/parse/ParseFile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseFile;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parse/ParseFile;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/parse/ParseFile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseFile;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/parse/ParseFile;->url:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/parse/ParseFile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseFile;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/parse/ParseFile;->dirty:Z

    return p1
.end method

.method static synthetic access$400(Lcom/parse/ParseFile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseFile;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parse/ParseFile;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parse/ParseFile;Ljava/lang/String;Lcom/parse/ProgressCallback;Lbolts/Task$TaskCompletionSource;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseFile;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/parse/ProgressCallback;
    .param p3, "x3"    # Lbolts/Task$TaskCompletionSource;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/ParseFile;->saveAsync(Ljava/lang/String;Lcom/parse/ProgressCallback;Lbolts/Task$TaskCompletionSource;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/parse/ParseFile;Ljava/lang/String;Lcom/parse/ProgressCallback;Lbolts/Task;Lbolts/Task$TaskCompletionSource;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseFile;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/parse/ProgressCallback;
    .param p3, "x3"    # Lbolts/Task;
    .param p4, "x4"    # Lbolts/Task$TaskCompletionSource;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parse/ParseFile;->saveAsync(Ljava/lang/String;Lcom/parse/ProgressCallback;Lbolts/Task;Lbolts/Task$TaskCompletionSource;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/parse/ParseFile;)[B
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseFile;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/parse/ParseFile;->getCachedData()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/parse/ParseFile;Lcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseFile;
    .param p1, "x1"    # Lcom/parse/ProgressCallback;
    .param p2, "x2"    # Lbolts/Task;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseFile;->getDataAsync(Lcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static clearCache()V
    .locals 5

    .prologue
    .line 43
    invoke-static {}, Lcom/parse/ParseFile;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 44
    .local v1, "file":Ljava/io/File;
    invoke-static {v1}, Lcom/parse/ParseFileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 43
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method static getCacheDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 35
    const-string v0, "files"

    invoke-static {v0}, Lcom/parse/Parse;->getParseCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getCachedData()[B
    .locals 2

    .prologue
    .line 188
    iget-object v1, p0, Lcom/parse/ParseFile;->data:[B

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/parse/ParseFile;->data:[B

    .line 211
    :goto_0
    return-object v1

    .line 194
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseFile;->getCacheFile()Ljava/io/File;

    move-result-object v0

    .line 195
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_1

    .line 196
    invoke-static {v0}, Lcom/parse/ParseFileUtils;->readFileToByteArray(Ljava/io/File;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 198
    .end local v0    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 203
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/parse/ParseFile;->getFilesFile()Ljava/io/File;

    move-result-object v0

    .line 204
    .restart local v0    # "file":Ljava/io/File;
    if-eqz v0, :cond_2

    .line 205
    invoke-static {v0}, Lcom/parse/ParseFileUtils;->readFileToByteArray(Ljava/io/File;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 207
    .end local v0    # "file":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 211
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDataAsync(Lcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;
    .locals 3
    .param p1, "progressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ProgressCallback;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 475
    .local p2, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/parse/ParseFile;->data:[B

    if-eqz v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/parse/ParseFile;->data:[B

    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    .line 545
    :goto_0
    return-object v1

    .line 480
    :cond_0
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v0

    .line 481
    .local v0, "tcs":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<[B>.TaskCompletionSource;"
    iget-object v1, p0, Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 486
    new-instance v1, Lcom/parse/ParseFile$7;

    invoke-direct {v1, p0}, Lcom/parse/ParseFile$7;-><init>(Lcom/parse/ParseFile;)V

    sget-object v2, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p2, v1, v2}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseFile$6;

    invoke-direct {v2, p0, v0, p1}, Lcom/parse/ParseFile$6;-><init>(Lcom/parse/ParseFile;Lbolts/Task$TaskCompletionSource;Lcom/parse/ProgressCallback;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    .line 545
    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v1

    goto :goto_0
.end method

.method private getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method static getFilesDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 39
    const-string v0, "files"

    invoke-static {v0}, Lcom/parse/Parse;->getParseFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private saveAsync(Ljava/lang/String;Lcom/parse/ProgressCallback;Lbolts/Task$TaskCompletionSource;)Lbolts/Task;
    .locals 2
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "uploadProgressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ProgressCallback;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">.TaskCompletionSource;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 424
    .local p3, "tcs":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<Ljava/lang/Void;>.TaskCompletionSource;"
    iget-object v0, p0, Lcom/parse/ParseFile;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseFile$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/parse/ParseFile$5;-><init>(Lcom/parse/ParseFile;Ljava/lang/String;Lcom/parse/ProgressCallback;Lbolts/Task$TaskCompletionSource;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private saveAsync(Ljava/lang/String;Lcom/parse/ProgressCallback;Lbolts/Task;Lbolts/Task$TaskCompletionSource;)Lbolts/Task;
    .locals 1
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "uploadProgressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ProgressCallback;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">.TaskCompletionSource;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    .local p3, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    .local p4, "tcs":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<Ljava/lang/Void;>.TaskCompletionSource;"
    invoke-virtual {p0}, Lcom/parse/ParseFile;->isDirty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 390
    :goto_0
    return-object v0

    .line 316
    :cond_0
    new-instance v0, Lcom/parse/ParseFile$3;

    invoke-direct {v0, p0, p4, p1, p2}, Lcom/parse/ParseFile$3;-><init>(Lcom/parse/ParseFile;Lbolts/Task$TaskCompletionSource;Ljava/lang/String;Lcom/parse/ProgressCallback;)V

    invoke-virtual {p3, v0}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    .line 390
    invoke-virtual {p4}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method

.method private setPinned(Z)V
    .locals 1
    .param p1, "pinned"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/parse/ParseFile;->setPinnedInBackground(Z)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;

    .line 245
    return-void
.end method

.method private setPinnedInBackground(Z)Lbolts/Task;
    .locals 3
    .param p1, "pinned"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/parse/ParseFile;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseFile$2;

    invoke-direct {v1, p0}, Lcom/parse/ParseFile$2;-><init>(Lcom/parse/ParseFile;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseFile$1;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseFile$1;-><init>(Lcom/parse/ParseFile;Z)V

    sget-object v2, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private setPinnedInBackground(ZLcom/parse/ParseCallback1;)V
    .locals 1
    .param p1, "pinned"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/parse/ParseCallback1",
            "<",
            "Lcom/parse/ParseException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p2, "callback":Lcom/parse/ParseCallback1;, "Lcom/parse/ParseCallback1<Lcom/parse/ParseException;>;"
    invoke-direct {p0, p1}, Lcom/parse/ParseFile;->setPinnedInBackground(Z)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 249
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 605
    new-instance v1, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 606
    .local v1, "tasks":Ljava/util/Set;, "Ljava/util/Set<Lbolts/Task<*>.TaskCompletionSource;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbolts/Task$TaskCompletionSource;

    .line 607
    .local v2, "tcs":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<*>.TaskCompletionSource;"
    invoke-virtual {v2}, Lbolts/Task$TaskCompletionSource;->trySetCancelled()Z

    goto :goto_0

    .line 609
    .end local v2    # "tcs":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<*>.TaskCompletionSource;"
    :cond_0
    iget-object v3, p0, Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 610
    return-void
.end method

.method encode()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 621
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 622
    .local v0, "json":Lorg/json/JSONObject;
    const-string v2, "__type"

    const-string v3, "File"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 623
    const-string v2, "name"

    invoke-virtual {p0}, Lcom/parse/ParseFile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 625
    invoke-virtual {p0}, Lcom/parse/ParseFile;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 626
    .local v1, "url":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 627
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to encode an unsaved ParseFile."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 629
    :cond_0
    const-string v2, "url"

    invoke-virtual {p0}, Lcom/parse/ParseFile;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 631
    return-object v0
.end method

.method getCacheFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/parse/ParseFile;->getFilename()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "filename":Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/parse/ParseFile;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getData()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/parse/ParseFile;->getDataInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getDataInBackground()Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 572
    const/4 v0, 0x0

    check-cast v0, Lcom/parse/ProgressCallback;

    invoke-virtual {p0, v0}, Lcom/parse/ParseFile;->getDataInBackground(Lcom/parse/ProgressCallback;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public getDataInBackground(Lcom/parse/ProgressCallback;)Lbolts/Task;
    .locals 2
    .param p1, "progressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ProgressCallback;",
            ")",
            "Lbolts/Task",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 557
    iget-object v0, p0, Lcom/parse/ParseFile;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseFile$8;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseFile$8;-><init>(Lcom/parse/ParseFile;Lcom/parse/ProgressCallback;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public getDataInBackground(Lcom/parse/GetDataCallback;)V
    .locals 1
    .param p1, "dataCallback"    # Lcom/parse/GetDataCallback;

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/parse/ParseFile;->getDataInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 597
    return-void
.end method

.method public getDataInBackground(Lcom/parse/GetDataCallback;Lcom/parse/ProgressCallback;)V
    .locals 1
    .param p1, "dataCallback"    # Lcom/parse/GetDataCallback;
    .param p2, "progressCallback"    # Lcom/parse/ProgressCallback;

    .prologue
    .line 586
    invoke-virtual {p0, p2}, Lcom/parse/ParseFile;->getDataInBackground(Lcom/parse/ProgressCallback;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 587
    return-void
.end method

.method getFilesFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/parse/ParseFile;->getFilename()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "filename":Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/parse/ParseFile;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/parse/ParseFile;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isDataAvailable()Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/parse/ParseFile;->data:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseFile;->isPinned()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/parse/ParseFile;->getCacheFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/parse/ParseFile;->getFilesFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/parse/ParseFile;->dirty:Z

    return v0
.end method

.method isPinned()Z
    .locals 2

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/parse/ParseFile;->getFilesFile()Ljava/io/File;

    move-result-object v0

    .line 216
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method pin()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 220
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parse/ParseFile;->setPinned(Z)V

    .line 221
    return-void
.end method

.method pinInBackground()Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parse/ParseFile;->setPinnedInBackground(Z)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method pinInBackground(Lcom/parse/ParseCallback1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseCallback1",
            "<",
            "Lcom/parse/ParseException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "callback":Lcom/parse/ParseCallback1;, "Lcom/parse/ParseCallback1<Lcom/parse/ParseException;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/parse/ParseFile;->setPinnedInBackground(ZLcom/parse/ParseCallback1;)V

    .line 237
    return-void
.end method

.method public save()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/parse/ParseFile;->saveInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;

    .line 305
    return-void
.end method

.method saveAsync(Ljava/lang/String;Lcom/parse/ProgressCallback;)Lbolts/Task;
    .locals 2
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "uploadProgressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ProgressCallback;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v0

    .line 417
    .local v0, "tcs":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<Ljava/lang/Void;>.TaskCompletionSource;"
    iget-object v1, p0, Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 419
    invoke-direct {p0, p1, p2, v0}, Lcom/parse/ParseFile;->saveAsync(Ljava/lang/String;Lcom/parse/ProgressCallback;Lbolts/Task$TaskCompletionSource;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public saveInBackground()Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    const/4 v0, 0x0

    check-cast v0, Lcom/parse/ProgressCallback;

    invoke-virtual {p0, v0}, Lcom/parse/ParseFile;->saveInBackground(Lcom/parse/ProgressCallback;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public saveInBackground(Lcom/parse/ProgressCallback;)Lbolts/Task;
    .locals 3
    .param p1, "uploadProgressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ProgressCallback;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v0

    .line 403
    .local v0, "tcs":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<Ljava/lang/Void;>.TaskCompletionSource;"
    iget-object v1, p0, Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionTokenAsync()Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseFile$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/parse/ParseFile$4;-><init>(Lcom/parse/ParseFile;Lcom/parse/ProgressCallback;Lbolts/Task$TaskCompletionSource;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public saveInBackground(Lcom/parse/SaveCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/parse/ParseFile;->saveInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 463
    return-void
.end method

.method public saveInBackground(Lcom/parse/SaveCallback;Lcom/parse/ProgressCallback;)V
    .locals 1
    .param p1, "saveCallback"    # Lcom/parse/SaveCallback;
    .param p2, "progressCallback"    # Lcom/parse/ProgressCallback;

    .prologue
    .line 452
    invoke-virtual {p0, p2}, Lcom/parse/ParseFile;->saveInBackground(Lcom/parse/ProgressCallback;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 453
    return-void
.end method

.method unpin()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parse/ParseFile;->setPinned(Z)V

    .line 225
    return-void
.end method

.method unpinInBackground()Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parse/ParseFile;->setPinnedInBackground(Z)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method unpinInBackground(Lcom/parse/ParseCallback1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseCallback1",
            "<",
            "Lcom/parse/ParseException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, "callback":Lcom/parse/ParseCallback1;, "Lcom/parse/ParseCallback1<Lcom/parse/ParseException;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/parse/ParseFile;->setPinnedInBackground(ZLcom/parse/ParseCallback1;)V

    .line 241
    return-void
.end method
