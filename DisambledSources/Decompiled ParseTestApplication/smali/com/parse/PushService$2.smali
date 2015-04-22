.class final Lcom/parse/PushService$2;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/PushService;->unsubscribeInternal(Ljava/lang/String;)V
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
        "Ljava/util/Set",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 340
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
    .line 340
    invoke-virtual {p0, p1}, Lcom/parse/PushService$2;->then(Lbolts/Task;)Ljava/lang/Void;

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
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 343
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 344
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/parse/PushService;->stopPpnsService(Landroid/content/Context;)V

    .line 346
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
