.class Lcom/parse/PushService$6;
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
        "Ljava/lang/Boolean;",
        "Lbolts/Task",
        "<",
        "Ljava/util/Set",
        "<",
        "Ljava/lang/String;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/PushService;

.field final synthetic val$forceEnabledCapture:Lbolts/Capture;


# direct methods
.method constructor <init>(Lcom/parse/PushService;Lbolts/Capture;)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Lcom/parse/PushService$6;->this$0:Lcom/parse/PushService;

    iput-object p2, p0, Lcom/parse/PushService$6;->val$forceEnabledCapture:Lbolts/Capture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 518
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/parse/PushService$6;->val$forceEnabledCapture:Lbolts/Capture;

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/Capture;->set(Ljava/lang/Object;)V

    .line 519
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/parse/PushRouter;->getSubscriptionsAsync(Z)Lbolts/Task;

    move-result-object v0

    return-object v0
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
    .line 515
    invoke-virtual {p0, p1}, Lcom/parse/PushService$6;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
