.class Lcom/parse/ErrorReporter$CrashAttachmentException;
.super Ljava/lang/Throwable;
.source "ErrorReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ErrorReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CrashAttachmentException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ErrorReporter;


# direct methods
.method private constructor <init>(Lcom/parse/ErrorReporter;)V
    .locals 0

    .prologue
    .line 1575
    iput-object p1, p0, Lcom/parse/ErrorReporter$CrashAttachmentException;->this$0:Lcom/parse/ErrorReporter;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parse/ErrorReporter;Lcom/parse/ErrorReporter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parse/ErrorReporter;
    .param p2, "x1"    # Lcom/parse/ErrorReporter$1;

    .prologue
    .line 1575
    invoke-direct {p0, p1}, Lcom/parse/ErrorReporter$CrashAttachmentException;-><init>(Lcom/parse/ErrorReporter;)V

    return-void
.end method
