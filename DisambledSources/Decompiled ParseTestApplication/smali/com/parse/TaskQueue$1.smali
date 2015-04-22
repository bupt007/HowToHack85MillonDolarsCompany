.class Lcom/parse/TaskQueue$1;
.super Ljava/lang/Object;
.source "TaskQueue.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/TaskQueue;->getTaskToAwait()Lbolts/Task;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/TaskQueue;


# direct methods
.method constructor <init>(Lcom/parse/TaskQueue;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/parse/TaskQueue$1;->this$0:Lcom/parse/TaskQueue;

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
    .line 31
    invoke-virtual {p0, p1}, Lcom/parse/TaskQueue$1;->then(Lbolts/Task;)Ljava/lang/Void;

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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    const/4 v0, 0x0

    return-object v0
.end method
