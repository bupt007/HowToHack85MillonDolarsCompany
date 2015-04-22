.class Lcom/parse/ParseCrashReporter$2;
.super Ljava/lang/Object;
.source "ParseCrashReporter.java"

# interfaces
.implements Lcom/parse/Parse$ParseCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseCrashReporter;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseCrashReporter;

.field final synthetic val$applicationContext:Landroid/content/Context;

.field final synthetic val$fileProvider:Lcom/parse/FileProvider;


# direct methods
.method constructor <init>(Lcom/parse/ParseCrashReporter;Landroid/content/Context;Lcom/parse/FileProvider;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/parse/ParseCrashReporter$2;->this$0:Lcom/parse/ParseCrashReporter;

    iput-object p2, p0, Lcom/parse/ParseCrashReporter$2;->val$applicationContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/parse/ParseCrashReporter$2;->val$fileProvider:Lcom/parse/FileProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onParseInitialized()V
    .locals 5

    .prologue
    .line 77
    iget-object v0, p0, Lcom/parse/ParseCrashReporter$2;->this$0:Lcom/parse/ParseCrashReporter;

    new-instance v1, Lcom/parse/BaseCrashReporter;

    iget-object v2, p0, Lcom/parse/ParseCrashReporter$2;->val$applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/parse/BaseCrashReporter;-><init>(Landroid/content/Context;)V

    const-string v2, "http://dev/null"

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/parse/ParseCrashReporter$2;->val$fileProvider:Lcom/parse/FileProvider;

    invoke-static {v1, v2, v3, v4}, Lcom/parse/ACRA;->init(Lcom/parse/ReportsCrashes;Ljava/lang/String;ZLcom/parse/FileProvider;)Lcom/parse/ErrorReporter;

    move-result-object v1

    # setter for: Lcom/parse/ParseCrashReporter;->innerCrashReporter:Lcom/parse/ErrorReporter;
    invoke-static {v0, v1}, Lcom/parse/ParseCrashReporter;->access$002(Lcom/parse/ParseCrashReporter;Lcom/parse/ErrorReporter;)Lcom/parse/ErrorReporter;

    .line 82
    iget-object v0, p0, Lcom/parse/ParseCrashReporter$2;->this$0:Lcom/parse/ParseCrashReporter;

    # getter for: Lcom/parse/ParseCrashReporter;->innerCrashReporter:Lcom/parse/ErrorReporter;
    invoke-static {v0}, Lcom/parse/ParseCrashReporter;->access$000(Lcom/parse/ParseCrashReporter;)Lcom/parse/ErrorReporter;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseCrashReportHandler;

    invoke-direct {v1}, Lcom/parse/ParseCrashReportHandler;-><init>()V

    invoke-virtual {v0, v1}, Lcom/parse/ErrorReporter;->setReportSender(Lcom/parse/ReportSender;)V

    .line 83
    return-void
.end method
