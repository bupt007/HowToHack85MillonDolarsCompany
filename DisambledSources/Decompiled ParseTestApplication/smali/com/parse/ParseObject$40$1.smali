.class Lcom/parse/ParseObject$40$1;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject$40;->then(Lbolts/Task;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject$40;

.field final synthetic val$remaining:Lbolts/Capture;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$40;Lbolts/Capture;)V
    .locals 0

    .prologue
    .line 2274
    iput-object p1, p0, Lcom/parse/ParseObject$40$1;->this$0:Lcom/parse/ParseObject$40;

    iput-object p2, p0, Lcom/parse/ParseObject$40$1;->val$remaining:Lbolts/Capture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2277
    iget-object v0, p0, Lcom/parse/ParseObject$40$1;->val$remaining:Lbolts/Capture;

    invoke-virtual {v0}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2274
    invoke-virtual {p0}, Lcom/parse/ParseObject$40$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
