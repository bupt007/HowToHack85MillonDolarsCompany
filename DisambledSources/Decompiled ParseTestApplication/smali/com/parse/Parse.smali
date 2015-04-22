.class public Lcom/parse/Parse;
.super Ljava/lang/Object;
.source "Parse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/Parse$ParseCallbacks;
    }
.end annotation


# static fields
.field public static final LOG_LEVEL_DEBUG:I = 0x3

.field public static final LOG_LEVEL_ERROR:I = 0x6

.field public static final LOG_LEVEL_INFO:I = 0x4

.field public static final LOG_LEVEL_NONE:I = 0x7fffffff

.field public static final LOG_LEVEL_VERBOSE:I = 0x2

.field public static final LOG_LEVEL_WARNING:I = 0x5

.field private static final MUTEX:Ljava/lang/Object;

.field private static final MUTEX_CALLBACKS:Ljava/lang/Object;

.field private static final PARSE_APPLICATION_ID:Ljava/lang/String; = "com.parse.APPLICATION_ID"

.field private static final PARSE_CLIENT_KEY:Ljava/lang/String; = "com.parse.CLIENT_KEY"

.field private static final SCHEDULED_EXECUTOR_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "com.parse.Parse"

.field static applicationContext:Landroid/content/Context;

.field static applicationId:Ljava/lang/String;

.field private static callbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/parse/Parse$ParseCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field static clientKey:Ljava/lang/String;

.field private static final dateFormat:Ljava/text/DateFormat;

.field static eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

.field private static logLevel:I

.field static maxParseFileSize:I

