.class Lcom/parse/OfflineQueryLogic$6;
.super Lcom/parse/OfflineQueryLogic$SubQueryMatcher;
.source "OfflineQueryLogic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineQueryLogic;->createInQueryMatcher(Lcom/parse/ParseUser;Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
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


# direct methods
.method constructor <init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;Lcom/parse/ParseQuery;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Lcom/parse/ParseUser;

    .prologue
    .line 562
    .local p3, "x1":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    iput-object p1, p0, Lcom/parse/OfflineQueryLogic$6;->this$0:Lcom/parse/OfflineQueryLogic;

    iput-object p4, p0, Lcom/parse/OfflineQueryLogic$6;->val$key:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/parse/OfflineQueryLogic$SubQueryMatcher;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;Lcom/parse/ParseQuery;)V

    return-void
.end method


# virtual methods
.method protected matches(Lcom/parse/ParseObject;Ljava/util/List;)Z
    .locals 3
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
    .line 565
    .local p1, "object":Lcom/parse/ParseObject;, "TT;"
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v1, p0, Lcom/parse/OfflineQueryLogic$6;->this$0:Lcom/parse/OfflineQueryLogic;

    iget-object v2, p0, Lcom/parse/OfflineQueryLogic$6;->val$key:Ljava/lang/String;

    # invokes: Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v1, p1, v2}, Lcom/parse/OfflineQueryLogic;->access$200(Lcom/parse/OfflineQueryLogic;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 566
    .local v0, "value":Ljava/lang/Object;
    # invokes: Lcom/parse/OfflineQueryLogic;->matchesInConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {p2, v0}, Lcom/parse/OfflineQueryLogic;->access$300(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
