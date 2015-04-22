.class Lcom/parse/EventuallyPin$2$1;
.super Ljava/lang/Object;
.source "EventuallyPin.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/EventuallyPin$2;->then(Lbolts/Task;)Lbolts/Task;
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
        "Ljava/util/List",
        "<",
        "Lcom/parse/EventuallyPin;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/EventuallyPin$2;

.field final synthetic val$pins:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/parse/EventuallyPin$2;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/parse/EventuallyPin$2$1;->this$0:Lcom/parse/EventuallyPin$2;

    iput-object p2, p0, Lcom/parse/EventuallyPin$2$1;->val$pins:Ljava/util/List;

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
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/parse/EventuallyPin;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/EventuallyPin$2$1;->val$pins:Ljava/util/List;

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

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
    .line 185
    invoke-virtual {p0, p1}, Lcom/parse/EventuallyPin$2$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
