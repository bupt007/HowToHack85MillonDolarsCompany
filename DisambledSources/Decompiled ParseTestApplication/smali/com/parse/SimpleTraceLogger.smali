.class Lcom/parse/SimpleTraceLogger;
.super Ljava/lang/Object;
.source "SimpleTraceLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/SimpleTraceLogger$TraceLogLine;
    }
.end annotation


# static fields
.field public static NO_LIMIT:I = 0x0

.field public static final TAG:Ljava/lang/String; = "SimpleTraceLogger"


# instance fields
.field private mTrace:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/parse/SimpleTraceLogger$TraceLogLine;",
            ">;"
        }
    .end annotation
.end field

.field protected final mTraceCountLimit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput v0, Lcom/parse/SimpleTraceLogger;->NO_LIMIT:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "traceCountLimit"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/parse/SimpleTraceLogger;->mTraceCountLimit:I

    .line 49
    invoke-virtual {p0}, Lcom/parse/SimpleTraceLogger;->clear()V

    .line 50
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    iget v0, p0, Lcom/parse/SimpleTraceLogger;->mTraceCountLimit:I

    sget v1, Lcom/parse/SimpleTraceLogger;->NO_LIMIT:I

    if-le v0, v1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/parse/SimpleTraceLogger;->mTrace:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget v1, p0, Lcom/parse/SimpleTraceLogger;->mTraceCountLimit:I

    if-ne v0, v1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/parse/SimpleTraceLogger;->mTrace:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/parse/SimpleTraceLogger;->mTrace:Ljava/util/Queue;

    new-instance v1, Lcom/parse/SimpleTraceLogger$TraceLogLine;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, p1, v2, v3}, Lcom/parse/SimpleTraceLogger$TraceLogLine;-><init>(Ljava/lang/String;J)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 76
    monitor-exit p0

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public varargs append(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 59
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/SimpleTraceLogger;->append(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/parse/SimpleTraceLogger;->mTrace:Ljava/util/Queue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/parse/SimpleTraceLogger;->NO_LIMIT:I

    invoke-virtual {p0, v0}, Lcom/parse/SimpleTraceLogger;->toString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString(I)Ljava/lang/String;
    .locals 7
    .param p1, "limit"    # I

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .local v3, "retval":Ljava/lang/StringBuilder;
    sget v5, Lcom/parse/SimpleTraceLogger;->NO_LIMIT:I

    if-gt p1, v5, :cond_1

    .line 99
    const/4 v4, 0x0

    .line 103
    .local v4, "startFrom":I
    :goto_0
    const/4 v1, 0x0

    .line 104
    .local v1, "index":I
    iget-object v5, p0, Lcom/parse/SimpleTraceLogger;->mTrace:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/SimpleTraceLogger$TraceLogLine;

    .line 105
    .local v2, "line":Lcom/parse/SimpleTraceLogger$TraceLogLine;
    if-lt v1, v4, :cond_0

    .line 106
    invoke-virtual {v2}, Lcom/parse/SimpleTraceLogger$TraceLogLine;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 109
    goto :goto_1

    .line 101
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "index":I
    .end local v2    # "line":Lcom/parse/SimpleTraceLogger$TraceLogLine;
    .end local v4    # "startFrom":I
    :cond_1
    iget-object v5, p0, Lcom/parse/SimpleTraceLogger;->mTrace:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    sub-int/2addr v5, p1

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .restart local v4    # "startFrom":I
    goto :goto_0

    .line 110
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "index":I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    monitor-exit p0

    return-object v5

    .line 96
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "index":I
    .end local v3    # "retval":Ljava/lang/StringBuilder;
    .end local v4    # "startFrom":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method
