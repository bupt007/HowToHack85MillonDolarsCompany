.class Lcom/parse/ParseCrashReporter;
.super Ljava/lang/Object;
.source "ParseCrashReporter.java"


# static fields
.field private static final REPORT_ENDPOINT:Ljava/lang/String; = "http://dev/null"

.field private static defaultInstance:Lcom/parse/ParseCrashReporter;

.field private static final defaultInstanceLock:Ljava/lang/Object;


# instance fields
.field private innerCrashReporter:Lcom/parse/ErrorReporter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/ParseCrashReporter;->defaultInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v2, Lcom/parse/ParseCrashReporter$1;

    invoke-direct {v2, p0}, Lcom/parse/ParseCrashReporter$1;-><init>(Lcom/parse/ParseCrashReporter;)V

    .line 74
    .local v2, "fileProvider":Lcom/parse/FileProvider;
    new-instance v0, Lcom/parse/ParseCrashReporter$2;

    invoke-direct {v0, p0, p1, v2}, Lcom/parse/ParseCrashReporter$2;-><init>(Lcom/parse/ParseCrashReporter;Landroid/content/Context;Lcom/parse/FileProvider;)V

    .line 87
    .local v0, "callbacks":Lcom/parse/Parse$ParseCallbacks;
    :try_start_0
    invoke-static {v0}, Lcom/parse/Parse;->registerParseCallbacks(Lcom/parse/Parse$ParseCallbacks;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    return-void

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/IllegalStateException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You must enable crash reporting before calling Parse.initialize(context, applicationId, clientKey"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static synthetic access$000(Lcom/parse/ParseCrashReporter;)Lcom/parse/ErrorReporter;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseCrashReporter;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/parse/ParseCrashReporter;->innerCrashReporter:Lcom/parse/ErrorReporter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/parse/ParseCrashReporter;Lcom/parse/ErrorReporter;)Lcom/parse/ErrorReporter;
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseCrashReporter;
    .param p1, "x1"    # Lcom/parse/ErrorReporter;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/parse/ParseCrashReporter;->innerCrashReporter:Lcom/parse/ErrorReporter;

    return-object p1
.end method

.method static enableCrashReporting(Landroid/content/Context;)V
    .locals 3
    .param p0, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 31
    sget-object v1, Lcom/parse/ParseCrashReporter;->defaultInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v0, Lcom/parse/ParseCrashReporter;->defaultInstance:Lcom/parse/ParseCrashReporter;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/parse/ParseCrashReporter;

    invoke-direct {v0, p0}, Lcom/parse/ParseCrashReporter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/parse/ParseCrashReporter;->defaultInstance:Lcom/parse/ParseCrashReporter;

    .line 37
    monitor-exit v1

    .line 38
    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "enableCrashReporting() called multiple times."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getCurrent()Lcom/parse/ParseCrashReporter;
    .locals 2

    .prologue
    .line 56
    sget-object v1, Lcom/parse/ParseCrashReporter;->defaultInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-object v0, Lcom/parse/ParseCrashReporter;->defaultInstance:Lcom/parse/ParseCrashReporter;

    monitor-exit v1

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static isEnabled()Z
    .locals 2

    .prologue
    .line 45
    sget-object v1, Lcom/parse/ParseCrashReporter;->defaultInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lcom/parse/ParseCrashReporter;->defaultInstance:Lcom/parse/ParseCrashReporter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
