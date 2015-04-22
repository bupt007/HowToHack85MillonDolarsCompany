.class Lcom/parse/ParseQueryAdapter$3;
.super Ljava/lang/Object;
.source "ParseQueryAdapter.java"

# interfaces
.implements Lcom/parse/FindCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQueryAdapter;->loadObjects(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/FindCallback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseQueryAdapter;

.field final synthetic val$firstCallBack:Lbolts/Capture;

.field final synthetic val$page:I

.field final synthetic val$query:Lcom/parse/ParseQuery;

.field final synthetic val$shouldClear:Z


# direct methods
.method constructor <init>(Lcom/parse/ParseQueryAdapter;Lcom/parse/ParseQuery;ZLbolts/Capture;I)V
    .locals 0

    .prologue
    .line 347
    .local p0, "this":Lcom/parse/ParseQueryAdapter$3;, "Lcom/parse/ParseQueryAdapter.3;"
    iput-object p1, p0, Lcom/parse/ParseQueryAdapter$3;->this$0:Lcom/parse/ParseQueryAdapter;

    iput-object p2, p0, Lcom/parse/ParseQueryAdapter$3;->val$query:Lcom/parse/ParseQuery;

    iput-boolean p3, p0, Lcom/parse/ParseQueryAdapter$3;->val$shouldClear:Z

    iput-object p4, p0, Lcom/parse/ParseQueryAdapter$3;->val$firstCallBack:Lbolts/Capture;

    iput p5, p0, Lcom/parse/ParseQueryAdapter$3;->val$page:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 347
    .local p0, "this":Lcom/parse/ParseQueryAdapter$3;, "Lcom/parse/ParseQueryAdapter.3;"
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/parse/ParseException;

    .end local p2    # "x1":Ljava/lang/Throwable;
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParseQueryAdapter$3;->done(Ljava/util/List;Lcom/parse/ParseException;)V

    return-void
.end method

.method public done(Ljava/util/List;Lcom/parse/ParseException;)V
    .locals 6
    .param p2, "e"    # Lcom/parse/ParseException;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ShowToast"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/ParseException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/parse/ParseQueryAdapter$3;, "Lcom/parse/ParseQueryAdapter.3;"
    .local p1, "foundObjects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/16 v5, 0x78

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 351
    invoke-static {}, Lcom/parse/OfflineStore;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/parse/ParseQueryAdapter$3;->val$query:Lcom/parse/ParseQuery;

    invoke-virtual {v1}, Lcom/parse/ParseQuery;->getCachePolicy()Lcom/parse/ParseQuery$CachePolicy;

    move-result-object v1

    sget-object v4, Lcom/parse/ParseQuery$CachePolicy;->CACHE_ONLY:Lcom/parse/ParseQuery$CachePolicy;

    if-ne v1, v4, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/parse/ParseException;->getCode()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 393
    :goto_0
    return-void

    .line 357
    :cond_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/parse/ParseException;->getCode()I

    move-result v1

    const/16 v4, 0x64

    if-eq v1, v4, :cond_1

    invoke-virtual {p2}, Lcom/parse/ParseException;->getCode()I

    move-result v1

    if-eq v1, v5, :cond_3

    .line 359
    :cond_1
    iget-object v1, p0, Lcom/parse/ParseQueryAdapter$3;->this$0:Lcom/parse/ParseQueryAdapter;

    # setter for: Lcom/parse/ParseQueryAdapter;->hasNextPage:Z
    invoke-static {v1, v2}, Lcom/parse/ParseQueryAdapter;->access$002(Lcom/parse/ParseQueryAdapter;Z)Z

    .line 392
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/parse/ParseQueryAdapter$3;->this$0:Lcom/parse/ParseQueryAdapter;

    # invokes: Lcom/parse/ParseQueryAdapter;->notifyOnLoadedListeners(Ljava/util/List;Ljava/lang/Exception;)V
    invoke-static {v1, p1, p2}, Lcom/parse/ParseQueryAdapter;->access$600(Lcom/parse/ParseQueryAdapter;Ljava/util/List;Ljava/lang/Exception;)V

    goto :goto_0

    .line 360
    :cond_3
    if-eqz p1, :cond_2

    .line 361
    iget-boolean v1, p0, Lcom/parse/ParseQueryAdapter$3;->val$shouldClear:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/parse/ParseQueryAdapter$3;->val$firstCallBack:Lbolts/Capture;

    invoke-virtual {v1}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 362
    iget-object v1, p0, Lcom/parse/ParseQueryAdapter$3;->this$0:Lcom/parse/ParseQueryAdapter;

    # getter for: Lcom/parse/ParseQueryAdapter;->objectPages:Ljava/util/List;
    invoke-static {v1}, Lcom/parse/ParseQueryAdapter;->access$100(Lcom/parse/ParseQueryAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 363
    iget-object v1, p0, Lcom/parse/ParseQueryAdapter$3;->this$0:Lcom/parse/ParseQueryAdapter;

    # getter for: Lcom/parse/ParseQueryAdapter;->objectPages:Ljava/util/List;
    invoke-static {v1}, Lcom/parse/ParseQueryAdapter;->access$100(Lcom/parse/ParseQueryAdapter;)Ljava/util/List;

    move-result-object v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    iget-object v1, p0, Lcom/parse/ParseQueryAdapter$3;->this$0:Lcom/parse/ParseQueryAdapter;

    iget v4, p0, Lcom/parse/ParseQueryAdapter$3;->val$page:I

    # setter for: Lcom/parse/ParseQueryAdapter;->currentPage:I
    invoke-static {v1, v4}, Lcom/parse/ParseQueryAdapter;->access$202(Lcom/parse/ParseQueryAdapter;I)I

    .line 365
    iget-object v1, p0, Lcom/parse/ParseQueryAdapter$3;->val$firstCallBack:Lbolts/Capture;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Lbolts/Capture;->set(Ljava/lang/Object;)V

    .line 370
    :cond_4
    iget v1, p0, Lcom/parse/ParseQueryAdapter$3;->val$page:I

    iget-object v4, p0, Lcom/parse/ParseQueryAdapter$3;->this$0:Lcom/parse/ParseQueryAdapter;

    # getter for: Lcom/parse/ParseQueryAdapter;->currentPage:I
    invoke-static {v4}, Lcom/parse/ParseQueryAdapter;->access$200(Lcom/parse/ParseQueryAdapter;)I

    move-result v4

    if-lt v1, v4, :cond_5

    .line 371
    iget-object v1, p0, Lcom/parse/ParseQueryAdapter$3;->this$0:Lcom/parse/ParseQueryAdapter;

    iget v4, p0, Lcom/parse/ParseQueryAdapter$3;->val$page:I

    # setter for: Lcom/parse/ParseQueryAdapter;->currentPage:I
    invoke-static {v1, v4}, Lcom/parse/ParseQueryAdapter;->access$202(Lcom/parse/ParseQueryAdapter;I)I

    .line 374
    iget-object v4, p0, Lcom/parse/ParseQueryAdapter$3;->this$0:Lcom/parse/ParseQueryAdapter;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v5, p0, Lcom/parse/ParseQueryAdapter$3;->this$0:Lcom/parse/ParseQueryAdapter;

    # getter for: Lcom/parse/ParseQueryAdapter;->objectsPerPage:I
    invoke-static {v5}, Lcom/parse/ParseQueryAdapter;->access$300(Lcom/parse/ParseQueryAdapter;)I

    move-result v5

    if-le v1, v5, :cond_7

    move v1, v2

    :goto_2
    # setter for: Lcom/parse/ParseQueryAdapter;->hasNextPage:Z
    invoke-static {v4, v1}, Lcom/parse/ParseQueryAdapter;->access$002(Lcom/parse/ParseQueryAdapter;Z)Z

    .line 377
    :cond_5
    iget-object v1, p0, Lcom/parse/ParseQueryAdapter$3;->this$0:Lcom/parse/ParseQueryAdapter;

    # getter for: Lcom/parse/ParseQueryAdapter;->paginationEnabled:Z
    invoke-static {v1}, Lcom/parse/ParseQueryAdapter;->access$400(Lcom/parse/ParseQueryAdapter;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/parse/ParseQueryAdapter$3;->this$0:Lcom/parse/ParseQueryAdapter;

    # getter for: Lcom/parse/ParseQueryAdapter;->objectsPerPage:I
    invoke-static {v2}, Lcom/parse/ParseQueryAdapter;->access$300(Lcom/parse/ParseQueryAdapter;)I

    move-result v2

    if-le v1, v2, :cond_6

    .line 379
    iget-object v1, p0, Lcom/parse/ParseQueryAdapter$3;->this$0:Lcom/parse/ParseQueryAdapter;

    # getter for: Lcom/parse/ParseQueryAdapter;->objectsPerPage:I
    invoke-static {v1}, Lcom/parse/ParseQueryAdapter;->access$300(Lcom/parse/ParseQueryAdapter;)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 382
    :cond_6
    iget-object v1, p0, Lcom/parse/ParseQueryAdapter$3;->this$0:Lcom/parse/ParseQueryAdapter;

    # getter for: Lcom/parse/ParseQueryAdapter;->objectPages:Ljava/util/List;
    invoke-static {v1}, Lcom/parse/ParseQueryAdapter;->access$100(Lcom/parse/ParseQueryAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/parse/ParseQueryAdapter$3;->val$page:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 383
    .local v0, "currentPage":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 384
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 386
    iget-object v1, p0, Lcom/parse/ParseQueryAdapter$3;->this$0:Lcom/parse/ParseQueryAdapter;

    # invokes: Lcom/parse/ParseQueryAdapter;->syncObjectsWithPages()V
    invoke-static {v1}, Lcom/parse/ParseQueryAdapter;->access$500(Lcom/parse/ParseQueryAdapter;)V

    .line 389
    iget-object v1, p0, Lcom/parse/ParseQueryAdapter$3;->this$0:Lcom/parse/ParseQueryAdapter;

    invoke-virtual {v1}, Lcom/parse/ParseQueryAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    .end local v0    # "currentPage":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_7
    move v1, v3

    .line 374
    goto :goto_2
.end method
