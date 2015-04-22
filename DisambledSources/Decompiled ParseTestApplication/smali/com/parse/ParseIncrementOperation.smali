.class Lcom/parse/ParseIncrementOperation;
.super Ljava/lang/Object;
.source "ParseIncrementOperation.java"

# interfaces
.implements Lcom/parse/ParseFieldOperation;


# instance fields
.field private amount:Ljava/lang/Number;


# direct methods
.method public constructor <init>(Ljava/lang/Number;)V
    .locals 0
    .param p1, "amount"    # Ljava/lang/Number;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/parse/ParseIncrementOperation;->amount:Ljava/lang/Number;

    .line 14
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Lcom/parse/ParseObject;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "oldValue"    # Ljava/lang/Object;
    .param p2, "object"    # Lcom/parse/ParseObject;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 47
    if-nez p1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/parse/ParseIncrementOperation;->amount:Ljava/lang/Number;

    .line 50
    .end local p1    # "oldValue":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 49
    .restart local p1    # "oldValue":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 50
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "oldValue":Ljava/lang/Object;
    iget-object v0, p0, Lcom/parse/ParseIncrementOperation;->amount:Ljava/lang/Number;

    invoke-static {p1, v0}, Lcom/parse/Parse;->addNumbers(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    goto :goto_0

    .line 52
    .restart local p1    # "oldValue":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot increment a non-number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic encode(Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/parse/ParseObjectEncodingStrategy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/parse/ParseIncrementOperation;->encode(Lcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public encode(Lcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "objectEncoder"    # Lcom/parse/ParseObjectEncodingStrategy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 18
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 19
    .local v0, "output":Lorg/json/JSONObject;
    const-string v1, "__op"

    const-string v2, "Increment"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    const-string v1, "amount"

    iget-object v2, p0, Lcom/parse/ParseIncrementOperation;->amount:Ljava/lang/Number;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    return-object v0
.end method

.method public mergeWithPrevious(Lcom/parse/ParseFieldOperation;)Lcom/parse/ParseFieldOperation;
    .locals 4
    .param p1, "previous"    # Lcom/parse/ParseFieldOperation;

    .prologue
    .line 26
    if-nez p1, :cond_0

    .line 39
    .end local p0    # "this":Lcom/parse/ParseIncrementOperation;
    .end local p1    # "previous":Lcom/parse/ParseFieldOperation;
    .local v0, "oldAmount":Ljava/lang/Number;
    :goto_0
    return-object p0

    .line 28
    .end local v0    # "oldAmount":Ljava/lang/Number;
    .restart local p0    # "this":Lcom/parse/ParseIncrementOperation;
    .restart local p1    # "previous":Lcom/parse/ParseFieldOperation;
    :cond_0
    instance-of v2, p1, Lcom/parse/ParseDeleteOperation;

    if-eqz v2, :cond_1

    .line 29
    new-instance v2, Lcom/parse/ParseSetOperation;

    iget-object v3, p0, Lcom/parse/ParseIncrementOperation;->amount:Ljava/lang/Number;

    invoke-direct {v2, v3}, Lcom/parse/ParseSetOperation;-><init>(Ljava/lang/Object;)V

    move-object p0, v2

    goto :goto_0

    .line 30
    :cond_1
    instance-of v2, p1, Lcom/parse/ParseSetOperation;

    if-eqz v2, :cond_3

    .line 31
    check-cast p1, Lcom/parse/ParseSetOperation;

    .end local p1    # "previous":Lcom/parse/ParseFieldOperation;
    invoke-virtual {p1}, Lcom/parse/ParseSetOperation;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 32
    .local v1, "oldValue":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 33
    new-instance v2, Lcom/parse/ParseSetOperation;

    check-cast v1, Ljava/lang/Number;

    .end local v1    # "oldValue":Ljava/lang/Object;
    iget-object v3, p0, Lcom/parse/ParseIncrementOperation;->amount:Ljava/lang/Number;

    invoke-static {v1, v3}, Lcom/parse/Parse;->addNumbers(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/parse/ParseSetOperation;-><init>(Ljava/lang/Object;)V

    move-object p0, v2

    goto :goto_0

    .line 35
    .restart local v1    # "oldValue":Ljava/lang/Object;
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "You cannot increment a non-number."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 37
    .end local v1    # "oldValue":Ljava/lang/Object;
    .restart local p1    # "previous":Lcom/parse/ParseFieldOperation;
    :cond_3
    instance-of v2, p1, Lcom/parse/ParseIncrementOperation;

    if-eqz v2, :cond_4

    .line 38
    check-cast p1, Lcom/parse/ParseIncrementOperation;

    .end local p1    # "previous":Lcom/parse/ParseFieldOperation;
    iget-object v0, p1, Lcom/parse/ParseIncrementOperation;->amount:Ljava/lang/Number;

    .line 39
    .restart local v0    # "oldAmount":Ljava/lang/Number;
    new-instance v2, Lcom/parse/ParseIncrementOperation;

    iget-object v3, p0, Lcom/parse/ParseIncrementOperation;->amount:Ljava/lang/Number;

    invoke-static {v0, v3}, Lcom/parse/Parse;->addNumbers(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/parse/ParseIncrementOperation;-><init>(Ljava/lang/Number;)V

    move-object p0, v2

    goto :goto_0

    .line 41
    .end local v0    # "oldAmount":Ljava/lang/Number;
    .restart local p1    # "previous":Lcom/parse/ParseFieldOperation;
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Operation is invalid after previous operation."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
