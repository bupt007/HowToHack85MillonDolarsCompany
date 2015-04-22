.class final enum Lcom/parse/ReportField;
.super Ljava/lang/Enum;
.source "ReportField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parse/ReportField;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parse/ReportField;

.field public static final enum ACRA_INTERNAL:Lcom/parse/ReportField;

.field public static final enum ACRA_REPORT_FILENAME:Lcom/parse/ReportField;

.field public static final enum ACTIVITY_LOG:Lcom/parse/ReportField;

.field public static final enum ANDROID_ID:Lcom/parse/ReportField;

.field public static final enum ANDROID_RUNTIME:Lcom/parse/ReportField;

.field public static final enum ANDROID_VERSION:Lcom/parse/ReportField;

.field public static final enum APP_INSTALL_TIME:Lcom/parse/ReportField;

.field public static final enum APP_UPGRADE_TIME:Lcom/parse/ReportField;

.field public static final enum APP_VERSION_CODE:Lcom/parse/ReportField;

.field public static final enum APP_VERSION_NAME:Lcom/parse/ReportField;

.field public static final enum AVAILABLE_MEM_SIZE:Lcom/parse/ReportField;

.field public static final enum BRAND:Lcom/parse/ReportField;

.field public static final enum BUILD:Lcom/parse/ReportField;

.field public static final enum CRASH_CONFIGURATION:Lcom/parse/ReportField;

.field public static final enum CUSTOM_DATA:Lcom/parse/ReportField;

.field public static final enum DEVICE_FEATURES:Lcom/parse/ReportField;

.field public static final enum DEVICE_ID:Lcom/parse/ReportField;

.field public static final enum DEVICE_UPTIME:Lcom/parse/ReportField;

.field public static final enum DISPLAY:Lcom/parse/ReportField;

.field public static final enum DROPBOX:Lcom/parse/ReportField;

.field public static final enum DUMPSYS_MEMINFO:Lcom/parse/ReportField;

.field public static final enum ENVIRONMENT:Lcom/parse/ReportField;

.field public static final enum EVENTSLOG:Lcom/parse/ReportField;

.field public static final enum EXCEPTION_CAUSE:Lcom/parse/ReportField;

.field public static final enum FILE_PATH:Lcom/parse/ReportField;

.field public static final enum INSTALLATION_ID:Lcom/parse/ReportField;

.field public static final enum IS_CYANOGENMOD:Lcom/parse/ReportField;

.field public static final enum IS_LOW_RAM_DEVICE:Lcom/parse/ReportField;

.field public static final enum IS_SILENT:Lcom/parse/ReportField;

.field public static final enum JAIL_BROKEN:Lcom/parse/ReportField;

.field public static final enum LARGE_MEM_HEAP:Lcom/parse/ReportField;

.field public static final enum LOGCAT:Lcom/parse/ReportField;

.field public static final enum MINIDUMP:Lcom/parse/ReportField;

.field public static final enum OPEN_FD_COUNT:Lcom/parse/ReportField;

.field public static final enum OPEN_FD_HARD_LIMIT:Lcom/parse/ReportField;

.field public static final enum OPEN_FD_SOFT_LIMIT:Lcom/parse/ReportField;

.field public static final enum OS_VERSION:Lcom/parse/ReportField;

.field public static final enum PACKAGE_NAME:Lcom/parse/ReportField;

.field public static final enum PHONE_MODEL:Lcom/parse/ReportField;

.field public static final enum PROCESS_NAME:Lcom/parse/ReportField;

.field public static final enum PROCESS_NAME_BY_AMS:Lcom/parse/ReportField;

.field public static final enum PROCESS_UPTIME:Lcom/parse/ReportField;

.field public static final enum PRODUCT:Lcom/parse/ReportField;

.field public static final enum RADIOLOG:Lcom/parse/ReportField;

.field public static final enum REPORT_ID:Lcom/parse/ReportField;

.field public static final enum REPORT_LOAD_THROW:Lcom/parse/ReportField;

