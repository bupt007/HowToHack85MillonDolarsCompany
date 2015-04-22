.class public Lcom/parse/PushConnection$WaitStartState;
.super Lcom/parse/PushConnection$State;
.source "PushConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/PushConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WaitStartState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/PushConnection;


# direct methods
.method public constructor <init>(Lcom/parse/PushConnection;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/parse/PushConnection$WaitStartState;->this$0:Lcom/parse/PushConnection;

    invoke-direct {p0, p1}, Lcom/parse/PushConnection$State;-><init>(Lcom/parse/PushConnection;)V

    return-void
.end method


# virtual methods
.method public runState()Lcom/parse/PushConnection$State;
    .locals 6

    .prologue
    .line 259
    const/4 v1, 0x0

    .line 260
    .local v1, "nextState":Lcom/parse/PushConnection$State;
    iget-object v2, p0, Lcom/parse/PushConnection$WaitStartState;->this$0:Lcom/parse/PushConnection;

    # getter for: Lcom/parse/PushConnection;->eventSet:Lcom/parse/PushConnection$EventSet;
    invoke-static {v2}, Lcom/parse/PushConnection;->access$300(Lcom/parse/PushConnection;)Lcom/parse/PushConnection$EventSet;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/parse/PushConnection$Event;

    const/4 v4, 0x0

    sget-object v5, Lcom/parse/PushConnection$Event;->START:Lcom/parse/PushConnection$Event;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/parse/PushConnection$Event;->STOP:Lcom/parse/PushConnection$Event;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/parse/PushConnection$EventSet;->await([Lcom/parse/PushConnection$Event;)Ljava/util/Set;

    move-result-object v0

    .line 262
    .local v0, "e":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/PushConnection$Event;>;"
    sget-object v2, Lcom/parse/PushConnection$Event;->STOP:Lcom/parse/PushConnection$Event;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 263
    new-instance v1, Lcom/parse/PushConnection$StoppedState;

    .end local v1    # "nextState":Lcom/parse/PushConnection$State;
    iget-object v2, p0, Lcom/parse/PushConnection$WaitStartState;->this$0:Lcom/parse/PushConnection;

    invoke-direct {v1, v2}, Lcom/parse/PushConnection$StoppedState;-><init>(Lcom/parse/PushConnection;)V

    .line 268
    .restart local v1    # "nextState":Lcom/parse/PushConnection$State;
    :cond_0
    :goto_0
    return-object v1

    .line 264
    :cond_1
    sget-object v2, Lcom/parse/PushConnection$Event;->START:Lcom/parse/PushConnection$Event;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    new-instance v1, Lcom/parse/PushConnection$ConnectState;

    .end local v1    # "nextState":Lcom/parse/PushConnection$State;
    iget-object v2, p0, Lcom/parse/PushConnection$WaitStartState;->this$0:Lcom/parse/PushConnection;

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v4, v5}, Lcom/parse/PushConnection$ConnectState;-><init>(Lcom/parse/PushConnection;J)V

    .restart local v1    # "nextState":Lcom/parse/PushConnection$State;
    goto :goto_0
.end method
