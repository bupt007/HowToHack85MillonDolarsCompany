.class Lcom/parse/ParseCrashReporter$1;
.super Ljava/lang/Object;
.source "ParseCrashReporter.java"

# interfaces
.implements Lcom/parse/FileProvider;


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


# direct methods
.method constructor <init>(Lcom/parse/ParseCrashReporter;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/parse/ParseCrashReporter$1;->this$0:Lcom/parse/ParseCrashReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-static {p1}, Lcom/parse/Parse;->getParseFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
