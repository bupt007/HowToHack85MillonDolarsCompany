.class Lcom/parse/TaskQueue$2$1;
.super Ljava/lang/Object;
.source "TaskQueue.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/TaskQueue$2;->then(Lbolts/Task;)Lbolts/Task;
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
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/TaskQueue$2;

.field final synthetic val$task:Lbolts/Task;


# direct methods
.method constructor <init>(Lcom/parse/TaskQueue$2;Lbolts/Task;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/parse/TaskQueue$2$1;->this$0:Lcom/parse/TaskQueue$2;

    iput-object p2, p0, Lcom/parse/TaskQueue$2$1;->val$task:Lbolts/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "ignored":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/TaskQueue$2$1;->val$task:Lbolts/Task;

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
    .line 85
    invoke-virtual {p0, p1}, Lcom/parse/TaskQueue$2$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
