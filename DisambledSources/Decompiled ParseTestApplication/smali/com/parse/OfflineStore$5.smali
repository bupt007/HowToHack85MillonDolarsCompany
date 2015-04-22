.class Lcom/parse/OfflineStore$5;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore;->findAsync(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;Lcom/parse/ParsePin;Z)Lbolts/Task;
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
        "Lcom/parse/ParseSQLiteDatabase;",
        "Lbolts/Task",
        "<",
        "Ljava/util/List",
        "<TT;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$isCount:Z

.field final synthetic val$pin:Lcom/parse/ParsePin;

.field final synthetic val$query:Lcom/parse/ParseQuery;

.field final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Lcom/parse/ParseQuery;Lcom/parse/ParseUser;Lcom/parse/ParsePin;Z)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/parse/OfflineStore$5;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$5;->val$query:Lcom/parse/ParseQuery;

    iput-object p3, p0, Lcom/parse/OfflineStore$5;->val$user:Lcom/parse/ParseUser;

    iput-object p4, p0, Lcom/parse/OfflineStore$5;->val$pin:Lcom/parse/ParsePin;

    iput-boolean p5, p0, Lcom/parse/OfflineStore$5;->val$isCount:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseSQLiteDatabase;",
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
    .line 390
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseSQLiteDatabase;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parse/ParseSQLiteDatabase;

    .line 391
    .local v5, "db":Lcom/parse/ParseSQLiteDatabase;
    iget-object v0, p0, Lcom/parse/OfflineStore$5;->this$0:Lcom/parse/OfflineStore;

    iget-object v1, p0, Lcom/parse/OfflineStore$5;->val$query:Lcom/parse/ParseQuery;

    iget-object v2, p0, Lcom/parse/OfflineStore$5;->val$user:Lcom/parse/ParseUser;

    iget-object v3, p0, Lcom/parse/OfflineStore$5;->val$pin:Lcom/parse/ParsePin;

    iget-boolean v4, p0, Lcom/parse/OfflineStore$5;->val$isCount:Z

    # invokes: Lcom/parse/OfflineStore;->findAsync(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;Lcom/parse/ParsePin;ZLcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    invoke-static/range {v0 .. v5}, Lcom/parse/OfflineStore;->access$600(Lcom/parse/OfflineStore;Lcom/parse/ParseQuery;Lcom/parse/ParseUser;Lcom/parse/ParsePin;ZLcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$5$1;

    invoke-direct {v1, p0, v5}, Lcom/parse/OfflineStore$5$1;-><init>(Lcom/parse/OfflineStore$5;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
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
    .line 387
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$5;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
