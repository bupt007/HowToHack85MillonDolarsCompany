.class Lcom/parse/OfflineStore$OfflineEncodingStrategy$2;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore$OfflineEncodingStrategy;->encodeRelatedObject(Lcom/parse/ParseObject;)Lorg/json/JSONObject;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/OfflineStore$OfflineEncodingStrategy;

.field final synthetic val$result:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$OfflineEncodingStrategy;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/parse/OfflineStore$OfflineEncodingStrategy$2;->this$1:Lcom/parse/OfflineStore$OfflineEncodingStrategy;

    iput-object p2, p0, Lcom/parse/OfflineStore$OfflineEncodingStrategy$2;->val$result:Lorg/json/JSONObject;

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
    .line 172
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$OfflineEncodingStrategy$2;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/String;",
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
    .line 175
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/parse/OfflineStore$OfflineEncodingStrategy$2;->val$result:Lorg/json/JSONObject;

    const-string v1, "uuid"

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    const/4 v0, 0x0

    return-object v0
.end method
