.class final Lcom/parse/PushRouter$3;
.super Ljava/lang/Object;
.source "PushRouter.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/PushRouter;->setForceEnabledAsync(Ljava/lang/Boolean;)Lbolts/Task;
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
.field final synthetic val$forceEnabled:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/parse/PushRouter$3;->val$forceEnabled:Ljava/lang/Boolean;

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
    .line 116
    invoke-virtual {p0, p1}, Lcom/parse/PushRouter$3;->then(Lbolts/Task;)Ljava/lang/Void;

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
    .line 119
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    # invokes: Lcom/parse/PushRouter;->getInstance()Lcom/parse/PushRouter;
    invoke-static {}, Lcom/parse/PushRouter;->access$000()Lcom/parse/PushRouter;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/PushRouter$3;->val$forceEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/parse/PushRouter;->setForceEnabledState(Ljava/lang/Boolean;)V

    .line 120
    const/4 v0, 0x0

    return-object v0
.end method
