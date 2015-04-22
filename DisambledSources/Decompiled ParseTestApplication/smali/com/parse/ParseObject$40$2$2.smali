.class Lcom/parse/ParseObject$40$2$2;
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
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseObject$40$2;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$40$2;)V
    .locals 0

    .prologue
    .line 2313
    iput-object p1, p0, Lcom/parse/ParseObject$40$2$2;->this$1:Lcom/parse/ParseObject$40$2;

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
    .line 2316
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseObject$40$2$2;->this$1:Lcom/parse/ParseObject$40$2;

    iget-object v0, v0, Lcom/parse/ParseObject$40$2;->this$0:Lcom/parse/ParseObject$40;

    iget-object v0, v0, Lcom/parse/ParseObject$40;->val$currentUser:Lcom/parse/ParseUser;

    invoke-virtual {v0}, Lcom/parse/ParseUser;->saveInBackground()Lbolts/Task;

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
    .line 2313
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$40$2$2;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