.field public static final enum SERIAL:Lcom/parse/ReportField;

.field public static final enum SETTINGS_SECURE:Lcom/parse/ReportField;

.field public static final enum SETTINGS_SYSTEM:Lcom/parse/ReportField;

.field public static final enum SIGQUIT:Lcom/parse/ReportField;

.field public static final enum STACK_TRACE:Lcom/parse/ReportField;

.field public static final enum TOTAL_MEM_SIZE:Lcom/parse/ReportField;

.field public static final enum UID:Lcom/parse/ReportField;

.field public static final enum UPLOADED_BY_PROCESS:Lcom/parse/ReportField;

.field public static final enum USER_APP_START_DATE:Lcom/parse/ReportField;

.field public static final enum USER_CRASH_DATE:Lcom/parse/ReportField;

.field public static final enum USER_EMAIL:Lcom/parse/ReportField;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "REPORT_ID"

    invoke-direct {v0, v1, v3}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->REPORT_ID:Lcom/parse/ReportField;

    .line 40
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "ANDROID_ID"

    invoke-direct {v0, v1, v4}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->ANDROID_ID:Lcom/parse/ReportField;

    .line 44
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "UID"

    invoke-direct {v0, v1, v5}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->UID:Lcom/parse/ReportField;

    .line 50
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "APP_VERSION_CODE"

    invoke-direct {v0, v1, v6}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->APP_VERSION_CODE:Lcom/parse/ReportField;

    .line 54
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "APP_VERSION_NAME"

    invoke-direct {v0, v1, v7}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->APP_VERSION_NAME:Lcom/parse/ReportField;

    .line 58
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "PACKAGE_NAME"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->PACKAGE_NAME:Lcom/parse/ReportField;

    .line 63
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "FILE_PATH"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->FILE_PATH:Lcom/parse/ReportField;

    .line 67
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "PHONE_MODEL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->PHONE_MODEL:Lcom/parse/ReportField;

    .line 71
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "ANDROID_VERSION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->ANDROID_VERSION:Lcom/parse/ReportField;

    .line 75
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "OS_VERSION"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->OS_VERSION:Lcom/parse/ReportField;

    .line 79
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "IS_CYANOGENMOD"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->IS_CYANOGENMOD:Lcom/parse/ReportField;

    .line 83
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "BUILD"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->BUILD:Lcom/parse/ReportField;

    .line 87
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "BRAND"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->BRAND:Lcom/parse/ReportField;

    .line 91
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "PRODUCT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->PRODUCT:Lcom/parse/ReportField;

    .line 95
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "TOTAL_MEM_SIZE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->TOTAL_MEM_SIZE:Lcom/parse/ReportField;

    .line 99
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "AVAILABLE_MEM_SIZE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->AVAILABLE_MEM_SIZE:Lcom/parse/ReportField;

    .line 104
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "CUSTOM_DATA"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->CUSTOM_DATA:Lcom/parse/ReportField;

    .line 108
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "STACK_TRACE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->STACK_TRACE:Lcom/parse/ReportField;

    .line 113
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "CRASH_CONFIGURATION"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->CRASH_CONFIGURATION:Lcom/parse/ReportField;

    .line 117
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "DISPLAY"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->DISPLAY:Lcom/parse/ReportField;

    .line 121
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "USER_APP_START_DATE"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->USER_APP_START_DATE:Lcom/parse/ReportField;

    .line 125
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "USER_CRASH_DATE"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->USER_CRASH_DATE:Lcom/parse/ReportField;

    .line 129
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "DUMPSYS_MEMINFO"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->DUMPSYS_MEMINFO:Lcom/parse/ReportField;

    .line 134
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "DROPBOX"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->DROPBOX:Lcom/parse/ReportField;

    .line 138
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "LOGCAT"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->LOGCAT:Lcom/parse/ReportField;

    .line 142
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "EVENTSLOG"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->EVENTSLOG:Lcom/parse/ReportField;

    .line 146
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "RADIOLOG"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->RADIOLOG:Lcom/parse/ReportField;

    .line 150
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "IS_SILENT"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->IS_SILENT:Lcom/parse/ReportField;

    .line 154
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "DEVICE_ID"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->DEVICE_ID:Lcom/parse/ReportField;

    .line 159
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "INSTALLATION_ID"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->INSTALLATION_ID:Lcom/parse/ReportField;

    .line 164
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "USER_EMAIL"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->USER_EMAIL:Lcom/parse/ReportField;

    .line 168
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "DEVICE_FEATURES"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->DEVICE_FEATURES:Lcom/parse/ReportField;

    .line 172
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "ENVIRONMENT"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->ENVIRONMENT:Lcom/parse/ReportField;

    .line 176
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "SETTINGS_SYSTEM"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->SETTINGS_SYSTEM:Lcom/parse/ReportField;

    .line 180
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "SETTINGS_SECURE"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->SETTINGS_SECURE:Lcom/parse/ReportField;

    .line 184
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "PROCESS_NAME"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->PROCESS_NAME:Lcom/parse/ReportField;

    .line 188
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "PROCESS_NAME_BY_AMS"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->PROCESS_NAME_BY_AMS:Lcom/parse/ReportField;

    .line 192
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "UPLOADED_BY_PROCESS"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->UPLOADED_BY_PROCESS:Lcom/parse/ReportField;

    .line 196
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "ACTIVITY_LOG"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->ACTIVITY_LOG:Lcom/parse/ReportField;

    .line 201
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "ACRA_INTERNAL"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->ACRA_INTERNAL:Lcom/parse/ReportField;

    .line 205
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "PROCESS_UPTIME"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->PROCESS_UPTIME:Lcom/parse/ReportField;

    .line 209
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "DEVICE_UPTIME"

    const/16 v2, 0x29

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->DEVICE_UPTIME:Lcom/parse/ReportField;

    .line 214
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "JAIL_BROKEN"

    const/16 v2, 0x2a

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->JAIL_BROKEN:Lcom/parse/ReportField;

    .line 219
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "ACRA_REPORT_FILENAME"

    const/16 v2, 0x2b

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->ACRA_REPORT_FILENAME:Lcom/parse/ReportField;

    .line 223
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "EXCEPTION_CAUSE"

    const/16 v2, 0x2c

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->EXCEPTION_CAUSE:Lcom/parse/ReportField;

    .line 227
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "REPORT_LOAD_THROW"

    const/16 v2, 0x2d

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->REPORT_LOAD_THROW:Lcom/parse/ReportField;

    .line 231
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "MINIDUMP"

    const/16 v2, 0x2e

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->MINIDUMP:Lcom/parse/ReportField;

    .line 235
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "OPEN_FD_COUNT"

    const/16 v2, 0x2f

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->OPEN_FD_COUNT:Lcom/parse/ReportField;

    .line 239
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "OPEN_FD_SOFT_LIMIT"

    const/16 v2, 0x30

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->OPEN_FD_SOFT_LIMIT:Lcom/parse/ReportField;

    .line 243
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "OPEN_FD_HARD_LIMIT"

    const/16 v2, 0x31

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->OPEN_FD_HARD_LIMIT:Lcom/parse/ReportField;

    .line 248
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "APP_INSTALL_TIME"

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->APP_INSTALL_TIME:Lcom/parse/ReportField;

    .line 253
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "APP_UPGRADE_TIME"

    const/16 v2, 0x33

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->APP_UPGRADE_TIME:Lcom/parse/ReportField;

    .line 258
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "SERIAL"

    const/16 v2, 0x34

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->SERIAL:Lcom/parse/ReportField;

    .line 264
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "IS_LOW_RAM_DEVICE"

    const/16 v2, 0x35

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->IS_LOW_RAM_DEVICE:Lcom/parse/ReportField;

    .line 269
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "SIGQUIT"

    const/16 v2, 0x36

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->SIGQUIT:Lcom/parse/ReportField;

    .line 274
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "LARGE_MEM_HEAP"

    const/16 v2, 0x37

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->LARGE_MEM_HEAP:Lcom/parse/ReportField;

    .line 279
    new-instance v0, Lcom/parse/ReportField;

    const-string v1, "ANDROID_RUNTIME"

    const/16 v2, 0x38

    invoke-direct {v0, v1, v2}, Lcom/parse/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ReportField;->ANDROID_RUNTIME:Lcom/parse/ReportField;

    .line 32
    const/16 v0, 0x39

    new-array v0, v0, [Lcom/parse/ReportField;

    sget-object v1, Lcom/parse/ReportField;->REPORT_ID:Lcom/parse/ReportField;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parse/ReportField;->ANDROID_ID:Lcom/parse/ReportField;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parse/ReportField;->UID:Lcom/parse/ReportField;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parse/ReportField;->APP_VERSION_CODE:Lcom/parse/ReportField;

    aput-object v1, v0, v6

    sget-object v1, Lcom/parse/ReportField;->APP_VERSION_NAME:Lcom/parse/ReportField;

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

    sget-object v2, Lcom/parse/ReportField;->ANDROID_VERSION:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/parse/ReportField;->OS_VERSION:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/parse/ReportField;->IS_CYANOGENMOD:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/parse/ReportField;->BUILD:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/parse/ReportField;->BRAND:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/parse/ReportField;->PRODUCT:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/parse/ReportField;->TOTAL_MEM_SIZE:Lcom/parse/ReportField;

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

    sget-object v2, Lcom/parse/ReportField;->IS_SILENT:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/parse/ReportField;->DEVICE_ID:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/parse/ReportField;->INSTALLATION_ID:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/parse/ReportField;->USER_EMAIL:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/parse/ReportField;->DEVICE_FEATURES:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/parse/ReportField;->ENVIRONMENT:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/parse/ReportField;->SETTINGS_SYSTEM:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/parse/ReportField;->SETTINGS_SECURE:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/parse/ReportField;->PROCESS_NAME:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/parse/ReportField;->PROCESS_NAME_BY_AMS:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/parse/ReportField;->UPLOADED_BY_PROCESS:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/parse/ReportField;->ACTIVITY_LOG:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/parse/ReportField;->ACRA_INTERNAL:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/parse/ReportField;->PROCESS_UPTIME:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/parse/ReportField;->DEVICE_UPTIME:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/parse/ReportField;->JAIL_BROKEN:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/parse/ReportField;->ACRA_REPORT_FILENAME:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/parse/ReportField;->EXCEPTION_CAUSE:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/parse/ReportField;->REPORT_LOAD_THROW:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lcom/parse/ReportField;->MINIDUMP:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lcom/parse/ReportField;->OPEN_FD_COUNT:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lcom/parse/ReportField;->OPEN_FD_SOFT_LIMIT:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Lcom/parse/ReportField;->OPEN_FD_HARD_LIMIT:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    sget-object v2, Lcom/parse/ReportField;->APP_INSTALL_TIME:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x33

    sget-object v2, Lcom/parse/ReportField;->APP_UPGRADE_TIME:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x34

    sget-object v2, Lcom/parse/ReportField;->SERIAL:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x35

    sget-object v2, Lcom/parse/ReportField;->IS_LOW_RAM_DEVICE:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x36

    sget-object v2, Lcom/parse/ReportField;->SIGQUIT:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x37

    sget-object v2, Lcom/parse/ReportField;->LARGE_MEM_HEAP:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x38

    sget-object v2, Lcom/parse/ReportField;->ANDROID_RUNTIME:Lcom/parse/ReportField;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parse/ReportField;->$VALUES:[Lcom/parse/ReportField;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parse/ReportField;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/parse/ReportField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parse/ReportField;

    return-object v0
.end method

.method public static values()[Lcom/parse/ReportField;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/parse/ReportField;->$VALUES:[Lcom/parse/ReportField;

    invoke-virtual {v0}, [Lcom/parse/ReportField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parse/ReportField;

    return-object v0
.end method
