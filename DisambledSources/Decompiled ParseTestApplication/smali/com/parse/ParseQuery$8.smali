.class Lcom/parse/ParseQuery$8;
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
        "Ljava/lang/Object;",
        "Ljava/util/List",
        "<TT;>;>;"
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
    .line 634
    .local p0, "this":Lcom/parse/ParseQuery$8;, "Lcom/parse/ParseQuery.8;"
    iput-object p1, p0, Lcom/parse/ParseQuery$8;->this$0:Lcom/parse/ParseQuery;

    iput-boolean p2, p0, Lcom/parse/ParseQuery$8;->val$caching:Z

    iput-object p3, p0, Lcom/parse/ParseQuery$8;->val$command:Lcom/parse/ParseRESTCommand;

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
    .line 634
    .local p0, "this":Lcom/parse/ParseQuery$8;, "Lcom/parse/ParseQuery.8;"
    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery$8;->then(Lbolts/Task;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 637
    .local p0, "this":Lcom/parse/ParseQuery$8;, "Lcom/parse/ParseQuery.8;"
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Object;>;"
    iget-boolean v1, p0, Lcom/parse/ParseQuery$8;->val$caching:Z

    if-eqz v1, :cond_0

    .line 638
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 639
    .local v0, "result":Ljava/lang/Object;
    iget-object v1, p0, Lcom/parse/ParseQuery$8;->val$command:Lcom/parse/ParseRESTCommand;

    invoke-virtual {v1}, Lcom/parse/ParseRESTCommand;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parse/ParseKeyValueCache;->saveToKeyValueCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    .end local v0    # "result":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseQuery$8;->this$0:Lcom/parse/ParseQuery;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    # setter for: Lcom/parse/ParseQuery;->queryReceived:J
    invoke-static {v1, v2, v3}, Lcom/parse/ParseQuery;->access$402(Lcom/parse/ParseQuery;J)J

    .line 643
    iget-object v2, p0, Lcom/parse/ParseQuery$8;->this$0:Lcom/parse/ParseQuery;

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    # invokes: Lcom/parse/ParseQuery;->convertFindResponse(Lorg/json/JSONObject;)Ljava/util/List;
    invoke-static {v2, v1}, Lcom/parse/ParseQuery;->access$500(Lcom/parse/ParseQuery;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
