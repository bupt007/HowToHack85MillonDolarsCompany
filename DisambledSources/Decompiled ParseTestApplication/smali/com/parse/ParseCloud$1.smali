.class final Lcom/parse/ParseCloud$1;
.super Ljava/lang/Object;
.source "ParseCloud.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseCloud;->callFunctionInBackground(Ljava/lang/String;Ljava/util/Map;)Lbolts/Task;
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
        "Ljava/lang/String;",
        "Lbolts/Task",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$params:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/parse/ParseCloud$1;->val$name:Ljava/lang/String;

    iput-object p2, p0, Lcom/parse/ParseCloud$1;->val$params:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/String;",
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
    .line 76
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 77
    .local v1, "sessionToken":Ljava/lang/String;
    iget-object v2, p0, Lcom/parse/ParseCloud$1;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/parse/ParseCloud$1;->val$params:Ljava/util/Map;

    invoke-static {v2, v3, v1}, Lcom/parse/ParseRESTCloudCommand;->callFunctionCommand(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/parse/ParseRESTCloudCommand;

    move-result-object v0

    .line 79
    .local v0, "command":Lcom/parse/ParseRESTCommand;
    invoke-virtual {v0}, Lcom/parse/ParseRESTCommand;->executeAsync()Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseCloud$1$1;

    invoke-direct {v3, p0}, Lcom/parse/ParseCloud$1$1;-><init>(Lcom/parse/ParseCloud$1;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    return-object v2
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
    .line 73
    invoke-virtual {p0, p1}, Lcom/parse/ParseCloud$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
