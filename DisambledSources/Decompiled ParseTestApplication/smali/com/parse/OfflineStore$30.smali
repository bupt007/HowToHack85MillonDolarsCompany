.class Lcom/parse/OfflineStore$30;
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
        "Landroid/database/Cursor;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$uuidsToDelete:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    .prologue
    .line 1117
    iput-object p1, p0, Lcom/parse/OfflineStore$30;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$30;->val$uuidsToDelete:Ljava/util/List;

    iput-object p3, p0, Lcom/parse/OfflineStore$30;->val$db:Lcom/parse/ParseSQLiteDatabase;

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
            "Landroid/database/Cursor;",
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
    .line 1122
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 1123
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1124
    iget-object v1, p0, Lcom/parse/OfflineStore$30;->val$uuidsToDelete:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1126
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1128
    iget-object v1, p0, Lcom/parse/OfflineStore$30;->this$0:Lcom/parse/OfflineStore;

    iget-object v2, p0, Lcom/parse/OfflineStore$30;->val$uuidsToDelete:Ljava/util/List;

    iget-object v3, p0, Lcom/parse/OfflineStore$30;->val$db:Lcom/parse/ParseSQLiteDatabase;

    # invokes: Lcom/parse/OfflineStore;->deleteObjects(Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    invoke-static {v1, v2, v3}, Lcom/parse/OfflineStore;->access$1400(Lcom/parse/OfflineStore;Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v1

    return-object v1
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
    .line 1117
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$30;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
