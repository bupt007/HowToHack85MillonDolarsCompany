.class Lcom/parse/ParseUser$20;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->linkWithAsync(Ljava/lang/String;Lorg/json/JSONObject;Lbolts/Task;)Lbolts/Task;
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
.field final synthetic this$0:Lcom/parse/ParseUser;

.field final synthetic val$authType:Ljava/lang/String;

.field final synthetic val$oldAnonymousData:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1646
    iput-object p1, p0, Lcom/parse/ParseUser$20;->this$0:Lcom/parse/ParseUser;

    iput-object p2, p0, Lcom/parse/ParseUser$20;->val$oldAnonymousData:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/parse/ParseUser$20;->val$authType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 3
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
    .line 1649
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseUser$20;->this$0:Lcom/parse/ParseUser;

    iget-object v1, v0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1650
    :try_start_0
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1651
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseUser$20;->this$0:Lcom/parse/ParseUser;

    iget-object v2, p0, Lcom/parse/ParseUser$20;->val$oldAnonymousData:Lorg/json/JSONObject;

    # invokes: Lcom/parse/ParseUser;->restoreAnonymity(Lorg/json/JSONObject;)V
    invoke-static {v0, v2}, Lcom/parse/ParseUser;->access$400(Lcom/parse/ParseUser;Lorg/json/JSONObject;)V

    .line 1652
    monitor-exit v1

    .line 1655
    :goto_0
    return-object p1

    .line 1654
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseUser$20;->this$0:Lcom/parse/ParseUser;

    iget-object v2, p0, Lcom/parse/ParseUser$20;->val$authType:Ljava/lang/String;

    # invokes: Lcom/parse/ParseUser;->synchronizeAuthData(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/parse/ParseUser;->access$2200(Lcom/parse/ParseUser;Ljava/lang/String;)V

    .line 1655
    monitor-exit v1

    goto :goto_0

    .line 1656
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 1646
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$20;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
