.class Lcom/parse/PushConnection$KeepAliveMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "PushConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/PushConnection$KeepAliveMonitor;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/PushConnection$KeepAliveMonitor;


# direct methods
.method constructor <init>(Lcom/parse/PushConnection$KeepAliveMonitor;)V
    .locals 0

    .prologue
    .line 599
    iput-object p1, p0, Lcom/parse/PushConnection$KeepAliveMonitor$1;->this$1:Lcom/parse/PushConnection$KeepAliveMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 602
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/parse/PushConnection$KeepAliveMonitor$1;->this$1:Lcom/parse/PushConnection$KeepAliveMonitor;

    iget-object v4, v4, Lcom/parse/PushConnection$KeepAliveMonitor;->this$0:Lcom/parse/PushConnection;

    # getter for: Lcom/parse/PushConnection;->lastReadTime:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {v4}, Lcom/parse/PushConnection;->access$1100(Lcom/parse/PushConnection;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 606
    .local v0, "delta":J
    sget-wide v2, Lcom/parse/PushConnection;->KEEP_ALIVE_ACK_INTERVAL:J

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 607
    const-string v2, "com.parse.PushConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Keep alive failure: last read was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms ago."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parse/Parse;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    iget-object v2, p0, Lcom/parse/PushConnection$KeepAliveMonitor$1;->this$1:Lcom/parse/PushConnection$KeepAliveMonitor;

    # invokes: Lcom/parse/PushConnection$KeepAliveMonitor;->signalKeepAliveFailure()V
    invoke-static {v2}, Lcom/parse/PushConnection$KeepAliveMonitor;->access$1200(Lcom/parse/PushConnection$KeepAliveMonitor;)V

    .line 610
    :cond_0
    return-void
.end method
