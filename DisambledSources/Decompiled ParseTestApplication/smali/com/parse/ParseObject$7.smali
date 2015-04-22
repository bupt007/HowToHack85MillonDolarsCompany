.class Lcom/parse/ParseObject$7;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->handleSaveResultAsync(Lorg/json/JSONObject;Lcom/parse/ParseOperationSet;)Lbolts/Task;
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
.field final synthetic this$0:Lcom/parse/ParseObject;

.field final synthetic val$fetchedObjects:Ljava/util/Map;

.field final synthetic val$operationsBeforeSave:Lcom/parse/ParseOperationSet;

.field final synthetic val$result:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Ljava/util/Map;Lorg/json/JSONObject;Lcom/parse/ParseOperationSet;)V
    .locals 0

    .prologue
    .line 1293
    iput-object p1, p0, Lcom/parse/ParseObject$7;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$7;->val$fetchedObjects:Ljava/util/Map;

    iput-object p3, p0, Lcom/parse/ParseObject$7;->val$result:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/parse/ParseObject$7;->val$operationsBeforeSave:Lcom/parse/ParseOperationSet;

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
    .line 1293
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$7;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 5
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1296
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/parse/ParseObject$7;->this$0:Lcom/parse/ParseObject;

    iget-object v2, v1, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1297
    :try_start_0
    new-instance v0, Lcom/parse/KnownParseObjectDecoder;

    iget-object v1, p0, Lcom/parse/ParseObject$7;->val$fetchedObjects:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/parse/KnownParseObjectDecoder;-><init>(Ljava/util/Map;)V

    .line 1298
    .local v0, "decoder":Lcom/parse/ParseDecoder;
    iget-object v1, p0, Lcom/parse/ParseObject$7;->this$0:Lcom/parse/ParseObject;

    iget-object v3, p0, Lcom/parse/ParseObject$7;->val$result:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/parse/ParseObject$7;->val$operationsBeforeSave:Lcom/parse/ParseOperationSet;

    # invokes: Lcom/parse/ParseObject;->mergeAfterSave(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;Lcom/parse/ParseOperationSet;)V
    invoke-static {v1, v3, v0, v4}, Lcom/parse/ParseObject;->access$100(Lcom/parse/ParseObject;Lorg/json/JSONObject;Lcom/parse/ParseDecoder;Lcom/parse/ParseOperationSet;)V

    .line 1299
    monitor-exit v2

    .line 1300
    const/4 v1, 0x0

    return-object v1

    .line 1299
    .end local v0    # "decoder":Lcom/parse/ParseDecoder;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
