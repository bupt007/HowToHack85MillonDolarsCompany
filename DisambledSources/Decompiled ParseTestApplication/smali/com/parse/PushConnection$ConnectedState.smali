.class public Lcom/parse/PushConnection$ConnectedState;
.super Lcom/parse/PushConnection$State;
.source "PushConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/PushConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectedState"
.end annotation


# instance fields
.field private final socket:Ljava/net/Socket;

.field final synthetic this$0:Lcom/parse/PushConnection;


# direct methods
.method public constructor <init>(Lcom/parse/PushConnection;Ljava/net/Socket;)V
    .locals 0
    .param p2, "socket"    # Ljava/net/Socket;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/parse/PushConnection$ConnectedState;->this$0:Lcom/parse/PushConnection;

    invoke-direct {p0, p1}, Lcom/parse/PushConnection$State;-><init>(Lcom/parse/PushConnection;)V

    .line 376
    iput-object p2, p0, Lcom/parse/PushConnection$ConnectedState;->socket:Ljava/net/Socket;

    .line 377
    return-void
.end method


# virtual methods
.method public runState()Lcom/parse/PushConnection$State;
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 381
    const/4 v2, 0x0

    .line 382
    .local v2, "nextState":Lcom/parse/PushConnection$State;
    new-instance v3, Lcom/parse/PushConnection$ReachabilityMonitor;

    iget-object v5, p0, Lcom/parse/PushConnection$ConnectedState;->this$0:Lcom/parse/PushConnection;

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Lcom/parse/PushConnection$ReachabilityMonitor;-><init>(Lcom/parse/PushConnection;Lcom/parse/PushConnection$1;)V

    .line 383
    .local v3, "reachabilityMonitor":Lcom/parse/PushConnection$ReachabilityMonitor;
    new-instance v1, Lcom/parse/PushConnection$KeepAliveMonitor;

    iget-object v5, p0, Lcom/parse/PushConnection$ConnectedState;->this$0:Lcom/parse/PushConnection;

    iget-object v6, p0, Lcom/parse/PushConnection$ConnectedState;->socket:Ljava/net/Socket;

    sget-wide v8, Lcom/parse/PushConnection;->KEEP_ALIVE_INTERVAL:J

    invoke-direct {v1, v5, v6, v8, v9}, Lcom/parse/PushConnection$KeepAliveMonitor;-><init>(Lcom/parse/PushConnection;Ljava/net/Socket;J)V

    .line 384
    .local v1, "keepAliveMonitor":Lcom/parse/PushConnection$KeepAliveMonitor;
    new-instance v4, Lcom/parse/PushConnection$ReaderThread;

    iget-object v5, p0, Lcom/parse/PushConnection$ConnectedState;->this$0:Lcom/parse/PushConnection;

    iget-object v6, p0, Lcom/parse/PushConnection$ConnectedState;->socket:Ljava/net/Socket;

    invoke-direct {v4, v5, v6}, Lcom/parse/PushConnection$ReaderThread;-><init>(Lcom/parse/PushConnection;Ljava/net/Socket;)V

    .line 386
    .local v4, "readerThread":Lcom/parse/PushConnection$ReaderThread;
    invoke-virtual {v3}, Lcom/parse/PushConnection$ReachabilityMonitor;->register()V

    .line 387
    invoke-virtual {v1}, Lcom/parse/PushConnection$KeepAliveMonitor;->register()V

    .line 388
    invoke-virtual {v4}, Lcom/parse/PushConnection$ReaderThread;->start()V

    .line 390
    :cond_0
    :goto_0
    if-nez v2, :cond_3

    .line 391
    iget-object v5, p0, Lcom/parse/PushConnection$ConnectedState;->this$0:Lcom/parse/PushConnection;

    # getter for: Lcom/parse/PushConnection;->eventSet:Lcom/parse/PushConnection$EventSet;
    invoke-static {v5}, Lcom/parse/PushConnection;->access$300(Lcom/parse/PushConnection;)Lcom/parse/PushConnection$EventSet;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/parse/PushConnection$Event;

    sget-object v7, Lcom/parse/PushConnection$Event;->STOP:Lcom/parse/PushConnection$Event;

    aput-object v7, v6, v10

    sget-object v7, Lcom/parse/PushConnection$Event;->CONNECTIVITY_CHANGED:Lcom/parse/PushConnection$Event;

    aput-object v7, v6, v11

    sget-object v7, Lcom/parse/PushConnection$Event;->KEEP_ALIVE_ERROR:Lcom/parse/PushConnection$Event;

    aput-object v7, v6, v12

    sget-object v7, Lcom/parse/PushConnection$Event;->READ_ERROR:Lcom/parse/PushConnection$Event;

    aput-object v7, v6, v13

    invoke-virtual {v5, v6}, Lcom/parse/PushConnection$EventSet;->await([Lcom/parse/PushConnection$Event;)Ljava/util/Set;

    move-result-object v0

    .line 398
    .local v0, "e":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/PushConnection$Event;>;"
    sget-object v5, Lcom/parse/PushConnection$Event;->STOP:Lcom/parse/PushConnection$Event;

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 399
    new-instance v2, Lcom/parse/PushConnection$StoppedState;

    .end local v2    # "nextState":Lcom/parse/PushConnection$State;
    iget-object v5, p0, Lcom/parse/PushConnection$ConnectedState;->this$0:Lcom/parse/PushConnection;

    invoke-direct {v2, v5}, Lcom/parse/PushConnection$StoppedState;-><init>(Lcom/parse/PushConnection;)V

    .restart local v2    # "nextState":Lcom/parse/PushConnection$State;
    goto :goto_0

    .line 400
    :cond_1
    sget-object v5, Lcom/parse/PushConnection$Event;->READ_ERROR:Lcom/parse/PushConnection$Event;

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/parse/PushConnection$Event;->KEEP_ALIVE_ERROR:Lcom/parse/PushConnection$Event;

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/parse/PushConnection$Event;->CONNECTIVITY_CHANGED:Lcom/parse/PushConnection$Event;

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 403
    :cond_2
    new-instance v2, Lcom/parse/PushConnection$WaitRetryState;

    .end local v2    # "nextState":Lcom/parse/PushConnection$State;
    iget-object v5, p0, Lcom/parse/PushConnection$ConnectedState;->this$0:Lcom/parse/PushConnection;

    const-wide/16 v6, 0x0

    invoke-direct {v2, v5, v6, v7}, Lcom/parse/PushConnection$WaitRetryState;-><init>(Lcom/parse/PushConnection;J)V

    .restart local v2    # "nextState":Lcom/parse/PushConnection$State;
    goto :goto_0

    .line 407
    .end local v0    # "e":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/PushConnection$Event;>;"
    :cond_3
    invoke-virtual {v3}, Lcom/parse/PushConnection$ReachabilityMonitor;->unregister()V

    .line 408
    invoke-virtual {v1}, Lcom/parse/PushConnection$KeepAliveMonitor;->unregister()V

    .line 409
    invoke-virtual {v4}, Lcom/parse/PushConnection$ReaderThread;->stopReading()V

    .line 410
    iget-object v5, p0, Lcom/parse/PushConnection$ConnectedState;->socket:Ljava/net/Socket;

    # invokes: Lcom/parse/PushConnection;->closeSocket(Ljava/net/Socket;)V
    invoke-static {v5}, Lcom/parse/PushConnection;->access$600(Ljava/net/Socket;)V

    .line 414
    iget-object v5, p0, Lcom/parse/PushConnection$ConnectedState;->this$0:Lcom/parse/PushConnection;

    # getter for: Lcom/parse/PushConnection;->eventSet:Lcom/parse/PushConnection$EventSet;
    invoke-static {v5}, Lcom/parse/PushConnection;->access$300(Lcom/parse/PushConnection;)Lcom/parse/PushConnection$EventSet;

    move-result-object v5

    new-array v6, v13, [Lcom/parse/PushConnection$Event;

    sget-object v7, Lcom/parse/PushConnection$Event;->CONNECTIVITY_CHANGED:Lcom/parse/PushConnection$Event;

    aput-object v7, v6, v10

    sget-object v7, Lcom/parse/PushConnection$Event;->KEEP_ALIVE_ERROR:Lcom/parse/PushConnection$Event;

    aput-object v7, v6, v11

    sget-object v7, Lcom/parse/PushConnection$Event;->READ_ERROR:Lcom/parse/PushConnection$Event;

    aput-object v7, v6, v12

    invoke-virtual {v5, v6}, Lcom/parse/PushConnection$EventSet;->removeEvents([Lcom/parse/PushConnection$Event;)V

    .line 420
    return-object v2
.end method
