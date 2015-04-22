.class final Lcom/parse/ParseAnalytics$1;
.super Ljava/lang/Object;
.source "ParseAnalytics.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseAnalytics;->trackAppOpenedInBackground(Landroid/content/Intent;)Lbolts/Task;
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
        "Ljava/lang/String;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$pushHash:Lbolts/Capture;


# direct methods
.method constructor <init>(Lbolts/Capture;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/parse/ParseAnalytics$1;->val$pushHash:Lbolts/Capture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/String;",
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
    .line 62
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 63
    .local v2, "sessionToken":Ljava/lang/String;
    iget-object v3, p0, Lcom/parse/ParseAnalytics$1;->val$pushHash:Lbolts/Capture;

    invoke-virtual {v3}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/parse/ParseRESTAnalyticsCommand;->trackAppOpenedCommand(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseRESTAnalyticsCommand;

    move-result-object v0

    .line 66
    .local v0, "command":Lcom/parse/ParseRESTCommand;
    invoke-static {}, Lcom/parse/Parse;->getEventuallyQueue()Lcom/parse/ParseEventuallyQueue;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/parse/ParseEventuallyQueue;->enqueueEventuallyAsync(Lcom/parse/ParseNetworkCommand;Lcom/parse/ParseObject;)Lbolts/Task;

    move-result-object v1

    .line 67
    .local v1, "eventuallyTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Object;>;"
    invoke-virtual {v1}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v3

    return-object v3
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
    .line 59
    invoke-virtual {p0, p1}, Lcom/parse/ParseAnalytics$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
