.class Lcom/parse/ParseQuery$10;
.super Ljava/lang/Object;
.source "ParseQuery.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery;->countFromCacheAsync(Lcom/parse/ParseUser;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
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
    .line 850
    .local p0, "this":Lcom/parse/ParseQuery$10;, "Lcom/parse/ParseQuery.10;"
    iput-object p1, p0, Lcom/parse/ParseQuery$10;->this$0:Lcom/parse/ParseQuery;

    iput-object p2, p0, Lcom/parse/ParseQuery$10;->val$user:Lcom/parse/ParseUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/parse/ParseQuery$10;, "Lcom/parse/ParseQuery.10;"
    const/16 v6, 0x78

    .line 853
    iget-object v4, p0, Lcom/parse/ParseQuery$10;->this$0:Lcom/parse/ParseQuery;

    iget-object v5, p0, Lcom/parse/ParseQuery$10;->val$user:Lcom/parse/ParseUser;

    # invokes: Lcom/parse/ParseQuery;->currentCountCommand(Lcom/parse/ParseUser;)Lcom/parse/ParseRESTCommand;
    invoke-static {v4, v5}, Lcom/parse/ParseQuery;->access$800(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;)Lcom/parse/ParseRESTCommand;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parse/ParseRESTCommand;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 854
    .local v0, "cacheKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/parse/ParseQuery$10;->this$0:Lcom/parse/ParseQuery;

    # getter for: Lcom/parse/ParseQuery;->maxCacheAge:J
    invoke-static {v4}, Lcom/parse/ParseQuery;->access$700(Lcom/parse/ParseQuery;)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/parse/ParseKeyValueCache;->jsonFromKeyValueCache(Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v1

    .line 855
    .local v1, "cached":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 856
    new-instance v4, Lcom/parse/ParseException;

    const-string v5, "results not cached"

    invoke-direct {v4, v6, v5}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 858
    :cond_0
    instance-of v4, v1, Lorg/json/JSONObject;

    if-nez v4, :cond_1

    .line 859
    new-instance v4, Lcom/parse/ParseException;

    const-string v5, "the cache contains the wrong datatype"

    invoke-direct {v4, v6, v5}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v4

    :cond_1
    move-object v3, v1

    .line 862
    check-cast v3, Lorg/json/JSONObject;

    .line 864
    .local v3, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "count"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 865
    :catch_0
    move-exception v2

    .line 866
    .local v2, "e":Lorg/json/JSONException;
    new-instance v4, Lcom/parse/ParseException;

    const-string v5, "the cache contains corrupted json"

    invoke-direct {v4, v6, v5}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v4
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 850
    .local p0, "this":Lcom/parse/ParseQuery$10;, "Lcom/parse/ParseQuery.10;"
    invoke-virtual {p0}, Lcom/parse/ParseQuery$10;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
