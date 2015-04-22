.class Lcom/parse/OfflineStore$3;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore;->getPointerAsync(Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
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
        "Landroid/database/Cursor;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/parse/OfflineStore$3;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$3;->val$uuid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lcom/parse/ParseObject;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Landroid/database/Cursor;",
            ">;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 309
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 310
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 311
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 312
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 313
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempted to find non-existent uuid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/parse/OfflineStore$3;->val$uuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 316
    :cond_0
    iget-object v5, p0, Lcom/parse/OfflineStore$3;->this$0:Lcom/parse/OfflineStore;

    # getter for: Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/parse/OfflineStore;->access$300(Lcom/parse/OfflineStore;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 321
    :try_start_0
    iget-object v5, p0, Lcom/parse/OfflineStore$3;->this$0:Lcom/parse/OfflineStore;

    # getter for: Lcom/parse/OfflineStore;->uuidToObjectMap:Lcom/parse/WeakValueHashMap;
    invoke-static {v5}, Lcom/parse/OfflineStore;->access$400(Lcom/parse/OfflineStore;)Lcom/parse/WeakValueHashMap;

    move-result-object v5

    iget-object v7, p0, Lcom/parse/OfflineStore$3;->val$uuid:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/parse/WeakValueHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseObject;

    .line 322
    .local v2, "existing":Lcom/parse/ParseObject;, "TT;"
    if-eqz v2, :cond_1

    .line 323
    monitor-exit v6

    .line 338
    .end local v2    # "existing":Lcom/parse/ParseObject;, "TT;"
    :goto_0
    return-object v2

    .line 326
    .restart local v2    # "existing":Lcom/parse/ParseObject;, "TT;"
    :cond_1
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "className":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 328
    .local v3, "objectId":Ljava/lang/String;
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 329
    invoke-static {v0, v3}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v4

    .line 334
    .local v4, "pointer":Lcom/parse/ParseObject;, "TT;"
    if-nez v3, :cond_2

    .line 335
    iget-object v5, p0, Lcom/parse/OfflineStore$3;->this$0:Lcom/parse/OfflineStore;

    # getter for: Lcom/parse/OfflineStore;->uuidToObjectMap:Lcom/parse/WeakValueHashMap;
    invoke-static {v5}, Lcom/parse/OfflineStore;->access$400(Lcom/parse/OfflineStore;)Lcom/parse/WeakValueHashMap;

    move-result-object v5

    iget-object v7, p0, Lcom/parse/OfflineStore$3;->val$uuid:Ljava/lang/String;

    invoke-virtual {v5, v7, v4}, Lcom/parse/WeakValueHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 336
    iget-object v5, p0, Lcom/parse/OfflineStore$3;->this$0:Lcom/parse/OfflineStore;

    # getter for: Lcom/parse/OfflineStore;->objectToUuidMap:Ljava/util/WeakHashMap;
    invoke-static {v5}, Lcom/parse/OfflineStore;->access$500(Lcom/parse/OfflineStore;)Ljava/util/WeakHashMap;

    move-result-object v5

    iget-object v7, p0, Lcom/parse/OfflineStore$3;->val$uuid:Ljava/lang/String;

    invoke-static {v7}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v7

    invoke-virtual {v5, v4, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    :cond_2
    monitor-exit v6

    move-object v2, v4

    goto :goto_0

    .line 339
    .end local v0    # "className":Ljava/lang/String;
    .end local v2    # "existing":Lcom/parse/ParseObject;, "TT;"
    .end local v3    # "objectId":Ljava/lang/String;
    .end local v4    # "pointer":Lcom/parse/ParseObject;, "TT;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
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
    .line 306
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$3;->then(Lbolts/Task;)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method
