.class final Lcom/parse/PushRouter$6;
.super Ljava/lang/Object;
.source "PushRouter.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/PushRouter;->getPushRequestJSONAsync()Lbolts/Task;
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
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 174
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
    .line 174
    invoke-virtual {p0, p1}, Lcom/parse/PushRouter$6;->then(Lbolts/Task;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    # invokes: Lcom/parse/PushRouter;->getInstance()Lcom/parse/PushRouter;
    invoke-static {}, Lcom/parse/PushRouter;->access$000()Lcom/parse/PushRouter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/PushRouter;->getPushRequestJSON()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
