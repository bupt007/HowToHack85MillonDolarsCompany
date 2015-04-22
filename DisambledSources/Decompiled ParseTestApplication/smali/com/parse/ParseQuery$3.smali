.class Lcom/parse/ParseQuery$3;
.super Ljava/lang/Object;
.source "ParseQuery.java"

# interfaces
.implements Lcom/parse/ParseQuery$CommandDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery;->countWithCachePolicyAsync(Lcom/parse/ParseQuery$CachePolicy;Lcom/parse/ParseUser;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/ParseQuery$CommandDelegate",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseQuery;

.field final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;)V
    .locals 0

    .prologue
    .line 489
    .local p0, "this":Lcom/parse/ParseQuery$3;, "Lcom/parse/ParseQuery.3;"
    iput-object p1, p0, Lcom/parse/ParseQuery$3;->this$0:Lcom/parse/ParseQuery;

    iput-object p2, p0, Lcom/parse/ParseQuery$3;->val$user:Lcom/parse/ParseUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runFromCacheAsync()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 497
    .local p0, "this":Lcom/parse/ParseQuery$3;, "Lcom/parse/ParseQuery.3;"
    iget-object v0, p0, Lcom/parse/ParseQuery$3;->this$0:Lcom/parse/ParseQuery;

    iget-object v1, p0, Lcom/parse/ParseQuery$3;->val$user:Lcom/parse/ParseUser;

    # invokes: Lcom/parse/ParseQuery;->countFromCacheAsync(Lcom/parse/ParseUser;)Lbolts/Task;
    invoke-static {v0, v1}, Lcom/parse/ParseQuery;->access$100(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public runOnNetworkAsync(Z)Lbolts/Task;
    .locals 2
    .param p1, "retry"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 492
    .local p0, "this":Lcom/parse/ParseQuery$3;, "Lcom/parse/ParseQuery.3;"
    iget-object v0, p0, Lcom/parse/ParseQuery$3;->this$0:Lcom/parse/ParseQuery;

    iget-object v1, p0, Lcom/parse/ParseQuery$3;->val$user:Lcom/parse/ParseUser;

    # invokes: Lcom/parse/ParseQuery;->countFromNetworkAsync(Lcom/parse/ParseUser;Z)Lbolts/Task;
    invoke-static {v0, v1, p1}, Lcom/parse/ParseQuery;->access$000(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;Z)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
