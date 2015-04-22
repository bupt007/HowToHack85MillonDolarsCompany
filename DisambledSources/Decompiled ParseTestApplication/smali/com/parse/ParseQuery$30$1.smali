.class Lcom/parse/ParseQuery$30$1;
.super Ljava/lang/Object;
.source "ParseQuery.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery$30;->call(Lcom/parse/ParseQuery$CachePolicy;)Lbolts/Task;
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
.field final synthetic this$1:Lcom/parse/ParseQuery$30;

.field final synthetic val$cachePolicy:Lcom/parse/ParseQuery$CachePolicy;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery$30;Lcom/parse/ParseQuery$CachePolicy;)V
    .locals 0

    .prologue
    .line 1410
    .local p0, "this":Lcom/parse/ParseQuery$30$1;, "Lcom/parse/ParseQuery$30.1;"
    iput-object p1, p0, Lcom/parse/ParseQuery$30$1;->this$1:Lcom/parse/ParseQuery$30;

    iput-object p2, p0, Lcom/parse/ParseQuery$30$1;->val$cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

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
    .line 1413
    .local p0, "this":Lcom/parse/ParseQuery$30$1;, "Lcom/parse/ParseQuery$30.1;"
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseUser;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    .line 1414
    .local v0, "user":Lcom/parse/ParseUser;
    iget-object v1, p0, Lcom/parse/ParseQuery$30$1;->this$1:Lcom/parse/ParseQuery$30;

    iget-object v1, v1, Lcom/parse/ParseQuery$30;->this$0:Lcom/parse/ParseQuery;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    # setter for: Lcom/parse/ParseQuery;->queryStart:J
    invoke-static {v1, v2, v3}, Lcom/parse/ParseQuery;->access$1302(Lcom/parse/ParseQuery;J)J

    .line 1415
    iget-object v1, p0, Lcom/parse/ParseQuery$30$1;->this$1:Lcom/parse/ParseQuery$30;

    iget-object v1, v1, Lcom/parse/ParseQuery$30;->this$0:Lcom/parse/ParseQuery;

    iget-object v2, p0, Lcom/parse/ParseQuery$30$1;->this$1:Lcom/parse/ParseQuery$30;

    iget-object v2, v2, Lcom/parse/ParseQuery$30;->val$objectId:Ljava/lang/String;

    iget-object v3, p0, Lcom/parse/ParseQuery$30$1;->val$cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    # invokes: Lcom/parse/ParseQuery;->getWithCachePolicyAsync(Ljava/lang/String;Lcom/parse/ParseQuery$CachePolicy;Lcom/parse/ParseUser;)Lbolts/Task;
    invoke-static {v1, v2, v3, v0}, Lcom/parse/ParseQuery;->access$2200(Lcom/parse/ParseQuery;Ljava/lang/String;Lcom/parse/ParseQuery$CachePolicy;Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v1

    return-object v1
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
    .line 1410
    .local p0, "this":Lcom/parse/ParseQuery$30$1;, "Lcom/parse/ParseQuery$30.1;"
    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery$30$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
