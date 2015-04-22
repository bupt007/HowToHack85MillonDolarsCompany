.class Lcom/parse/OfflineQueryLogic$8;
.super Lcom/parse/OfflineQueryLogic$SubQueryMatcher;
.source "OfflineQueryLogic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineQueryLogic;->createSelectMatcher(Lcom/parse/ParseUser;Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/OfflineQueryLogic$SubQueryMatcher",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineQueryLogic;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$resultKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;Lcom/parse/ParseQuery;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Lcom/parse/ParseUser;

    .prologue
    .line 598
    .local p3, "x1":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    iput-object p1, p0, Lcom/parse/OfflineQueryLogic$8;->this$0:Lcom/parse/OfflineQueryLogic;

    iput-object p4, p0, Lcom/parse/OfflineQueryLogic$8;->val$key:Ljava/lang/String;

    iput-object p5, p0, Lcom/parse/OfflineQueryLogic$8;->val$resultKey:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/parse/OfflineQueryLogic$SubQueryMatcher;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;Lcom/parse/ParseQuery;)V

    return-void
.end method


# virtual methods
.method protected matches(Lcom/parse/ParseObject;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/List",
            "<TT;>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 601
    .local p1, "object":Lcom/parse/ParseObject;, "TT;"
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v4, p0, Lcom/parse/OfflineQueryLogic$8;->this$0:Lcom/parse/OfflineQueryLogic;

    iget-object v5, p0, Lcom/parse/OfflineQueryLogic$8;->val$key:Ljava/lang/String;

    # invokes: Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v4, p1, v5}, Lcom/parse/OfflineQueryLogic;->access$200(Lcom/parse/OfflineQueryLogic;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 602
    .local v3, "value":Ljava/lang/Object;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseObject;

    .line 603
    .local v1, "result":Lcom/parse/ParseObject;, "TT;"
    iget-object v4, p0, Lcom/parse/OfflineQueryLogic$8;->this$0:Lcom/parse/OfflineQueryLogic;

    iget-object v5, p0, Lcom/parse/OfflineQueryLogic$8;->val$resultKey:Ljava/lang/String;

    # invokes: Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v4, v1, v5}, Lcom/parse/OfflineQueryLogic;->access$200(Lcom/parse/OfflineQueryLogic;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 604
    .local v2, "resultValue":Ljava/lang/Object;
    # invokes: Lcom/parse/OfflineQueryLogic;->matchesEqualConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {v3, v2}, Lcom/parse/OfflineQueryLogic;->access$400(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 605
    const/4 v4, 0x1

    .line 608
    .end local v1    # "result":Lcom/parse/ParseObject;, "TT;"
    .end local v2    # "resultValue":Ljava/lang/Object;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method
