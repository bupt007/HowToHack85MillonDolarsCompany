.class Lcom/parse/OfflineStore$28;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore;->unpinAsync(Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
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
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$uuidsToDelete:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1138
    iput-object p1, p0, Lcom/parse/OfflineStore$28;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$28;->val$uuidsToDelete:Ljava/util/List;

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
    .line 1138
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$28;->then(Lbolts/Task;)Ljava/lang/Void;

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
    .line 1141
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v3, p0, Lcom/parse/OfflineStore$28;->this$0:Lcom/parse/OfflineStore;

    # getter for: Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/parse/OfflineStore;->access$300(Lcom/parse/OfflineStore;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1143
    :try_start_0
    iget-object v3, p0, Lcom/parse/OfflineStore$28;->val$uuidsToDelete:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1144
    .local v2, "uuid":Ljava/lang/String;
    iget-object v3, p0, Lcom/parse/OfflineStore$28;->this$0:Lcom/parse/OfflineStore;

    # getter for: Lcom/parse/OfflineStore;->uuidToObjectMap:Lcom/parse/WeakValueHashMap;
    invoke-static {v3}, Lcom/parse/OfflineStore;->access$400(Lcom/parse/OfflineStore;)Lcom/parse/WeakValueHashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/parse/WeakValueHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseObject;

    .line 1145
    .local v1, "object":Lcom/parse/ParseObject;
    if-eqz v1, :cond_0

    .line 1146
    iget-object v3, p0, Lcom/parse/OfflineStore$28;->this$0:Lcom/parse/OfflineStore;

    # getter for: Lcom/parse/OfflineStore;->objectToUuidMap:Ljava/util/WeakHashMap;
    invoke-static {v3}, Lcom/parse/OfflineStore;->access$500(Lcom/parse/OfflineStore;)Ljava/util/WeakHashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    iget-object v3, p0, Lcom/parse/OfflineStore$28;->this$0:Lcom/parse/OfflineStore;

    # getter for: Lcom/parse/OfflineStore;->uuidToObjectMap:Lcom/parse/WeakValueHashMap;
    invoke-static {v3}, Lcom/parse/OfflineStore;->access$400(Lcom/parse/OfflineStore;)Lcom/parse/WeakValueHashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/parse/WeakValueHashMap;->remove(Ljava/lang/Object;)V

    goto :goto_0

    .line 1150
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "object":Lcom/parse/ParseObject;
    .end local v2    # "uuid":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1151
    const/4 v3, 0x0

    return-object v3
.end method
