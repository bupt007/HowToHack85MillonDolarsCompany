.class public abstract Lcom/parse/PushConnection$State;
.super Ljava/lang/Object;
.source "PushConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/PushConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "State"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/PushConnection;


# direct methods
.method public constructor <init>(Lcom/parse/PushConnection;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/parse/PushConnection$State;->this$0:Lcom/parse/PushConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isTerminal()Z
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/parse/PushConnection$State;->runState()Lcom/parse/PushConnection$State;

    move-result-object v0

    .line 220
    .local v0, "nextState":Lcom/parse/PushConnection$State;
    iget-object v1, p0, Lcom/parse/PushConnection$State;->this$0:Lcom/parse/PushConnection;

    # invokes: Lcom/parse/PushConnection;->dispatchOnStateChange(Lcom/parse/PushConnection;Lcom/parse/PushConnection$State;Lcom/parse/PushConnection$State;)V
    invoke-static {v1, p0, v0}, Lcom/parse/PushConnection;->access$100(Lcom/parse/PushConnection;Lcom/parse/PushConnection$State;Lcom/parse/PushConnection$State;)V

    .line 222
    invoke-virtual {p0}, Lcom/parse/PushConnection$State;->isTerminal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    const-string v1, "com.parse.PushConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " finished and is the terminal state. Thread exiting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parse/Parse;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/parse/PushConnection$State;->this$0:Lcom/parse/PushConnection;

    # getter for: Lcom/parse/PushConnection;->executor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v1}, Lcom/parse/PushConnection;->access$200(Lcom/parse/PushConnection;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 231
    :goto_0
    return-void

    .line 225
    :cond_0
    if-eqz v0, :cond_1

    .line 226
    const-string v1, "com.parse.PushConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PushConnection transitioning from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parse/Parse;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/parse/PushConnection$State;->this$0:Lcom/parse/PushConnection;

    # getter for: Lcom/parse/PushConnection;->executor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v1}, Lcom/parse/PushConnection;->access$200(Lcom/parse/PushConnection;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 229
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tried to transition to null state."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public abstract runState()Lcom/parse/PushConnection$State;
.end method
