.class abstract Lcom/parse/ParseEventuallyQueue;
.super Ljava/lang/Object;
.source "ParseEventuallyQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseEventuallyQueue$1;,
        Lcom/parse/ParseEventuallyQueue$TestHelper;
    }
.end annotation


# instance fields
.field private isConnected:Z

.field private testHelper:Lcom/parse/ParseEventuallyQueue$TestHelper;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    return-void
.end method


# virtual methods
.method public abstract clear()V
.end method

.method protected commandFromJSON(Lorg/json/JSONObject;)Lcom/parse/ParseNetworkCommand;
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/parse/ParseNetworkCommand",
            "<",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {p1}, Lcom/parse/ParseRESTCommand;->isValidCommandJSONObject(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-static {p1}, Lcom/parse/ParseRESTCommand;->fromJSONObject(Lorg/json/JSONObject;)Lcom/parse/ParseRESTCommand;

    move-result-object v0

    .line 92
    .local v0, "command":Lcom/parse/ParseNetworkCommand;, "Lcom/parse/ParseNetworkCommand<Lorg/json/JSONObject;Ljava/lang/Object;>;"
    :goto_0
    return-object v0

    .line 87
    .end local v0    # "command":Lcom/parse/ParseNetworkCommand;, "Lcom/parse/ParseNetworkCommand<Lorg/json/JSONObject;Ljava/lang/Object;>;"
    :cond_0
    invoke-static {p1}, Lcom/parse/ParseCommand;->isValidCommandJSONObject(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    new-instance v0, Lcom/parse/ParseCommand;

    invoke-direct {v0, p1}, Lcom/parse/ParseCommand;-><init>(Lorg/json/JSONObject;)V

    .restart local v0    # "command":Lcom/parse/ParseNetworkCommand;, "Lcom/parse/ParseNetworkCommand<Lorg/json/JSONObject;Ljava/lang/Object;>;"
    goto :goto_0

    .line 90
    .end local v0    # "command":Lcom/parse/ParseNetworkCommand;, "Lcom/parse/ParseNetworkCommand<Lorg/json/JSONObject;Ljava/lang/Object;>;"
    :cond_1
    new-instance v1, Lorg/json/JSONException;

    const-string v2, "Failed to load command from JSON."

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public abstract enqueueEventuallyAsync(Lcom/parse/ParseNetworkCommand;Lcom/parse/ParseObject;)Lbolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseNetworkCommand;",
            "Lcom/parse/ParseObject;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method fakeObjectUpdate()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/parse/ParseEventuallyQueue;->testHelper:Lcom/parse/ParseEventuallyQueue$TestHelper;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/parse/ParseEventuallyQueue;->testHelper:Lcom/parse/ParseEventuallyQueue$TestHelper;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/parse/ParseEventuallyQueue$TestHelper;->notify(I)V

    .line 115
    iget-object v0, p0, Lcom/parse/ParseEventuallyQueue;->testHelper:Lcom/parse/ParseEventuallyQueue$TestHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parse/ParseEventuallyQueue$TestHelper;->notify(I)V

    .line 116
    iget-object v0, p0, Lcom/parse/ParseEventuallyQueue;->testHelper:Lcom/parse/ParseEventuallyQueue$TestHelper;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/parse/ParseEventuallyQueue$TestHelper;->notify(I)V

    .line 118
    :cond_0
    return-void
.end method

.method public getTestHelper()Lcom/parse/ParseEventuallyQueue$TestHelper;
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/parse/ParseEventuallyQueue;->testHelper:Lcom/parse/ParseEventuallyQueue$TestHelper;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/parse/ParseEventuallyQueue$TestHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/parse/ParseEventuallyQueue$TestHelper;-><init>(Lcom/parse/ParseEventuallyQueue$1;)V

    iput-object v0, p0, Lcom/parse/ParseEventuallyQueue;->testHelper:Lcom/parse/ParseEventuallyQueue$TestHelper;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseEventuallyQueue;->testHelper:Lcom/parse/ParseEventuallyQueue$TestHelper;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/parse/ParseEventuallyQueue;->isConnected:Z

    return v0
.end method

.method protected notifyTestHelper(I)V
    .locals 1
    .param p1, "event"    # I

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseEventuallyQueue;->notifyTestHelper(ILjava/lang/Throwable;)V

    .line 55
    return-void
.end method

.method protected notifyTestHelper(ILjava/lang/Throwable;)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/parse/ParseEventuallyQueue;->testHelper:Lcom/parse/ParseEventuallyQueue$TestHelper;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/parse/ParseEventuallyQueue;->testHelper:Lcom/parse/ParseEventuallyQueue$TestHelper;

    invoke-virtual {v0, p1, p2}, Lcom/parse/ParseEventuallyQueue$TestHelper;->notify(ILjava/lang/Throwable;)V

    .line 61
    :cond_0
    return-void
.end method

.method public abstract onDestroy()V
.end method

.method public abstract pause()V
.end method

.method public abstract pendingCount()I
.end method

.method public abstract resume()V
.end method

.method public setConnected(Z)V
    .locals 0
    .param p1, "connected"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/parse/ParseEventuallyQueue;->isConnected:Z

    .line 29
    return-void
.end method

.method public setMaxCacheSizeBytes(I)V
    .locals 0
    .param p1, "bytes"    # I

    .prologue
    .line 43
    return-void
.end method

.method public setTimeoutRetryWaitSeconds(D)V
    .locals 0
    .param p1, "seconds"    # D

    .prologue
    .line 39
    return-void
.end method

.method abstract simulateReboot()V
.end method

.method waitForOperationSetAndEventuallyPin(Lcom/parse/ParseOperationSet;Lcom/parse/EventuallyPin;)Lbolts/Task;
    .locals 1
    .param p1, "operationSet"    # Lcom/parse/ParseOperationSet;
    .param p2, "eventuallyPin"    # Lcom/parse/EventuallyPin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseOperationSet;",
            "Lcom/parse/EventuallyPin;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
