.class Lcom/parse/ErrorReporter$1;
.super Ljava/lang/Object;
.source "ErrorReporter.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ErrorReporter;->getCrashReportFilesList(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ErrorReporter;

.field final synthetic val$extensions:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ErrorReporter;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1479
    iput-object p1, p0, Lcom/parse/ErrorReporter$1;->this$0:Lcom/parse/ErrorReporter;

    iput-object p2, p0, Lcom/parse/ErrorReporter$1;->val$extensions:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/parse/ErrorReporter$1;->val$extensions:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1482
    .local v1, "extension":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1483
    const/4 v4, 0x1

    .line 1486
    .end local v1    # "extension":Ljava/lang/String;
    :goto_1
    return v4

    .line 1481
    .restart local v1    # "extension":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1486
    .end local v1    # "extension":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
