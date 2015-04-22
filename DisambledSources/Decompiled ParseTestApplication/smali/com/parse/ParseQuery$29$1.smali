.class Lcom/parse/ParseQuery$29$1;
.super Ljava/lang/Object;
.source "ParseQuery.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery$29;->call()Lbolts/Task;
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
.field final synthetic this$1:Lcom/parse/ParseQuery$29;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery$29;)V
    .locals 0

    .prologue
    .line 1396
    .local p0, "this":Lcom/parse/ParseQuery$29$1;, "Lcom/parse/ParseQuery$29.1;"
    iput-object p1, p0, Lcom/parse/ParseQuery$29$1;->this$1:Lcom/parse/ParseQuery$29;

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
    .line 1399
    .local p0, "this":Lcom/parse/ParseQuery$29$1;, "Lcom/parse/ParseQuery$29.1;"
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseUser;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    .line 1400
    .local v0, "user":Lcom/parse/ParseUser;
    iget-object v1, p0, Lcom/parse/ParseQuery$29$1;->this$1:Lcom/parse/ParseQuery$29;

    iget-object v1, v1, Lcom/parse/ParseQuery$29;->this$0:Lcom/parse/ParseQuery;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    # setter for: Lcom/parse/ParseQuery;->queryStart:J
    invoke-static {v1, v2, v3}, Lcom/parse/ParseQuery;->access$1302(Lcom/parse/ParseQuery;J)J

    .line 1401
    iget-object v1, p0, Lcom/parse/ParseQuery$29$1;->this$1:Lcom/parse/ParseQuery$29;

    iget-object v1, v1, Lcom/parse/ParseQuery$29;->this$0:Lcom/parse/ParseQuery;

    iget-object v2, p0, Lcom/parse/ParseQuery$29$1;->this$1:Lcom/parse/ParseQuery$29;

    iget-object v2, v2, Lcom/parse/ParseQuery$29;->val$objectId:Ljava/lang/String;

    # invokes: Lcom/parse/ParseQuery;->getFromLocalDatastoreAsync(Ljava/lang/String;Lcom/parse/ParseUser;)Lbolts/Task;
    invoke-static {v1, v2, v0}, Lcom/parse/ParseQuery;->access$2100(Lcom/parse/ParseQuery;Ljava/lang/String;Lcom/parse/ParseUser;)Lbolts/Task;

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
    .line 1396
    .local p0, "this":Lcom/parse/ParseQuery$29$1;, "Lcom/parse/ParseQuery$29.1;"
    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery$29$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
