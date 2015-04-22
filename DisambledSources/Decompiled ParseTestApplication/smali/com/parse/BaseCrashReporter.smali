.class Lcom/parse/BaseCrashReporter;
.super Ljava/lang/Object;
.source "BaseCrashReporter.java"

# interfaces
.implements Lcom/parse/ReportsCrashes;


# instance fields
.field protected mApplicationContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    if-nez p1, :cond_0

    .line 20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Application context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    iput-object p1, p0, Lcom/parse/BaseCrashReporter;->mApplicationContext:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public additionalDropBoxTags()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/String;

    .line 33
    .local v0, "tags":[Ljava/lang/String;
    return-object v0
.end method

.method public checkSSLCertsOnCrashReport()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public dropboxCollectionMinutes()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x5

    return v0
.end method

.method public formPostFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "application/x-www-form-urlencoded"

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/parse/BaseCrashReporter;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public includeDropBoxSystemTags()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public logcatArguments()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 43
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "-t"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "200"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "-v"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "time"

    aput-object v2, v0, v1

    .line 44
    .local v0, "args":[Ljava/lang/String;
    return-object v0
.end method

.method public socketTimeout()I
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0xbb8

    return v0
.end method
