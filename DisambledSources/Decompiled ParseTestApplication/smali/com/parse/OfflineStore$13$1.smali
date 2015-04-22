.class Lcom/parse/OfflineStore$13$1;
.super Lcom/parse/ParseTraverser;
.source "OfflineStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore$13;->then(Lbolts/Task;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/OfflineStore$13;

.field final synthetic val$offlineObjects:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$13;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 779
    iput-object p1, p0, Lcom/parse/OfflineStore$13$1;->this$1:Lcom/parse/OfflineStore$13;

    iput-object p2, p0, Lcom/parse/OfflineStore$13$1;->val$offlineObjects:Ljava/util/Map;

    invoke-direct {p0}, Lcom/parse/ParseTraverser;-><init>()V

    return-void
.end method


# virtual methods
.method protected visit(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 782
    instance-of v1, p1, Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lorg/json/JSONObject;

    const-string v2, "__type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OfflineObject"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 784
    check-cast p1, Lorg/json/JSONObject;

    .end local p1    # "object":Ljava/lang/Object;
    const-string v1, "uuid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 785
    .local v0, "uuid":Ljava/lang/String;
    iget-object v1, p0, Lcom/parse/OfflineStore$13$1;->val$offlineObjects:Ljava/util/Map;

    iget-object v2, p0, Lcom/parse/OfflineStore$13$1;->this$1:Lcom/parse/OfflineStore$13;

    iget-object v2, v2, Lcom/parse/OfflineStore$13;->this$0:Lcom/parse/OfflineStore;

    iget-object v3, p0, Lcom/parse/OfflineStore$13$1;->this$1:Lcom/parse/OfflineStore$13;

    iget-object v3, v3, Lcom/parse/OfflineStore$13;->val$db:Lcom/parse/ParseSQLiteDatabase;

    # invokes: Lcom/parse/OfflineStore;->getPointerAsync(Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    invoke-static {v2, v0, v3}, Lcom/parse/OfflineStore;->access$700(Lcom/parse/OfflineStore;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    .end local v0    # "uuid":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
