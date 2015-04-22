.class Lcom/parse/ParseQuery$28$1;
.super Ljava/lang/Object;
.source "ParseQuery.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery$28;->call()Lbolts/Task;
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
        "Lcom/parse/ParseUser;",
        "Lbolts/Task",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseQuery$28;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery$28;)V
    .locals 0

    .prologue
    .line 1360
    .local p0, "this":Lcom/parse/ParseQuery$28$1;, "Lcom/parse/ParseQuery$28.1;"
    iput-object p1, p0, Lcom/parse/ParseQuery$28$1;->this$1:Lcom/parse/ParseQuery$28;

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
            "Lcom/parse/ParseUser;",
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
    .line 1363
    .local p0, "this":Lcom/parse/ParseQuery$28$1;, "Lcom/parse/ParseQuery$28.1;"
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseUser;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    .line 1364
    .local v0, "user":Lcom/parse/ParseUser;
    iget-object v1, p0, Lcom/parse/ParseQuery$28$1;->this$1:Lcom/parse/ParseQuery$28;

    iget-object v1, v1, Lcom/parse/ParseQuery$28;->this$0:Lcom/parse/ParseQuery;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    # setter for: Lcom/parse/ParseQuery;->queryStart:J
    invoke-static {v1, v2, v3}, Lcom/parse/ParseQuery;->access$1302(Lcom/parse/ParseQuery;J)J

    .line 1365
    iget-object v1, p0, Lcom/parse/ParseQuery$28$1;->this$1:Lcom/parse/ParseQuery$28;

    iget-object v1, v1, Lcom/parse/ParseQuery$28;->this$0:Lcom/parse/ParseQuery;

    # getter for: Lcom/parse/ParseQuery;->isFromLocalDatastore:Z
    invoke-static {v1}, Lcom/parse/ParseQuery;->access$1400(Lcom/parse/ParseQuery;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1366
    iget-object v1, p0, Lcom/parse/ParseQuery$28$1;->this$1:Lcom/parse/ParseQuery$28;

    iget-object v1, v1, Lcom/parse/ParseQuery$28;->this$0:Lcom/parse/ParseQuery;

    iget-object v2, p0, Lcom/parse/ParseQuery$28$1;->this$1:Lcom/parse/ParseQuery$28;

    iget-object v2, v2, Lcom/parse/ParseQuery$28;->val$objectId:Ljava/lang/String;

    # invokes: Lcom/parse/ParseQuery;->getFromLocalDatastoreAsync(Ljava/lang/String;Lcom/parse/ParseUser;)Lbolts/Task;
    invoke-static {v1, v2, v0}, Lcom/parse/ParseQuery;->access$2100(Lcom/parse/ParseQuery;Ljava/lang/String;Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v1

    .line 1368
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/parse/ParseQuery$28$1;->this$1:Lcom/parse/ParseQuery$28;

    iget-object v1, v1, Lcom/parse/ParseQuery$28;->this$0:Lcom/parse/ParseQuery;

    iget-object v2, p0, Lcom/parse/ParseQuery$28$1;->this$1:Lcom/parse/ParseQuery$28;

    iget-object v2, v2, Lcom/parse/ParseQuery$28;->val$objectId:Ljava/lang/String;

    iget-object v3, p0, Lcom/parse/ParseQuery$28$1;->this$1:Lcom/parse/ParseQuery$28;

    iget-object v3, v3, Lcom/parse/ParseQuery$28;->this$0:Lcom/parse/ParseQuery;

    # getter for: Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;
    invoke-static {v3}, Lcom/parse/ParseQuery;->access$1200(Lcom/parse/ParseQuery;)Lcom/parse/ParseQuery$CachePolicy;

    move-result-object v3

    # invokes: Lcom/parse/ParseQuery;->getWithCachePolicyAsync(Ljava/lang/String;Lcom/parse/ParseQuery$CachePolicy;Lcom/parse/ParseUser;)Lbolts/Task;
    invoke-static {v1, v2, v3, v0}, Lcom/parse/ParseQuery;->access$2200(Lcom/parse/ParseQuery;Ljava/lang/String;Lcom/parse/ParseQuery$CachePolicy;Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v1

    goto :goto_0
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
    .line 1360
    .local p0, "this":Lcom/parse/ParseQuery$28$1;, "Lcom/parse/ParseQuery$28.1;"
    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery$28$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
