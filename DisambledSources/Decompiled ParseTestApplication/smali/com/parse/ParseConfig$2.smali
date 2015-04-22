.class final Lcom/parse/ParseConfig$2;
.super Ljava/lang/Object;
.source "ParseConfig.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseConfig;->getAsync(Lbolts/Task;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Lorg/json/JSONObject;",
        "Lcom/parse/ParseConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lcom/parse/ParseConfig;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lcom/parse/ParseConfig;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 106
    .local v1, "result":Lorg/json/JSONObject;
    new-instance v0, Lcom/parse/ParseConfig;

    new-instance v2, Lcom/parse/ParseDecoder;

    invoke-direct {v2}, Lcom/parse/ParseDecoder;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/parse/ParseConfig;-><init>(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)V

    .line 107
    .local v0, "config":Lcom/parse/ParseConfig;
    sget-object v2, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    const-string v3, "currentConfig"

    # invokes: Lcom/parse/ParseConfig;->saveToDisk(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v2, v3}, Lcom/parse/ParseConfig;->access$100(Lcom/parse/ParseConfig;Landroid/content/Context;Ljava/lang/String;)V

    .line 108
    # getter for: Lcom/parse/ParseConfig;->currentConfigMutex:Ljava/lang/Object;
    invoke-static {}, Lcom/parse/ParseConfig;->access$200()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 109
    :try_start_0
    # setter for: Lcom/parse/ParseConfig;->currentConfig:Lcom/parse/ParseConfig;
    invoke-static {v0}, Lcom/parse/ParseConfig;->access$302(Lcom/parse/ParseConfig;)Lcom/parse/ParseConfig;

    .line 110
    # getter for: Lcom/parse/ParseConfig;->currentConfig:Lcom/parse/ParseConfig;
    invoke-static {}, Lcom/parse/ParseConfig;->access$300()Lcom/parse/ParseConfig;

    move-result-object v2

    monitor-exit v3

    return-object v2

    .line 111
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lbolts/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/parse/ParseConfig$2;->then(Lbolts/Task;)Lcom/parse/ParseConfig;

    move-result-object v0

    return-object v0
.end method
