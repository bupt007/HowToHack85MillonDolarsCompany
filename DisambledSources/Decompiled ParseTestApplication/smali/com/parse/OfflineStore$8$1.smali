.class Lcom/parse/OfflineStore$8$1;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore$8;->then(Lbolts/Task;)Lbolts/Task;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/OfflineStore$8;

.field final synthetic val$object:Lbolts/Capture;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$8;Lbolts/Capture;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lcom/parse/OfflineStore$8$1;->this$1:Lcom/parse/OfflineStore$8;

    iput-object p2, p0, Lcom/parse/OfflineStore$8$1;->val$object:Lbolts/Capture;

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
    .line 497
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$8$1;->then(Lbolts/Task;)Ljava/lang/Void;

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
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 500
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Boolean;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/parse/OfflineStore$8$1;->this$1:Lcom/parse/OfflineStore$8;

    iget-object v0, v0, Lcom/parse/OfflineStore$8;->val$results:Ljava/util/List;

    iget-object v1, p0, Lcom/parse/OfflineStore$8$1;->val$object:Lbolts/Capture;

    invoke-virtual {v1}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
