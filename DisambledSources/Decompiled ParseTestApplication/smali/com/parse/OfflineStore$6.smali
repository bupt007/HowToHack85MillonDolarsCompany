.class Lcom/parse/OfflineStore$6;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore;->findAsync(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;Lcom/parse/ParsePin;ZLcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
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

.field final synthetic val$includeIsDeletingEventually:Z

.field final synthetic val$query:Lcom/parse/ParseQuery;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;ZLcom/parse/ParseQuery;Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/parse/OfflineStore$6;->this$0:Lcom/parse/OfflineStore;

    iput-boolean p2, p0, Lcom/parse/OfflineStore$6;->val$includeIsDeletingEventually:Z

    iput-object p3, p0, Lcom/parse/OfflineStore$6;->val$query:Lcom/parse/ParseQuery;

    iput-object p4, p0, Lcom/parse/OfflineStore$6;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 9
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
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 443
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 445
    .local v3, "uuid":Ljava/lang/String;
    const-string v2, "ParseObjects A  INNER JOIN Dependencies B  ON A.uuid=B.uuid"

    .line 448
    .local v2, "table":Ljava/lang/String;
    new-array v1, v8, [Ljava/lang/String;

    const-string v5, "A.uuid"

    aput-object v5, v1, v7

    .line 449
    .local v1, "select":[Ljava/lang/String;
    const-string v4, "className=? AND key=?"

    .line 451
    .local v4, "where":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/parse/OfflineStore$6;->val$includeIsDeletingEventually:Z

    if-nez v5, :cond_0

    .line 452
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND isDeletingEventually=0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 454
    :cond_0
    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/String;

    iget-object v5, p0, Lcom/parse/OfflineStore$6;->val$query:Lcom/parse/ParseQuery;

    invoke-virtual {v5}, Lcom/parse/ParseQuery;->getClassName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v7

    aput-object v3, v0, v8

    .line 456
    .local v0, "args":[Ljava/lang/String;
    iget-object v5, p0, Lcom/parse/OfflineStore$6;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-virtual {v5, v2, v1, v4, v0}, Lcom/parse/ParseSQLiteDatabase;->queryAsync(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lbolts/Task;

    move-result-object v5

    return-object v5
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
    .line 440
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$6;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
