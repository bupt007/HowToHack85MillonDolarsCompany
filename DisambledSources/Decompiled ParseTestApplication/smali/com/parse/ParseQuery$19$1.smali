.class Lcom/parse/ParseQuery$19$1;
.super Ljava/lang/Object;
.source "ParseQuery.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery$19;->call()Lbolts/Task;
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
.field final synthetic this$1:Lcom/parse/ParseQuery$19;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery$19;)V
    .locals 0

    .prologue
    .line 1115
    .local p0, "this":Lcom/parse/ParseQuery$19$1;, "Lcom/parse/ParseQuery$19.1;"
    iput-object p1, p0, Lcom/parse/ParseQuery$19$1;->this$1:Lcom/parse/ParseQuery$19;

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
    .line 1118
    .local p0, "this":Lcom/parse/ParseQuery$19$1;, "Lcom/parse/ParseQuery$19.1;"
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseUser;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    .line 1119
    .local v0, "user":Lcom/parse/ParseUser;
    iget-object v1, p0, Lcom/parse/ParseQuery$19$1;->this$1:Lcom/parse/ParseQuery$19;

    iget-object v1, v1, Lcom/parse/ParseQuery$19;->this$0:Lcom/parse/ParseQuery;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    # setter for: Lcom/parse/ParseQuery;->queryStart:J
    invoke-static {v1, v2, v3}, Lcom/parse/ParseQuery;->access$1302(Lcom/parse/ParseQuery;J)J

    .line 1120
    iget-object v1, p0, Lcom/parse/ParseQuery$19$1;->this$1:Lcom/parse/ParseQuery$19;

    iget-object v1, v1, Lcom/parse/ParseQuery$19;->this$0:Lcom/parse/ParseQuery;

    # invokes: Lcom/parse/ParseQuery;->getFirstFromLocalDatastoreAsync(Lcom/parse/ParseUser;)Lbolts/Task;
    invoke-static {v1, v0}, Lcom/parse/ParseQuery;->access$1700(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;)Lbolts/Task;

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
    .line 1115
    .local p0, "this":Lcom/parse/ParseQuery$19$1;, "Lcom/parse/ParseQuery$19.1;"
    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery$19$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
