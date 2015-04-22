.class final Lcom/parse/ParsePush$1;
.super Ljava/lang/Object;
.source "ParsePush.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParsePush;->setEnabled(Z)V
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
.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/parse/ParsePush$1;->val$enabled:Z

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
    .line 52
    invoke-virtual {p0, p1}, Lcom/parse/ParsePush$1;->then(Lbolts/Task;)Ljava/lang/Void;

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
    .line 55
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-boolean v0, p0, Lcom/parse/ParsePush$1;->val$enabled:Z

    if-nez v0, :cond_0

    .line 56
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/parse/PushService;->stopPpnsService(Landroid/content/Context;)V

    .line 60
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_0
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/parse/PushService;->startServiceIfRequired(Landroid/content/Context;)V

    goto :goto_0
.end method
