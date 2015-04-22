.class Lcom/parse/PushRouter$13;
.super Ljava/lang/Object;
.source "PushRouter.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/PushRouter;->maybeRefreshInstallation(Ljava/util/Date;)V
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
        "Lcom/parse/ParseObject;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/PushRouter;


# direct methods
.method constructor <init>(Lcom/parse/PushRouter;)V
    .locals 0

    .prologue
    .line 795
    iput-object p1, p0, Lcom/parse/PushRouter$13;->this$0:Lcom/parse/PushRouter;

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
    .line 795
    invoke-virtual {p0, p1}, Lcom/parse/PushRouter$13;->then(Lbolts/Task;)Ljava/lang/Void;

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
            "Lcom/parse/ParseObject;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 798
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseObject;>;"
    iget-object v0, p0, Lcom/parse/PushRouter$13;->this$0:Lcom/parse/PushRouter;

    # getter for: Lcom/parse/PushRouter;->isRefreshingInstallation:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/parse/PushRouter;->access$300(Lcom/parse/PushRouter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 799
    const/4 v0, 0x0

    return-object v0
.end method
