.class final Lcom/parse/ParseConfig$3;
.super Ljava/lang/Object;
.source "ParseConfig.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseConfig;->getAsync(Lbolts/Task;)Lbolts/Task;
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
        "<",
        "Lorg/json/JSONObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$toAwait:Lbolts/Task;


# direct methods
.method constructor <init>(Lbolts/Task;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/parse/ParseConfig$3;->val$toAwait:Lbolts/Task;

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
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 91
    .local v1, "sessionToken":Ljava/lang/String;
    invoke-static {v1}, Lcom/parse/ParseRESTConfigCommand;->fetchConfigCommand(Ljava/lang/String;)Lcom/parse/ParseRESTConfigCommand;

    move-result-object v0

    .line 92
    .local v0, "command":Lcom/parse/ParseRESTCommand;
    invoke-virtual {v0}, Lcom/parse/ParseRESTCommand;->enableRetrying()V

    .line 94
    iget-object v2, p0, Lcom/parse/ParseConfig$3;->val$toAwait:Lbolts/Task;

    new-instance v3, Lcom/parse/ParseConfig$3$1;

    invoke-direct {v3, p0, v0}, Lcom/parse/ParseConfig$3$1;-><init>(Lcom/parse/ParseConfig$3;Lcom/parse/ParseRESTCommand;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

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
    .line 87
    invoke-virtual {p0, p1}, Lcom/parse/ParseConfig$3;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
