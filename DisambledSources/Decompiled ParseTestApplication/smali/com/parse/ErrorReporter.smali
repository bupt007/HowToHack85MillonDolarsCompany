.class Lcom/parse/ErrorReporter;
.super Ljava/lang/Object;
.source "ErrorReporter.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ErrorReporter$CrashAttachmentException;,
        Lcom/parse/ErrorReporter$ReportsSenderWorker;,
        Lcom/parse/ErrorReporter$CrashReportType;
    }
.end annotation


# static fields
.field public static final ACRA_DIRNAME:Ljava/lang/String; = "cr/reports"

.field private static final ALL_REPORT_TYPES:[Lcom/parse/ErrorReporter$CrashReportType;

.field private static final ANDROID_RUNTIME_ART:Ljava/lang/String; = "ART"

.field private static final ANDROID_RUNTIME_DALVIK:Ljava/lang/String; = "DALVIK"

.field private static final ANDROID_RUNTIME_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field public static final CRASH_ATTACHMENT_DUMMY_STACKTRACE:Ljava/lang/String; = "crash attachment"

.field public static final DEFAULT_MAX_REPORT_SIZE:J = 0xc800L

.field private static DEFAULT_TRACE_COUNT_LIMIT:I = 0x0

.field public static final DUMPFILE_EXTENSION:Ljava/lang/String; = ".dmp"

.field public static final DUMP_DIR:Ljava/lang/String; = "cr/minidumps"

.field private static final IS_PROCESSING_ANOTHER_EXCEPTION:Ljava/lang/String; = "IS_PROCESSING_ANOTHER_EXCEPTION"

.field private static final JAVA_BOOT_CLASS_PATH:Ljava/lang/String; = "java.boot.class.path"

.field private static final KNOWN_ART_JAR:Ljava/lang/String; = "/system/framework/core-libart.jar"

.field private static final KNOWN_DALVIK_JAR:Ljava/lang/String; = "/system/framework/core.jar"

.field public static final MAX_REPORT_AGE:J = 0x5265c00L

.field public static final MAX_SEND_REPORTS:I = 0x5

.field private static MAX_TRACE_COUNT_LIMIT:I = 0x0

.field private static final MIN_TEMP_REPORT_AGE:J = 0x927c0L

.field public static final NATIVE_MAX_REPORT_SIZE:J = 0x7d000L

.field public static final PREALLOCATED_FILESIZE:J = 0xc800L

.field public static final PREALLOCATED_REPORTFILE:Ljava/lang/String; = "reportfile.prealloc"

.field public static final REPORTFILE_EXTENSION:Ljava/lang/String; = ".stacktrace"

.field public static final SIGQUIT_DIR:Ljava/lang/String; = "traces"

.field public static final SIGQUIT_MAX_REPORT_SIZE:J = 0x1e000L

.field public static final TEMP_REPORTFILE_EXTENSION:Ljava/lang/String; = ".temp_stacktrace"

.field private static final VERSION_CODE_REGEX:Ljava/util/regex/Pattern;

.field private static mInstanceSingleton:Lcom/parse/ErrorReporter; = null

.field private static final mInternalException:Ljava/lang/String; = "ACRA_INTERNAL=java.lang.Exception: An exception occurred while trying to collect data about an ACRA internal error\n\tat com.parse.acra.ErrorReporter.handleException(ErrorReporter.java:810)\n\tat com.parse.acra.ErrorReporter.handleException(ErrorReporter.java:866)\n\tat com.parse.acra.ErrorReporter.uncaughtException(ErrorReporter.java:666)\n\tat java.lang.ThreadGroup.uncaughtException(ThreadGroup.java:693)\n\tat java.lang.ThreadGroup.uncaughtException(ThreadGroup.java:690)\n"

.field private static mProcessingCrash:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final activityLogger:Lcom/parse/SimpleTraceLogger;

.field private final mAppStartDate:Landroid/text/format/Time;

.field private mAppVersionCode:Ljava/lang/String;

.field private mAppVersionName:Ljava/lang/String;

.field private final mConstantFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/parse/ReportField;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentlyProcessingOOM:Z

.field private final mDeviceSpecificFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/parse/ReportField;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mFileProvider:Lcom/parse/FileProvider;

.field private mHasNativeCrashDumpOnInit:Z

.field mInstanceCustomParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mInstanceLazyCustomParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/CustomReportDataSupplier;",
            ">;"
        }
    .end annotation
.end field

.field private mIsInternalBuild:Z

.field private mLogBridge:Lcom/parse/LogBridge;

.field private mMaxReportSize:J

.field private mPackageManager:Lcom/parse/PackageManagerWrapper;

.field private mReportSenders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parse/ReportSender;",
            ">;"
        }
    .end annotation
.end field

.field private final mShouldContinueProcessingExceptionLock:Ljava/lang/Object;

.field private volatile mUserId:Ljava/lang/String;

.field private preallocFile:Ljava/io/File;

.field private processNameByAms:Ljava/lang/String;

.field private processNameByAmsReady:Z

.field private volatile sendInMemoryReport:Z

