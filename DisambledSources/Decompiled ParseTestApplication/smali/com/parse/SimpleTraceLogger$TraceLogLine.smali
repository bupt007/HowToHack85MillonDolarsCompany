.class public Lcom/parse/SimpleTraceLogger$TraceLogLine;
.super Ljava/lang/Object;
.source "SimpleTraceLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/SimpleTraceLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TraceLogLine"
.end annotation


# instance fields
.field public final time:J

.field public final trace:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "trace"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/parse/SimpleTraceLogger$TraceLogLine;->trace:Ljava/lang/String;

    .line 29
    iput-wide p2, p0, Lcom/parse/SimpleTraceLogger$TraceLogLine;->time:J

    .line 30
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 34
    const-string v0, "[%d] %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/parse/SimpleTraceLogger$TraceLogLine;->time:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/parse/SimpleTraceLogger$TraceLogLine;->trace:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
