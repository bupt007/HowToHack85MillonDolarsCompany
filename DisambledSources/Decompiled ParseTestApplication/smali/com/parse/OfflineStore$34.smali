.class Lcom/parse/OfflineStore$34;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore;->updateDataForObjectAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
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

.field final synthetic val$jsonObject:Lbolts/Capture;

.field final synthetic val$object:Lcom/parse/ParseObject;

.field final synthetic val$uuid:Lbolts/Capture;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Lbolts/Capture;Lbolts/Capture;Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    .prologue
    .line 1275
    iput-object p1, p0, Lcom/parse/OfflineStore$34;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$34;->val$object:Lcom/parse/ParseObject;

    iput-object p3, p0, Lcom/parse/OfflineStore$34;->val$jsonObject:Lbolts/Capture;

    iput-object p4, p0, Lcom/parse/OfflineStore$34;->val$uuid:Lbolts/Capture;

    iput-object p5, p0, Lcom/parse/OfflineStore$34;->val$db:Lcom/parse/ParseSQLiteDatabase;

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
    .line 1279
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v7, p0, Lcom/parse/OfflineStore$34;->val$object:Lcom/parse/ParseObject;

    invoke-virtual {v7}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 1280
    .local v1, "className":Ljava/lang/String;
    iget-object v7, p0, Lcom/parse/OfflineStore$34;->val$object:Lcom/parse/ParseObject;

    invoke-virtual {v7}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v4

    .line 1281
    .local v4, "objectId":Ljava/lang/String;
    iget-object v7, p0, Lcom/parse/OfflineStore$34;->val$jsonObject:Lbolts/Capture;

    invoke-virtual {v7}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1282
    .local v3, "json":Ljava/lang/String;
    iget-object v7, p0, Lcom/parse/OfflineStore$34;->val$jsonObject:Lbolts/Capture;

    invoke-virtual {v7}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    const-string v8, "isDeletingEventually"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1284
    .local v2, "isDeletingEventually":I
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1285
    .local v5, "values":Landroid/content/ContentValues;
    const-string v7, "className"

    invoke-virtual {v5, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    const-string v7, "json"

    invoke-virtual {v5, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    if-eqz v4, :cond_0

    .line 1288
    const-string v7, "objectId"

    invoke-virtual {v5, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    :cond_0
    const-string v7, "isDeletingEventually"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1291
    const-string v6, "uuid = ?"

    .line 1292
    .local v6, "where":Ljava/lang/String;
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v7, p0, Lcom/parse/OfflineStore$34;->val$uuid:Lbolts/Capture;

    invoke-virtual {v7}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v0, v8

    .line 1294
    .local v0, "args":[Ljava/lang/String;
    iget-object v7, p0, Lcom/parse/OfflineStore$34;->val$db:Lcom/parse/ParseSQLiteDatabase;

    const-string v8, "ParseObjects"

    invoke-virtual {v7, v8, v5, v6, v0}, Lcom/parse/ParseSQLiteDatabase;->updateAsync(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Lbolts/Task;

    move-result-object v7

    invoke-virtual {v7}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v7

    return-object v7
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
    .line 1275
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$34;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
