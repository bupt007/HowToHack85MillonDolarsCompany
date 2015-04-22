.class Lcom/parse/ParseObject$40$2$1;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject$40$2;->then(Lbolts/Task;)Lbolts/Task;
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
.field final synthetic this$1:Lcom/parse/ParseObject$40$2;

.field final synthetic val$current:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$40$2;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 2318
    iput-object p1, p0, Lcom/parse/ParseObject$40$2$1;->this$1:Lcom/parse/ParseObject$40$2;

    iput-object p2, p0, Lcom/parse/ParseObject$40$2$1;->val$current:Ljava/util/List;

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
    .line 2318
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$40$2$1;->then(Lbolts/Task;)Ljava/lang/Void;

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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2321
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseObject$40$2$1;->val$current:Ljava/util/List;

    iget-object v1, p0, Lcom/parse/ParseObject$40$2$1;->this$1:Lcom/parse/ParseObject$40$2;

    iget-object v1, v1, Lcom/parse/ParseObject$40$2;->this$0:Lcom/parse/ParseObject$40;

    iget-object v1, v1, Lcom/parse/ParseObject$40;->val$currentUser:Lcom/parse/ParseUser;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2322
    const/4 v0, 0x0

    return-object v0
.end method
