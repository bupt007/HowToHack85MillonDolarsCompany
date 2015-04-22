.class Lcom/parse/OfflineStore$13$2;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore$13;->then(Lbolts/Task;)Lbolts/Task;
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
.field final synthetic this$1:Lcom/parse/OfflineStore$13;

.field final synthetic val$json:Lorg/json/JSONObject;

.field final synthetic val$offlineObjects:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$13;Lorg/json/JSONObject;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 791
    iput-object p1, p0, Lcom/parse/OfflineStore$13$2;->this$1:Lcom/parse/OfflineStore$13;

    iput-object p2, p0, Lcom/parse/OfflineStore$13$2;->val$json:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/parse/OfflineStore$13$2;->val$offlineObjects:Ljava/util/Map;

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
    .line 791
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$13$2;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 6
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
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    const/4 v5, 0x0

    .line 794
    iget-object v0, p0, Lcom/parse/OfflineStore$13$2;->this$1:Lcom/parse/OfflineStore$13;

    iget-object v0, v0, Lcom/parse/OfflineStore$13;->val$object:Lcom/parse/ParseObject;

    iget-object v1, p0, Lcom/parse/OfflineStore$13$2;->val$json:Lorg/json/JSONObject;

    new-instance v2, Lcom/parse/OfflineStore$OfflineDecoder;

    iget-object v3, p0, Lcom/parse/OfflineStore$13$2;->this$1:Lcom/parse/OfflineStore$13;

    iget-object v3, v3, Lcom/parse/OfflineStore$13;->this$0:Lcom/parse/OfflineStore;

    iget-object v4, p0, Lcom/parse/OfflineStore$13$2;->val$offlineObjects:Ljava/util/Map;

    invoke-direct {v2, v3, v4, v5}, Lcom/parse/OfflineStore$OfflineDecoder;-><init>(Lcom/parse/OfflineStore;Ljava/util/Map;Lcom/parse/OfflineStore$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseObject;->mergeREST(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)V

    .line 795
    return-object v5
.end method
