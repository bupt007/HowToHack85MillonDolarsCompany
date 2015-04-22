.class Lcom/parse/OfflineStore$7;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore;->findAsync(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;Lcom/parse/ParsePin;ZLcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
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
        "Ljava/lang/Void;",
        "Lbolts/Task",
        "<",
        "Ljava/util/List",
        "<TT;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$isCount:Z

.field final synthetic val$query:Lcom/parse/ParseQuery;

.field final synthetic val$queryLogic:Lcom/parse/OfflineQueryLogic;

.field final synthetic val$results:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Lcom/parse/OfflineQueryLogic;Ljava/util/List;Lcom/parse/ParseQuery;ZLcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lcom/parse/OfflineStore$7;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$7;->val$queryLogic:Lcom/parse/OfflineQueryLogic;

    iput-object p3, p0, Lcom/parse/OfflineStore$7;->val$results:Ljava/util/List;

    iput-object p4, p0, Lcom/parse/OfflineStore$7;->val$query:Lcom/parse/ParseQuery;

    iput-boolean p5, p0, Lcom/parse/OfflineStore$7;->val$isCount:Z

    iput-object p6, p0, Lcom/parse/OfflineStore$7;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
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
    .line 514
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v7, p0, Lcom/parse/OfflineStore$7;->val$queryLogic:Lcom/parse/OfflineQueryLogic;

    iget-object v8, p0, Lcom/parse/OfflineStore$7;->val$results:Ljava/util/List;

    iget-object v9, p0, Lcom/parse/OfflineStore$7;->val$query:Lcom/parse/ParseQuery;

    invoke-virtual {v7, v8, v9}, Lcom/parse/OfflineQueryLogic;->sort(Ljava/util/List;Lcom/parse/ParseQuery;)V

    .line 517
    iget-object v6, p0, Lcom/parse/OfflineStore$7;->val$results:Ljava/util/List;

    .line 518
    .local v6, "trimmedResults":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v7, p0, Lcom/parse/OfflineStore$7;->val$query:Lcom/parse/ParseQuery;

    invoke-virtual {v7}, Lcom/parse/ParseQuery;->getSkip()I

    move-result v5

    .line 519
    .local v5, "skip":I
    iget-boolean v7, p0, Lcom/parse/OfflineStore$7;->val$isCount:Z

    if-nez v7, :cond_0

    if-ltz v5, :cond_0

    .line 520
    iget-object v7, p0, Lcom/parse/OfflineStore$7;->val$query:Lcom/parse/ParseQuery;

    invoke-virtual {v7}, Lcom/parse/ParseQuery;->getSkip()I

    move-result v7

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 521
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v6, v5, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    .line 525
    :cond_0
    iget-object v7, p0, Lcom/parse/OfflineStore$7;->val$query:Lcom/parse/ParseQuery;

    invoke-virtual {v7}, Lcom/parse/ParseQuery;->getLimit()I

    move-result v3

    .line 526
    .local v3, "limit":I
    iget-boolean v7, p0, Lcom/parse/OfflineStore$7;->val$isCount:Z

    if-nez v7, :cond_1

    if-ltz v3, :cond_1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v3, :cond_1

    .line 527
    const/4 v7, 0x0

    invoke-interface {v6, v7, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    .line 531
    :cond_1
    const/4 v7, 0x0

    invoke-static {v7}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 532
    .local v0, "fetchedIncludes":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parse/ParseObject;

    .line 533
    .local v4, "object":Lcom/parse/ParseObject;, "TT;"
    new-instance v7, Lcom/parse/OfflineStore$7$1;

    invoke-direct {v7, p0, v4}, Lcom/parse/OfflineStore$7$1;-><init>(Lcom/parse/OfflineStore$7;Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v7}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    .line 539
    goto :goto_0

    .line 541
    .end local v4    # "object":Lcom/parse/ParseObject;, "TT;"
    :cond_2
    move-object v1, v6

    .line 542
    .local v1, "finalTrimmedResults":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v7, Lcom/parse/OfflineStore$7$2;

    invoke-direct {v7, p0, v1}, Lcom/parse/OfflineStore$7$2;-><init>(Lcom/parse/OfflineStore$7;Ljava/util/List;)V

    invoke-virtual {v0, v7}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v7

    return-object v7
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
    .line 510
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$7;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
