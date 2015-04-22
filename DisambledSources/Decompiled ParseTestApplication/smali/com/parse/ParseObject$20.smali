.class Lcom/parse/ParseObject$20;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->handleDeleteEventuallyResultAsync(Ljava/lang/Object;)Lbolts/Task;
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
.field final synthetic this$0:Lcom/parse/ParseObject;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1698
    iput-object p1, p0, Lcom/parse/ParseObject$20;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$20;->val$result:Ljava/lang/Object;

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
    .line 1701
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/parse/ParseObject$20;->val$result:Ljava/lang/Object;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 1702
    .local v0, "success":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1703
    invoke-static {}, Lcom/parse/Parse;->getEventuallyQueue()Lcom/parse/ParseEventuallyQueue;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/parse/ParseEventuallyQueue;->notifyTestHelper(I)V

    .line 1706
    :cond_0
    return-object p1

    .line 1701
    .end local v0    # "success":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
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
    .line 1698
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$20;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
