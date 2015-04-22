.class final Lcom/parse/PushRouter$9;
.super Ljava/lang/Object;
.source "PushRouter.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/PushRouter;->reloadFromDiskAsync(Z)Lbolts/Task;
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
.field final synthetic val$removeExistingState:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 242
    iput-boolean p1, p0, Lcom/parse/PushRouter$9;->val$removeExistingState:Z

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
    .line 242
    invoke-virtual {p0, p1}, Lcom/parse/PushRouter$9;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 1
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
    .line 245
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-boolean v0, p0, Lcom/parse/PushRouter$9;->val$removeExistingState:Z

    # invokes: Lcom/parse/PushRouter;->reloadInstance(Z)Lcom/parse/PushRouter;
    invoke-static {v0}, Lcom/parse/PushRouter;->access$200(Z)Lcom/parse/PushRouter;

    .line 246
    const/4 v0, 0x0

    return-object v0
.end method
