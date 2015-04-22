.class final Lcom/parse/PushRouter$5;
.super Ljava/lang/Object;
.source "PushRouter.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/PushRouter;->getSubscriptionsAsync(Z)Lbolts/Task;
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
        "Ljava/util/Set",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$includeDefaultRoute:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/parse/PushRouter$5;->val$includeDefaultRoute:Z

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
    .line 154
    invoke-virtual {p0, p1}, Lcom/parse/PushRouter$5;->then(Lbolts/Task;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    # invokes: Lcom/parse/PushRouter;->getInstance()Lcom/parse/PushRouter;
    invoke-static {}, Lcom/parse/PushRouter;->access$000()Lcom/parse/PushRouter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/parse/PushRouter$5;->val$includeDefaultRoute:Z

    invoke-virtual {v0, v1}, Lcom/parse/PushRouter;->getSubscriptions(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
