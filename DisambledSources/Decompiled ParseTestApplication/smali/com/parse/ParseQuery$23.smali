.class Lcom/parse/ParseQuery$23;
.super Ljava/lang/Object;
.source "ParseQuery.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery;->countFromNetworkAsync(Lcom/parse/ParseUser;Z)Lbolts/Task;
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
        "Ljava/lang/Object;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseQuery;

.field final synthetic val$caching:Z

.field final synthetic val$command:Lcom/parse/ParseRESTCommand;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery;ZLcom/parse/ParseRESTCommand;)V
    .locals 0

    .prologue
    .line 1174
    .local p0, "this":Lcom/parse/ParseQuery$23;, "Lcom/parse/ParseQuery.23;"
    iput-object p1, p0, Lcom/parse/ParseQuery$23;->this$0:Lcom/parse/ParseQuery;

    iput-boolean p2, p0, Lcom/parse/ParseQuery$23;->val$caching:Z

    iput-object p3, p0, Lcom/parse/ParseQuery$23;->val$command:Lcom/parse/ParseRESTCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1177
    .local p0, "this":Lcom/parse/ParseQuery$23;, "Lcom/parse/ParseQuery.23;"
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Object;>;"
    iget-boolean v1, p0, Lcom/parse/ParseQuery$23;->val$caching:Z

    if-eqz v1, :cond_0

    .line 1178
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 1179
    .local v0, "result":Ljava/lang/Object;
    iget-object v1, p0, Lcom/parse/ParseQuery$23;->val$command:Lcom/parse/ParseRESTCommand;

    invoke-virtual {v1}, Lcom/parse/ParseRESTCommand;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parse/ParseKeyValueCache;->saveToKeyValueCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    .end local v0    # "result":Ljava/lang/Object;
    :cond_0
    return-object p1
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
    .line 1174
    .local p0, "this":Lcom/parse/ParseQuery$23;, "Lcom/parse/ParseQuery.23;"
    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery$23;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
