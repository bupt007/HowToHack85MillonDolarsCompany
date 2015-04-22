.class Lcom/parse/ParseQuery$7;
.super Ljava/lang/Object;
.source "ParseQuery.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery;->findFromNetworkAsync(Lcom/parse/ParseUser;Z)Lbolts/Task;
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
.field final synthetic this$0:Lcom/parse/ParseQuery;

.field final synthetic val$command:Lcom/parse/ParseRESTCommand;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery;Lcom/parse/ParseRESTCommand;)V
    .locals 0

    .prologue
    .line 620
    .local p0, "this":Lcom/parse/ParseQuery$7;, "Lcom/parse/ParseQuery.7;"
    iput-object p1, p0, Lcom/parse/ParseQuery$7;->this$0:Lcom/parse/ParseQuery;

    iput-object p2, p0, Lcom/parse/ParseQuery$7;->val$command:Lcom/parse/ParseRESTCommand;

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
    .line 620
    .local p0, "this":Lcom/parse/ParseQuery$7;, "Lcom/parse/ParseQuery.7;"
    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery$7;->then(Lbolts/Task;)Ljava/lang/Void;

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
    .line 623
    .local p0, "this":Lcom/parse/ParseQuery$7;, "Lcom/parse/ParseQuery.7;"
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/parse/ParseQuery$7;->val$command:Lcom/parse/ParseRESTCommand;

    invoke-virtual {v0}, Lcom/parse/ParseRESTCommand;->cancel()V

    .line 626
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
