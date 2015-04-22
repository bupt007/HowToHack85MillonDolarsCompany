.class Lcom/parse/ParseQuery$11;
.super Ljava/lang/Object;
.source "ParseQuery.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery;->findFromLocalDatastoreAsync(Lcom/parse/ParseUser;)Lbolts/Task;
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
        "Lcom/parse/ParsePin;",
        "Lbolts/Task",
        "<",
        "Ljava/util/List",
        "<TT;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseQuery;

.field final synthetic val$store:Lcom/parse/OfflineStore;

.field final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery;Lcom/parse/OfflineStore;Lcom/parse/ParseUser;)V
    .locals 0

    .prologue
    .line 888
    .local p0, "this":Lcom/parse/ParseQuery$11;, "Lcom/parse/ParseQuery.11;"
    iput-object p1, p0, Lcom/parse/ParseQuery$11;->this$0:Lcom/parse/ParseQuery;

    iput-object p2, p0, Lcom/parse/ParseQuery$11;->val$store:Lcom/parse/OfflineStore;

    iput-object p3, p0, Lcom/parse/ParseQuery$11;->val$user:Lcom/parse/ParseUser;

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
            "Lcom/parse/ParsePin;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 891
    .local p0, "this":Lcom/parse/ParseQuery$11;, "Lcom/parse/ParseQuery.11;"
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParsePin;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParsePin;

    .line 892
    .local v0, "pin":Lcom/parse/ParsePin;
    iget-object v1, p0, Lcom/parse/ParseQuery$11;->val$store:Lcom/parse/OfflineStore;

    iget-object v2, p0, Lcom/parse/ParseQuery$11;->this$0:Lcom/parse/ParseQuery;

    iget-object v3, p0, Lcom/parse/ParseQuery$11;->val$user:Lcom/parse/ParseUser;

    invoke-virtual {v1, v2, v3, v0}, Lcom/parse/OfflineStore;->findAsync(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;Lcom/parse/ParsePin;)Lbolts/Task;

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
    .line 888
    .local p0, "this":Lcom/parse/ParseQuery$11;, "Lcom/parse/ParseQuery.11;"
    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery$11;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
