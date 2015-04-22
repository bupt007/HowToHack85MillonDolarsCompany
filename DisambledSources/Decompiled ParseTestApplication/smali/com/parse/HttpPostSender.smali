.class Lcom/parse/HttpPostSender;
.super Ljava/lang/Object;
.source "HttpPostSender.java"

# interfaces
.implements Lcom/parse/ReportSender;


# instance fields
.field private mFormUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "formUri"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/HttpPostSender;->mFormUri:Landroid/net/Uri;

    .line 86
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/HttpPostSender;->mFormUri:Landroid/net/Uri;

    .line 87
    return-void
.end method

.method private remap(Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/parse/ReportField;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "report":Ljava/util/Map;, "Ljava/util/Map<Lcom/parse/ReportField;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 106
    .local v2, "finalReport":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/parse/ACRA;->ALL_CRASH_REPORT_FIELDS:[Lcom/parse/ReportField;

    .local v0, "arr$":[Lcom/parse/ReportField;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 107
    .local v1, "field":Lcom/parse/ReportField;
    invoke-virtual {v1}, Lcom/parse/ReportField;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 109
    .end local v1    # "field":Lcom/parse/ReportField;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public send(Lcom/parse/CrashReportData;)V
    .locals 6
    .param p1, "report"    # Lcom/parse/CrashReportData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ReportSenderException;
        }
    .end annotation

    .prologue
    .line 94
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/HttpPostSender;->remap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 95
    .local v1, "finalReport":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/parse/HttpPostSender;->mFormUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 96
    .local v2, "reportUrl":Ljava/net/URL;
    const-string v3, "CrashReporting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connect to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {}, Lcom/parse/ACRA;->getConfig()Lcom/parse/ReportsCrashes;

    move-result-object v3

    invoke-interface {v3}, Lcom/parse/ReportsCrashes;->formPostFormat()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/parse/HttpUtils;->doPost(Ljava/util/Map;Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    return-void

    .line 98
    .end local v1    # "finalReport":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "reportUrl":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/parse/ReportSenderException;

    const-string v4, "Error while sending report to Http Post Form."

    invoke-direct {v3, v4, v0}, Lcom/parse/ReportSenderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