.field private usePreallocatedFile:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 108
    const-string v0, "^\\d+-[a-zA-Z0-9_\\-]+-(\\d+)\\.(temp_stacktrace|stacktrace)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/parse/ErrorReporter;->VERSION_CODE_REGEX:Ljava/util/regex/Pattern;

    .line 158
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/parse/ErrorReporter$CrashReportType;

    sget-object v1, Lcom/parse/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/parse/ErrorReporter$CrashReportType;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    sget-object v2, Lcom/parse/ErrorReporter$CrashReportType;->NATIVE_CRASH_REPORT:Lcom/parse/ErrorReporter$CrashReportType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/parse/ErrorReporter$CrashReportType;->ANR_REPORT:Lcom/parse/ErrorReporter$CrashReportType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parse/ErrorReporter;->ALL_REPORT_TYPES:[Lcom/parse/ErrorReporter$CrashReportType;

    .line 321
    const/4 v0, 0x5

    sput v0, Lcom/parse/ErrorReporter;->DEFAULT_TRACE_COUNT_LIMIT:I

    .line 322
    const/16 v0, 0x14

    sput v0, Lcom/parse/ErrorReporter;->MAX_TRACE_COUNT_LIMIT:I

    .line 350
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/parse/ErrorReporter;->mProcessingCrash:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const-wide/32 v0, 0xc800

    iput-wide v0, p0, Lcom/parse/ErrorReporter;->mMaxReportSize:J

    .line 137
    iput-boolean v2, p0, Lcom/parse/ErrorReporter;->mHasNativeCrashDumpOnInit:Z

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parse/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ErrorReporter;->mConstantFields:Ljava/util/Map;

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    .line 292
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ErrorReporter;->mInstanceCustomParameters:Ljava/util/Map;

    .line 295
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ErrorReporter;->mInstanceLazyCustomParameters:Ljava/util/Map;

    .line 302
    iput-boolean v2, p0, Lcom/parse/ErrorReporter;->mCurrentlyProcessingOOM:Z

    .line 303
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ErrorReporter;->mShouldContinueProcessingExceptionLock:Ljava/lang/Object;

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ErrorReporter;->preallocFile:Ljava/io/File;

    .line 323
    new-instance v0, Lcom/parse/SimpleTraceLogger;

    sget v1, Lcom/parse/ErrorReporter;->MAX_TRACE_COUNT_LIMIT:I

    invoke-direct {v0, v1}, Lcom/parse/SimpleTraceLogger;-><init>(I)V

    iput-object v0, p0, Lcom/parse/ErrorReporter;->activityLogger:Lcom/parse/SimpleTraceLogger;

    .line 331
    iput-boolean v2, p0, Lcom/parse/ErrorReporter;->sendInMemoryReport:Z

    .line 336
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/parse/ErrorReporter;->mAppStartDate:Landroid/text/format/Time;

    .line 338
    iput-boolean v2, p0, Lcom/parse/ErrorReporter;->usePreallocatedFile:Z

    .line 1575
    return-void
.end method

.method static synthetic access$000(Lcom/parse/ErrorReporter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ErrorReporter;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/parse/ErrorReporter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkAndSendAcraReports(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1519
    const-string v9, "cr/reports"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, ".stacktrace"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, ".temp_stacktrace"

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/parse/ErrorReporter;->getCrashReportFilesList(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1521
    .local v6, "reportFiles":[Ljava/lang/String;
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1523
    const/4 v7, 0x0

    .line 1528
    .local v7, "reportsSentCount":I
    invoke-direct {p0}, Lcom/parse/ErrorReporter;->getProcessNameFromAms()Ljava/lang/String;

    move-result-object v8

    .line 1529
    .local v8, "uploadedByProcess":Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 1530
    .local v1, "curFileName":Ljava/lang/String;
    const/4 v9, 0x5

    if-lt v7, v9, :cond_0

    .line 1538
    const-string v9, "cr/reports"

    invoke-direct {p0, v9, v1}, Lcom/parse/ErrorReporter;->deleteFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1542
    :cond_0
    const-string v9, "CrashReporting"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Loading file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/parse/ErrorReporter;->loadAcraCrashReport(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/CrashReportData;

    move-result-object v5

    .line 1546
    .local v5, "previousCrashReport":Lcom/parse/CrashReportData;
    if-eqz v5, :cond_1

    .line 1547
    sget-object v9, Lcom/parse/ReportField;->ACRA_REPORT_FILENAME:Lcom/parse/ReportField;

    invoke-virtual {v5, v9, v1}, Lcom/parse/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1550
    sget-object v9, Lcom/parse/ReportField;->UPLOADED_BY_PROCESS:Lcom/parse/ReportField;

    invoke-virtual {v5, v9, v8}, Lcom/parse/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1552
    const-string v9, "CrashReporting"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sending file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    invoke-direct {p0, v5}, Lcom/parse/ErrorReporter;->sendCrashReport(Lcom/parse/CrashReportData;)V

    .line 1554
    const-string v9, "cr/reports"

    invoke-direct {p0, v9, v1}, Lcom/parse/ErrorReporter;->deleteFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/parse/ReportSenderException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1568
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1556
    .end local v5    # "previousCrashReport":Lcom/parse/CrashReportData;
    :catch_0
    move-exception v2

    .line 1557
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v9, "CrashReporting"

    const-string v10, "Failed to send crash reports"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1558
    const-string v9, "cr/reports"

    invoke-direct {p0, v9, v1}, Lcom/parse/ErrorReporter;->deleteFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    .end local v1    # "curFileName":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_2
    :goto_2
    return-void

    .line 1560
    .restart local v1    # "curFileName":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 1561
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "CrashReporting"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to load crash report for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1562
    const-string v9, "cr/reports"

    invoke-direct {p0, v9, v1}, Lcom/parse/ErrorReporter;->deleteFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1564
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 1565
    .local v2, "e":Lcom/parse/ReportSenderException;
    const-string v9, "CrashReporting"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to send crash report for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private checkAndSendCrashAttachments(Landroid/content/Context;Lcom/parse/ErrorReporter$CrashReportType;)I
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lcom/parse/ErrorReporter$CrashReportType;

    .prologue
    .line 1583
    const-string v3, "CrashReporting"

    const-string v4, "#checkAndSendCrashAttachments - start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    const/4 v13, 0x0

    .line 1586
    .local v13, "dumpsSend":I
    # getter for: Lcom/parse/ErrorReporter$CrashReportType;->directory:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/parse/ErrorReporter$CrashReportType;->access$100(Lcom/parse/ErrorReporter$CrashReportType;)Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/parse/ErrorReporter$CrashReportType;->fileExtensions:[Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/parse/ErrorReporter$CrashReportType;->access$200(Lcom/parse/ErrorReporter$CrashReportType;)[Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/parse/ErrorReporter;->getCrashReportFilesList(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1587
    .local v12, "dumpFiles":[Ljava/lang/String;
    if-eqz v12, :cond_2

    array-length v3, v12

    if-lez v3, :cond_2

    .line 1588
    invoke-static {v12}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1591
    new-instance v7, Lcom/parse/CrashReportData;

    invoke-direct {v7}, Lcom/parse/CrashReportData;-><init>()V

    .line 1593
    .local v7, "tempCrashReportData":Lcom/parse/CrashReportData;
    :try_start_0
    const-string v4, "crash attachment"

    new-instance v5, Lcom/parse/ErrorReporter$CrashAttachmentException;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v3}, Lcom/parse/ErrorReporter$CrashAttachmentException;-><init>(Lcom/parse/ErrorReporter;Lcom/parse/ErrorReporter$1;)V

    sget-object v6, Lcom/parse/ACRA;->ALL_CRASH_REPORT_FIELDS:[Lcom/parse/ReportField;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/parse/ErrorReporter;->gatherCrashData(Ljava/lang/String;Ljava/lang/Throwable;[Lcom/parse/ReportField;Lcom/parse/CrashReportData;Ljava/io/Writer;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1607
    :goto_0
    move-object v10, v12

    .local v10, "arr$":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v17, v0

    .local v17, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    aget-object v15, v10, v16

    .line 1608
    .local v15, "fname":Ljava/lang/String;
    const/4 v3, 0x5

    if-lt v13, v3, :cond_0

    .line 1609
    const-string v3, "cr/minidumps"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, Lcom/parse/ErrorReporter;->deleteFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 1601
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v15    # "fname":Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v17    # "len$":I
    :catch_0
    move-exception v14

    .line 1603
    .local v14, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retrieve exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1604
    .local v18, "message":Ljava/lang/String;
    sget-object v3, Lcom/parse/ReportField;->REPORT_LOAD_THROW:Lcom/parse/ReportField;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v3, v1, v7, v4}, Lcom/parse/ErrorReporter;->put(Lcom/parse/ReportField;Ljava/lang/String;Lcom/parse/CrashReportData;Ljava/io/Writer;)V

    goto :goto_0

    .line 1613
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v18    # "message":Ljava/lang/String;
    .restart local v10    # "arr$":[Ljava/lang/String;
    .restart local v15    # "fname":Ljava/lang/String;
    .restart local v16    # "i$":I
    .restart local v17    # "len$":I
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v15, v2}, Lcom/parse/ErrorReporter;->loadCrashAttachment(Landroid/content/Context;Ljava/lang/String;Lcom/parse/ErrorReporter$CrashReportType;)Lcom/parse/CrashReportData;

    move-result-object v19

    .line 1614
    .local v19, "reportData":Lcom/parse/CrashReportData;
    const-string v11, "load failed"

    .line 1615
    .local v11, "attachment":Ljava/lang/String;
    if-eqz v19, :cond_1

    .line 1616
    # getter for: Lcom/parse/ErrorReporter$CrashReportType;->attachmentField:Lcom/parse/ReportField;
    invoke-static/range {p2 .. p2}, Lcom/parse/ErrorReporter$CrashReportType;->access$400(Lcom/parse/ErrorReporter$CrashReportType;)Lcom/parse/ReportField;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/parse/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "attachment":Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 1619
    .restart local v11    # "attachment":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/parse/ReportField;->REPORT_ID:Lcom/parse/ReportField;

    const/4 v4, 0x0

    const/16 v5, 0x2e

    invoke-virtual {v15, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v15, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v7, v3, v4, v5}, Lcom/parse/CrashReportData;->put(Lcom/parse/ReportField;Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;

    .line 1620
    # getter for: Lcom/parse/ErrorReporter$CrashReportType;->attachmentField:Lcom/parse/ReportField;
    invoke-static/range {p2 .. p2}, Lcom/parse/ErrorReporter$CrashReportType;->access$400(Lcom/parse/ErrorReporter$CrashReportType;)Lcom/parse/ReportField;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v7, v3, v11, v4}, Lcom/parse/CrashReportData;->put(Lcom/parse/ReportField;Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;

    .line 1621
    sget-object v3, Lcom/parse/ReportField;->EXCEPTION_CAUSE:Lcom/parse/ReportField;

    const-string v4, "crash attachment"

    const/4 v5, 0x0

    invoke-virtual {v7, v3, v4, v5}, Lcom/parse/CrashReportData;->put(Lcom/parse/ReportField;Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;

    .line 1622
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/parse/ErrorReporter;->sendCrashReport(Lcom/parse/CrashReportData;)V

    .line 1623
    # getter for: Lcom/parse/ErrorReporter$CrashReportType;->directory:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/parse/ErrorReporter$CrashReportType;->access$100(Lcom/parse/ErrorReporter$CrashReportType;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, Lcom/parse/ErrorReporter;->deleteFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/parse/ReportSenderException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 1624
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1625
    .end local v11    # "attachment":Ljava/lang/String;
    .end local v19    # "reportData":Lcom/parse/CrashReportData;
    :catch_1
    move-exception v14

    .line 1627
    .local v14, "e":Lcom/parse/ReportSenderException;
    const-string v3, "CrashReporting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to send crash attachment report "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1638
    .end local v7    # "tempCrashReportData":Lcom/parse/CrashReportData;
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v14    # "e":Lcom/parse/ReportSenderException;
    .end local v15    # "fname":Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v17    # "len$":I
    :cond_2
    :goto_3
    const-string v3, "CrashReporting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#checkAndSendCrashAttachments - finish, sent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    return v13

    .line 1629
    .restart local v7    # "tempCrashReportData":Lcom/parse/CrashReportData;
    .restart local v10    # "arr$":[Ljava/lang/String;
    .restart local v15    # "fname":Ljava/lang/String;
    .restart local v16    # "i$":I
    .restart local v17    # "len$":I
    :catch_2
    move-exception v14

    .line 1630
    .local v14, "e":Ljava/lang/Throwable;
    const-string v3, "CrashReporting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed on crash attachment file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1631
    # getter for: Lcom/parse/ErrorReporter$CrashReportType;->directory:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/parse/ErrorReporter$CrashReportType;->access$100(Lcom/parse/ErrorReporter$CrashReportType;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, Lcom/parse/ErrorReporter;->deleteFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private createPreallocatedReportFile()V
    .locals 10

    .prologue
    .line 742
    const/4 v2, 0x0

    .line 744
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v5, p0, Lcom/parse/ErrorReporter;->preallocFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 745
    const/16 v5, 0x2800

    new-array v0, v5, [B

    .line 746
    .local v0, "buf":[B
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/parse/ErrorReporter;->preallocFile:Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 747
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    int-to-long v6, v4

    const-wide/32 v8, 0xc800

    cmp-long v5, v6, v8

    if-gez v5, :cond_0

    .line 748
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 747
    array-length v5, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/2addr v4, v5

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 755
    .end local v0    # "buf":[B
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "i":I
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    if-eqz v2, :cond_2

    .line 756
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 760
    :cond_2
    :goto_1
    return-void

    .line 751
    :catch_0
    move-exception v1

    .line 752
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v5, "CrashReporting"

    const-string v6, "Failed to pre-allocate crash report file"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 755
    if-eqz v2, :cond_2

    .line 756
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 758
    :catch_1
    move-exception v5

    goto :goto_1

    .line 754
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 755
    :goto_3
    if-eqz v2, :cond_3

    .line 756
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 758
    :cond_3
    :goto_4
    throw v5

    :catch_2
    move-exception v5

    goto :goto_1

    :catch_3
    move-exception v6

    goto :goto_4

    .line 754
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buf":[B
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "i":I
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 751
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private deleteFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1847
    iget-object v1, p0, Lcom/parse/ErrorReporter;->mFileProvider:Lcom/parse/FileProvider;

    invoke-static {v1, p1, p2}, Lcom/parse/ErrorReporter;->fileForName(Lcom/parse/FileProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 1848
    .local v0, "deleted":Z
    if-nez v0, :cond_0

    .line 1849
    const-string v1, "CrashReporting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not delete error report : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    :cond_0
    return-void
.end method

.method private dumpCustomDataEntry(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 496
    if-eqz p2, :cond_0

    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 497
    :goto_0
    if-eqz p3, :cond_1

    const-string v0, "\n"

    const-string v1, "\\n"

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 498
    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    return-void

    :cond_0
    move-object p2, v0

    .line 496
    goto :goto_0

    :cond_1
    move-object p3, v0

    .line 497
    goto :goto_1
.end method

.method private dumpCustomDataMap(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 487
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 488
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 489
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 490
    .local v3, "value":Ljava/lang/String;
    invoke-direct {p0, p1, v2, v3}, Lcom/parse/ErrorReporter;->dumpCustomDataEntry(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 492
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private dumpLazyCustomDataMap(Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/CustomReportDataSupplier;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 471
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/CustomReportDataSupplier;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 472
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/parse/CustomReportDataSupplier;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 475
    .local v2, "key":Ljava/lang/String;
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parse/CustomReportDataSupplier;

    invoke-interface {v5, p3}, Lcom/parse/CustomReportDataSupplier;->getCustomData(Ljava/lang/Throwable;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 480
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 481
    invoke-direct {p0, p1, v2, v4}, Lcom/parse/ErrorReporter;->dumpCustomDataEntry(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 476
    .end local v4    # "value":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 477
    .local v3, "th":Ljava/lang/Throwable;
    const-string v5, "CrashReporting"

    const-string v6, "Caught throwable while getting custom report data"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 484
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/parse/CustomReportDataSupplier;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "th":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method

.method private static fileForName(Lcom/parse/FileProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "fileProvider"    # Lcom/parse/FileProvider;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1842
    invoke-interface {p0, p1}, Lcom/parse/FileProvider;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1843
    .local v0, "cdir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private formatTimestamp(J)Ljava/lang/String;
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 730
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 731
    .local v0, "t":Landroid/text/format/Time;
    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 732
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private gatherCrashData(Ljava/lang/String;Ljava/lang/Throwable;[Lcom/parse/ReportField;Lcom/parse/CrashReportData;Ljava/io/Writer;Ljava/util/Map;)V
    .locals 8
    .param p1, "stackTrace"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;
    .param p3, "fields"    # [Lcom/parse/ReportField;
    .param p4, "crashReport"    # Lcom/parse/CrashReportData;
    .param p5, "w"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "[",
            "Lcom/parse/ReportField;",
            "Lcom/parse/CrashReportData;",
            "Ljava/io/Writer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1150
    .local p6, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p3, :cond_0

    .line 1151
    sget-object p3, Lcom/parse/ACRA;->MINIMAL_REPORT_FIELDS:[Lcom/parse/ReportField;

    .line 1155
    :cond_0
    sget-object v0, Lcom/parse/ReportField;->UID:Lcom/parse/ReportField;

    invoke-virtual {p0}, Lcom/parse/ErrorReporter;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p4, p5}, Lcom/parse/ErrorReporter;->put(Lcom/parse/ReportField;Ljava/lang/String;Lcom/parse/CrashReportData;Ljava/io/Writer;)V

    .line 1159
    sget-object v0, Lcom/parse/ReportField;->STACK_TRACE:Lcom/parse/ReportField;

    invoke-direct {p0, v0, p1, p4, p5}, Lcom/parse/ErrorReporter;->put(Lcom/parse/ReportField;Ljava/lang/String;Lcom/parse/CrashReportData;Ljava/io/Writer;)V

    .line 1161
    iget-object v0, p0, Lcom/parse/ErrorReporter;->mConstantFields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1162
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/parse/ReportField;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ReportField;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1, p4, p5}, Lcom/parse/ErrorReporter;->put(Lcom/parse/ReportField;Ljava/lang/String;Lcom/parse/CrashReportData;Ljava/io/Writer;)V

    goto :goto_0

    .line 1165
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/parse/ReportField;Ljava/lang/String;>;"
    :cond_1
    iget-object v1, p0, Lcom/parse/ErrorReporter;->mContext:Landroid/content/Context;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/parse/ErrorReporter;->retrieveCrashTimeData(Landroid/content/Context;Ljava/lang/Throwable;[Lcom/parse/ReportField;Lcom/parse/CrashReportData;Ljava/io/Writer;)V

    .line 1166
    invoke-direct {p0, p4, p5}, Lcom/parse/ErrorReporter;->populateConstantDeviceData(Lcom/parse/CrashReportData;Ljava/io/Writer;)V

    .line 1168
    sget-object v0, Lcom/parse/ReportField;->CUSTOM_DATA:Lcom/parse/ReportField;

    invoke-virtual {p0, p6, p2}, Lcom/parse/ErrorReporter;->dumpCustomDataToString(Ljava/util/Map;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p4, p5}, Lcom/parse/ErrorReporter;->put(Lcom/parse/ReportField;Ljava/lang/String;Lcom/parse/CrashReportData;Ljava/io/Writer;)V

    .line 1169
    return-void
.end method

.method private genCrashReportFileName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "cause"    # Ljava/lang/Class;
    .param p2, "fileExtension"    # Ljava/lang/String;

    .prologue
    .line 1456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/parse/ErrorReporter;->mAppVersionCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/parse/ErrorReporter;->mAppVersionCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private getAndroidRuntime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 873
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_0

    .line 874
    const-string v1, "DALVIK"

    .line 884
    :goto_0
    return-object v1

    .line 876
    :cond_0
    const-string v1, "java.boot.class.path"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 877
    .local v0, "bootClassPath":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 878
    const-string v1, "/system/framework/core-libart.jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 879
    const-string v1, "ART"

    goto :goto_0

    .line 880
    :cond_1
    const-string v1, "/system/framework/core.jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 881
    const-string v1, "DALVIK"

    goto :goto_0

    .line 884
    :cond_2
    const-string v1, "UNKNOWN"

    goto :goto_0
.end method

.method private static getAvailableInternalMemorySize()J
    .locals 10

    .prologue
    .line 770
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    .line 771
    .local v5, "path":Ljava/io/File;
    new-instance v6, Landroid/os/StatFs;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 772
    .local v6, "stat":Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v2, v7

    .line 773
    .local v2, "blockSize":J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    int-to-long v0, v7

    .line 774
    .local v0, "availableBlocks":J
    mul-long v8, v0, v2

    .line 776
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v6    # "stat":Landroid/os/StatFs;
    :goto_0
    return-wide v8

    .line 775
    :catch_0
    move-exception v4

    .line 776
    .local v4, "e":Ljava/lang/Exception;
    const-wide/16 v8, -0x1

    goto :goto_0
.end method

.method private getConstantDeviceData()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/parse/ReportField;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 821
    iget-object v5, p0, Lcom/parse/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    monitor-enter v5

    .line 822
    :try_start_0
    iget-object v4, p0, Lcom/parse/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 824
    iget-object v4, p0, Lcom/parse/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    sget-object v6, Lcom/parse/ReportField;->BUILD:Lcom/parse/ReportField;

    const-class v7, Landroid/os/Build;

    invoke-static {v7}, Lcom/parse/ReflectionCollector;->collectConstants(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    iget-object v4, p0, Lcom/parse/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    sget-object v6, Lcom/parse/ReportField;->JAIL_BROKEN:Lcom/parse/ReportField;

    invoke-direct {p0}, Lcom/parse/ErrorReporter;->getJailStatus()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    iget-object v4, p0, Lcom/parse/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    sget-object v6, Lcom/parse/ReportField;->INSTALLATION_ID:Lcom/parse/ReportField;

    iget-object v7, p0, Lcom/parse/ErrorReporter;->mFileProvider:Lcom/parse/FileProvider;

    invoke-static {v7}, Lcom/parse/Installation;->id(Lcom/parse/FileProvider;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    iget-object v4, p0, Lcom/parse/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    sget-object v6, Lcom/parse/ReportField;->TOTAL_MEM_SIZE:Lcom/parse/ReportField;

    invoke-static {}, Lcom/parse/ErrorReporter;->getTotalInternalMemorySize()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    iget-object v4, p0, Lcom/parse/ErrorReporter;->mPackageManager:Lcom/parse/PackageManagerWrapper;

    const-string v6, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v4, v6}, Lcom/parse/PackageManagerWrapper;->hasPermission(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 830
    iget-object v4, p0, Lcom/parse/ErrorReporter;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 832
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 833
    .local v1, "deviceId":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 834
    iget-object v4, p0, Lcom/parse/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    sget-object v6, Lcom/parse/ReportField;->DEVICE_ID:Lcom/parse/ReportField;

    invoke-interface {v4, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    .end local v1    # "deviceId":Ljava/lang/String;
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    iget-object v4, p0, Lcom/parse/ErrorReporter;->mContext:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 841
    .local v2, "display":Landroid/view/Display;
    iget-object v4, p0, Lcom/parse/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    sget-object v6, Lcom/parse/ReportField;->DISPLAY:Lcom/parse/ReportField;

    invoke-static {v2}, Lcom/parse/ErrorReporter;->toString(Landroid/view/Display;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    iget-object v4, p0, Lcom/parse/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    sget-object v6, Lcom/parse/ReportField;->ENVIRONMENT:Lcom/parse/ReportField;

    const-class v7, Landroid/os/Environment;

    invoke-static {v7}, Lcom/parse/ReflectionCollector;->collectStaticGettersResults(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    iget-object v4, p0, Lcom/parse/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    sget-object v6, Lcom/parse/ReportField;->DEVICE_FEATURES:Lcom/parse/ReportField;

    iget-object v7, p0, Lcom/parse/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/parse/DeviceFeaturesCollector;->getFeatures(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    iget-object v4, p0, Lcom/parse/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    sget-object v6, Lcom/parse/ReportField;->SETTINGS_SYSTEM:Lcom/parse/ReportField;

    iget-object v7, p0, Lcom/parse/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/parse/SettingsCollector;->collectSystemSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    iget-object v4, p0, Lcom/parse/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    sget-object v6, Lcom/parse/ReportField;->SETTINGS_SECURE:Lcom/parse/ReportField;

    iget-object v7, p0, Lcom/parse/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/parse/SettingsCollector;->collectSecureSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v4, v6, :cond_1

    .line 857
    iget-object v4, p0, Lcom/parse/ErrorReporter;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 859
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v4, p0, Lcom/parse/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    sget-object v6, Lcom/parse/ReportField;->IS_LOW_RAM_DEVICE:Lcom/parse/ReportField;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    .end local v0    # "am":Landroid/app/ActivityManager;
    :cond_1
    iget-object v4, p0, Lcom/parse/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    sget-object v6, Lcom/parse/ReportField;->ANDROID_RUNTIME:Lcom/parse/ReportField;

    invoke-direct {p0}, Lcom/parse/ErrorReporter;->getAndroidRuntime()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    .end local v2    # "display":Landroid/view/Display;
    :cond_2
    iget-object v4, p0, Lcom/parse/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    monitor-exit v5

    return-object v4

    .line 866
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private getDeviceUptime()J
    .locals 2

    .prologue
    .line 640
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInstance()Lcom/parse/ErrorReporter;
    .locals 1

    .prologue
    .line 649
    sget-object v0, Lcom/parse/ErrorReporter;->mInstanceSingleton:Lcom/parse/ErrorReporter;

    if-nez v0, :cond_0

    .line 650
    new-instance v0, Lcom/parse/ErrorReporter;

    invoke-direct {v0}, Lcom/parse/ErrorReporter;-><init>()V

    sput-object v0, Lcom/parse/ErrorReporter;->mInstanceSingleton:Lcom/parse/ErrorReporter;

    .line 652
    :cond_0
    sget-object v0, Lcom/parse/ErrorReporter;->mInstanceSingleton:Lcom/parse/ErrorReporter;

    return-object v0
.end method

.method private getJailStatus()Ljava/lang/String;
    .locals 14

    .prologue
    .line 592
    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 593
    .local v1, "buildTags":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v12, "test-keys"

    invoke-virtual {v1, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 594
    const-string v12, "yes"

    .line 626
    :goto_0
    return-object v12

    .line 599
    :cond_0
    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string v12, "/system/app/Superuser.apk"

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 600
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 601
    const-string v12, "yes"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 603
    .end local v6    # "file":Ljava/io/File;
    :catch_0
    move-exception v5

    .line 604
    .local v5, "ex":Ljava/lang/Exception;
    const-string v12, "CrashReporting"

    const-string v13, "Failed to find Superuser.pak"

    invoke-static {v12, v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 608
    .end local v5    # "ex":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v4

    .line 609
    .local v4, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v4, :cond_3

    .line 610
    const-string v12, "PATH"

    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 611
    .local v9, "path":Ljava/lang/String;
    const-string v12, ":"

    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 613
    .local v3, "dirs":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v8, v0

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v8, :cond_3

    aget-object v2, v0, v7

    .line 614
    .local v2, "dir":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "su"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 616
    .local v11, "suPath":Ljava/lang/String;
    :try_start_1
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 617
    .local v10, "suFile":Ljava/io/File;
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 618
    const-string v12, "yes"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 620
    .end local v10    # "suFile":Ljava/io/File;
    :catch_1
    move-exception v5

    .line 621
    .restart local v5    # "ex":Ljava/lang/Exception;
    const-string v12, "CrashReporting"

    const-string v13, "Failed to find su binary in the PATH"

    invoke-static {v12, v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 613
    .end local v5    # "ex":Ljava/lang/Exception;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 626
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "dir":Ljava/lang/String;
    .end local v3    # "dirs":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "path":Ljava/lang/String;
    .end local v11    # "suPath":Ljava/lang/String;
    :cond_3
    const-string v12, "no"

    goto :goto_0
.end method

.method private getProcessName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 556
    invoke-direct {p0}, Lcom/parse/ErrorReporter;->getProcessNameFromAmsOrNull()Ljava/lang/String;

    move-result-object v3

    .line 557
    .local v3, "processName":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 558
    const/4 v0, 0x0

    .line 560
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/proc/self/cmdline"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 561
    .local v4, "reader":Ljava/io/FileReader;
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v5, 0x80

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 563
    if-eqz v3, :cond_0

    .line 564
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    :cond_0
    move-object v0, v1

    .line 570
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    :goto_0
    if-eqz v0, :cond_1

    .line 572
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 579
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    if-nez v3, :cond_2

    .line 580
    const-string v3, ""

    .line 582
    :cond_2
    return-object v3

    .line 566
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 567
    .local v2, "ex":Ljava/io/IOException;
    :goto_2
    const-string v5, "CrashReporting"

    const-string v6, "Failed to get process name."

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 573
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 574
    .restart local v2    # "ex":Ljava/io/IOException;
    const-string v5, "CrashReporting"

    const-string v6, "Failed to close file."

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 566
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catch_2
    move-exception v2

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private getProcessNameFromAms()Ljava/lang/String;
    .locals 1

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/parse/ErrorReporter;->getProcessNameFromAmsOrNull()Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, "processName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 545
    const-string v0, "n/a"

    .line 547
    :cond_0
    return-object v0
.end method

.method private getProcessNameFromAmsOrNull()Ljava/lang/String;
    .locals 7

    .prologue
    .line 505
    iget-boolean v5, p0, Lcom/parse/ErrorReporter;->processNameByAmsReady:Z

    if-eqz v5, :cond_0

    .line 506
    iget-object v5, p0, Lcom/parse/ErrorReporter;->processNameByAms:Ljava/lang/String;

    .line 530
    :goto_0
    return-object v5

    .line 509
    :cond_0
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/parse/ErrorReporter;->processNameByAms:Ljava/lang/String;

    .line 510
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 512
    .local v2, "pid":I
    iget-object v5, p0, Lcom/parse/ErrorReporter;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 513
    .local v0, "am":Landroid/app/ActivityManager;
    if-nez v0, :cond_1

    .line 514
    iget-object v5, p0, Lcom/parse/ErrorReporter;->processNameByAms:Ljava/lang/String;

    goto :goto_0

    .line 517
    :cond_1
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 518
    .local v3, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v3, :cond_2

    .line 519
    iget-object v5, p0, Lcom/parse/ErrorReporter;->processNameByAms:Ljava/lang/String;

    goto :goto_0

    .line 522
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 523
    .local v4, "rai":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v2, :cond_3

    .line 524
    iget-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput-object v5, p0, Lcom/parse/ErrorReporter;->processNameByAms:Ljava/lang/String;

    .line 529
    .end local v4    # "rai":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_4
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/parse/ErrorReporter;->processNameByAmsReady:Z

    .line 530
    iget-object v5, p0, Lcom/parse/ErrorReporter;->processNameByAms:Ljava/lang/String;

    goto :goto_0
.end method

.method private getProcessUptime()J
    .locals 2

    .prologue
    .line 633
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private getReportFieldsForException(Ljava/lang/Throwable;)[Lcom/parse/ReportField;
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1948
    instance-of v0, p1, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/parse/ACRA;->MINIMAL_REPORT_FIELDS:[Lcom/parse/ReportField;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/parse/ACRA;->ALL_CRASH_REPORT_FIELDS:[Lcom/parse/ReportField;

    goto :goto_0
.end method

.method private static getTotalInternalMemorySize()J
    .locals 10

    .prologue
    .line 788
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    .line 789
    .local v3, "path":Ljava/io/File;
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 790
    .local v4, "stat":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v0, v5

    .line 791
    .local v0, "blockSize":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    int-to-long v6, v5

    .line 792
    .local v6, "totalBlocks":J
    mul-long v8, v6, v0

    .line 794
    .end local v0    # "blockSize":J
    .end local v4    # "stat":Landroid/os/StatFs;
    .end local v6    # "totalBlocks":J
    :goto_0
    return-wide v8

    .line 793
    :catch_0
    move-exception v2

    .line 794
    .local v2, "e":Ljava/lang/Exception;
    const-wide/16 v8, -0x1

    goto :goto_0
.end method

.method private handleExceptionInternal(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/String;[Lcom/parse/ReportField;Z)Lcom/parse/ErrorReporter$ReportsSenderWorker;
    .locals 24
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p3, "overrideStackTrace"    # Ljava/lang/String;
    .param p4, "fields"    # [Lcom/parse/ReportField;
    .param p5, "shouldSendImmediately"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Lcom/parse/ReportField;",
            "Z)",
            "Lcom/parse/ErrorReporter$ReportsSenderWorker;"
        }
    .end annotation

    .prologue
    .line 1259
    .local p2, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/parse/ErrorReporter;->getMostSignificantCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v16

    .line 1260
    .local v16, "mostSignificantCause":Ljava/lang/Throwable;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    .line 1263
    .local v11, "causeClass":Ljava/lang/Class;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/parse/ErrorReporter;->shouldContinueProcessingException(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1264
    const/16 v23, 0x0

    .line 1383
    :goto_0
    return-object v23

    .line 1269
    :cond_0
    new-instance v8, Lcom/parse/CrashReportData;

    invoke-direct {v8}, Lcom/parse/CrashReportData;-><init>()V

    .line 1273
    .local v8, "crashReport":Lcom/parse/CrashReportData;
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/parse/NonCrashException;

    if-eqz v4, :cond_4

    move-object/from16 v4, p1

    check-cast v4, Lcom/parse/NonCrashException;

    invoke-interface {v4}, Lcom/parse/NonCrashException;->getExceptionFriendlyName()Ljava/lang/String;

    move-result-object v13

    .line 1275
    .local v13, "description":Ljava/lang/String;
    :goto_1
    const-string v4, "CrashReporting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Handling exception for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v4, v5, v1, v2}, Lcom/parse/ErrorReporter;->writeToLogBridge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1284
    const-string v4, "CrashReporting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Generating report file for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    const-string v4, ".temp_stacktrace"

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4}, Lcom/parse/ErrorReporter;->genCrashReportFileName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1286
    .local v22, "tempReportFileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parse/ErrorReporter;->mFileProvider:Lcom/parse/FileProvider;

    const-string v5, "cr/reports"

    move-object/from16 v0, v22

    invoke-static {v4, v5, v0}, Lcom/parse/ErrorReporter;->fileForName(Lcom/parse/FileProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v21

    .line 1287
    .local v21, "tempReportFile":Ljava/io/File;
    const-string v4, ".stacktrace"

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4}, Lcom/parse/ErrorReporter;->genCrashReportFileName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1288
    .local v20, "reportFileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parse/ErrorReporter;->mFileProvider:Lcom/parse/FileProvider;

    const-string v5, "cr/reports"

    move-object/from16 v0, v20

    invoke-static {v4, v5, v0}, Lcom/parse/ErrorReporter;->fileForName(Lcom/parse/FileProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v19

    .line 1290
    .local v19, "reportFile":Ljava/io/File;
    const/16 v17, 0x0

    .line 1291
    .local v17, "outputFile":Ljava/io/RandomAccessFile;
    const/4 v9, 0x0

    .line 1297
    .local v9, "tempReportWriter":Ljava/io/Writer;
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/parse/ErrorReporter;->usePreallocatedFile:Z

    if-eqz v4, :cond_1

    .line 1298
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parse/ErrorReporter;->preallocFile:Ljava/io/File;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1309
    :cond_1
    new-instance v18, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1311
    .end local v17    # "outputFile":Ljava/io/RandomAccessFile;
    .local v18, "outputFile":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {v4}, Lcom/parse/CrashReportData;->getWriter(Ljava/io/OutputStream;)Ljava/io/Writer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v9

    move-object/from16 v17, v18

    .line 1319
    .end local v18    # "outputFile":Ljava/io/RandomAccessFile;
    .restart local v17    # "outputFile":Ljava/io/RandomAccessFile;
    :goto_2
    :try_start_2
    sget-object v4, Lcom/parse/ReportField;->ACRA_REPORT_FILENAME:Lcom/parse/ReportField;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v4, v1, v8, v9}, Lcom/parse/ErrorReporter;->put(Lcom/parse/ReportField;Ljava/lang/String;Lcom/parse/CrashReportData;Ljava/io/Writer;)V

    .line 1320
    sget-object v4, Lcom/parse/ReportField;->EXCEPTION_CAUSE:Lcom/parse/ReportField;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v8, v9}, Lcom/parse/ErrorReporter;->put(Lcom/parse/ReportField;Ljava/lang/String;Lcom/parse/CrashReportData;Ljava/io/Writer;)V

    .line 1326
    if-nez p3, :cond_2

    .line 1327
    invoke-direct/range {p0 .. p1}, Lcom/parse/ErrorReporter;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    :cond_2
    move-object/from16 v4, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    move-object/from16 v7, p4

    move-object/from16 v10, p2

    .line 1329
    invoke-direct/range {v4 .. v10}, Lcom/parse/ErrorReporter;->gatherCrashData(Ljava/lang/String;Ljava/lang/Throwable;[Lcom/parse/ReportField;Lcom/parse/CrashReportData;Ljava/io/Writer;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1353
    if-eqz v17, :cond_3

    .line 1354
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v12

    .line 1355
    .local v12, "chan":Ljava/nio/channels/FileChannel;
    invoke-virtual {v12}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 1357
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->close()V

    .line 1358
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1366
    .end local v12    # "chan":Ljava/nio/channels/FileChannel;
    :cond_3
    :goto_3
    if-eqz p5, :cond_7

    .line 1367
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/parse/ErrorReporter;->sendInMemoryReport:Z

    if-eqz v4, :cond_6

    new-instance v23, Lcom/parse/ErrorReporter$ReportsSenderWorker;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lcom/parse/ErrorReporter$ReportsSenderWorker;-><init>(Lcom/parse/ErrorReporter;Lcom/parse/CrashReportData;)V

    .line 1370
    .local v23, "wk":Lcom/parse/ErrorReporter$ReportsSenderWorker;
    :goto_4
    const-string v4, "CrashReporting"

    const-string v5, "About to start ReportSenderWorker from #handleException"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    invoke-virtual/range {v23 .. v23}, Lcom/parse/ErrorReporter$ReportsSenderWorker;->start()V

    goto/16 :goto_0

    .line 1273
    .end local v9    # "tempReportWriter":Ljava/io/Writer;
    .end local v13    # "description":Ljava/lang/String;
    .end local v17    # "outputFile":Ljava/io/RandomAccessFile;
    .end local v19    # "reportFile":Ljava/io/File;
    .end local v20    # "reportFileName":Ljava/lang/String;
    .end local v21    # "tempReportFile":Ljava/io/File;
    .end local v22    # "tempReportFileName":Ljava/lang/String;
    .end local v23    # "wk":Lcom/parse/ErrorReporter$ReportsSenderWorker;
    :cond_4
    const-string v13, "crash"

    goto/16 :goto_1

    .line 1312
    .restart local v9    # "tempReportWriter":Ljava/io/Writer;
    .restart local v13    # "description":Ljava/lang/String;
    .restart local v17    # "outputFile":Ljava/io/RandomAccessFile;
    .restart local v19    # "reportFile":Ljava/io/File;
    .restart local v20    # "reportFileName":Ljava/lang/String;
    .restart local v21    # "tempReportFile":Ljava/io/File;
    .restart local v22    # "tempReportFileName":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 1313
    .local v14, "ex":Ljava/lang/Exception;
    :goto_5
    const-string v4, "CrashReporting"

    const-string v5, "An error occurred while creating the report file ..."

    invoke-static {v4, v5, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1315
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/parse/ErrorReporter;->sendInMemoryReport:Z

    goto :goto_2

    .line 1360
    .end local v14    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v14

    .line 1361
    .restart local v14    # "ex":Ljava/lang/Exception;
    const-string v4, "CrashReporting"

    const-string v5, "An error occurred while deleting closing the report file ..."

    invoke-static {v4, v5, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1330
    .end local v14    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v14

    .line 1337
    .restart local v14    # "ex":Ljava/lang/Exception;
    :try_start_4
    const-string v4, "CrashReporting"

    const-string v5, "An error occurred while gathering crash data ..."

    invoke-static {v4, v5, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1338
    sget-object v4, Lcom/parse/ReportField;->ACRA_INTERNAL:Lcom/parse/ReportField;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/parse/ErrorReporter;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v8, v9}, Lcom/parse/ErrorReporter;->put(Lcom/parse/ReportField;Ljava/lang/String;Lcom/parse/CrashReportData;Ljava/io/Writer;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1347
    :try_start_5
    const-string v4, "CrashReporting"

    const-string v5, "An error occurred while gathering crash data ..."

    invoke-static {v4, v5, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1353
    :goto_6
    if-eqz v17, :cond_3

    .line 1354
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v12

    .line 1355
    .restart local v12    # "chan":Ljava/nio/channels/FileChannel;
    invoke-virtual {v12}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 1357
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->close()V

    .line 1358
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    .line 1360
    .end local v12    # "chan":Ljava/nio/channels/FileChannel;
    :catch_3
    move-exception v14

    .line 1361
    const-string v4, "CrashReporting"

    const-string v5, "An error occurred while deleting closing the report file ..."

    invoke-static {v4, v5, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1339
    :catch_4
    move-exception v15

    .line 1344
    .local v15, "ex1":Ljava/lang/Exception;
    :try_start_7
    const-string v4, "CrashReporting"

    const-string v5, "An error occurred while gathering internal crash data ..."

    invoke-static {v4, v5, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1345
    sget-object v4, Lcom/parse/ReportField;->ACRA_INTERNAL:Lcom/parse/ReportField;

    const-string v5, "ACRA_INTERNAL=java.lang.Exception: An exception occurred while trying to collect data about an ACRA internal error\n\tat com.parse.acra.ErrorReporter.handleException(ErrorReporter.java:810)\n\tat com.parse.acra.ErrorReporter.handleException(ErrorReporter.java:866)\n\tat com.parse.acra.ErrorReporter.uncaughtException(ErrorReporter.java:666)\n\tat java.lang.ThreadGroup.uncaughtException(ThreadGroup.java:693)\n\tat java.lang.ThreadGroup.uncaughtException(ThreadGroup.java:690)\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v8, v9}, Lcom/parse/ErrorReporter;->put(Lcom/parse/ReportField;Ljava/lang/String;Lcom/parse/CrashReportData;Ljava/io/Writer;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1347
    :try_start_8
    const-string v4, "CrashReporting"

    const-string v5, "An error occurred while gathering crash data ..."

    invoke-static {v4, v5, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6

    .line 1350
    .end local v14    # "ex":Ljava/lang/Exception;
    .end local v15    # "ex1":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 1353
    if-eqz v17, :cond_5

    .line 1354
    :try_start_9
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v12

    .line 1355
    .restart local v12    # "chan":Ljava/nio/channels/FileChannel;
    invoke-virtual {v12}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    invoke-virtual {v12, v6, v7}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 1357
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->close()V

    .line 1358
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 1363
    .end local v12    # "chan":Ljava/nio/channels/FileChannel;
    :cond_5
    :goto_7
    throw v4

    .line 1347
    .restart local v14    # "ex":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    :try_start_a
    const-string v5, "CrashReporting"

    const-string v6, "An error occurred while gathering crash data ..."

    invoke-static {v5, v6, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1360
    .end local v14    # "ex":Ljava/lang/Exception;
    :catch_5
    move-exception v14

    .line 1361
    .restart local v14    # "ex":Ljava/lang/Exception;
    const-string v5, "CrashReporting"

    const-string v6, "An error occurred while deleting closing the report file ..."

    invoke-static {v5, v6, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 1367
    .end local v14    # "ex":Ljava/lang/Exception;
    :cond_6
    new-instance v23, Lcom/parse/ErrorReporter$ReportsSenderWorker;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/parse/ErrorReporter$CrashReportType;

    const/4 v5, 0x0

    sget-object v6, Lcom/parse/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/parse/ErrorReporter$CrashReportType;

    aput-object v6, v4, v5

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/parse/ErrorReporter$ReportsSenderWorker;-><init>(Lcom/parse/ErrorReporter;[Lcom/parse/ErrorReporter$CrashReportType;)V

    goto/16 :goto_4

    .line 1380
    :cond_7
    const-string v4, "CrashReporting"

    const-string v5, "ParseCrashReporting caught an OutOfMemoryError. Report upload deferred until next ParseCrashReporting launch."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 1312
    .end local v17    # "outputFile":Ljava/io/RandomAccessFile;
    .restart local v18    # "outputFile":Ljava/io/RandomAccessFile;
    :catch_6
    move-exception v14

    move-object/from16 v17, v18

    .end local v18    # "outputFile":Ljava/io/RandomAccessFile;
    .restart local v17    # "outputFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_5
.end method

.method private loadAcraCrashReport(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/CrashReportData;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1675
    sget-object v3, Lcom/parse/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/parse/ErrorReporter$CrashReportType;

    iget-wide v4, p0, Lcom/parse/ErrorReporter;->mMaxReportSize:J

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/parse/ErrorReporter;->loadCrashReport(Landroid/content/Context;Ljava/lang/String;Lcom/parse/ErrorReporter$CrashReportType;J)Lcom/parse/CrashReportData;

    move-result-object v0

    return-object v0
.end method

.method private loadAttachment(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 8
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "nbytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1810
    const/4 v5, 0x0

    .line 1811
    .local v5, "offset":I
    const/4 v4, 0x0

    .line 1812
    .local v4, "nbytesread":I
    new-array v0, p2, [B

    .line 1813
    .local v0, "attachment":[B
    :goto_0
    sub-int v6, p2, v5

    if-lez v6, :cond_0

    .line 1814
    sub-int v6, p2, v5

    invoke-virtual {p1, v0, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 1815
    const/4 v6, -0x1

    if-ne v4, v6, :cond_2

    .line 1821
    :cond_0
    if-nez v4, :cond_3

    .line 1822
    const-string v6, ""

    .line 1835
    :cond_1
    :goto_1
    return-object v6

    .line 1818
    :cond_2
    add-int/2addr v5, v4

    goto :goto_0

    .line 1826
    :cond_3
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1827
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 1829
    .local v2, "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1830
    .end local v2    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .local v3, "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    const/4 v6, 0x0

    :try_start_1
    array-length v7, v0

    invoke-virtual {v3, v0, v6, v7}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 1831
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 1832
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 1834
    if-eqz v3, :cond_1

    .line 1835
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V

    goto :goto_1

    .line 1834
    .end local v3    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v2, :cond_4

    .line 1835
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_4
    throw v6

    .line 1834
    .end local v2    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    goto :goto_2
.end method

.method private loadCrashAttachment(Landroid/content/Context;Ljava/lang/String;Lcom/parse/ErrorReporter$CrashReportType;)Lcom/parse/CrashReportData;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/parse/ErrorReporter$CrashReportType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1683
    # getter for: Lcom/parse/ErrorReporter$CrashReportType;->defaultMaxSize:J
    invoke-static {p3}, Lcom/parse/ErrorReporter$CrashReportType;->access$500(Lcom/parse/ErrorReporter$CrashReportType;)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/parse/ErrorReporter;->loadCrashReport(Landroid/content/Context;Ljava/lang/String;Lcom/parse/ErrorReporter$CrashReportType;J)Lcom/parse/CrashReportData;

    move-result-object v0

    return-object v0
.end method

.method private loadCrashReport(Landroid/content/Context;Ljava/lang/String;Lcom/parse/ErrorReporter$CrashReportType;J)Lcom/parse/CrashReportData;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "crashReportType"    # Lcom/parse/ErrorReporter$CrashReportType;
    .param p4, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1693
    new-instance v4, Lcom/parse/CrashReportData;

    invoke-direct {v4}, Lcom/parse/CrashReportData;-><init>()V

    .line 1694
    .local v4, "crashReport":Lcom/parse/CrashReportData;
    iget-object v9, p0, Lcom/parse/ErrorReporter;->mFileProvider:Lcom/parse/FileProvider;

    # getter for: Lcom/parse/ErrorReporter$CrashReportType;->directory:Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/parse/ErrorReporter$CrashReportType;->access$100(Lcom/parse/ErrorReporter$CrashReportType;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-static {v9, v10, v0}, Lcom/parse/ErrorReporter;->fileForName(Lcom/parse/FileProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 1695
    .local v7, "rptfp":Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/32 v12, 0x5265c00

    cmp-long v9, v10, v12

    if-lez v9, :cond_0

    .line 1696
    const-string v9, "CrashReporting"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "crash report "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " was too old; deleted"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    # getter for: Lcom/parse/ErrorReporter$CrashReportType;->directory:Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/parse/ErrorReporter$CrashReportType;->access$100(Lcom/parse/ErrorReporter$CrashReportType;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-direct {p0, v9, v0}, Lcom/parse/ErrorReporter;->deleteFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    const/4 v4, 0x0

    .line 1743
    .end local v4    # "crashReport":Lcom/parse/CrashReportData;
    :goto_0
    return-object v4

    .line 1702
    .restart local v4    # "crashReport":Lcom/parse/CrashReportData;
    :cond_0
    const-string v9, ".temp_stacktrace"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/32 v12, 0x927c0

    cmp-long v9, v10, v12

    if-gez v9, :cond_1

    .line 1704
    const-string v9, "CrashReporting"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "temp file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is too recent; skipping"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    const/4 v4, 0x0

    goto :goto_0

    .line 1707
    :cond_1
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v10

    cmp-long v9, v10, p4

    if-lez v9, :cond_2

    .line 1708
    const-string v9, "CrashReporting"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-byte crash report "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " exceeded max size of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p4

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " bytes; deleted"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    # getter for: Lcom/parse/ErrorReporter$CrashReportType;->directory:Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/parse/ErrorReporter$CrashReportType;->access$100(Lcom/parse/ErrorReporter$CrashReportType;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-direct {p0, v9, v0}, Lcom/parse/ErrorReporter;->deleteFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1714
    :cond_2
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1715
    .local v5, "input":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 1718
    .local v3, "closed":Z
    :try_start_0
    sget-object v9, Lcom/parse/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/parse/ErrorReporter$CrashReportType;

    move-object/from16 v0, p3

    if-ne v0, v9, :cond_4

    .line 1719
    invoke-virtual {v4, v5}, Lcom/parse/CrashReportData;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1734
    :goto_1
    if-nez v3, :cond_3

    .line 1735
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 1741
    :cond_3
    :goto_2
    sget-object v9, Lcom/parse/ReportField;->ACRA_REPORT_FILENAME:Lcom/parse/ReportField;

    move-object/from16 v0, p2

    invoke-virtual {v4, v9, v0}, Lcom/parse/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1742
    invoke-virtual {p0, v4}, Lcom/parse/ErrorReporter;->backfillCrashReportData(Lcom/parse/CrashReportData;)V

    goto/16 :goto_0

    .line 1722
    :cond_4
    :try_start_1
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v6, v10

    .line 1723
    .local v6, "nbytes":I
    invoke-direct {p0, v5, v6}, Lcom/parse/ErrorReporter;->loadAttachment(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v2

    .line 1724
    .local v2, "attachment":Ljava/lang/String;
    # getter for: Lcom/parse/ErrorReporter$CrashReportType;->attachmentField:Lcom/parse/ReportField;
    invoke-static/range {p3 .. p3}, Lcom/parse/ErrorReporter$CrashReportType;->access$400(Lcom/parse/ErrorReporter$CrashReportType;)Lcom/parse/ReportField;

    move-result-object v9

    invoke-virtual {v4, v9, v2}, Lcom/parse/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1726
    .end local v2    # "attachment":Ljava/lang/String;
    .end local v6    # "nbytes":I
    :catch_0
    move-exception v8

    .line 1727
    .local v8, "th":Ljava/lang/Throwable;
    :try_start_2
    sget-object v9, Lcom/parse/ReportField;->REPORT_LOAD_THROW:Lcom/parse/ReportField;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "throwable: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/parse/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1728
    const-string v9, "CrashReporting"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not load crash report:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 1730
    const/4 v3, 0x1

    .line 1731
    invoke-virtual/range {p1 .. p2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 1732
    const-string v9, "CrashReporting"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Crash report:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " deleted"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1734
    if-nez v3, :cond_3

    .line 1735
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_2

    .line 1734
    .end local v8    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v9

    if-nez v3, :cond_5

    .line 1735
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    :cond_5
    throw v9
.end method

.method private populateConstantDeviceData(Lcom/parse/CrashReportData;Ljava/io/Writer;)V
    .locals 5
    .param p1, "crashReport"    # Lcom/parse/CrashReportData;
    .param p2, "writer"    # Ljava/io/Writer;

    .prologue
    .line 807
    invoke-direct {p0}, Lcom/parse/ErrorReporter;->getConstantDeviceData()Ljava/util/Map;

    move-result-object v0

    .line 808
    .local v0, "deviceData":Ljava/util/Map;, "Ljava/util/Map<Lcom/parse/ReportField;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 809
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/parse/ReportField;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ReportField;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v3, v4, p1, p2}, Lcom/parse/ErrorReporter;->put(Lcom/parse/ReportField;Ljava/lang/String;Lcom/parse/CrashReportData;Ljava/io/Writer;)V

    goto :goto_0

    .line 811
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/parse/ReportField;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private put(Lcom/parse/ReportField;Ljava/lang/String;Lcom/parse/CrashReportData;Ljava/io/Writer;)V
    .locals 2
    .param p1, "key"    # Lcom/parse/ReportField;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "crashReport"    # Lcom/parse/CrashReportData;
    .param p4, "writer"    # Ljava/io/Writer;

    .prologue
    .line 1186
    :try_start_0
    iget-boolean v1, p0, Lcom/parse/ErrorReporter;->sendInMemoryReport:Z

    if-eqz v1, :cond_0

    const/4 p4, 0x0

    .end local p4    # "writer":Ljava/io/Writer;
    :cond_0
    invoke-virtual {p3, p1, p2, p4}, Lcom/parse/CrashReportData;->put(Lcom/parse/ReportField;Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1191
    :goto_0
    return-void

    .line 1187
    :catch_0
    move-exception v0

    .line 1189
    .local v0, "ex":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/parse/ErrorReporter;->sendInMemoryReport:Z

    goto :goto_0
.end method

.method private resetProcessNameByAmsCache()V
    .locals 1

    .prologue
    .line 534
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ErrorReporter;->processNameByAms:Ljava/lang/String;

    .line 535
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/ErrorReporter;->processNameByAmsReady:Z

    .line 536
    return-void
.end method

.method private retrieveCrashTimeData(Landroid/content/Context;Ljava/lang/Throwable;[Lcom/parse/ReportField;Lcom/parse/CrashReportData;Ljava/io/Writer;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "e"    # Ljava/lang/Throwable;
    .param p3, "fields"    # [Lcom/parse/ReportField;
    .param p4, "crashReport"    # Lcom/parse/CrashReportData;
    .param p5, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 902
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 905
    .local v4, "fieldsList":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ReportField;>;"
    sget-object v7, Lcom/parse/ReportField;->REPORT_ID:Lcom/parse/ReportField;

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 906
    sget-object v7, Lcom/parse/ReportField;->REPORT_ID:Lcom/parse/ReportField;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8, p4, p5}, Lcom/parse/ErrorReporter;->put(Lcom/parse/ReportField;Ljava/lang/String;Lcom/parse/CrashReportData;Ljava/io/Writer;)V

    .line 910
    :cond_0
    sget-object v7, Lcom/parse/ReportField;->PROCESS_NAME:Lcom/parse/ReportField;

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 911
    sget-object v7, Lcom/parse/ReportField;->PROCESS_NAME:Lcom/parse/ReportField;

    invoke-direct {p0}, Lcom/parse/ErrorReporter;->getProcessName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8, p4, p5}, Lcom/parse/ErrorReporter;->put(Lcom/parse/ReportField;Ljava/lang/String;Lcom/parse/CrashReportData;Ljava/io/Writer;)V

    .line 915
    :cond_1
    sget-object v7, Lcom/parse/ReportField;->USER_APP_START_DATE:Lcom/parse/ReportField;

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 916
    sget-object v7, Lcom/parse/ReportField;->USER_APP_START_DATE:Lcom/parse/ReportField;

    iget-object v8, p0, Lcom/parse/ErrorReporter;->mAppStartDate:Landroid/text/format/Time;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8, p4, p5}, Lcom/parse/ErrorReporter;->put(Lcom/parse/ReportField;Ljava/lang/String;Lcom/parse/CrashReportData;Ljava/io/Writer;)V

    .line 920
    :cond_2
    sget-object v7, Lcom/parse/ReportField;->PROCESS_UPTIME:Lcom/parse/ReportField;

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 921
    sget-object v7, Lcom/parse/ReportField;->PROCESS_UPTIME:Lcom/parse/ReportField;

    invoke-direct {p0}, Lcom/parse/ErrorReporter;->getProcessUptime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8, p4, p5}, Lcom/parse/ErrorReporter;->put(Lcom/parse/ReportField;Ljava/lang/String;Lcom/parse/CrashReportData;Ljava/io/Writer;)V

    .line 925
    :cond_3
    sget-object v7, Lcom/parse/ReportField;->DEVICE_UPTIME:Lcom/parse/ReportField;

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 926
    sget-object v7, Lcom/parse/ReportField;->DEVICE_UPTIME:Lcom/parse/ReportField;

    invoke-direct {p0}, Lcom/parse/ErrorReporter;->getDeviceUptime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8, p4, p5}, Lcom/parse/ErrorReporter;->put(Lcom/parse/ReportField;Ljava/lang/String;Lcom/parse/CrashReportData;Ljava/io/Writer;)V

    .line 929
    :cond_4
    sget-object v7, Lcom/parse/ReportField;->CRASH_CONFIGURATION:Lcom/parse/ReportField;

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 930
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 931
    .local v1, "crashConf":Landroid/content/res/Configuration;
    sget-object v7, Lcom/parse/ReportField;->CRASH_CONFIGURATION:Lcom/parse/ReportField;

    invoke-static {v1}, Lcom/parse/ConfigurationInspector;->toString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8, p4, p5}, Lcom/parse/ErrorReporter;->put(Lcom/parse/ReportField;Ljava/lang/String;Lcom/parse/CrashReportData;Ljava/io/Writer;)V

    .line 935
    .end local v1    # "crashConf":Landroid/content/res/Configuration;
    :cond_5
    sget-object v7, Lcom/parse/ReportField;->AVAILABLE_MEM_SIZE:Lcom/parse/ReportField;

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 936
    invoke-static {}, Lcom/parse/ErrorReporter;->getAvailableInternalMemorySize()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 937
    .local v5, "internalMemorySize":Ljava/lang/String;
    sget-object v7, Lcom/parse/ReportField;->AVAILABLE_MEM_SIZE:Lcom/parse/ReportField;

    invoke-direct {p0, v7, v5, p4, p5}, Lcom/parse/ErrorReporter;->put(Lcom/parse/ReportField;Ljava/lang/String;Lcom/parse/CrashReportData;Ljava/io/Writer;)V

    .line 941
    .end local v5    # "internalMemorySize":Ljava/lang/String;
    :cond_6
    sget-object v7, Lcom/parse/ReportField;->DUMPSYS_MEMINFO:Lcom/parse/ReportField;

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 942
    sget-object v7, Lcom/parse/ReportField;->DUMPSYS_MEMINFO:Lcom/parse/ReportField;

    invoke-static {p1}, Lcom/parse/DumpSysCollector;->collectMemInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8, p4, p5}, Lcom/parse/ErrorReporter;->put(Lcom/parse/ReportField;Ljava/lang/String;Lcom/parse/CrashReportData;Ljava/io/Writer;)V

    .line 946
    :cond_7
    sget-object v7, Lcom/parse/ReportField;->USER_CRASH_DATE:Lcom/parse/ReportField;

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 947
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 948
    .local v2, "curDate":Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 949
    sget-object v7, Lcom/parse/ReportField;->USER_CRASH_DATE:Lcom/parse/ReportField;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8, p4, p5}, Lcom/parse/ErrorReporter;->put(Lcom/parse/ReportField;Ljava/lang/String;Lcom/parse/CrashReportData;Ljava/io/Writer;)V

    .line 953
    .end local v2    # "curDate":Landroid/text/format/Time;
    :cond_8
    sget-object v7, Lcom/parse/ReportField;->ACTIVITY_LOG:Lcom/parse/ReportField;

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 955
    instance-of v7, p2, Ljava/lang/OutOfMemoryError;

    if-eqz v7, :cond_14

    .line 956
    iget-object v7, p0, Lcom/parse/ErrorReporter;->activityLogger:Lcom/parse/SimpleTraceLogger;

    invoke-virtual {v7}, Lcom/parse/SimpleTraceLogger;->toString()Ljava/lang/String;

    move-result-object v0

    .line 960
    .local v0, "activityLogDump":Ljava/lang/String;
    :goto_0
    sget-object v7, Lcom/parse/ReportField;->ACTIVITY_LOG:Lcom/parse/ReportField;

    invoke-direct {p0, v7, v0, p4, p5}, Lcom/parse/ErrorReporter;->put(Lcom/parse/ReportField;Ljava/lang/String;Lcom/parse/CrashReportData;Ljava/io/Writer;)V

    .line 964
    .end local v0    # "activityLogDump":Ljava/lang/String;
    :cond_9
    sget-object v7, Lcom/parse/ReportField;->PROCESS_NAME_BY_AMS:Lcom/parse/ReportField;

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 965
    sget-object v7, Lcom/parse/ReportField;->PROCESS_NAME_BY_AMS:Lcom/parse/ReportField;

    invoke-direct {p0}, Lcom/parse/ErrorReporter;->getProcessNameFromAms()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8, p4, p5}, Lcom/parse/ErrorReporter;->put(Lcom/parse/ReportField;Ljava/lang/String;Lcom/parse/CrashReportData;Ljava/io/Writer;)V

    .line 967
    :cond_a
    invoke-direct {p0}, Lcom/parse/ErrorReporter;->resetProcessNameByAmsCache()V

    .line 970
    sget-object v7, Lcom/parse/ReportField;->OPEN_FD_COUNT:Lcom/parse/ReportField;

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 971
    sget-object v7, Lcom/parse/ReportField;->OPEN_FD_COUNT:Lcom/parse/ReportField;

    invoke-static {}, Lcom/parse/ProcFileReader;->getOpenFDCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8, p4, p5}, Lcom/parse/ErrorReporter;->put(Lcom/parse/ReportField;Ljava/lang/String;Lcom/parse/CrashReportData;Ljava/io/Writer;)V

    .line 974
    :cond_b
    sget-object v7, Lcom/parse/ReportField;->OPEN_FD_SOFT_LIMIT:Lcom/parse/ReportField;

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    sget-object v7, Lcom/parse/ReportField;->OPEN_FD_HARD_LIMIT:Lcom/parse/ReportField;

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 975
    :cond_c
    invoke-static {}, Lcom/parse/ProcFileReader;->getOpenFDLimits()Lcom/parse/ProcFileReader$OpenFDLimits;

    move-result-object v6

    .line 976
    .local v6, "limits":Lcom/parse/ProcFileReader$OpenFDLimits;
    if-eqz v6, :cond_e

    .line 977
    sget-object v7, Lcom/parse/ReportField;->OPEN_FD_SOFT_LIMIT:Lcom/parse/ReportField;

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 978
    sget-object v7, Lcom/parse/ReportField;->OPEN_FD_SOFT_LIMIT:Lcom/parse/ReportField;

    iget-object v8, v6, Lcom/parse/ProcFileReader$OpenFDLimits;->softLimit:Ljava/lang/String;

    invoke-direct {p0, v7, v8, p4, p5}, Lcom/parse/ErrorReporter;->put(Lcom/parse/ReportField;Ljava/lang/String;Lcom/parse/CrashReportData;Ljava/io/Writer;)V

    .line 980
    :cond_d
    sget-object v7, Lcom/parse/ReportField;->OPEN_FD_HARD_LIMIT:Lcom/parse/ReportField;

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 981
    sget-object v7, Lcom/parse/ReportField;->OPEN_FD_HARD_LIMIT:Lcom/parse/ReportField;

    iget-object v8, v6, Lcom/parse/ProcFileReader$OpenFDLimits;->hardLimit:Ljava/lang/String;

    invoke-direct {p0, v7, v8, p4, p5}, Lcom/parse/ErrorReporter;->put(Lcom/parse/ReportField;Ljava/lang/String;Lcom/parse/CrashReportData;Ljava/io/Writer;)V

    .line 989
    .end local v6    # "limits":Lcom/parse/ProcFileReader$OpenFDLimits;
    :cond_e
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-lt v7, v8, :cond_12

    iget-boolean v7, p0, Lcom/parse/ErrorReporter;->mIsInternalBuild:Z

    if-eqz v7, :cond_12

    .line 990
    sget-object v7, Lcom/parse/ReportField;->LOGCAT:Lcom/parse/ReportField;

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 991
    sget-object v7, Lcom/parse/ReportField;->LOGCAT:Lcom/parse/ReportField;

    const/4 v8, 0x0

    invoke-static {v8}, Lcom/parse/LogCatCollector;->collectLogCat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8, p4, p5}, Lcom/parse/ErrorReporter;->put(Lcom/parse/ReportField;Ljava/lang/String;Lcom/parse/CrashReportData;Ljava/io/Writer;)V

    .line 993
    :cond_f
    sget-object v7, Lcom/parse/ReportField;->EVENTSLOG:Lcom/parse/ReportField;

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 994
    sget-object v7, Lcom/parse/ReportField;->EVENTSLOG:Lcom/parse/ReportField;

    const-string v8, "events"

    invoke-static {v8}, Lcom/parse/LogCatCollector;->collectLogCat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8, p4, p5}, Lcom/parse/ErrorReporter;->put(Lcom/parse/ReportField;Ljava/lang/String;Lcom/parse/CrashReportData;Ljava/io/Writer;)V

    .line 996
    :cond_10
    sget-object v7, Lcom/parse/ReportField;->RADIOLOG:Lcom/parse/ReportField;

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 997
    sget-object v7, Lcom/parse/ReportField;->RADIOLOG:Lcom/parse/ReportField;

    const-string v8, "radio"

    invoke-static {v8}, Lcom/parse/LogCatCollector;->collectLogCat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8, p4, p5}, Lcom/parse/ErrorReporter;->put(Lcom/parse/ReportField;Ljava/lang/String;Lcom/parse/CrashReportData;Ljava/io/Writer;)V

    .line 999
    :cond_11
    sget-object v7, Lcom/parse/ReportField;->DROPBOX:Lcom/parse/ReportField;

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1000
    iget-object v7, p0, Lcom/parse/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/parse/ACRA;->getConfig()Lcom/parse/ReportsCrashes;

    move-result-object v8

    invoke-interface {v8}, Lcom/parse/ReportsCrashes;->additionalDropBoxTags()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parse/DropBoxCollector;->read(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1002
    .local v3, "dropBoxDump":Ljava/lang/String;
    sget-object v7, Lcom/parse/ReportField;->DROPBOX:Lcom/parse/ReportField;

    invoke-direct {p0, v7, v3, p4, p5}, Lcom/parse/ErrorReporter;->put(Lcom/parse/ReportField;Ljava/lang/String;Lcom/parse/CrashReportData;Ljava/io/Writer;)V

    .line 1005
    .end local v3    # "dropBoxDump":Ljava/lang/String;
    :cond_12
    sget-object v7, Lcom/parse/ReportField;->LARGE_MEM_HEAP:Lcom/parse/ReportField;

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_13

    .line 1007
    sget-object v7, Lcom/parse/ReportField;->LARGE_MEM_HEAP:Lcom/parse/ReportField;

    invoke-static {p1}, Lcom/parse/DumpSysCollector;->collectLargerMemoryInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8, p4, p5}, Lcom/parse/ErrorReporter;->put(Lcom/parse/ReportField;Ljava/lang/String;Lcom/parse/CrashReportData;Ljava/io/Writer;)V

    .line 1009
    :cond_13
    return-void

    .line 958
    :cond_14
    iget-object v7, p0, Lcom/parse/ErrorReporter;->activityLogger:Lcom/parse/SimpleTraceLogger;

    sget v8, Lcom/parse/ErrorReporter;->DEFAULT_TRACE_COUNT_LIMIT:I

    invoke-virtual {v7, v8}, Lcom/parse/SimpleTraceLogger;->toString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "activityLogDump":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private sendCrashReport(Lcom/parse/CrashReportData;)V
    .locals 7
    .param p1, "errorContent"    # Lcom/parse/CrashReportData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ReportSenderException;
        }
    .end annotation

    .prologue
    .line 1436
    const/4 v3, 0x0

    .line 1437
    .local v3, "sentAtLeastOnce":Z
    iget-object v4, p0, Lcom/parse/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ReportSender;

    .line 1439
    .local v2, "sender":Lcom/parse/ReportSender;
    :try_start_0
    invoke-interface {v2, p1}, Lcom/parse/ReportSender;->send(Lcom/parse/CrashReportData;)V
    :try_end_0
    .catch Lcom/parse/ReportSenderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1442
    const/4 v3, 0x1

    goto :goto_0

    .line 1443
    :catch_0
    move-exception v0

    .line 1444
    .local v0, "e":Lcom/parse/ReportSenderException;
    if-nez v3, :cond_0

    .line 1445
    throw v0

    .line 1447
    :cond_0
    const-string v4, "CrashReporting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ReportSender of class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed but other senders completed their task. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ParseCrashReporting will not send this report again."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1453
    .end local v0    # "e":Lcom/parse/ReportSenderException;
    .end local v2    # "sender":Lcom/parse/ReportSender;
    :cond_1
    return-void
.end method

.method private shouldContinueProcessingException(Ljava/lang/Throwable;)Z
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x1

    .line 1984
    iget-object v1, p0, Lcom/parse/ErrorReporter;->mShouldContinueProcessingExceptionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1985
    :try_start_0
    iget-boolean v2, p0, Lcom/parse/ErrorReporter;->mCurrentlyProcessingOOM:Z

    if-eqz v2, :cond_0

    .line 1987
    const/4 v0, 0x0

    monitor-exit v1

    .line 1994
    :goto_0
    return v0

    .line 1990
    :cond_0
    instance-of v2, p1, Ljava/lang/OutOfMemoryError;

    if-eqz v2, :cond_1

    .line 1992
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/parse/ErrorReporter;->mCurrentlyProcessingOOM:Z

    .line 1994
    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 1995
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1129
    if-nez p1, :cond_0

    .line 1130
    new-instance p1, Ljava/lang/Exception;

    .end local p1    # "e":Ljava/lang/Throwable;
    const-string v2, "Report requested by developer"

    invoke-direct {p1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1133
    .restart local p1    # "e":Ljava/lang/Throwable;
    :cond_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 1134
    .local v1, "result":Ljava/io/Writer;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1135
    .local v0, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1136
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 1138
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static toString(Landroid/view/Display;)Ljava/lang/String;
    .locals 5
    .param p0, "display"    # Landroid/view/Display;

    .prologue
    const/16 v4, 0xa

    .line 1020
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1021
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1022
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1023
    .local v1, "result":Ljava/lang/StringBuilder;
    const-string v2, "width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "pixelFormat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/Display;->getPixelFormat()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "refreshRate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/Display;->getRefreshRate()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "fps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "metrics.density=x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "metrics.scaledDensity=x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "metrics.widthPixels="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "metrics.heightPixels="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "metrics.xdpi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "metrics.ydpi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1031
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private writeToLogBridge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;
    .param p4, "overrideStackTrace"    # Ljava/lang/String;

    .prologue
    .line 1103
    invoke-virtual {p0}, Lcom/parse/ErrorReporter;->getLogBridge()Lcom/parse/LogBridge;

    move-result-object v0

    .line 1104
    .local v0, "logBridge":Lcom/parse/LogBridge;
    if-eqz v0, :cond_1

    .line 1107
    if-eqz p4, :cond_0

    .line 1108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/parse/LogBridge;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1121
    :goto_0
    return-void

    .line 1110
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/parse/LogBridge;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1115
    :cond_1
    if-eqz p4, :cond_2

    .line 1116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1118
    :cond_2
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public addReportSender(Lcom/parse/ReportSender;)V
    .locals 1
    .param p1, "sender"    # Lcom/parse/ReportSender;

    .prologue
    .line 1898
    iget-object v0, p0, Lcom/parse/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1899
    return-void
.end method

.method backfillCrashReportData(Lcom/parse/CrashReportData;)V
    .locals 9
    .param p1, "crashReport"    # Lcom/parse/CrashReportData;

    .prologue
    .line 1755
    sget-object v7, Lcom/parse/ReportField;->ACRA_REPORT_FILENAME:Lcom/parse/ReportField;

    invoke-virtual {p1, v7}, Lcom/parse/CrashReportData;->getProperty(Lcom/parse/ReportField;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/parse/ErrorReporter;->parseVersionCodeFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1757
    .local v6, "versionCode":Ljava/lang/String;
    iget-object v7, p0, Lcom/parse/ErrorReporter;->mAppVersionCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v2, 0x1

    .line 1759
    .local v2, "hasAppBeenUpgraded":Z
    :goto_0
    sget-object v7, Lcom/parse/ReportField;->REPORT_ID:Lcom/parse/ReportField;

    invoke-virtual {p1, v7}, Lcom/parse/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1760
    .local v5, "reportID":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    .line 1761
    :cond_0
    iget-object v7, p0, Lcom/parse/ErrorReporter;->mConstantFields:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1762
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/parse/ReportField;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/parse/ReportField;

    sget-object v8, Lcom/parse/ReportField;->APP_VERSION_NAME:Lcom/parse/ReportField;

    invoke-virtual {v7, v8}, Lcom/parse/ReportField;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1764
    if-nez v2, :cond_1

    .line 1767
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Enum;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lcom/parse/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1757
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/parse/ReportField;Ljava/lang/String;>;"
    .end local v2    # "hasAppBeenUpgraded":Z
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "reportID":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 1771
    .restart local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/parse/ReportField;Ljava/lang/String;>;"
    .restart local v2    # "hasAppBeenUpgraded":Z
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "reportID":Ljava/lang/String;
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/parse/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    .line 1772
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Enum;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lcom/parse/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1779
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/parse/ReportField;Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {p0}, Lcom/parse/ErrorReporter;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 1780
    .local v0, "currentUserId":Ljava/lang/String;
    sget-object v7, Lcom/parse/ReportField;->UID:Lcom/parse/ReportField;

    invoke-virtual {p1, v7}, Lcom/parse/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1781
    .local v4, "previousUid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1782
    sget-object v7, Lcom/parse/ReportField;->UID:Lcom/parse/ReportField;

    invoke-virtual {p1, v7, v0}, Lcom/parse/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1784
    :cond_5
    return-void
.end method

.method varargs declared-synchronized checkAndSendReports(Landroid/content/Context;[Lcom/parse/ErrorReporter$CrashReportType;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "types"    # [Lcom/parse/ErrorReporter$CrashReportType;

    .prologue
    .line 1507
    monitor-enter p0

    :try_start_0
    const-string v4, "CrashReporting"

    const-string v5, "#checkAndSendReports - start"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    move-object v0, p2

    .local v0, "arr$":[Lcom/parse/ErrorReporter$CrashReportType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1509
    .local v3, "reportType":Lcom/parse/ErrorReporter$CrashReportType;
    sget-object v4, Lcom/parse/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/parse/ErrorReporter$CrashReportType;

    if-ne v4, v3, :cond_0

    .line 1510
    invoke-direct {p0, p1}, Lcom/parse/ErrorReporter;->checkAndSendAcraReports(Landroid/content/Context;)V

    .line 1508
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1512
    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/parse/ErrorReporter;->checkAndSendCrashAttachments(Landroid/content/Context;Lcom/parse/ErrorReporter$CrashReportType;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1507
    .end local v0    # "arr$":[Lcom/parse/ErrorReporter$CrashReportType;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "reportType":Lcom/parse/ErrorReporter$CrashReportType;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1515
    .restart local v0    # "arr$":[Lcom/parse/ErrorReporter$CrashReportType;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    :cond_1
    :try_start_1
    const-string v4, "CrashReporting"

    const-string v5, "#checkAndSendReports - finish"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1516
    monitor-exit p0

    return-void
.end method

.method public varargs checkReportsOfType([Lcom/parse/ErrorReporter$CrashReportType;)Lcom/parse/ErrorReporter$ReportsSenderWorker;
    .locals 1
    .param p1, "types"    # [Lcom/parse/ErrorReporter$CrashReportType;

    .prologue
    .line 1879
    new-instance v0, Lcom/parse/ErrorReporter$ReportsSenderWorker;

    invoke-direct {v0, p0, p1}, Lcom/parse/ErrorReporter$ReportsSenderWorker;-><init>(Lcom/parse/ErrorReporter;[Lcom/parse/ErrorReporter$CrashReportType;)V

    .line 1880
    .local v0, "worker":Lcom/parse/ErrorReporter$ReportsSenderWorker;
    invoke-virtual {v0}, Lcom/parse/ErrorReporter$ReportsSenderWorker;->start()V

    .line 1881
    return-object v0
.end method

.method public checkReportsOnApplicationStart()Lcom/parse/ErrorReporter$ReportsSenderWorker;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1857
    const-string v2, "cr/reports"

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, ".stacktrace"

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/parse/ErrorReporter;->getCrashReportFilesList(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1858
    .local v0, "filesList":[Ljava/lang/String;
    const-string v2, "cr/minidumps"

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, ".dmp"

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/parse/ErrorReporter;->getCrashReportFilesList(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1859
    .local v1, "nativeCrashFileList":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-gtz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_3

    array-length v2, v1

    if-lez v2, :cond_3

    .line 1861
    :cond_1
    const-string v2, "CrashReporting"

    const-string v3, "About to start ReportSenderWorker from #checkReportOnApplicationStart"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    .line 1863
    iput-boolean v5, p0, Lcom/parse/ErrorReporter;->mHasNativeCrashDumpOnInit:Z

    .line 1865
    :cond_2
    sget-object v2, Lcom/parse/ErrorReporter;->ALL_REPORT_TYPES:[Lcom/parse/ErrorReporter$CrashReportType;

    invoke-virtual {p0, v2}, Lcom/parse/ErrorReporter;->checkReportsOfType([Lcom/parse/ErrorReporter$CrashReportType;)Lcom/parse/ErrorReporter$ReportsSenderWorker;

    move-result-object v2

    .line 1867
    :goto_0
    return-object v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public dumpCustomDataToString(Ljava/util/Map;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 458
    .local p1, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    .local v0, "customInfo":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/parse/ErrorReporter;->mInstanceCustomParameters:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/parse/ErrorReporter;->dumpCustomDataMap(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    .line 460
    if-eqz p1, :cond_0

    .line 461
    invoke-direct {p0, v0, p1}, Lcom/parse/ErrorReporter;->dumpCustomDataMap(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    .line 463
    :cond_0
    iget-object v1, p0, Lcom/parse/ErrorReporter;->mInstanceLazyCustomParameters:Ljava/util/Map;

    invoke-direct {p0, v0, v1, p2}, Lcom/parse/ErrorReporter;->dumpLazyCustomDataMap(Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/Throwable;)V

    .line 464
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public varargs getCrashReportFilesList(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "extensions"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1469
    iget-object v3, p0, Lcom/parse/ErrorReporter;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 1470
    const-string v3, "CrashReporting"

    const-string v4, "Trying to get crash reports but crash reporting is not initialized."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    new-array v2, v6, [Ljava/lang/String;

    .line 1495
    :cond_0
    :goto_0
    return-object v2

    .line 1474
    :cond_1
    iget-object v3, p0, Lcom/parse/ErrorReporter;->mFileProvider:Lcom/parse/FileProvider;

    invoke-interface {v3, p1}, Lcom/parse/FileProvider;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1475
    .local v0, "dir":Ljava/io/File;
    if-eqz v0, :cond_2

    .line 1476
    const-string v3, "CrashReporting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Looking for error files in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    new-instance v1, Lcom/parse/ErrorReporter$1;

    invoke-direct {v1, p0, p2}, Lcom/parse/ErrorReporter$1;-><init>(Lcom/parse/ErrorReporter;[Ljava/lang/String;)V

    .line 1489
    .local v1, "filter":Ljava/io/FilenameFilter;
    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    .line 1490
    .local v2, "result":[Ljava/lang/String;
    if-nez v2, :cond_0

    new-array v2, v6, [Ljava/lang/String;

    goto :goto_0

    .line 1492
    .end local v1    # "filter":Ljava/io/FilenameFilter;
    .end local v2    # "result":[Ljava/lang/String;
    :cond_2
    const-string v3, "CrashReporting"

    const-string v4, "Application files directory does not exist! The application may not be installed correctly. Please try reinstalling."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    new-array v2, v6, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getCustomData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 433
    iget-object v0, p0, Lcom/parse/ErrorReporter;->mInstanceCustomParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLogBridge()Lcom/parse/LogBridge;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/parse/ErrorReporter;->mLogBridge:Lcom/parse/LogBridge;

    return-object v0
.end method

.method getMostSignificantCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1964
    instance-of v1, p1, Lcom/parse/NonCrashException;

    if-eqz v1, :cond_0

    .line 1973
    .end local p1    # "e":Ljava/lang/Throwable;
    :goto_0
    return-object p1

    .line 1968
    .restart local p1    # "e":Ljava/lang/Throwable;
    :cond_0
    move-object v0, p1

    .line 1969
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1970
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object p1, v0

    .line 1973
    goto :goto_0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/parse/ErrorReporter;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public handleException(Ljava/lang/Throwable;)Lcom/parse/ErrorReporter$ReportsSenderWorker;
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1212
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ErrorReporter;->handleException(Ljava/lang/Throwable;Ljava/util/Map;)Lcom/parse/ErrorReporter$ReportsSenderWorker;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/Map;)Lcom/parse/ErrorReporter$ReportsSenderWorker;
    .locals 6
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "stackTrace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/parse/ErrorReporter$ReportsSenderWorker;"
        }
    .end annotation

    .prologue
    .line 1404
    .local p3, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/parse/ErrorReporter;->getReportFieldsForException(Ljava/lang/Throwable;)[Lcom/parse/ReportField;

    move-result-object v4

    .line 1405
    .local v4, "fields":[Lcom/parse/ReportField;
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/parse/ErrorReporter;->handleExceptionInternal(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/String;[Lcom/parse/ReportField;Z)Lcom/parse/ErrorReporter$ReportsSenderWorker;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Ljava/lang/Throwable;Ljava/util/Map;)Lcom/parse/ErrorReporter$ReportsSenderWorker;
    .locals 6
    .param p1, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/parse/ErrorReporter$ReportsSenderWorker;"
        }
    .end annotation

    .prologue
    .line 1225
    .local p2, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    instance-of v0, p1, Ljava/lang/OutOfMemoryError;

    if-nez v0, :cond_0

    const/4 v5, 0x1

    .line 1226
    .local v5, "sendImmediately":Z
    :goto_0
    invoke-direct {p0, p1}, Lcom/parse/ErrorReporter;->getReportFieldsForException(Ljava/lang/Throwable;)[Lcom/parse/ReportField;

    move-result-object v4

    .line 1227
    .local v4, "fields":[Lcom/parse/ReportField;
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/parse/ErrorReporter;->handleExceptionInternal(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/String;[Lcom/parse/ReportField;Z)Lcom/parse/ErrorReporter$ReportsSenderWorker;

    move-result-object v0

    return-object v0

    .line 1225
    .end local v4    # "fields":[Lcom/parse/ReportField;
    .end local v5    # "sendImmediately":Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public handleExceptionWithCustomFields(Ljava/lang/Exception;Ljava/util/Map;[Lcom/parse/ReportField;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Exception;
    .param p3, "fields"    # [Lcom/parse/ReportField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Lcom/parse/ReportField;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1422
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/parse/ErrorReporter;->handleExceptionInternal(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/String;[Lcom/parse/ReportField;Z)Lcom/parse/ErrorReporter$ReportsSenderWorker;

    .line 1423
    return-void
.end method

.method public init(Landroid/content/Context;ZLcom/parse/FileProvider;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isInternalBuild"    # Z
    .param p3, "fileProvider"    # Lcom/parse/FileProvider;

    .prologue
    .line 666
    iget-object v7, p0, Lcom/parse/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v7, :cond_3

    .line 667
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v7

    iput-object v7, p0, Lcom/parse/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 669
    iput-boolean p2, p0, Lcom/parse/ErrorReporter;->mIsInternalBuild:Z

    .line 671
    iput-object p1, p0, Lcom/parse/ErrorReporter;->mContext:Landroid/content/Context;

    .line 673
    iput-object p3, p0, Lcom/parse/ErrorReporter;->mFileProvider:Lcom/parse/FileProvider;

    .line 675
    new-instance v6, Lcom/parse/PackageManagerWrapper;

    invoke-direct {v6, p1}, Lcom/parse/PackageManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 676
    .local v6, "pm":Lcom/parse/PackageManagerWrapper;
    invoke-virtual {v6}, Lcom/parse/PackageManagerWrapper;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 678
    .local v5, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_0

    .line 679
    iget v7, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/parse/ErrorReporter;->mAppVersionCode:Ljava/lang/String;

    .line 680
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_0
    iput-object v7, p0, Lcom/parse/ErrorReporter;->mAppVersionName:Ljava/lang/String;

    .line 683
    :cond_0
    new-instance v7, Lcom/parse/PackageManagerWrapper;

    invoke-direct {v7, p1}, Lcom/parse/PackageManagerWrapper;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/parse/ErrorReporter;->mPackageManager:Lcom/parse/PackageManagerWrapper;

    .line 684
    const-string v7, "os.version"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 685
    .local v4, "osVersion":Ljava/lang/String;
    if-eqz v4, :cond_5

    const-string v7, "cyanogenmod"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 687
    .local v3, "isCyanogenmod":Z
    :goto_1
    iget-object v7, p0, Lcom/parse/ErrorReporter;->mAppStartDate:Landroid/text/format/Time;

    invoke-virtual {v7}, Landroid/text/format/Time;->setToNow()V

    .line 690
    :try_start_0
    iget-object v7, p0, Lcom/parse/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v8, Lcom/parse/ReportField;->ANDROID_ID:Lcom/parse/ReportField;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "android_id"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    iget-object v7, p0, Lcom/parse/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v8, Lcom/parse/ReportField;->APP_VERSION_CODE:Lcom/parse/ReportField;

    iget-object v9, p0, Lcom/parse/ErrorReporter;->mAppVersionCode:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    iget-object v7, p0, Lcom/parse/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v8, Lcom/parse/ReportField;->APP_VERSION_NAME:Lcom/parse/ReportField;

    iget-object v9, p0, Lcom/parse/ErrorReporter;->mAppVersionName:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    iget-object v7, p0, Lcom/parse/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v8, Lcom/parse/ReportField;->PACKAGE_NAME:Lcom/parse/ReportField;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    iget-object v7, p0, Lcom/parse/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v8, Lcom/parse/ReportField;->PHONE_MODEL:Lcom/parse/ReportField;

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    iget-object v7, p0, Lcom/parse/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v8, Lcom/parse/ReportField;->ANDROID_VERSION:Lcom/parse/ReportField;

    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    iget-object v7, p0, Lcom/parse/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v8, Lcom/parse/ReportField;->OS_VERSION:Lcom/parse/ReportField;

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    iget-object v7, p0, Lcom/parse/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v8, Lcom/parse/ReportField;->IS_CYANOGENMOD:Lcom/parse/ReportField;

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    iget-object v7, p0, Lcom/parse/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v8, Lcom/parse/ReportField;->BRAND:Lcom/parse/ReportField;

    sget-object v9, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    iget-object v7, p0, Lcom/parse/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v8, Lcom/parse/ReportField;->PRODUCT:Lcom/parse/ReportField;

    sget-object v9, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    const-string v0, "n/a"

    .line 703
    .local v0, "absolutePath":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 704
    .local v2, "filesDir":Ljava/io/File;
    if-eqz v2, :cond_1

    .line 705
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 707
    :cond_1
    iget-object v7, p0, Lcom/parse/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v8, Lcom/parse/ReportField;->FILE_PATH:Lcom/parse/ReportField;

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x9

    if-lt v7, v8, :cond_2

    .line 710
    iget-object v7, p0, Lcom/parse/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v8, Lcom/parse/ReportField;->SERIAL:Lcom/parse/ReportField;

    sget-object v9, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    if-eqz v5, :cond_2

    .line 713
    iget-object v7, p0, Lcom/parse/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v8, Lcom/parse/ReportField;->APP_INSTALL_TIME:Lcom/parse/ReportField;

    iget-wide v10, v5, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-direct {p0, v10, v11}, Lcom/parse/ErrorReporter;->formatTimestamp(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    iget-object v7, p0, Lcom/parse/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v8, Lcom/parse/ReportField;->APP_UPGRADE_TIME:Lcom/parse/ReportField;

    iget-wide v10, v5, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-direct {p0, v10, v11}, Lcom/parse/ErrorReporter;->formatTimestamp(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    .end local v0    # "absolutePath":Ljava/lang/String;
    .end local v2    # "filesDir":Ljava/io/File;
    :cond_2
    :goto_2
    iget-object v7, p0, Lcom/parse/ErrorReporter;->mFileProvider:Lcom/parse/FileProvider;

    const-string v8, "cr/reports"

    const-string v9, "reportfile.prealloc"

    invoke-static {v7, v8, v9}, Lcom/parse/ErrorReporter;->fileForName(Lcom/parse/FileProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    iput-object v7, p0, Lcom/parse/ErrorReporter;->preallocFile:Ljava/io/File;

    .line 725
    invoke-direct {p0}, Lcom/parse/ErrorReporter;->createPreallocatedReportFile()V

    .line 727
    .end local v3    # "isCyanogenmod":Z
    .end local v4    # "osVersion":Ljava/lang/String;
    .end local v5    # "pi":Landroid/content/pm/PackageInfo;
    .end local v6    # "pm":Lcom/parse/PackageManagerWrapper;
    :cond_3
    return-void

    .line 680
    .restart local v5    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v6    # "pm":Lcom/parse/PackageManagerWrapper;
    :cond_4
    const-string v7, "not set"

    goto/16 :goto_0

    .line 685
    .restart local v4    # "osVersion":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 717
    .restart local v3    # "isCyanogenmod":Z
    :catch_0
    move-exception v1

    .line 720
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "CrashReporting"

    const-string v8, "failed to install constants"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public isNativeCrashedOnPreviousRun()Z
    .locals 1

    .prologue
    .line 1888
    iget-boolean v0, p0, Lcom/parse/ErrorReporter;->mHasNativeCrashDumpOnInit:Z

    return v0
.end method

.method public parseVersionCodeFromFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1794
    if-eqz p1, :cond_0

    .line 1795
    sget-object v1, Lcom/parse/ErrorReporter;->VERSION_CODE_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1796
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1797
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 1800
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 403
    if-eqz p2, :cond_0

    .line 404
    iget-object v0, p0, Lcom/parse/ErrorReporter;->mInstanceCustomParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 406
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/parse/ErrorReporter;->removeCustomData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public putLazyCustomData(Ljava/lang/String;Lcom/parse/CustomReportDataSupplier;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "valueSupplier"    # Lcom/parse/CustomReportDataSupplier;

    .prologue
    .line 445
    iget-object v0, p0, Lcom/parse/ErrorReporter;->mInstanceLazyCustomParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    return-void
.end method

.method public registerActivity(Ljava/lang/String;)V
    .locals 1
    .param p1, "activityName"    # Ljava/lang/String;

    .prologue
    .line 1935
    if-eqz p1, :cond_0

    .line 1936
    iget-object v0, p0, Lcom/parse/ErrorReporter;->activityLogger:Lcom/parse/SimpleTraceLogger;

    invoke-virtual {v0, p1}, Lcom/parse/SimpleTraceLogger;->append(Ljava/lang/String;)V

    .line 1938
    :cond_0
    return-void
.end method

.method public removeAllReportSenders()V
    .locals 1

    .prologue
    .line 1906
    iget-object v0, p0, Lcom/parse/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1907
    return-void
.end method

.method public removeCustomData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/parse/ErrorReporter;->mInstanceCustomParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized sendInMemoryReport(Landroid/content/Context;Lcom/parse/CrashReportData;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "crashReport"    # Lcom/parse/CrashReportData;

    .prologue
    .line 1650
    monitor-enter p0

    :try_start_0
    const-string v4, "CrashReporting"

    const-string v5, "Sending in-memory report"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1652
    :try_start_1
    invoke-direct {p0}, Lcom/parse/ErrorReporter;->getProcessNameFromAms()Ljava/lang/String;

    move-result-object v3

    .line 1653
    .local v3, "uploadedByProcess":Ljava/lang/String;
    sget-object v4, Lcom/parse/ReportField;->UPLOADED_BY_PROCESS:Lcom/parse/ReportField;

    invoke-virtual {p2, v4, v3}, Lcom/parse/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1654
    invoke-direct {p0, p2}, Lcom/parse/ErrorReporter;->sendCrashReport(Lcom/parse/CrashReportData;)V

    .line 1661
    sget-object v4, Lcom/parse/ReportField;->ACRA_REPORT_FILENAME:Lcom/parse/ReportField;

    invoke-virtual {p2, v4}, Lcom/parse/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1662
    .local v2, "reportName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1663
    iget-object v4, p0, Lcom/parse/ErrorReporter;->mFileProvider:Lcom/parse/FileProvider;

    const-string v5, "cr/reports"

    invoke-static {v4, v5, v2}, Lcom/parse/ErrorReporter;->fileForName(Lcom/parse/FileProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1664
    .local v1, "reportFile":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 1665
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1671
    .end local v1    # "reportFile":Ljava/io/File;
    .end local v2    # "reportName":Ljava/lang/String;
    .end local v3    # "uploadedByProcess":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1668
    :catch_0
    move-exception v0

    .line 1669
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "CrashReporting"

    const-string v5, "Failed to send in-memory crash report: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1650
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public setLogBridge(Lcom/parse/LogBridge;)V
    .locals 0
    .param p1, "bridge"    # Lcom/parse/LogBridge;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/parse/ErrorReporter;->mLogBridge:Lcom/parse/LogBridge;

    .line 365
    return-void
.end method

.method public setMaxReportSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 1915
    iput-wide p1, p0, Lcom/parse/ErrorReporter;->mMaxReportSize:J

    .line 1916
    return-void
.end method

.method public setReportSender(Lcom/parse/ReportSender;)V
    .locals 0
    .param p1, "sender"    # Lcom/parse/ReportSender;

    .prologue
    .line 1924
    invoke-virtual {p0}, Lcom/parse/ErrorReporter;->removeAllReportSenders()V

    .line 1925
    invoke-virtual {p0, p1}, Lcom/parse/ErrorReporter;->addReportSender(Lcom/parse/ReportSender;)V

    .line 1926
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/parse/ErrorReporter;->mUserId:Ljava/lang/String;

    .line 381
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 12
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v10, 0x1

    .line 1040
    const-string v0, "CrashReporting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ParseCrashReporting caught a "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " exception for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/parse/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ". Building report."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    iput-boolean v10, p0, Lcom/parse/ErrorReporter;->usePreallocatedFile:Z

    .line 1047
    sget-object v0, Lcom/parse/ErrorReporter;->mProcessingCrash:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v8

    .line 1048
    .local v8, "wasProcessingCrash":Z
    const/4 v2, 0x0

    .line 1051
    .local v2, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 1052
    .end local v2    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v7, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_1
    const-string v0, "IS_PROCESSING_ANOTHER_EXCEPTION"

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v7

    .line 1059
    .end local v7    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {p0, p2, v2}, Lcom/parse/ErrorReporter;->handleException(Ljava/lang/Throwable;Ljava/util/Map;)Lcom/parse/ErrorReporter$ReportsSenderWorker;

    move-result-object v9

    .line 1061
    .local v9, "worker":Lcom/parse/ErrorReporter$ReportsSenderWorker;
    if-eqz v9, :cond_1

    .line 1062
    :goto_1
    invoke-virtual {v9}, Lcom/parse/ErrorReporter$ReportsSenderWorker;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1066
    const-wide/16 v10, 0x64

    :try_start_2
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1067
    :catch_0
    move-exception v6

    .line 1068
    .local v6, "e1":Ljava/lang/InterruptedException;
    const-string v0, "CrashReporting"

    const-string v3, "Error : "

    invoke-static {v0, v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1072
    .end local v6    # "e1":Ljava/lang/InterruptedException;
    :cond_0
    invoke-virtual {v9}, Lcom/parse/ErrorReporter$ReportsSenderWorker;->getException()Ljava/lang/Throwable;

    move-result-object v1

    .line 1073
    .local v1, "workerException":Ljava/lang/Throwable;
    if-eqz v1, :cond_1

    .line 1074
    const-string v0, "CrashReporting"

    const-string v3, "ReportsWorkerSender failed with exception"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1078
    invoke-direct {p0, p2}, Lcom/parse/ErrorReporter;->getReportFieldsForException(Ljava/lang/Throwable;)[Lcom/parse/ReportField;

    move-result-object v4

    .line 1079
    .local v4, "fields":[Lcom/parse/ReportField;
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/parse/ErrorReporter;->handleExceptionInternal(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/String;[Lcom/parse/ReportField;Z)Lcom/parse/ErrorReporter$ReportsSenderWorker;

    .line 1083
    .end local v1    # "workerException":Ljava/lang/Throwable;
    .end local v4    # "fields":[Lcom/parse/ReportField;
    :cond_1
    iget-object v0, p0, Lcom/parse/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_2

    .line 1084
    iget-object v0, p0, Lcom/parse/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 1086
    :cond_2
    return-void

    .line 1053
    .end local v9    # "worker":Lcom/parse/ErrorReporter$ReportsSenderWorker;
    :catch_1
    move-exception v0

    goto :goto_0

    .end local v2    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_2
    move-exception v0

    move-object v2, v7

    .end local v7    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0
.end method

.method public writeReportToStream(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1200
    new-instance v4, Lcom/parse/CrashReportData;

    invoke-direct {v4}, Lcom/parse/CrashReportData;-><init>()V

    .line 1201
    .local v4, "crashReport":Lcom/parse/CrashReportData;
    invoke-static {p2}, Lcom/parse/CrashReportData;->getWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object v5

    .line 1202
    .local v5, "w":Ljava/io/Writer;
    invoke-direct {p0, p1}, Lcom/parse/ErrorReporter;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 1203
    .local v1, "stackTrace":Ljava/lang/String;
    sget-object v3, Lcom/parse/ACRA;->ALL_CRASH_REPORT_FIELDS:[Lcom/parse/ReportField;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/parse/ErrorReporter;->gatherCrashData(Ljava/lang/String;Ljava/lang/Throwable;[Lcom/parse/ReportField;Lcom/parse/CrashReportData;Ljava/io/Writer;Ljava/util/Map;)V

    .line 1204
    return-void
.end method
