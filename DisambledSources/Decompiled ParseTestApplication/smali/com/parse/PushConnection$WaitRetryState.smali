.class public Lcom/parse/PushConnection$WaitRetryState;
.super Lcom/parse/PushConnection$State;
.source "PushConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/PushConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WaitRetryState"
.end annotation


# instance fields
.field private delay:J

.field final synthetic this$0:Lcom/parse/PushConnection;


# direct methods
.method public constructor <init>(Lcom/parse/PushConnection;J)V
    .locals 0
    .param p2, "delay"    # J

    .prologue
    .line 436
    iput-object p1, p0, Lcom/parse/PushConnection$WaitRetryState;->this$0:Lcom/parse/PushConnection;

    invoke-direct {p0, p1}, Lcom/parse/PushConnection$State;-><init>(Lcom/parse/PushConnection;)V

    .line 437
    iput-wide p2, p0, Lcom/parse/PushConnection$WaitRetryState;->delay:J

    .line 438
    return-void
.end method


# virtual methods
.method public getDelay()J
    .locals 2

    .prologue
    .line 441
    iget-wide v0, p0, Lcom/parse/PushConnection$WaitRetryState;->delay:J

    return-wide v0
.end method

.method public runState()Lcom/parse/PushConnection$State;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 449
    iget-object v4, p0, Lcom/parse/PushConnection$WaitRetryState;->this$0:Lcom/parse/PushConnection;

    # getter for: Lcom/parse/PushConnection;->eventSet:Lcom/parse/PushConnection$EventSet;
    invoke-static {v4}, Lcom/parse/PushConnection;->access$300(Lcom/parse/PushConnection;)Lcom/parse/PushConnection$EventSet;

    move-result-object v4

    new-array v5, v8, [Lcom/parse/PushConnection$Event;

    sget-object v6, Lcom/parse/PushConnection$Event;->START:Lcom/parse/PushConnection$Event;

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/parse/PushConnection$EventSet;->removeEvents([Lcom/parse/PushConnection$Event;)V

    .line 452
    iget-wide v0, p0, Lcom/parse/PushConnection$WaitRetryState;->delay:J

    .line 453
    .local v0, "actualDelay":J
    sget-boolean v4, Lcom/parse/PushConnection;->ENABLE_RETRY_DELAY:Z

    if-nez v4, :cond_0

    .line 454
    const-wide/16 v0, 0x0

    .line 461
    :cond_0
    iget-object v4, p0, Lcom/parse/PushConnection$WaitRetryState;->this$0:Lcom/parse/PushConnection;

    # getter for: Lcom/parse/PushConnection;->eventSet:Lcom/parse/PushConnection$EventSet;
    invoke-static {v4}, Lcom/parse/PushConnection;->access$300(Lcom/parse/PushConnection;)Lcom/parse/PushConnection$EventSet;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/parse/PushConnection$Event;

    sget-object v6, Lcom/parse/PushConnection$Event;->STOP:Lcom/parse/PushConnection$Event;

    aput-object v6, v5, v7

    sget-object v6, Lcom/parse/PushConnection$Event;->START:Lcom/parse/PushConnection$Event;

    aput-object v6, v5, v8

    invoke-virtual {v4, v0, v1, v5}, Lcom/parse/PushConnection$EventSet;->timedAwait(J[Lcom/parse/PushConnection$Event;)Ljava/util/Set;

    move-result-object v2

    .line 463
    .local v2, "e":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/PushConnection$Event;>;"
    sget-object v4, Lcom/parse/PushConnection$Event;->STOP:Lcom/parse/PushConnection$Event;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 464
    new-instance v3, Lcom/parse/PushConnection$StoppedState;

    iget-object v4, p0, Lcom/parse/PushConnection$WaitRetryState;->this$0:Lcom/parse/PushConnection;

    invoke-direct {v3, v4}, Lcom/parse/PushConnection$StoppedState;-><init>(Lcom/parse/PushConnection;)V

    .line 473
    .local v3, "nextState":Lcom/parse/PushConnection$State;
    :goto_0
    return-object v3

    .line 465
    .end local v3    # "nextState":Lcom/parse/PushConnection$State;
    :cond_1
    sget-object v4, Lcom/parse/PushConnection$Event;->START:Lcom/parse/PushConnection$Event;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 468
    new-instance v3, Lcom/parse/PushConnection$ConnectState;

    iget-object v4, p0, Lcom/parse/PushConnection$WaitRetryState;->this$0:Lcom/parse/PushConnection;

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v6, v7}, Lcom/parse/PushConnection$ConnectState;-><init>(Lcom/parse/PushConnection;J)V

    .restart local v3    # "nextState":Lcom/parse/PushConnection$State;
    goto :goto_0

    .line 470
    .end local v3    # "nextState":Lcom/parse/PushConnection$State;
    :cond_2
    new-instance v3, Lcom/parse/PushConnection$ConnectState;

    iget-object v4, p0, Lcom/parse/PushConnection$WaitRetryState;->this$0:Lcom/parse/PushConnection;

    iget-wide v6, p0, Lcom/parse/PushConnection$WaitRetryState;->delay:J

    invoke-direct {v3, v4, v6, v7}, Lcom/parse/PushConnection$ConnectState;-><init>(Lcom/parse/PushConnection;J)V

    .restart local v3    # "nextState":Lcom/parse/PushConnection$State;
    goto :goto_0
.end method
