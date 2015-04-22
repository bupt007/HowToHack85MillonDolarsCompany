.class Lcom/parse/ParseCommandCache$4;
.super Ljava/lang/Object;
.source "ParseCommandCache.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseCommandCache;->maybeRunAllCommandsNow(I)V
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
        "Ljava/lang/Object;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseCommandCache;

.field final synthetic val$command:Lcom/parse/ParseNetworkCommand;

.field final synthetic val$localId:Ljava/lang/String;

.field final synthetic val$tcs:Lbolts/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/parse/ParseCommandCache;Lbolts/Task$TaskCompletionSource;Ljava/lang/String;Lcom/parse/ParseNetworkCommand;)V
    .locals 0

    .prologue
    .line 502
    iput-object p1, p0, Lcom/parse/ParseCommandCache$4;->this$0:Lcom/parse/ParseCommandCache;

    iput-object p2, p0, Lcom/parse/ParseCommandCache$4;->val$tcs:Lbolts/Task$TaskCompletionSource;

    iput-object p3, p0, Lcom/parse/ParseCommandCache$4;->val$localId:Ljava/lang/String;

    iput-object p4, p0, Lcom/parse/ParseCommandCache$4;->val$command:Lcom/parse/ParseNetworkCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Object;>;"
    const/4 v6, 0x0

    .line 505
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v1

    .line 506
    .local v1, "error":Ljava/lang/Exception;
    if-eqz v1, :cond_2

    .line 507
    instance-of v5, v1, Lcom/parse/ParseException;

    if-eqz v5, :cond_1

    move-object v5, v1

    check-cast v5, Lcom/parse/ParseException;

    invoke-virtual {v5}, Lcom/parse/ParseException;->getCode()I

    move-result v5

    const/16 v6, 0x64

    if-ne v5, v6, :cond_1

    .line 539
    :cond_0
    :goto_0
    return-object p1

    .line 511
    :cond_1
    iget-object v5, p0, Lcom/parse/ParseCommandCache$4;->val$tcs:Lbolts/Task$TaskCompletionSource;

    if-eqz v5, :cond_0

    .line 512
    iget-object v5, p0, Lcom/parse/ParseCommandCache$4;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v5, v1}, Lbolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 518
    :cond_2
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v4

    .line 519
    .local v4, "result":Ljava/lang/Object;
    iget-object v5, p0, Lcom/parse/ParseCommandCache$4;->val$tcs:Lbolts/Task$TaskCompletionSource;

    if-eqz v5, :cond_3

    .line 520
    iget-object v5, p0, Lcom/parse/ParseCommandCache$4;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v5, v4}, Lbolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 521
    :cond_3
    iget-object v5, p0, Lcom/parse/ParseCommandCache$4;->val$localId:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 523
    instance-of v5, v4, Lorg/json/JSONObject;

    if-eqz v5, :cond_0

    move-object v2, v4

    .line 524
    check-cast v2, Lorg/json/JSONObject;

    .line 525
    .local v2, "json":Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 526
    .local v3, "objectId":Ljava/lang/String;
    iget-object v5, p0, Lcom/parse/ParseCommandCache$4;->val$command:Lcom/parse/ParseNetworkCommand;

    instance-of v5, v5, Lcom/parse/ParseRESTCommand;

    if-eqz v5, :cond_5

    .line 527
    const-string v5, "objectId"

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 534
    :cond_4
    :goto_1
    if-eqz v3, :cond_0

    .line 535
    invoke-static {}, Lcom/parse/LocalIdManager;->getDefaultInstance()Lcom/parse/LocalIdManager;

    move-result-object v5

    iget-object v6, p0, Lcom/parse/ParseCommandCache$4;->val$localId:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Lcom/parse/LocalIdManager;->setObjectId(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 529
    :cond_5
    const-string v5, "data"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 530
    .local v0, "data":Lorg/json/JSONObject;
    if-eqz v0, :cond_4

    .line 531
    const-string v5, "objectId"

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
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
    .line 502
    invoke-virtual {p0, p1}, Lcom/parse/ParseCommandCache$4;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
