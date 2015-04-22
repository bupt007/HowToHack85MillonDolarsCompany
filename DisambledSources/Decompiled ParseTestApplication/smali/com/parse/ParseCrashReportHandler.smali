.class Lcom/parse/ParseCrashReportHandler;
.super Ljava/lang/Object;
.source "ParseCrashReportHandler.java"

# interfaces
.implements Lcom/parse/ReportSender;


# static fields
.field private static final CRASH_REPORT_FIELDS:[Lcom/parse/ReportField;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const/16 v0, 0x1a

    new-array v0, v0, [Lcom/parse/ReportField;

    const/4 v1, 0x0

    sget-object v2, Lcom/parse/ReportField;->REPORT_ID:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/parse/ReportField;->APP_INSTALL_TIME:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/parse/ReportField;->APP_UPGRADE_TIME:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/parse/ReportField;->AVAILABLE_MEM_SIZE:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/parse/ReportField;->BRAND:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/parse/ReportField;->BUILD:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/parse/ReportField;->CRASH_CONFIGURATION:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/parse/ReportField;->DEVICE_FEATURES:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/parse/ReportField;->DEVICE_UPTIME:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/parse/ReportField;->DUMPSYS_MEMINFO:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/parse/ReportField;->EXCEPTION_CAUSE:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/parse/ReportField;->IS_LOW_RAM_DEVICE:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/parse/ReportField;->IS_SILENT:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/parse/ReportField;->OPEN_FD_COUNT:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/parse/ReportField;->OPEN_FD_HARD_LIMIT:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/parse/ReportField;->OPEN_FD_SOFT_LIMIT:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/parse/ReportField;->PACKAGE_NAME:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/parse/ReportField;->PHONE_MODEL:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/parse/ReportField;->PROCESS_NAME:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/parse/ReportField;->PROCESS_UPTIME:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/parse/ReportField;->PRODUCT:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/parse/ReportField;->SIGQUIT:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/parse/ReportField;->STACK_TRACE:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/parse/ReportField;->TOTAL_MEM_SIZE:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/parse/ReportField;->USER_APP_START_DATE:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/parse/ReportField;->USER_CRASH_DATE:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parse/ParseCrashReportHandler;->CRASH_REPORT_FIELDS:[Lcom/parse/ReportField;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCrashReportEventPayload(Lcom/parse/CrashReportData;)Lorg/json/JSONObject;
    .locals 7
    .param p1, "crashReportData"    # Lcom/parse/CrashReportData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 74
    .local v3, "jsonObject":Lorg/json/JSONObject;
    sget-object v0, Lcom/parse/ParseCrashReportHandler;->CRASH_REPORT_FIELDS:[Lcom/parse/ReportField;

    .local v0, "arr$":[Lcom/parse/ReportField;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    .line 75
    .local v1, "field":Lcom/parse/ReportField;
    invoke-virtual {v1}, Lcom/parse/ReportField;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v1}, Lcom/parse/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    .end local v1    # "field":Lcom/parse/ReportField;
    :cond_0
    return-object v3
.end method


# virtual methods
.method public send(Lcom/parse/CrashReportData;)V
    .locals 4
    .param p1, "crashReportData"    # Lcom/parse/CrashReportData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ReportSenderException;
        }
    .end annotation

    .prologue
    .line 56
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseCrashReportHandler;->getCrashReportEventPayload(Lcom/parse/CrashReportData;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 60
    .local v1, "payload":Lorg/json/JSONObject;
    const-string v2, "CrashReporting"

    const-string v3, "Sending crash report to Parse..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {v1}, Lcom/parse/ParseCrashReporting;->trackCrashReport(Lorg/json/JSONObject;)V

    .line 62
    return-void

    .line 57
    .end local v1    # "payload":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/parse/ReportSenderException;

    const-string v3, "Failed to convert crash report into event payload"

    invoke-direct {v2, v3, v0}, Lcom/parse/ReportSenderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
