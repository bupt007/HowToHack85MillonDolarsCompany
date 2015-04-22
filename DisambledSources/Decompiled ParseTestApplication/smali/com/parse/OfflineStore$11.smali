.class Lcom/parse/OfflineStore$11;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore;->fetchLocallyAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$object:Lcom/parse/ParseObject;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;)V
    .locals 0

    .prologue
    .line 715
    iput-object p1, p0, Lcom/parse/OfflineStore$11;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$11;->val$object:Lcom/parse/ParseObject;

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
    .line 715
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$11;->then(Lbolts/Task;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Landroid/database/Cursor;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 718
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 719
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 720
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 726
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 727
    new-instance v3, Lcom/parse/ParseException;

    const/16 v4, 0x78

    const-string v5, "This object is not available in the offline cache."

    invoke-direct {v3, v4, v5}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 732
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 733
    .local v1, "jsonString":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 734
    .local v2, "newUUID":Ljava/lang/String;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 736
    iget-object v3, p0, Lcom/parse/OfflineStore$11;->this$0:Lcom/parse/OfflineStore;

    # getter for: Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/parse/OfflineStore;->access$300(Lcom/parse/OfflineStore;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 742
    :try_start_0
    iget-object v3, p0, Lcom/parse/OfflineStore$11;->this$0:Lcom/parse/OfflineStore;

    # getter for: Lcom/parse/OfflineStore;->objectToUuidMap:Ljava/util/WeakHashMap;
    invoke-static {v3}, Lcom/parse/OfflineStore;->access$500(Lcom/parse/OfflineStore;)Ljava/util/WeakHashMap;

    move-result-object v3

    iget-object v5, p0, Lcom/parse/OfflineStore$11;->val$object:Lcom/parse/ParseObject;

    invoke-static {v2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    iget-object v3, p0, Lcom/parse/OfflineStore$11;->this$0:Lcom/parse/OfflineStore;

    # getter for: Lcom/parse/OfflineStore;->uuidToObjectMap:Lcom/parse/WeakValueHashMap;
    invoke-static {v3}, Lcom/parse/OfflineStore;->access$400(Lcom/parse/OfflineStore;)Lcom/parse/WeakValueHashMap;

    move-result-object v3

    iget-object v5, p0, Lcom/parse/OfflineStore$11;->val$object:Lcom/parse/ParseObject;

    invoke-virtual {v3, v2, v5}, Lcom/parse/WeakValueHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 744
    monitor-exit v4

    .line 746
    return-object v1

    .line 744
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
