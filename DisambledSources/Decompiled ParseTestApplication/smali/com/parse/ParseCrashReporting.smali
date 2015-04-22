.class public final Lcom/parse/ParseCrashReporting;
.super Ljava/lang/Object;
.source "ParseCrashReporting.java"


# static fields
.field static final CRASH_REPORT:Ljava/lang/String; = "_CrashReport"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static enable(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseCrashReporter;->enableCrashReporting(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public static isCrashReportingEnabled()Z
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/parse/ParseCrashReporter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method static trackCrashReport(Lorg/json/JSONObject;)V
    .locals 4
    .param p0, "crashReportData"    # Lorg/json/JSONObject;

    .prologue
    .line 62
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 63
    .local v1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/json/JSONObject;>;"
    const-string v2, "acraDump"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v2, "_CrashReport"

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/parse/ParseRESTAnalyticsCommand;->trackEventCommand(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/parse/ParseRESTAnalyticsCommand;

    move-result-object v0

    .line 66
    .local v0, "command":Lcom/parse/ParseRESTCommand;
    invoke-static {}, Lcom/parse/Parse;->getEventuallyQueue()Lcom/parse/ParseEventuallyQueue;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/parse/ParseEventuallyQueue;->enqueueEventuallyAsync(Lcom/parse/ParseNetworkCommand;Lcom/parse/ParseObject;)Lbolts/Task;

    .line 67
    return-void
.end method
