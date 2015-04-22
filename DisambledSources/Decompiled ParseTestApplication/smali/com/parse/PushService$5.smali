.class Lcom/parse/PushService$5;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/PushService;->onPpnsStartCommand(Landroid/content/Intent;II)I
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
        "Ljava/util/Set",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/PushService;

.field final synthetic val$conn:Lcom/parse/PushConnection;

.field final synthetic val$forceEnabledCapture:Lbolts/Capture;


# direct methods
.method constructor <init>(Lcom/parse/PushService;Lbolts/Capture;Lcom/parse/PushConnection;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/parse/PushService$5;->this$0:Lcom/parse/PushService;

    iput-object p2, p0, Lcom/parse/PushService$5;->val$forceEnabledCapture:Lbolts/Capture;

    iput-object p3, p0, Lcom/parse/PushService$5;->val$conn:Lcom/parse/PushConnection;

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
    .line 521
    invoke-virtual {p0, p1}, Lcom/parse/PushService$5;->then(Lbolts/Task;)Ljava/lang/Void;

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
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 524
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v4, p0, Lcom/parse/PushService$5;->val$forceEnabledCapture:Lbolts/Capture;

    invoke-virtual {v4}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 525
    .local v1, "forceEnabled":Ljava/lang/Boolean;
    invoke-static {}, Lcom/parse/ManifestInfo;->getPushUsesBroadcastReceivers()Z

    move-result v2

    .line 526
    .local v2, "isPushV2":Z
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 528
    .local v3, "subscriptions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 531
    .local v0, "error":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 532
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 533
    const-string v0, "Not starting PushService because this device has no subscriptions"

    .line 547
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 548
    const-string v4, "com.parse.PushService"

    invoke-static {v4, v0}, Lcom/parse/Parse;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v4, p0, Lcom/parse/PushService$5;->this$0:Lcom/parse/PushService;

    invoke-virtual {v4}, Lcom/parse/PushService;->stopSelf()V

    .line 554
    :goto_1
    const/4 v4, 0x0

    return-object v4

    .line 539
    :cond_1
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parse/ParseInstallation;->getObjectId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 540
    const-string v0, "Not starting PushService because this device is not registered for push notifications."

    goto :goto_0

    .line 542
    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 543
    const-string v0, "Not starting PushService because push has been manually disabled."

    goto :goto_0

    .line 551
    :cond_3
    const-string v4, "com.parse.PushService"

    const-string v5, "Starting PushService."

    invoke-static {v4, v5}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object v4, p0, Lcom/parse/PushService$5;->val$conn:Lcom/parse/PushConnection;

    invoke-virtual {v4}, Lcom/parse/PushConnection;->start()V

    goto :goto_1
.end method
