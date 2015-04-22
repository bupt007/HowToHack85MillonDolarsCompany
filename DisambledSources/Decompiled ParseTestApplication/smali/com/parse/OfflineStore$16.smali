.class Lcom/parse/OfflineStore$16;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore;->saveLocallyAsync(Ljava/lang/String;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
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

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$encoded:Lbolts/Capture;

.field final synthetic val$object:Lcom/parse/ParseObject;

.field final synthetic val$uuid:Lbolts/Capture;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Lbolts/Capture;Lbolts/Capture;Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    .prologue
    .line 870
    iput-object p1, p0, Lcom/parse/OfflineStore$16;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$16;->val$object:Lcom/parse/ParseObject;

    iput-object p3, p0, Lcom/parse/OfflineStore$16;->val$encoded:Lbolts/Capture;

    iput-object p4, p0, Lcom/parse/OfflineStore$16;->val$uuid:Lbolts/Capture;

    iput-object p5, p0, Lcom/parse/OfflineStore$16;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 8
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
    .line 874
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v6, p0, Lcom/parse/OfflineStore$16;->val$object:Lcom/parse/ParseObject;

    invoke-virtual {v6}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 875
    .local v1, "className":Ljava/lang/String;
    iget-object v6, p0, Lcom/parse/OfflineStore$16;->val$object:Lcom/parse/ParseObject;

    invoke-virtual {v6}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v3

    .line 876
    .local v3, "objectId":Ljava/lang/String;
    iget-object v6, p0, Lcom/parse/OfflineStore$16;->val$encoded:Lbolts/Capture;

    invoke-virtual {v6}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 878
    .local v2, "json":Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 879
    .local v4, "values":Landroid/content/ContentValues;
    const-string v6, "className"

    invoke-virtual {v4, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    const-string v6, "json"

    invoke-virtual {v4, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    if-eqz v3, :cond_0

    .line 882
    const-string v6, "objectId"

    invoke-virtual {v4, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    :cond_0
    const-string v5, "uuid = ?"

    .line 885
    .local v5, "where":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/parse/OfflineStore$16;->val$uuid:Lbolts/Capture;

    invoke-virtual {v6}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v0, v7

    .line 886
    .local v0, "args":[Ljava/lang/String;
    iget-object v6, p0, Lcom/parse/OfflineStore$16;->val$db:Lcom/parse/ParseSQLiteDatabase;

    const-string v7, "ParseObjects"

    invoke-virtual {v6, v7, v4, v5, v0}, Lcom/parse/ParseSQLiteDatabase;->updateAsync(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Lbolts/Task;

    move-result-object v6

    invoke-virtual {v6}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v6

    return-object v6
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
    .line 870
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$16;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
