.class Lcom/parse/ParseObject$23;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->handleFetchResultAsync(Lorg/json/JSONObject;)Lbolts/Task;
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
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject;

.field final synthetic val$fetchedObjects:Ljava/util/Map;

.field final synthetic val$result:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Ljava/util/Map;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 1740
    iput-object p1, p0, Lcom/parse/ParseObject$23;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$23;->val$fetchedObjects:Ljava/util/Map;

    iput-object p3, p0, Lcom/parse/ParseObject$23;->val$result:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1743
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/parse/ParseObject$23;->this$0:Lcom/parse/ParseObject;

    iget-object v2, v1, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1744
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseObject$23;->this$0:Lcom/parse/ParseObject;

    # getter for: Lcom/parse/ParseObject;->serverData:Ljava/util/Map;
    invoke-static {v1}, Lcom/parse/ParseObject;->access$700(Lcom/parse/ParseObject;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1745
    iget-object v1, p0, Lcom/parse/ParseObject$23;->this$0:Lcom/parse/ParseObject;

    # getter for: Lcom/parse/ParseObject;->dataAvailability:Ljava/util/Map;
    invoke-static {v1}, Lcom/parse/ParseObject;->access$800(Lcom/parse/ParseObject;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1746
    new-instance v0, Lcom/parse/KnownParseObjectDecoder;

    iget-object v1, p0, Lcom/parse/ParseObject$23;->val$fetchedObjects:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/parse/KnownParseObjectDecoder;-><init>(Ljava/util/Map;)V

    .line 1747
    .local v0, "decoder":Lcom/parse/ParseDecoder;
    iget-object v1, p0, Lcom/parse/ParseObject$23;->this$0:Lcom/parse/ParseObject;

    iget-object v3, p0, Lcom/parse/ParseObject$23;->val$result:Lorg/json/JSONObject;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v0, v4}, Lcom/parse/ParseObject;->mergeAfterFetch(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;Z)V

    .line 1748
    monitor-exit v2

    .line 1749
    const/4 v1, 0x0

    return-object v1

    .line 1748
    .end local v0    # "decoder":Lcom/parse/ParseDecoder;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
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
    .line 1740
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$23;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
