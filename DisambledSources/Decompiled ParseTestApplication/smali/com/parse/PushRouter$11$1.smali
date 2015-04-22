.class Lcom/parse/PushRouter$11$1;
.super Ljava/lang/Object;
.source "PushRouter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/PushRouter$11;->then(Lbolts/Task;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/PushRouter$11;

.field final synthetic val$task:Lbolts/Task;


# direct methods
.method constructor <init>(Lcom/parse/PushRouter$11;Lbolts/Task;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/parse/PushRouter$11$1;->this$0:Lcom/parse/PushRouter$11;

    iput-object p2, p0, Lcom/parse/PushRouter$11$1;->val$task:Lbolts/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 295
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lcom/parse/PushRouter$11$1;->val$task:Lbolts/Task;

    invoke-virtual {v1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
