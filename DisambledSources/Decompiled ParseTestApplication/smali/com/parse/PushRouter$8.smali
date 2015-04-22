.class final Lcom/parse/PushRouter$8;
.super Ljava/lang/Object;
.source "PushRouter.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/PushRouter;->handlePpnsPushAsync(Lorg/json/JSONObject;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$pushPayload:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/parse/PushRouter$8;->val$pushPayload:Lorg/json/JSONObject;

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
    .line 218
    invoke-virtual {p0, p1}, Lcom/parse/PushRouter$8;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 2
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

    .prologue
    .line 221
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/PushRouter$8;->val$pushPayload:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 222
    # invokes: Lcom/parse/PushRouter;->getInstance()Lcom/parse/PushRouter;
    invoke-static {}, Lcom/parse/PushRouter;->access$000()Lcom/parse/PushRouter;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/PushRouter$8;->val$pushPayload:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/parse/PushRouter;->handlePpnsPush(Lorg/json/JSONObject;)Lcom/parse/PushRouter$HandlePushResult;

    .line 224
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
