.class Lcom/parse/OfflineStore$39;
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
        "Ljava/lang/String;",
        "Lbolts/Task",
        "<",
        "Landroid/database/Cursor;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$uuid:Lbolts/Capture;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Lbolts/Capture;Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    .prologue
    .line 1348
    iput-object p1, p0, Lcom/parse/OfflineStore$39;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$39;->val$uuid:Lbolts/Capture;

    iput-object p3, p0, Lcom/parse/OfflineStore$39;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1352
    new-array v1, v5, [Ljava/lang/String;

    const-string v3, "key"

    aput-object v3, v1, v4

    .line 1353
    .local v1, "select":[Ljava/lang/String;
    const-string v2, "uuid=?"

    .line 1354
    .local v2, "where":Ljava/lang/String;
    new-array v0, v5, [Ljava/lang/String;

    iget-object v3, p0, Lcom/parse/OfflineStore$39;->val$uuid:Lbolts/Capture;

    invoke-virtual {v3}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v4

    .line 1355
    .local v0, "args":[Ljava/lang/String;
    iget-object v3, p0, Lcom/parse/OfflineStore$39;->val$db:Lcom/parse/ParseSQLiteDatabase;

    const-string v4, "Dependencies"

    invoke-virtual {v3, v4, v1, v2, v0}, Lcom/parse/ParseSQLiteDatabase;->queryAsync(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lbolts/Task;

    move-result-object v3

    return-object v3
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
    .line 1348
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$39;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
