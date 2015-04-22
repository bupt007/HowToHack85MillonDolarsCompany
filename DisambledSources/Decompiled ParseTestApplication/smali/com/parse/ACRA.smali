.class Lcom/parse/ACRA;
.super Ljava/lang/Object;
.source "ACRA.java"


# static fields
.field public static final ALL_CRASH_REPORT_FIELDS:[Lcom/parse/ReportField;

.field public static final LOG_TAG:Ljava/lang/String; = "CrashReporting"

.field public static final MINIMAL_REPORT_FIELDS:[Lcom/parse/ReportField;

.field public static final NULL_VALUE:Ljava/lang/String; = "CR-NULL-STRING"

.field private static mReportsCrashes:Lcom/parse/ReportsCrashes;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 101
    const/16 v0, 0x35

    new-array v0, v0, [Lcom/parse/ReportField;

    sget-object v1, Lcom/parse/ReportField;->REPORT_ID:Lcom/parse/ReportField;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parse/ReportField;->APP_VERSION_CODE:Lcom/parse/ReportField;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parse/ReportField;->APP_VERSION_NAME:Lcom/parse/ReportField;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parse/ReportField;->APP_INSTALL_TIME:Lcom/parse/ReportField;

    aput-object v1, v0, v6

    sget-object v1, Lcom/parse/ReportField;->APP_UPGRADE_TIME:Lcom/parse/ReportField;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/parse/ReportField;->PACKAGE_NAME:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/parse/ReportField;->FILE_PATH:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/parse/ReportField;->PHONE_MODEL:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/parse/ReportField;->BRAND:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/parse/ReportField;->PRODUCT:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/parse/ReportField;->ANDROID_VERSION:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/parse/ReportField;->OS_VERSION:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/parse/ReportField;->BUILD:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/parse/ReportField;->TOTAL_MEM_SIZE:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/parse/ReportField;->IS_CYANOGENMOD:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/parse/ReportField;->AVAILABLE_MEM_SIZE:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/parse/ReportField;->CUSTOM_DATA:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/parse/ReportField;->STACK_TRACE:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/parse/ReportField;->CRASH_CONFIGURATION:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/parse/ReportField;->DISPLAY:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/parse/ReportField;->USER_APP_START_DATE:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/parse/ReportField;->USER_CRASH_DATE:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/parse/ReportField;->DUMPSYS_MEMINFO:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/parse/ReportField;->DROPBOX:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/parse/ReportField;->LOGCAT:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/parse/ReportField;->EVENTSLOG:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/parse/ReportField;->RADIOLOG:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/parse/ReportField;->DEVICE_ID:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/parse/ReportField;->INSTALLATION_ID:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/parse/ReportField;->DEVICE_FEATURES:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/parse/ReportField;->ENVIRONMENT:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/parse/ReportField;->SETTINGS_SYSTEM:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/parse/ReportField;->SETTINGS_SECURE:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/parse/ReportField;->PROCESS_NAME:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/parse/ReportField;->PROCESS_NAME_BY_AMS:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/parse/ReportField;->ACTIVITY_LOG:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/parse/ReportField;->JAIL_BROKEN:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/parse/ReportField;->PROCESS_UPTIME:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/parse/ReportField;->DEVICE_UPTIME:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/parse/ReportField;->ACRA_REPORT_FILENAME:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/parse/ReportField;->EXCEPTION_CAUSE:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/parse/ReportField;->REPORT_LOAD_THROW:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/parse/ReportField;->MINIDUMP:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/parse/ReportField;->ANDROID_ID:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/parse/ReportField;->UID:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/parse/ReportField;->UPLOADED_BY_PROCESS:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lcom/parse/ReportField;->OPEN_FD_COUNT:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lcom/parse/ReportField;->OPEN_FD_SOFT_LIMIT:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lcom/parse/ReportField;->OPEN_FD_HARD_LIMIT:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Lcom/parse/ReportField;->IS_LOW_RAM_DEVICE:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    sget-object v2, Lcom/parse/ReportField;->SIGQUIT:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x33

    sget-object v2, Lcom/parse/ReportField;->LARGE_MEM_HEAP:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x34

    sget-object v2, Lcom/parse/ReportField;->ANDROID_RUNTIME:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parse/ACRA;->ALL_CRASH_REPORT_FIELDS:[Lcom/parse/ReportField;

    .line 118
    const/16 v0, 0x31

    new-array v0, v0, [Lcom/parse/ReportField;

    sget-object v1, Lcom/parse/ReportField;->REPORT_ID:Lcom/parse/ReportField;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parse/ReportField;->APP_VERSION_CODE:Lcom/parse/ReportField;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parse/ReportField;->APP_VERSION_NAME:Lcom/parse/ReportField;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parse/ReportField;->APP_INSTALL_TIME:Lcom/parse/ReportField;

    aput-object v1, v0, v6

    sget-object v1, Lcom/parse/ReportField;->APP_UPGRADE_TIME:Lcom/parse/ReportField;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/parse/ReportField;->PACKAGE_NAME:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/parse/ReportField;->FILE_PATH:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/parse/ReportField;->PHONE_MODEL:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/parse/ReportField;->BRAND:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/parse/ReportField;->PRODUCT:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/parse/ReportField;->ANDROID_VERSION:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/parse/ReportField;->OS_VERSION:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/parse/ReportField;->BUILD:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/parse/ReportField;->TOTAL_MEM_SIZE:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/parse/ReportField;->IS_CYANOGENMOD:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/parse/ReportField;->AVAILABLE_MEM_SIZE:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/parse/ReportField;->CUSTOM_DATA:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/parse/ReportField;->STACK_TRACE:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/parse/ReportField;->CRASH_CONFIGURATION:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/parse/ReportField;->DISPLAY:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/parse/ReportField;->USER_APP_START_DATE:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/parse/ReportField;->USER_CRASH_DATE:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/parse/ReportField;->DUMPSYS_MEMINFO:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/parse/ReportField;->DROPBOX:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/parse/ReportField;->LOGCAT:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/parse/ReportField;->EVENTSLOG:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/parse/ReportField;->RADIOLOG:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/parse/ReportField;->DEVICE_ID:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/parse/ReportField;->INSTALLATION_ID:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/parse/ReportField;->DEVICE_FEATURES:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/parse/ReportField;->ENVIRONMENT:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/parse/ReportField;->SETTINGS_SYSTEM:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/parse/ReportField;->SETTINGS_SECURE:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/parse/ReportField;->PROCESS_NAME:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/parse/ReportField;->PROCESS_NAME_BY_AMS:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/parse/ReportField;->ACTIVITY_LOG:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/parse/ReportField;->JAIL_BROKEN:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/parse/ReportField;->PROCESS_UPTIME:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/parse/ReportField;->DEVICE_UPTIME:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/parse/ReportField;->ACRA_REPORT_FILENAME:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/parse/ReportField;->EXCEPTION_CAUSE:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/parse/ReportField;->REPORT_LOAD_THROW:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/parse/ReportField;->MINIDUMP:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/parse/ReportField;->ANDROID_ID:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/parse/ReportField;->UID:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/parse/ReportField;->UPLOADED_BY_PROCESS:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lcom/parse/ReportField;->IS_LOW_RAM_DEVICE:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lcom/parse/ReportField;->LARGE_MEM_HEAP:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lcom/parse/ReportField;->ANDROID_RUNTIME:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parse/ACRA;->MINIMAL_REPORT_FIELDS:[Lcom/parse/ReportField;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConfig()Lcom/parse/ReportsCrashes;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/parse/ACRA;->mReportsCrashes:Lcom/parse/ReportsCrashes;

    return-object v0
.end method

.method public static init(Lcom/parse/ReportsCrashes;Ljava/lang/String;ZLcom/parse/FileProvider;)Lcom/parse/ErrorReporter;
    .locals 5
    .param p0, "reporter"    # Lcom/parse/ReportsCrashes;
    .param p1, "reportURL"    # Ljava/lang/String;
    .param p2, "isInternalBuild"    # Z
    .param p3, "fileProvider"    # Lcom/parse/FileProvider;

    .prologue
    .line 62
    invoke-static {}, Lcom/parse/ErrorReporter;->getInstance()Lcom/parse/ErrorReporter;

    move-result-object v1

    .line 64
    .local v1, "errorReporter":Lcom/parse/ErrorReporter;
    sget-object v2, Lcom/parse/ACRA;->mReportsCrashes:Lcom/parse/ReportsCrashes;

    if-nez v2, :cond_1

    .line 65
    sput-object p0, Lcom/parse/ACRA;->mReportsCrashes:Lcom/parse/ReportsCrashes;

    .line 67
    sget-object v2, Lcom/parse/ACRA;->mReportsCrashes:Lcom/parse/ReportsCrashes;

    invoke-interface {v2}, Lcom/parse/ReportsCrashes;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    .local v0, "applicationContext":Landroid/content/Context;
    const-string v2, "CrashReporting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Crash reporting is enabled for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", initializing..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {v1, v0, p2, p3}, Lcom/parse/ErrorReporter;->init(Landroid/content/Context;ZLcom/parse/FileProvider;)V

    .line 76
    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 78
    if-eqz p1, :cond_0

    .line 79
    new-instance v2, Lcom/parse/HttpPostSender;

    invoke-direct {v2, p1}, Lcom/parse/HttpPostSender;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/parse/ErrorReporter;->setReportSender(Lcom/parse/ReportSender;)V

    .line 83
    :cond_0
    invoke-virtual {v1}, Lcom/parse/ErrorReporter;->checkReportsOnApplicationStart()Lcom/parse/ErrorReporter$ReportsSenderWorker;

    .line 85
    .end local v0    # "applicationContext":Landroid/content/Context;
    :cond_1
    return-object v1
.end method
