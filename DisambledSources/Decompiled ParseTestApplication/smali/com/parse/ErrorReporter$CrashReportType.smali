.class public final enum Lcom/parse/ErrorReporter$CrashReportType;
.super Ljava/lang/Enum;
.source "ErrorReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ErrorReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CrashReportType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parse/ErrorReporter$CrashReportType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parse/ErrorReporter$CrashReportType;

.field public static final enum ACRA_CRASH_REPORT:Lcom/parse/ErrorReporter$CrashReportType;

.field public static final enum ANR_REPORT:Lcom/parse/ErrorReporter$CrashReportType;

.field public static final enum NATIVE_CRASH_REPORT:Lcom/parse/ErrorReporter$CrashReportType;


# instance fields
.field private final attachmentField:Lcom/parse/ReportField;

.field private final defaultMaxSize:J

.field private final directory:Ljava/lang/String;

.field private final fileExtensions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 175
    new-instance v0, Lcom/parse/ErrorReporter$CrashReportType;

    const-string v1, "ACRA_CRASH_REPORT"

    const-string v3, "cr/reports"

    const-wide/32 v4, 0xc800

    const/4 v6, 0x0

    new-array v7, v13, [Ljava/lang/String;

    const-string v8, ".stacktrace"

    aput-object v8, v7, v2

    const-string v8, ".temp_stacktrace"

    aput-object v8, v7, v12

    invoke-direct/range {v0 .. v7}, Lcom/parse/ErrorReporter$CrashReportType;-><init>(Ljava/lang/String;ILjava/lang/String;JLcom/parse/ReportField;[Ljava/lang/String;)V

    sput-object v0, Lcom/parse/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/parse/ErrorReporter$CrashReportType;

    .line 182
    new-instance v4, Lcom/parse/ErrorReporter$CrashReportType;

    const-string v5, "NATIVE_CRASH_REPORT"

    const-string v7, "cr/minidumps"

    const-wide/32 v8, 0x7d000

    sget-object v10, Lcom/parse/ReportField;->MINIDUMP:Lcom/parse/ReportField;

    new-array v11, v12, [Ljava/lang/String;

    const-string v0, ".dmp"

    aput-object v0, v11, v2

    move v6, v12

    invoke-direct/range {v4 .. v11}, Lcom/parse/ErrorReporter$CrashReportType;-><init>(Ljava/lang/String;ILjava/lang/String;JLcom/parse/ReportField;[Ljava/lang/String;)V

    sput-object v4, Lcom/parse/ErrorReporter$CrashReportType;->NATIVE_CRASH_REPORT:Lcom/parse/ErrorReporter$CrashReportType;

    .line 188
    new-instance v4, Lcom/parse/ErrorReporter$CrashReportType;

    const-string v5, "ANR_REPORT"

    const-string v7, "traces"

    const-wide/32 v8, 0x1e000

    sget-object v10, Lcom/parse/ReportField;->SIGQUIT:Lcom/parse/ReportField;

    new-array v11, v13, [Ljava/lang/String;

    const-string v0, ".stacktrace"

    aput-object v0, v11, v2

    const-string v0, ".temp_stacktrace"

    aput-object v0, v11, v12

    move v6, v13

    invoke-direct/range {v4 .. v11}, Lcom/parse/ErrorReporter$CrashReportType;-><init>(Ljava/lang/String;ILjava/lang/String;JLcom/parse/ReportField;[Ljava/lang/String;)V

    sput-object v4, Lcom/parse/ErrorReporter$CrashReportType;->ANR_REPORT:Lcom/parse/ErrorReporter$CrashReportType;

    .line 173
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/parse/ErrorReporter$CrashReportType;

    sget-object v1, Lcom/parse/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/parse/ErrorReporter$CrashReportType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parse/ErrorReporter$CrashReportType;->NATIVE_CRASH_REPORT:Lcom/parse/ErrorReporter$CrashReportType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/parse/ErrorReporter$CrashReportType;->ANR_REPORT:Lcom/parse/ErrorReporter$CrashReportType;

    aput-object v1, v0, v13

    sput-object v0, Lcom/parse/ErrorReporter$CrashReportType;->$VALUES:[Lcom/parse/ErrorReporter$CrashReportType;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;JLcom/parse/ReportField;[Ljava/lang/String;)V
    .locals 0
    .param p3, "directory"    # Ljava/lang/String;
    .param p4, "maxSize"    # J
    .param p6, "attachmentField"    # Lcom/parse/ReportField;
    .param p7, "fileExtensions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/parse/ReportField;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 198
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 199
    iput-object p3, p0, Lcom/parse/ErrorReporter$CrashReportType;->directory:Ljava/lang/String;

    .line 200
    iput-wide p4, p0, Lcom/parse/ErrorReporter$CrashReportType;->defaultMaxSize:J

    .line 201
    iput-object p6, p0, Lcom/parse/ErrorReporter$CrashReportType;->attachmentField:Lcom/parse/ReportField;

    .line 202
    iput-object p7, p0, Lcom/parse/ErrorReporter$CrashReportType;->fileExtensions:[Ljava/lang/String;

    .line 203
    return-void
.end method

.method static synthetic access$100(Lcom/parse/ErrorReporter$CrashReportType;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ErrorReporter$CrashReportType;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/parse/ErrorReporter$CrashReportType;->directory:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/ErrorReporter$CrashReportType;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ErrorReporter$CrashReportType;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/parse/ErrorReporter$CrashReportType;->fileExtensions:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parse/ErrorReporter$CrashReportType;)Lcom/parse/ReportField;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ErrorReporter$CrashReportType;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/parse/ErrorReporter$CrashReportType;->attachmentField:Lcom/parse/ReportField;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parse/ErrorReporter$CrashReportType;)J
    .locals 2
    .param p0, "x0"    # Lcom/parse/ErrorReporter$CrashReportType;

    .prologue
    .line 173
    iget-wide v0, p0, Lcom/parse/ErrorReporter$CrashReportType;->defaultMaxSize:J

    return-wide v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parse/ErrorReporter$CrashReportType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 173
    const-class v0, Lcom/parse/ErrorReporter$CrashReportType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parse/ErrorReporter$CrashReportType;

    return-object v0
.end method

.method public static values()[Lcom/parse/ErrorReporter$CrashReportType;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/parse/ErrorReporter$CrashReportType;->$VALUES:[Lcom/parse/ErrorReporter$CrashReportType;

    invoke-virtual {v0}, [Lcom/parse/ErrorReporter$CrashReportType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parse/ErrorReporter$CrashReportType;

    return-object v0
.end method
