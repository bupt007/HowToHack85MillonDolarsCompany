.class Lcom/parse/OfflineStore$40;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore;->deleteDataForObjectAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
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
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$object:Lcom/parse/ParseObject;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;)V
    .locals 0

    .prologue
    .line 1417
    iput-object p1, p0, Lcom/parse/OfflineStore$40;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$40;->val$object:Lcom/parse/ParseObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 4
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
    .line 1420
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/parse/OfflineStore$40;->this$0:Lcom/parse/OfflineStore;

    # getter for: Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/parse/OfflineStore;->access$300(Lcom/parse/OfflineStore;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1424
    :try_start_0
    iget-object v1, p0, Lcom/parse/OfflineStore$40;->val$object:Lcom/parse/ParseObject;

    invoke-virtual {v1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    .line 1425
    .local v0, "objectId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1426
    iget-object v1, p0, Lcom/parse/OfflineStore$40;->this$0:Lcom/parse/OfflineStore;

    # getter for: Lcom/parse/OfflineStore;->classNameAndObjectIdToObjectMap:Lcom/parse/WeakValueHashMap;
    invoke-static {v1}, Lcom/parse/OfflineStore;->access$1800(Lcom/parse/OfflineStore;)Lcom/parse/WeakValueHashMap;

    move-result-object v1

    iget-object v3, p0, Lcom/parse/OfflineStore$40;->val$object:Lcom/parse/ParseObject;

    invoke-virtual {v3}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/parse/WeakValueHashMap;->remove(Ljava/lang/Object;)V

    .line 1428
    :cond_0
    iget-object v1, p0, Lcom/parse/OfflineStore$40;->this$0:Lcom/parse/OfflineStore;

    # getter for: Lcom/parse/OfflineStore;->fetchedObjects:Ljava/util/WeakHashMap;
    invoke-static {v1}, Lcom/parse/OfflineStore;->access$1900(Lcom/parse/OfflineStore;)Ljava/util/WeakHashMap;

    move-result-object v1

    iget-object v3, p0, Lcom/parse/OfflineStore$40;->val$object:Lcom/parse/ParseObject;

    invoke-virtual {v1, v3}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1429
    monitor-exit v2

    .line 1430
    return-object p1

    .line 1429
    .end local v0    # "objectId":Ljava/lang/String;
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
    .line 1417
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$40;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