.field private static scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 59
    const/4 v1, 0x6

    sput v1, Lcom/parse/Parse;->logLevel:I

    .line 66
    const/high16 v1, 0xa00000

    sput v1, Lcom/parse/Parse;->maxParseFileSize:I

    .line 68
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/parse/Parse;->MUTEX:Ljava/lang/Object;

    .line 69
    const/4 v1, 0x0

    sput-object v1, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    .line 80
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 81
    .local v0, "format":Ljava/text/DateFormat;
    new-instance v1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    const-string v3, "GMT"

    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 82
    sput-object v0, Lcom/parse/Parse;->dateFormat:Ljava/text/DateFormat;

    .line 867
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/parse/Parse;->SCHEDULED_EXECUTOR_LOCK:Ljava/lang/Object;

    .line 994
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/parse/Parse;->MUTEX_CALLBACKS:Ljava/lang/Object;

    .line 995
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static addNumbers(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4
    .param p0, "first"    # Ljava/lang/Number;
    .param p1, "second"    # Ljava/lang/Number;

    .prologue
    .line 767
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 768
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 778
    :goto_0
    return-object v0

    .line 769
    :cond_1
    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 770
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 771
    :cond_3
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 772
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 773
    :cond_5
    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_6

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 774
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 775
    :cond_7
    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_8

    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_9

    .line 776
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 777
    :cond_9
    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_a

    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_b

    .line 778
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 780
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown number type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static allParsePushIntentReceiversInternal()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 298
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "com.parse.push.intent.RECEIVE"

    aput-object v6, v5, v3

    const-string v6, "com.parse.push.intent.DELETE"

    aput-object v6, v5, v4

    const/4 v6, 0x2

    const-string v7, "com.parse.push.intent.OPEN"

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/parse/ManifestInfo;->getIntentReceivers([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 303
    .local v1, "intentReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 304
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v5, v5, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v5, :cond_0

    .line 308
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method static callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/parse/ParseCallback1",
            "<",
            "Lcom/parse/ParseException;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 887
    .local p0, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    .local p1, "callback":Lcom/parse/ParseCallback1;, "Lcom/parse/ParseCallback1<Lcom/parse/ParseException;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;Z)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;Z)Lbolts/Task;
    .locals 1
    .param p2, "reportCancellation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/parse/ParseCallback1",
            "<",
            "Lcom/parse/ParseException;",
            ">;Z)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 897
    .local p0, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    .local p1, "callback":Lcom/parse/ParseCallback1;, "Lcom/parse/ParseCallback1<Lcom/parse/ParseException;>;"
    if-nez p1, :cond_0

    .line 900
    .end local p0    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :goto_0
    return-object p0

    .restart local p0    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :cond_0
    new-instance v0, Lcom/parse/Parse$5;

    invoke-direct {v0, p1}, Lcom/parse/Parse$5;-><init>(Lcom/parse/ParseCallback1;)V

    invoke-static {p0, v0, p2}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;Z)Lbolts/Task;

    move-result-object p0

    goto :goto_0
.end method

.method static callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Task",
            "<TT;>;",
            "Lcom/parse/ParseCallback2",
            "<TT;",
            "Lcom/parse/ParseException;",
            ">;)",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 915
    .local p0, "task":Lbolts/Task;, "Lbolts/Task<TT;>;"
    .local p1, "callback":Lcom/parse/ParseCallback2;, "Lcom/parse/ParseCallback2<TT;Lcom/parse/ParseException;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;Z)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;Z)Lbolts/Task;
    .locals 2
    .param p2, "reportCancellation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Task",
            "<TT;>;",
            "Lcom/parse/ParseCallback2",
            "<TT;",
            "Lcom/parse/ParseException;",
            ">;Z)",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 925
    .local p0, "task":Lbolts/Task;, "Lbolts/Task<TT;>;"
    .local p1, "callback":Lcom/parse/ParseCallback2;, "Lcom/parse/ParseCallback2<TT;Lcom/parse/ParseException;>;"
    if-nez p1, :cond_0

    .line 959
    .end local p0    # "task":Lbolts/Task;, "Lbolts/Task<TT;>;"
    :goto_0
    return-object p0

    .line 928
    .restart local p0    # "task":Lbolts/Task;, "Lbolts/Task<TT;>;"
    :cond_0
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v0

    .line 929
    .local v0, "tcs":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<TT;>.TaskCompletionSource;"
    new-instance v1, Lcom/parse/Parse$6;

    invoke-direct {v1, p2, v0, p1}, Lcom/parse/Parse$6;-><init>(ZLbolts/Task$TaskCompletionSource;Lcom/parse/ParseCallback2;)V

    invoke-virtual {p0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    .line 959
    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object p0

    goto :goto_0
.end method

.method static checkCacheApplicationId()V
    .locals 10

    .prologue
    .line 475
    sget-object v7, Lcom/parse/Parse;->MUTEX:Ljava/lang/Object;

    monitor-enter v7

    .line 476
    :try_start_0
    sget-object v6, Lcom/parse/Parse;->applicationId:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 478
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v6

    const-string v8, "applicationId"

    invoke-direct {v0, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 479
    .local v0, "applicationIdFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    .line 481
    const/4 v4, 0x0

    .line 483
    .local v4, "matches":Z
    :try_start_1
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v6, "r"

    invoke-direct {v3, v0, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 484
    .local v3, "f":Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v6, v8

    new-array v1, v6, [B

    .line 485
    .local v1, "bytes":[B
    invoke-virtual {v3, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 486
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 487
    new-instance v2, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v2, v1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 488
    .local v2, "diskApplicationId":Ljava/lang/String;
    sget-object v6, Lcom/parse/Parse;->applicationId:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .line 495
    .end local v1    # "bytes":[B
    .end local v2    # "diskApplicationId":Ljava/lang/String;
    .end local v3    # "f":Ljava/io/RandomAccessFile;
    :goto_0
    if-nez v4, :cond_0

    .line 497
    :try_start_2
    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v6

    invoke-static {v6}, Lcom/parse/Parse;->recursiveDelete(Ljava/io/File;)V

    .line 502
    .end local v4    # "matches":Z
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "applicationIdFile":Ljava/io/File;
    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v6

    const-string v8, "applicationId"

    invoke-direct {v0, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 504
    .restart local v0    # "applicationIdFile":Ljava/io/File;
    :try_start_3
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 505
    .local v5, "out":Ljava/io/FileOutputStream;
    sget-object v6, Lcom/parse/Parse;->applicationId:Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 506
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 516
    .end local v5    # "out":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    :try_start_4
    monitor-exit v7

    .line 517
    return-void

    .line 516
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 512
    :catch_0
    move-exception v6

    goto :goto_1

    .line 509
    :catch_1
    move-exception v6

    goto :goto_1

    .line 507
    :catch_2
    move-exception v6

    goto :goto_1

    .line 491
    .restart local v4    # "matches":Z
    :catch_3
    move-exception v6

    goto :goto_0

    .line 489
    :catch_4
    move-exception v6

    goto :goto_0
.end method

.method static checkContext()V
    .locals 2

    .prologue
    .line 561
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 562
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "applicationContext is null. You must call Parse.initialize(Context) before using the Parse library."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_0
    return-void
.end method

.method static checkInit()V
    .locals 2

    .prologue
    .line 548
    sget-object v0, Lcom/parse/Parse;->applicationId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 549
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "applicationId is null. You must call Parse.initialize(Context) before using the Parse library."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :cond_0
    sget-object v0, Lcom/parse/Parse;->clientKey:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 554
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "clientKey is null. You must call Parse.initialize(Context) before using the Parse library."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_1
    return-void
.end method

.method private static collectParseCallbacks()[Lcom/parse/Parse$ParseCallbacks;
    .locals 3

    .prologue
    .line 1043
    sget-object v2, Lcom/parse/Parse;->MUTEX_CALLBACKS:Ljava/lang/Object;

    monitor-enter v2

    .line 1044
    :try_start_0
    sget-object v1, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 1045
    const/4 v0, 0x0

    monitor-exit v2

    .line 1052
    .local v0, "callbacks":[Lcom/parse/Parse$ParseCallbacks;
    :goto_0
    return-object v0

    .line 1047
    .end local v0    # "callbacks":[Lcom/parse/Parse$ParseCallbacks;
    :cond_0
    sget-object v1, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v0, v1, [Lcom/parse/Parse$ParseCallbacks;

    .line 1048
    .restart local v0    # "callbacks":[Lcom/parse/Parse$ParseCallbacks;
    sget-object v1, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1049
    sget-object v1, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callbacks":[Lcom/parse/Parse$ParseCallbacks;
    check-cast v0, [Lcom/parse/Parse$ParseCallbacks;

    .line 1051
    .restart local v0    # "callbacks":[Lcom/parse/Parse$ParseCallbacks;
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "callbacks":[Lcom/parse/Parse$ParseCallbacks;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static compareNumbers(Ljava/lang/Number;Ljava/lang/Number;)I
    .locals 8
    .param p0, "first"    # Ljava/lang/Number;
    .param p1, "second"    # Ljava/lang/Number;

    .prologue
    const-wide/16 v6, 0x0

    .line 803
    instance-of v2, p0, Ljava/lang/Double;

    if-nez v2, :cond_0

    instance-of v2, p1, Ljava/lang/Double;

    if-eqz v2, :cond_1

    .line 804
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->signum(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 815
    :goto_0
    return v2

    .line 805
    :cond_1
    instance-of v2, p0, Ljava/lang/Float;

    if-nez v2, :cond_2

    instance-of v2, p1, Ljava/lang/Float;

    if-eqz v2, :cond_3

    .line 806
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    goto :goto_0

    .line 807
    :cond_3
    instance-of v2, p0, Ljava/lang/Long;

    if-nez v2, :cond_4

    instance-of v2, p1, Ljava/lang/Long;

    if-eqz v2, :cond_7

    .line 808
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 809
    .local v0, "diff":J
    cmp-long v2, v0, v6

    if-gez v2, :cond_5

    const/4 v2, -0x1

    goto :goto_0

    :cond_5
    cmp-long v2, v0, v6

    if-lez v2, :cond_6

    const/4 v2, 0x1

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    .line 810
    .end local v0    # "diff":J
    :cond_7
    instance-of v2, p0, Ljava/lang/Integer;

    if-nez v2, :cond_8

    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_9

    .line 811
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    .line 812
    :cond_9
    instance-of v2, p0, Ljava/lang/Short;

    if-nez v2, :cond_a

    instance-of v2, p1, Ljava/lang/Short;

    if-eqz v2, :cond_b

    .line 813
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    .line 814
    :cond_b
    instance-of v2, p0, Ljava/lang/Byte;

    if-nez v2, :cond_c

    instance-of v2, p1, Ljava/lang/Byte;

    if-eqz v2, :cond_d

    .line 815
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    .line 817
    :cond_d
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unknown number type."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static dateToString(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 718
    sget-object v1, Lcom/parse/Parse;->MUTEX:Ljava/lang/Object;

    monitor-enter v1

    .line 719
    :try_start_0
    sget-object v0, Lcom/parse/Parse;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 720
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static declared-synchronized deleteDiskObject(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1104
    const-class v1, Lcom/parse/Parse;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/parse/Parse;->setContextIfNeeded(Landroid/content/Context;)V

    .line 1105
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/parse/ParseFileUtils;->deleteQuietly(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1104
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static destroy()V
    .locals 3

    .prologue
    .line 265
    sget-object v2, Lcom/parse/Parse;->MUTEX:Ljava/lang/Object;

    monitor-enter v2

    .line 266
    :try_start_0
    sget-object v0, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    .line 267
    .local v0, "queue":Lcom/parse/ParseEventuallyQueue;
    const/4 v1, 0x0

    sput-object v1, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    .line 268
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {v0}, Lcom/parse/ParseEventuallyQueue;->onDestroy()V

    .line 273
    :cond_0
    sget-object v2, Lcom/parse/Parse;->MUTEX:Ljava/lang/Object;

    monitor-enter v2

    .line 274
    const/4 v1, 0x0

    :try_start_1
    sput-object v1, Lcom/parse/Parse;->applicationId:Ljava/lang/String;

    .line 275
    const/4 v1, 0x0

    sput-object v1, Lcom/parse/Parse;->clientKey:Ljava/lang/String;

    .line 276
    const/4 v1, 0x0

    sput-object v1, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    .line 277
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 278
    return-void

    .line 268
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 277
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private static dispatchOnParseInitialized()V
    .locals 5

    .prologue
    .line 1033
    invoke-static {}, Lcom/parse/Parse;->collectParseCallbacks()[Lcom/parse/Parse$ParseCallbacks;

    move-result-object v2

    .line 1034
    .local v2, "callbacks":[Lcom/parse/Parse$ParseCallbacks;
    if-eqz v2, :cond_0

    .line 1035
    move-object v0, v2

    .local v0, "arr$":[Lcom/parse/Parse$ParseCallbacks;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 1036
    .local v1, "callback":Lcom/parse/Parse$ParseCallbacks;
    invoke-interface {v1}, Lcom/parse/Parse$ParseCallbacks;->onParseInitialized()V

    .line 1035
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1039
    .end local v0    # "arr$":[Lcom/parse/Parse$ParseCallbacks;
    .end local v1    # "callback":Lcom/parse/Parse$ParseCallbacks;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    return-void
.end method

.method public static enableLocalDatastore(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    invoke-static {}, Lcom/parse/Parse;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "`Parse#enableLocalDatastore(Context)` must be invoked before `Parse#initialize(Context)`"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    invoke-static {p0}, Lcom/parse/OfflineStore;->enableOfflineStore(Landroid/content/Context;)V

    .line 108
    return-void
.end method

.method static encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;
    .locals 22
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "objectEncoder"    # Lcom/parse/ParseObjectEncodingStrategy;

    .prologue
    .line 596
    :try_start_0
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/parse/ParseObject;

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 597
    check-cast p0, Lcom/parse/ParseObject;

    .end local p0    # "object":Ljava/lang/Object;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/parse/ParseObjectEncodingStrategy;->encodeRelatedObject(Lcom/parse/ParseObject;)Lorg/json/JSONObject;

    move-result-object v10

    .line 694
    :cond_0
    :goto_0
    return-object v10

    .line 600
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_1
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/parse/ParseQuery;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 601
    move-object/from16 v0, p0

    check-cast v0, Lcom/parse/ParseQuery;

    move-object/from16 v17, v0

    .line 602
    .local v17, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<*>;"
    invoke-virtual/range {v17 .. v17}, Lcom/parse/ParseQuery;->toREST()Lorg/json/JSONObject;

    move-result-object v10

    goto :goto_0

    .line 605
    .end local v17    # "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<*>;"
    :cond_2
    move-object/from16 v0, p0

    instance-of v0, v0, Ljava/util/Date;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 606
    check-cast p0, Ljava/util/Date;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-static/range {p0 .. p0}, Lcom/parse/Parse;->encodeDate(Ljava/util/Date;)Lorg/json/JSONObject;

    move-result-object v10

    goto :goto_0

    .line 609
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, p0

    instance-of v0, v0, [B

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 610
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 611
    .local v10, "json":Lorg/json/JSONObject;
    const-string v19, "__type"

    const-string v20, "Bytes"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 612
    const-string v19, "base64"

    check-cast p0, [B

    .end local p0    # "object":Ljava/lang/Object;
    check-cast p0, [B

    invoke-static/range {p0 .. p0}, Lcom/parse/codec/binary/Base64;->encodeBase64String([B)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 689
    .end local v10    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 690
    .local v6, "e":Lorg/json/JSONException;
    new-instance v19, Ljava/lang/RuntimeException;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v19

    .line 616
    .end local v6    # "e":Lorg/json/JSONException;
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/parse/ParseFile;

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 617
    check-cast p0, Lcom/parse/ParseFile;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Lcom/parse/ParseFile;->encode()Lorg/json/JSONObject;

    move-result-object v10

    goto :goto_0

    .line 620
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/parse/ParseGeoPoint;

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 621
    move-object/from16 v0, p0

    check-cast v0, Lcom/parse/ParseGeoPoint;

    move-object/from16 v16, v0

    .line 622
    .local v16, "point":Lcom/parse/ParseGeoPoint;
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 623
    .restart local v10    # "json":Lorg/json/JSONObject;
    const-string v19, "__type"

    const-string v20, "GeoPoint"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 624
    const-string v19, "latitude"

    invoke-virtual/range {v16 .. v16}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v20

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v10, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 625
    const-string v19, "longitude"

    invoke-virtual/range {v16 .. v16}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v20

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v10, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 629
    .end local v10    # "json":Lorg/json/JSONObject;
    .end local v16    # "point":Lcom/parse/ParseGeoPoint;
    :cond_6
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/parse/ParseACL;

    move/from16 v19, v0

    if-eqz v19, :cond_7

    .line 630
    move-object/from16 v0, p0

    check-cast v0, Lcom/parse/ParseACL;

    move-object v4, v0

    .line 631
    .local v4, "acl":Lcom/parse/ParseACL;
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/parse/ParseACL;->toJSONObject(Lcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;

    move-result-object v10

    goto/16 :goto_0

    .line 634
    .end local v4    # "acl":Lcom/parse/ParseACL;
    :cond_7
    move-object/from16 v0, p0

    instance-of v0, v0, Ljava/util/Map;

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 636
    move-object/from16 v0, p0

    check-cast v0, Ljava/util/Map;

    move-object v14, v0

    .line 637
    .local v14, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 638
    .restart local v10    # "json":Lorg/json/JSONObject;
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 639
    .local v15, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 644
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "json":Lorg/json/JSONObject;
    .end local v14    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v15    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_8
    move-object/from16 v0, p0

    instance-of v0, v0, Lorg/json/JSONObject;

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 645
    move-object/from16 v0, p0

    check-cast v0, Lorg/json/JSONObject;

    move-object v13, v0

    .line 646
    .local v13, "map":Lorg/json/JSONObject;
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 647
    .restart local v10    # "json":Lorg/json/JSONObject;
    invoke-virtual {v13}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v12

    .line 648
    .local v12, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 649
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 650
    .local v11, "key":Ljava/lang/String;
    invoke-virtual {v13, v11}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 655
    .end local v10    # "json":Lorg/json/JSONObject;
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v13    # "map":Lorg/json/JSONObject;
    :cond_9
    move-object/from16 v0, p0

    instance-of v0, v0, Ljava/util/List;

    move/from16 v19, v0

    if-eqz v19, :cond_b

    .line 656
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 657
    .local v5, "array":Lorg/json/JSONArray;
    check-cast p0, Ljava/util/List;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 658
    .local v9, "item":Ljava/lang/Object;
    move-object/from16 v0, p1

    invoke-static {v9, v0}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .end local v9    # "item":Ljava/lang/Object;
    :cond_a
    move-object v10, v5

    .line 660
    goto/16 :goto_0

    .line 663
    .end local v5    # "array":Lorg/json/JSONArray;
    .end local v8    # "i$":Ljava/util/Iterator;
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_b
    move-object/from16 v0, p0

    instance-of v0, v0, Lorg/json/JSONArray;

    move/from16 v19, v0

    if-eqz v19, :cond_c

    .line 664
    move-object/from16 v0, p0

    check-cast v0, Lorg/json/JSONArray;

    move-object v5, v0

    .line 665
    .restart local v5    # "array":Lorg/json/JSONArray;
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 666
    .local v10, "json":Lorg/json/JSONArray;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_0

    .line 667
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 666
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 672
    .end local v5    # "array":Lorg/json/JSONArray;
    .end local v7    # "i":I
    .end local v10    # "json":Lorg/json/JSONArray;
    :cond_c
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/parse/ParseRelation;

    move/from16 v19, v0

    if-eqz v19, :cond_d

    .line 673
    move-object/from16 v0, p0

    check-cast v0, Lcom/parse/ParseRelation;

    move-object/from16 v18, v0

    .line 674
    .local v18, "relation":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<*>;"
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/parse/ParseRelation;->encodeToJSON(Lcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;

    move-result-object v10

    goto/16 :goto_0

    .line 677
    .end local v18    # "relation":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<*>;"
    :cond_d
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/parse/ParseFieldOperation;

    move/from16 v19, v0

    if-eqz v19, :cond_e

    .line 678
    check-cast p0, Lcom/parse/ParseFieldOperation;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-interface/range {p0 .. p1}, Lcom/parse/ParseFieldOperation;->encode(Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_0

    .line 681
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_e
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/parse/ParseQuery$RelationConstraint;

    move/from16 v19, v0

    if-eqz v19, :cond_f

    .line 682
    check-cast p0, Lcom/parse/ParseQuery$RelationConstraint;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p1}, Lcom/parse/ParseQuery$RelationConstraint;->encode(Lcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;

    move-result-object v10

    goto/16 :goto_0

    .line 685
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_f
    if-nez p0, :cond_10

    .line 686
    sget-object v10, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 693
    :cond_10
    invoke-static/range {p0 .. p0}, Lcom/parse/Parse;->isValidType(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    move-object/from16 v10, p0

    .line 694
    goto/16 :goto_0

    .line 697
    :cond_11
    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "invalid type for ParseObject: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19
.end method

.method static encodeDate(Ljava/util/Date;)Lorg/json/JSONObject;
    .locals 5
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 724
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 725
    .local v2, "object":Lorg/json/JSONObject;
    invoke-static {p0}, Lcom/parse/Parse;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 727
    .local v1, "iso":Ljava/lang/String;
    :try_start_0
    const-string v3, "__type"

    const-string v4, "Date"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 728
    const-string v3, "iso"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    return-object v2

    .line 729
    :catch_0
    move-exception v0

    .line 731
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method static getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 312
    invoke-static {}, Lcom/parse/Parse;->checkContext()V

    .line 313
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static declared-synchronized getDiskObject(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1087
    const-class v2, Lcom/parse/Parse;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/parse/Parse;->setContextIfNeeded(Landroid/content/Context;)V

    .line 1088
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1089
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/parse/Parse;->getDiskObject(Ljava/io/File;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 1087
    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static declared-synchronized getDiskObject(Ljava/io/File;)Lorg/json/JSONObject;
    .locals 7
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x0

    .line 982
    const-class v5, Lcom/parse/Parse;

    monitor-enter v5

    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p0}, Lcom/parse/ParseFileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v3

    const-string v6, "UTF-8"

    invoke-direct {v1, v3, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 984
    .local v1, "fileContent":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 985
    .local v2, "tokener":Lorg/json/JSONTokener;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 989
    .end local v1    # "fileContent":Ljava/lang/String;
    .end local v2    # "tokener":Lorg/json/JSONTokener;
    :goto_0
    monitor-exit v5

    return-object v3

    .line 986
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v3, v4

    .line 987
    goto :goto_0

    .line 988
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .local v0, "e":Lorg/json/JSONException;
    move-object v3, v4

    .line 989
    goto :goto_0

    .line 982
    .end local v0    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v3

    monitor-exit v5

    throw v3
.end method

.method static getEventuallyQueue()Lcom/parse/ParseEventuallyQueue;
    .locals 4

    .prologue
    .line 526
    sget-object v2, Lcom/parse/Parse;->MUTEX:Ljava/lang/Object;

    monitor-enter v2

    .line 527
    :try_start_0
    invoke-static {}, Lcom/parse/OfflineStore;->isEnabled()Z

    move-result v0

    .line 528
    .local v0, "isLocalDatastoreEnabled":Z
    sget-object v1, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    sget-object v1, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    instance-of v1, v1, Lcom/parse/ParseCommandCache;

    if-nez v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    sget-object v1, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    instance-of v1, v1, Lcom/parse/ParsePinningEventuallyQueue;

    if-eqz v1, :cond_2

    .line 531
    :cond_1
    invoke-static {}, Lcom/parse/Parse;->checkContext()V

    .line 532
    if-eqz v0, :cond_3

    new-instance v1, Lcom/parse/ParsePinningEventuallyQueue;

    sget-object v3, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/parse/ParsePinningEventuallyQueue;-><init>(Landroid/content/Context;)V

    :goto_0
    sput-object v1, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    .line 539
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/parse/ParseCommandCache;->getPendingCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 540
    new-instance v1, Lcom/parse/ParseCommandCache;

    sget-object v3, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/parse/ParseCommandCache;-><init>(Landroid/content/Context;)V

    .line 543
    :cond_2
    sget-object v1, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    monitor-exit v2

    return-object v1

    .line 532
    :cond_3
    new-instance v1, Lcom/parse/ParseCommandCache;

    sget-object v3, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/parse/ParseCommandCache;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 544
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getLogLevel()I
    .locals 1

    .prologue
    .line 341
    sget v0, Lcom/parse/Parse;->logLevel:I

    return v0
.end method

.method static getParseCacheDir()Ljava/io/File;
    .locals 4

    .prologue
    .line 417
    sget-object v2, Lcom/parse/Parse;->MUTEX:Ljava/lang/Object;

    monitor-enter v2

    .line 418
    :try_start_0
    invoke-static {}, Lcom/parse/Parse;->checkContext()V

    .line 419
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v3, "com.parse"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 420
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 421
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 423
    :cond_0
    monitor-exit v2

    return-object v0

    .line 424
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static getParseCacheDir(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "subDir"    # Ljava/lang/String;

    .prologue
    .line 428
    sget-object v2, Lcom/parse/Parse;->MUTEX:Ljava/lang/Object;

    monitor-enter v2

    .line 429
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 430
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 431
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 433
    :cond_0
    monitor-exit v2

    return-object v0

    .line 434
    .end local v0    # "dir":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static getParseDir()Ljava/io/File;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 410
    sget-object v1, Lcom/parse/Parse;->MUTEX:Ljava/lang/Object;

    monitor-enter v1

    .line 411
    :try_start_0
    invoke-static {}, Lcom/parse/Parse;->checkContext()V

    .line 412
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    const-string v2, "Parse"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getParseFilesDir()Ljava/io/File;
    .locals 4

    .prologue
    .line 438
    sget-object v2, Lcom/parse/Parse;->MUTEX:Ljava/lang/Object;

    monitor-enter v2

    .line 439
    :try_start_0
    invoke-static {}, Lcom/parse/Parse;->checkContext()V

    .line 440
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v3, "com.parse"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 441
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 442
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 444
    :cond_0
    monitor-exit v2

    return-object v0

    .line 445
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static getParseFilesDir(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "subDir"    # Ljava/lang/String;

    .prologue
    .line 449
    sget-object v2, Lcom/parse/Parse;->MUTEX:Ljava/lang/Object;

    monitor-enter v2

    .line 450
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 451
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 452
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 454
    :cond_0
    monitor-exit v2

    return-object v0

    .line 455
    .end local v0    # "dir":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static getScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .prologue
    .line 872
    sget-object v1, Lcom/parse/Parse;->SCHEDULED_EXECUTOR_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 873
    :try_start_0
    sget-object v0, Lcom/parse/Parse;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 874
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/parse/Parse;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 876
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 877
    sget-object v0, Lcom/parse/Parse;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0

    .line 876
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static hasPermission(Ljava/lang/String;)Z
    .locals 1
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    .line 569
    invoke-static {}, Lcom/parse/Parse;->checkContext()V

    .line 570
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    .line 153
    sget-object v3, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/parse/ManifestInfo;->getApplicationMetadata(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v2

    .line 154
    .local v2, "metaData":Landroid/os/Bundle;
    if-eqz v2, :cond_1

    .line 155
    const-string v3, "com.parse.APPLICATION_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "applicationId":Ljava/lang/String;
    const-string v3, "com.parse.CLIENT_KEY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "clientKey":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 159
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "ApplicationId not defined. You must provide ApplicationId in AndroidManifest.xml.\n<meta-data\n    android:name=\"com.parse.APPLICATION_ID\"\n    android:value=\"<Your Application Id>\" />"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 165
    :cond_0
    if-nez v1, :cond_2

    .line 166
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "ClientKey not defined. You must provide ClientKey in AndroidManifest.xml.\n<meta-data\n    android:name=\"com.parse.CLIENT_KEY\"\n    android:value=\"<Your Client Key>\" />"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 173
    .end local v0    # "applicationId":Ljava/lang/String;
    .end local v1    # "clientKey":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Can\'t get Application Metadata"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 175
    .restart local v0    # "applicationId":Ljava/lang/String;
    .restart local v1    # "clientKey":Ljava/lang/String;
    :cond_2
    invoke-static {p0, v0, v1}, Lcom/parse/Parse;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p2, "clientKey"    # Ljava/lang/String;

    .prologue
    .line 205
    invoke-static {p0}, Lcom/parse/ParseRequest;->initialize(Landroid/content/Context;)V

    .line 206
    invoke-static {p0}, Lcom/parse/ParseKeyValueCache;->initialize(Landroid/content/Context;)V

    .line 207
    invoke-static {}, Lcom/parse/ParseObject;->registerParseSubclasses()V

    .line 213
    sput-object p1, Lcom/parse/Parse;->applicationId:Ljava/lang/String;

    .line 214
    sput-object p2, Lcom/parse/Parse;->clientKey:Ljava/lang/String;

    .line 215
    if-eqz p0, :cond_0

    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    .line 219
    invoke-static {}, Lcom/parse/Parse;->checkCacheApplicationId()V

    .line 220
    new-instance v0, Lcom/parse/Parse$1;

    const-string v1, "Parse.initialize Disk Check & Starting Command Cache"

    invoke-direct {v0, v1}, Lcom/parse/Parse$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/parse/Parse$1;->start()V

    .line 229
    :cond_0
    invoke-static {}, Lcom/parse/ParseFieldOperations;->registerDefaultDecoders()V

    .line 231
    invoke-static {}, Lcom/parse/Parse;->allParsePushIntentReceiversInternal()Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "To prevent external tampering to your app\'s notifications, all receivers registered to handle the following actions must have their exported attributes set to false: com.parse.push.intent.RECEIVE, com.parse.push.intent.OPEN, com.parse.push.intent.DELETE"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_1
    invoke-static {}, Lcom/parse/GcmRegistrar;->getInstance()Lcom/parse/GcmRegistrar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/GcmRegistrar;->updateAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/Parse$3;

    invoke-direct {v1}, Lcom/parse/Parse$3;-><init>()V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/Parse$2;

    invoke-direct {v1}, Lcom/parse/Parse$2;-><init>()V

    sget-object v2, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    .line 255
    invoke-static {}, Lcom/parse/Parse;->dispatchOnParseInitialized()V

    .line 258
    sget-object v1, Lcom/parse/Parse;->MUTEX_CALLBACKS:Ljava/lang/Object;

    monitor-enter v1

    .line 259
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    .line 260
    monitor-exit v1

    .line 261
    return-void

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static isContainerObject(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 762
    instance-of v0, p0, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/json/JSONArray;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/parse/ParseACL;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/parse/ParseGeoPoint;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/util/List;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isInitialized()Z
    .locals 1

    .prologue
    .line 284
    sget-object v0, Lcom/parse/Parse;->applicationId:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/parse/Parse;->clientKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isValidType(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 587
    instance-of v0, p0, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/json/JSONArray;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    instance-of v0, p0, Lcom/parse/ParseObject;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/parse/ParseACL;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/parse/ParseFile;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/parse/ParseGeoPoint;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/util/Date;

    if-nez v0, :cond_0

    instance-of v0, p0, [B

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/util/List;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/util/Map;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/parse/ParseRelation;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 5
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .param p1, "tokens"    # Ljava/lang/Iterable;

    .prologue
    .line 826
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 827
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 828
    .local v0, "firstTime":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 829
    .local v2, "item":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 830
    const/4 v0, 0x0

    .line 834
    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 832
    :cond_0
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 836
    .end local v2    # "item":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method static keys(Lorg/json/JSONObject;)Ljava/lang/Iterable;
    .locals 2
    .param p0, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 752
    move-object v0, p0

    .line 753
    .local v0, "finalObject":Lorg/json/JSONObject;
    new-instance v1, Lcom/parse/Parse$4;

    invoke-direct {v1, v0}, Lcom/parse/Parse$4;-><init>(Lorg/json/JSONObject;)V

    return-object v1
.end method

.method private static log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "messageLogLevel"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 345
    sget v0, Lcom/parse/Parse;->logLevel:I

    if-lt p0, v0, :cond_0

    .line 346
    if-nez p3, :cond_1

    .line 347
    sget v0, Lcom/parse/Parse;->logLevel:I

    invoke-static {v0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    sget v0, Lcom/parse/Parse;->logLevel:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static logD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 367
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 368
    return-void
.end method

.method static logD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 363
    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2}, Lcom/parse/Parse;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 364
    return-void
.end method

.method static logE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 391
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 392
    return-void
.end method

.method static logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 387
    const/4 v0, 0x6

    invoke-static {v0, p0, p1, p2}, Lcom/parse/Parse;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 388
    return-void
.end method

.method static logI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 375
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/Parse;->logI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 376
    return-void
.end method

.method static logI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 371
    const/4 v0, 0x4

    invoke-static {v0, p0, p1, p2}, Lcom/parse/Parse;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 372
    return-void
.end method

.method static logV(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 359
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/Parse;->logV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 360
    return-void
.end method

.method static logV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 355
    const/4 v0, 0x2

    invoke-static {v0, p0, p1, p2}, Lcom/parse/Parse;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 356
    return-void
.end method

.method static logW(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 383
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/Parse;->logW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 384
    return-void
.end method

.method static logW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 379
    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Lcom/parse/Parse;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 380
    return-void
.end method

.method static partitionList(Ljava/util/List;I)Ljava/util/List;
    .locals 5
    .param p1, "partitionSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;I)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 737
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 738
    .local v2, "lists":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    const/4 v0, 0x0

    .line 739
    .local v0, "index":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 740
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 742
    .local v1, "length":I
    invoke-interface {p0, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 743
    .local v3, "sublist":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 745
    add-int/2addr v0, v1

    .line 746
    goto :goto_0

    .line 747
    .end local v1    # "length":I
    .end local v3    # "sublist":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_0
    return-object v2
.end method

.method static recursiveDelete(Ljava/io/File;)V
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 460
    sget-object v5, Lcom/parse/Parse;->MUTEX:Ljava/lang/Object;

    monitor-enter v5

    .line 461
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 462
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 463
    .local v1, "f":Ljava/io/File;
    invoke-static {v1}, Lcom/parse/Parse;->recursiveDelete(Ljava/io/File;)V

    .line 462
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 466
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 467
    monitor-exit v5

    .line 468
    return-void

    .line 467
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method static registerParseCallbacks(Lcom/parse/Parse$ParseCallbacks;)V
    .locals 2
    .param p0, "listener"    # Lcom/parse/Parse$ParseCallbacks;

    .prologue
    .line 1005
    invoke-static {}, Lcom/parse/Parse;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1006
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must register callbacks before Parse.initialize(Context)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1010
    :cond_0
    sget-object v1, Lcom/parse/Parse;->MUTEX_CALLBACKS:Ljava/lang/Object;

    monitor-enter v1

    .line 1011
    :try_start_0
    sget-object v0, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 1012
    monitor-exit v1

    .line 1016
    :goto_0
    return-void

    .line 1014
    :cond_1
    sget-object v0, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1015
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static requirePermission(Ljava/lang/String;)V
    .locals 3
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    .line 574
    invoke-static {p0}, Lcom/parse/Parse;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 575
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To use this functionality, add this to your AndroidManifest.xml:\n<uses-permission android:name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 579
    :cond_0
    return-void
.end method

.method static declared-synchronized saveDiskObject(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "object"    # Lorg/json/JSONObject;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1070
    const-class v2, Lcom/parse/Parse;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/parse/Parse;->setContextIfNeeded(Landroid/content/Context;)V

    .line 1071
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1072
    .local v0, "file":Ljava/io/File;
    invoke-static {v0, p2}, Lcom/parse/Parse;->saveDiskObject(Ljava/io/File;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1073
    monitor-exit v2

    return-void

    .line 1070
    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static declared-synchronized saveDiskObject(Ljava/io/File;Lorg/json/JSONObject;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 967
    const-class v1, Lcom/parse/Parse;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/parse/ParseFileUtils;->writeByteArrayToFile(Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 971
    :goto_0
    monitor-exit v1

    return-void

    .line 967
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 968
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static setContextIfNeeded(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 399
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 400
    sput-object p0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    .line 402
    :cond_0
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0
    .param p0, "logLevel"    # I

    .prologue
    .line 334
    sput p0, Lcom/parse/Parse;->logLevel:I

    .line 335
    return-void
.end method

.method static stringToDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .param p0, "dateString"    # Ljava/lang/String;

    .prologue
    .line 706
    sget-object v2, Lcom/parse/Parse;->MUTEX:Ljava/lang/Object;

    monitor-enter v2

    .line 708
    :try_start_0
    sget-object v1, Lcom/parse/Parse;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    monitor-exit v2

    .line 712
    :goto_0
    return-object v1

    .line 709
    :catch_0
    move-exception v0

    .line 711
    .local v0, "e":Ljava/text/ParseException;
    const-string v1, "com.parse.Parse"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not parse date: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 712
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 714
    .end local v0    # "e":Ljava/text/ParseException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static subtractNumbers(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4
    .param p0, "first"    # Ljava/lang/Number;
    .param p1, "second"    # Ljava/lang/Number;

    .prologue
    .line 785
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 786
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 796
    :goto_0
    return-object v0

    .line 787
    :cond_1
    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 788
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 789
    :cond_3
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 790
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 791
    :cond_5
    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_6

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 792
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 793
    :cond_7
    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_8

    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_9

    .line 794
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 795
    :cond_9
    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_a

    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_b

    .line 796
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 798
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown number type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static unregisterParseCallbacks(Lcom/parse/Parse$ParseCallbacks;)V
    .locals 2
    .param p0, "listener"    # Lcom/parse/Parse$ParseCallbacks;

    .prologue
    .line 1024
    sget-object v1, Lcom/parse/Parse;->MUTEX_CALLBACKS:Ljava/lang/Object;

    monitor-enter v1

    .line 1025
    :try_start_0
    sget-object v0, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1026
    monitor-exit v1

    .line 1030
    :goto_0
    return-void

    .line 1028
    :cond_0
    sget-object v0, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1029
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static waitForTask(Lbolts/Task;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Task",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 844
    .local p0, "task":Lbolts/Task;, "Lbolts/Task<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lbolts/Task;->waitForCompletion()V

    .line 845
    invoke-virtual {p0}, Lbolts/Task;->isFaulted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 846
    invoke-virtual {p0}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v1

    .line 847
    .local v1, "error":Ljava/lang/Exception;
    instance-of v2, v1, Lcom/parse/ParseException;

    if-eqz v2, :cond_0

    .line 848
    check-cast v1, Lcom/parse/ParseException;

    .end local v1    # "error":Ljava/lang/Exception;
    throw v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    :catch_0
    move-exception v0

    .line 862
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 850
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "error":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    instance-of v2, v1, Lbolts/AggregateException;

    if-eqz v2, :cond_1

    .line 851
    new-instance v2, Lcom/parse/ParseException;

    invoke-direct {v2, v1}, Lcom/parse/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 853
    :cond_1
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_2

    .line 854
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "error":Ljava/lang/Exception;
    throw v1

    .line 856
    .restart local v1    # "error":Ljava/lang/Exception;
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 857
    .end local v1    # "error":Ljava/lang/Exception;
    :cond_3
    invoke-virtual {p0}, Lbolts/Task;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 858
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 860
    :cond_4
    invoke-virtual {p0}, Lbolts/Task;->getResult()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    return-object v2
.end method
