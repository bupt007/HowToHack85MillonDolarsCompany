.class final Lcom/parse/PushRouter$12;
.super Ljava/lang/Object;
.source "PushRouter.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/PushRouter;->noteHandlePushResult(Lorg/json/JSONObject;Lcom/parse/PushRouter$HandlePushResult;)V
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
.field final synthetic val$finalListener:Lcom/parse/PushRouter$PushListener;

.field final synthetic val$pushData:Lorg/json/JSONObject;

.field final synthetic val$result:Lcom/parse/PushRouter$HandlePushResult;


# direct methods
.method constructor <init>(Lcom/parse/PushRouter$PushListener;Lorg/json/JSONObject;Lcom/parse/PushRouter$HandlePushResult;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/parse/PushRouter$12;->val$finalListener:Lcom/parse/PushRouter$PushListener;

    iput-object p2, p0, Lcom/parse/PushRouter$12;->val$pushData:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/parse/PushRouter$12;->val$result:Lcom/parse/PushRouter$HandlePushResult;

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
    .line 353
    invoke-virtual {p0, p1}, Lcom/parse/PushRouter$12;->then(Lbolts/Task;)Ljava/lang/Void;

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
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 356
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/PushRouter$12;->val$finalListener:Lcom/parse/PushRouter$PushListener;

    iget-object v1, p0, Lcom/parse/PushRouter$12;->val$pushData:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/parse/PushRouter$12;->val$result:Lcom/parse/PushRouter$HandlePushResult;

    invoke-interface {v0, v1, v2}, Lcom/parse/PushRouter$PushListener;->onPushHandled(Lorg/json/JSONObject;Lcom/parse/PushRouter$HandlePushResult;)V

    .line 357
    const/4 v0, 0x0

    return-object v0
.end method
