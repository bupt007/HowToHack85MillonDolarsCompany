.class Lcom/parse/PushConnection$KeepAliveMonitor$2$1;
.super Ljava/lang/Object;
.source "PushConnection.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/PushConnection$KeepAliveMonitor$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/parse/PushConnection$KeepAliveMonitor$2;

.field final synthetic val$wl:Lcom/parse/ParseWakeLock;


# direct methods
.method constructor <init>(Lcom/parse/PushConnection$KeepAliveMonitor$2;Lcom/parse/ParseWakeLock;)V
    .locals 0

    .prologue
    .line 627
    iput-object p1, p0, Lcom/parse/PushConnection$KeepAliveMonitor$2$1;->this$2:Lcom/parse/PushConnection$KeepAliveMonitor$2;

    iput-object p2, p0, Lcom/parse/PushConnection$KeepAliveMonitor$2$1;->val$wl:Lcom/parse/ParseWakeLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lbolts/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 627
    invoke-virtual {p0, p1}, Lcom/parse/PushConnection$KeepAliveMonitor$2$1;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 630
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v6, p0, Lcom/parse/PushConnection$KeepAliveMonitor$2$1;->this$2:Lcom/parse/PushConnection$KeepAliveMonitor$2;

    iget-object v6, v6, Lcom/parse/PushConnection$KeepAliveMonitor$2;->this$1:Lcom/parse/PushConnection$KeepAliveMonitor;

    # getter for: Lcom/parse/PushConnection$KeepAliveMonitor;->socket:Ljava/net/Socket;
    invoke-static {v6}, Lcom/parse/PushConnection$KeepAliveMonitor;->access$1400(Lcom/parse/PushConnection$KeepAliveMonitor;)Ljava/net/Socket;

    move-result-object v6

    const-string v7, "{}"

    # invokes: Lcom/parse/PushConnection;->writeLine(Ljava/net/Socket;Ljava/lang/String;)Z
    invoke-static {v6, v7}, Lcom/parse/PushConnection;->access$700(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 631
    iget-object v6, p0, Lcom/parse/PushConnection$KeepAliveMonitor$2$1;->this$2:Lcom/parse/PushConnection$KeepAliveMonitor$2;

    iget-object v6, v6, Lcom/parse/PushConnection$KeepAliveMonitor$2;->this$1:Lcom/parse/PushConnection$KeepAliveMonitor;

    # invokes: Lcom/parse/PushConnection$KeepAliveMonitor;->signalKeepAliveFailure()V
    invoke-static {v6}, Lcom/parse/PushConnection$KeepAliveMonitor;->access$1200(Lcom/parse/PushConnection$KeepAliveMonitor;)V

    .line 640
    :cond_0
    const/4 v3, 0x0

    .line 642
    .local v3, "quickAckCheckSucceeded":Z
    sget-boolean v6, Lcom/parse/PushConnection;->ENABLE_QUICK_ACK_CHECK:Z

    if-eqz v6, :cond_1

    .line 643
    const-wide/16 v4, 0x9c4

    .line 646
    .local v4, "quickCheckDelta":J
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v8, p0, Lcom/parse/PushConnection$KeepAliveMonitor$2$1;->this$2:Lcom/parse/PushConnection$KeepAliveMonitor$2;

    iget-object v8, v8, Lcom/parse/PushConnection$KeepAliveMonitor$2;->this$1:Lcom/parse/PushConnection$KeepAliveMonitor;

    iget-object v8, v8, Lcom/parse/PushConnection$KeepAliveMonitor;->this$0:Lcom/parse/PushConnection;

    # getter for: Lcom/parse/PushConnection;->lastReadTime:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {v8}, Lcom/parse/PushConnection;->access$1100(Lcom/parse/PushConnection;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    sub-long v0, v6, v8

    .line 652
    .local v0, "delta":J
    const-wide/16 v6, 0x2

    mul-long/2addr v6, v4

    cmp-long v6, v0, v6

    if-gtz v6, :cond_2

    const/4 v3, 0x1

    .line 657
    .end local v0    # "delta":J
    .end local v4    # "quickCheckDelta":J
    :cond_1
    :goto_1
    if-nez v3, :cond_3

    .line 658
    iget-object v6, p0, Lcom/parse/PushConnection$KeepAliveMonitor$2$1;->this$2:Lcom/parse/PushConnection$KeepAliveMonitor$2;

    iget-object v6, v6, Lcom/parse/PushConnection$KeepAliveMonitor$2;->val$appContext:Landroid/content/Context;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    iget-object v8, p0, Lcom/parse/PushConnection$KeepAliveMonitor$2$1;->this$2:Lcom/parse/PushConnection$KeepAliveMonitor$2;

    iget-object v8, v8, Lcom/parse/PushConnection$KeepAliveMonitor$2;->val$readIntent:Landroid/content/Intent;

    const/high16 v9, 0x50000000

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 663
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/parse/PushConnection$KeepAliveMonitor$2$1;->this$2:Lcom/parse/PushConnection$KeepAliveMonitor$2;

    iget-object v6, v6, Lcom/parse/PushConnection$KeepAliveMonitor$2;->this$1:Lcom/parse/PushConnection$KeepAliveMonitor;

    # getter for: Lcom/parse/PushConnection$KeepAliveMonitor;->manager:Landroid/app/AlarmManager;
    invoke-static {v6}, Lcom/parse/PushConnection$KeepAliveMonitor;->access$1500(Lcom/parse/PushConnection$KeepAliveMonitor;)Landroid/app/AlarmManager;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sget-wide v10, Lcom/parse/PushConnection;->KEEP_ALIVE_ACK_INTERVAL:J

    add-long/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 670
    .end local v2    # "pendingIntent":Landroid/app/PendingIntent;
    :goto_2
    iget-object v6, p0, Lcom/parse/PushConnection$KeepAliveMonitor$2$1;->val$wl:Lcom/parse/ParseWakeLock;

    invoke-virtual {v6}, Lcom/parse/ParseWakeLock;->release()V

    .line 672
    const/4 v6, 0x0

    return-object v6

    .line 652
    .restart local v0    # "delta":J
    .restart local v4    # "quickCheckDelta":J
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 667
    .end local v0    # "delta":J
    .end local v4    # "quickCheckDelta":J
    :cond_3
    const-string v6, "com.parse.PushConnection"

    const-string v7, "Keep alive ack was received quickly."

    invoke-static {v6, v7}, Lcom/parse/Parse;->logV(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 647
    .restart local v4    # "quickCheckDelta":J
    :catch_0
    move-exception v6

    goto :goto_0
.end method
