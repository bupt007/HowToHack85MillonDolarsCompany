.class Lcom/parse/OfflineStore$8;
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
        "Landroid/database/Cursor;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$query:Lcom/parse/ParseQuery;

.field final synthetic val$queryLogic:Lcom/parse/OfflineQueryLogic;

.field final synthetic val$results:Ljava/util/List;

.field final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseQuery;Lcom/parse/ParseUser;Lcom/parse/ParseSQLiteDatabase;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lcom/parse/OfflineStore$8;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$8;->val$queryLogic:Lcom/parse/OfflineQueryLogic;

    iput-object p3, p0, Lcom/parse/OfflineStore$8;->val$query:Lcom/parse/ParseQuery;

    iput-object p4, p0, Lcom/parse/OfflineStore$8;->val$user:Lcom/parse/ParseUser;

    iput-object p5, p0, Lcom/parse/OfflineStore$8;->val$db:Lcom/parse/ParseSQLiteDatabase;

    iput-object p6, p0, Lcom/parse/OfflineStore$8;->val$results:Ljava/util/List;

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
            "Landroid/database/Cursor;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 464
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 465
    .local v1, "cursor":Landroid/database/Cursor;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 466
    .local v6, "uuids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_0

    .line 467
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 469
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 472
    iget-object v7, p0, Lcom/parse/OfflineStore$8;->val$queryLogic:Lcom/parse/OfflineQueryLogic;

    iget-object v8, p0, Lcom/parse/OfflineStore$8;->val$query:Lcom/parse/ParseQuery;

    iget-object v9, p0, Lcom/parse/OfflineStore$8;->val$user:Lcom/parse/ParseUser;

    invoke-virtual {v7, v8, v9}, Lcom/parse/OfflineQueryLogic;->createMatcher(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v3

    .line 474
    .local v3, "matcher":Lcom/parse/OfflineQueryLogic$ConstraintMatcher;, "Lcom/parse/OfflineQueryLogic$ConstraintMatcher<TT;>;"
    const/4 v7, 0x0

    invoke-static {v7}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 475
    .local v0, "checkedAllObjects":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 476
    .local v5, "uuid":Ljava/lang/String;
    new-instance v4, Lbolts/Capture;

    invoke-direct {v4}, Lbolts/Capture;-><init>()V

    .line 478
    .local v4, "object":Lbolts/Capture;, "Lbolts/Capture<TT;>;"
    new-instance v7, Lcom/parse/OfflineStore$8$4;

    invoke-direct {v7, p0, v5}, Lcom/parse/OfflineStore$8$4;-><init>(Lcom/parse/OfflineStore$8;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v7

    new-instance v8, Lcom/parse/OfflineStore$8$3;

    invoke-direct {v8, p0, v4}, Lcom/parse/OfflineStore$8$3;-><init>(Lcom/parse/OfflineStore$8;Lbolts/Capture;)V

    invoke-virtual {v7, v8}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v7

    new-instance v8, Lcom/parse/OfflineStore$8$2;

    invoke-direct {v8, p0, v4, v3}, Lcom/parse/OfflineStore$8$2;-><init>(Lcom/parse/OfflineStore$8;Lbolts/Capture;Lcom/parse/OfflineQueryLogic$ConstraintMatcher;)V

    invoke-virtual {v7, v8}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v7

    new-instance v8, Lcom/parse/OfflineStore$8$1;

    invoke-direct {v8, p0, v4}, Lcom/parse/OfflineStore$8$1;-><init>(Lcom/parse/OfflineStore$8;Lbolts/Capture;)V

    invoke-virtual {v7, v8}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    .line 506
    goto :goto_1

    .line 508
    .end local v4    # "object":Lbolts/Capture;, "Lbolts/Capture<TT;>;"
    .end local v5    # "uuid":Ljava/lang/String;
    :cond_1
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
    .line 461
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$8;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
