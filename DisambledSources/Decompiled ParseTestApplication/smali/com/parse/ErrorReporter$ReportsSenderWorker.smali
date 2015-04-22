.class final Lcom/parse/ErrorReporter$ReportsSenderWorker;
.super Ljava/lang/Thread;
.source "ErrorReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ErrorReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ReportsSenderWorker"
.end annotation


# instance fields
.field private exception:Ljava/lang/Throwable;

.field private mInMemoryReportToSend:Lcom/parse/CrashReportData;

.field private final mReportTypesToSend:[Lcom/parse/ErrorReporter$CrashReportType;

.field final synthetic this$0:Lcom/parse/ErrorReporter;


# direct methods
.method public constructor <init>(Lcom/parse/ErrorReporter;Lcom/parse/CrashReportData;)V
    .locals 1
    .param p2, "inMemoryReportToSend"    # Lcom/parse/CrashReportData;

    .prologue
    .line 227
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/parse/ErrorReporter$CrashReportType;

    invoke-direct {p0, p1, v0}, Lcom/parse/ErrorReporter$ReportsSenderWorker;-><init>(Lcom/parse/ErrorReporter;[Lcom/parse/ErrorReporter$CrashReportType;)V

    .line 228
    iput-object p2, p0, Lcom/parse/ErrorReporter$ReportsSenderWorker;->mInMemoryReportToSend:Lcom/parse/CrashReportData;

    .line 229
    return-void
.end method

.method public varargs constructor <init>(Lcom/parse/ErrorReporter;[Lcom/parse/ErrorReporter$CrashReportType;)V
    .locals 1
    .param p2, "reportTypesToSend"    # [Lcom/parse/ErrorReporter$CrashReportType;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/parse/ErrorReporter$ReportsSenderWorker;->this$0:Lcom/parse/ErrorReporter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ErrorReporter$ReportsSenderWorker;->exception:Ljava/lang/Throwable;

    .line 236
    iput-object p2, p0, Lcom/parse/ErrorReporter$ReportsSenderWorker;->mReportTypesToSend:[Lcom/parse/ErrorReporter$CrashReportType;

    .line 237
    return-void
.end method

.method private acquireWakeLock()Landroid/os/PowerManager$WakeLock;
    .locals 5

    .prologue
    .line 268
    new-instance v0, Lcom/parse/PackageManagerWrapper;

    iget-object v3, p0, Lcom/parse/ErrorReporter$ReportsSenderWorker;->this$0:Lcom/parse/ErrorReporter;

    # getter for: Lcom/parse/ErrorReporter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/parse/ErrorReporter;->access$000(Lcom/parse/ErrorReporter;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/parse/PackageManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 269
    .local v0, "pm":Lcom/parse/PackageManagerWrapper;
    const-string v3, "android.permission.WAKE_LOCK"

    invoke-virtual {v0, v3}, Lcom/parse/PackageManagerWrapper;->hasPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 270
    const/4 v2, 0x0

    .line 280
    :goto_0
    return-object v2

    .line 273
    :cond_0
    iget-object v3, p0, Lcom/parse/ErrorReporter$ReportsSenderWorker;->this$0:Lcom/parse/ErrorReporter;

    # getter for: Lcom/parse/ErrorReporter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/parse/ErrorReporter;->access$000(Lcom/parse/ErrorReporter;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 274
    .local v1, "powerManager":Landroid/os/PowerManager;
    const/4 v3, 0x1

    const-string v4, "crash reporting wakelock"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 278
    .local v2, "wakeLock":Landroid/os/PowerManager$WakeLock;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 279
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method


# virtual methods
.method public getException()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/parse/ErrorReporter$ReportsSenderWorker;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 241
    const/4 v1, 0x0

    .line 243
    .local v1, "wakeLock":Landroid/os/PowerManager$WakeLock;
    :try_start_0
    invoke-direct {p0}, Lcom/parse/ErrorReporter$ReportsSenderWorker;->acquireWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 244
    iget-object v2, p0, Lcom/parse/ErrorReporter$ReportsSenderWorker;->mInMemoryReportToSend:Lcom/parse/CrashReportData;

    if-eqz v2, :cond_1

    .line 245
    iget-object v2, p0, Lcom/parse/ErrorReporter$ReportsSenderWorker;->this$0:Lcom/parse/ErrorReporter;

    iget-object v3, p0, Lcom/parse/ErrorReporter$ReportsSenderWorker;->this$0:Lcom/parse/ErrorReporter;

    # getter for: Lcom/parse/ErrorReporter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/parse/ErrorReporter;->access$000(Lcom/parse/ErrorReporter;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/parse/ErrorReporter$ReportsSenderWorker;->mInMemoryReportToSend:Lcom/parse/CrashReportData;

    invoke-virtual {v2, v3, v4}, Lcom/parse/ErrorReporter;->sendInMemoryReport(Landroid/content/Context;Lcom/parse/CrashReportData;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 258
    :cond_0
    :goto_1
    return-void

    .line 247
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/parse/ErrorReporter$ReportsSenderWorker;->this$0:Lcom/parse/ErrorReporter;

    iget-object v3, p0, Lcom/parse/ErrorReporter$ReportsSenderWorker;->this$0:Lcom/parse/ErrorReporter;

    # getter for: Lcom/parse/ErrorReporter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/parse/ErrorReporter;->access$000(Lcom/parse/ErrorReporter;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/parse/ErrorReporter$ReportsSenderWorker;->mReportTypesToSend:[Lcom/parse/ErrorReporter$CrashReportType;

    invoke-virtual {v2, v3, v4}, Lcom/parse/ErrorReporter;->checkAndSendReports(Landroid/content/Context;[Lcom/parse/ErrorReporter$CrashReportType;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    iput-object v0, p0, Lcom/parse/ErrorReporter$ReportsSenderWorker;->exception:Ljava/lang/Throwable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 254
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1

    .line 254
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 255
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    throw v2
.end method
