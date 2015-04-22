.class Lcom/parse/PushHistory;
.super Ljava/lang/Object;
.source "PushHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/PushHistory$Entry;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.parse.PushHistory"


# instance fields
.field private cutoff:Ljava/lang/String;

.field private final entries:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/parse/PushHistory$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private lastTime:Ljava/lang/String;

.field private final maxHistoryLength:I

.field private final pushIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILorg/json/JSONObject;)V
    .locals 7
    .param p1, "maxHistoryLength"    # I
    .param p2, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v6, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lcom/parse/PushHistory;->maxHistoryLength:I

    .line 59
    new-instance v4, Ljava/util/PriorityQueue;

    add-int/lit8 v5, p1, 0x1

    invoke-direct {v4, v5}, Ljava/util/PriorityQueue;-><init>(I)V

    iput-object v4, p0, Lcom/parse/PushHistory;->entries:Ljava/util/PriorityQueue;

    .line 60
    new-instance v4, Ljava/util/HashSet;

    add-int/lit8 v5, p1, 0x1

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    iput-object v4, p0, Lcom/parse/PushHistory;->pushIds:Ljava/util/HashSet;

    .line 61
    iput-object v6, p0, Lcom/parse/PushHistory;->cutoff:Ljava/lang/String;

    .line 62
    iput-object v6, p0, Lcom/parse/PushHistory;->lastTime:Ljava/lang/String;

    .line 64
    if-eqz p2, :cond_1

    .line 65
    const-string v4, "ignoreAfter"

    invoke-virtual {p2, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/parse/PushHistory;->setCutoffTimestamp(Ljava/lang/String;)V

    .line 66
    const-string v4, "lastTime"

    invoke-virtual {p2, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/parse/PushHistory;->setLastReceivedTimestamp(Ljava/lang/String;)V

    .line 68
    const-string v4, "history"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 69
    .local v1, "jsonHistory":Lorg/json/JSONObject;
    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 71
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 73
    .local v2, "pushId":Ljava/lang/String;
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "timestamp":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 76
    invoke-virtual {p0, v2, v3}, Lcom/parse/PushHistory;->tryInsertPush(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 81
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "jsonHistory":Lorg/json/JSONObject;
    .end local v2    # "pushId":Ljava/lang/String;
    .end local v3    # "timestamp":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private setCutoffTimestamp(Ljava/lang/String;)V
    .locals 0
    .param p1, "cutoff"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/parse/PushHistory;->cutoff:Ljava/lang/String;

    .line 119
    return-void
.end method

.method private setLastReceivedTimestamp(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastTime"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/parse/PushHistory;->lastTime:Ljava/lang/String;

    .line 131
    return-void
.end method


# virtual methods
.method public getCutoffTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/parse/PushHistory;->cutoff:Ljava/lang/String;

    return-object v0
.end method

.method public getLastReceivedTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/parse/PushHistory;->lastTime:Ljava/lang/String;

    return-object v0
.end method

.method public getPushIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/parse/PushHistory;->pushIds:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 87
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 89
    .local v3, "json":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/parse/PushHistory;->entries:Ljava/util/PriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 90
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 92
    .local v1, "history":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/parse/PushHistory;->entries:Ljava/util/PriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/PushHistory$Entry;

    .line 93
    .local v0, "e":Lcom/parse/PushHistory$Entry;
    iget-object v4, v0, Lcom/parse/PushHistory$Entry;->pushId:Ljava/lang/String;

    iget-object v5, v0, Lcom/parse/PushHistory$Entry;->timestamp:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 96
    .end local v0    # "e":Lcom/parse/PushHistory$Entry;
    :cond_0
    const-string v4, "history"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    .end local v1    # "history":Lorg/json/JSONObject;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v4, "ignoreAfter"

    iget-object v5, p0, Lcom/parse/PushHistory;->cutoff:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string v4, "lastTime"

    iget-object v5, p0, Lcom/parse/PushHistory;->lastTime:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    return-object v3
.end method

.method public tryInsertPush(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "pushId"    # Ljava/lang/String;
    .param p2, "timestamp"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 149
    if-nez p2, :cond_0

    .line 150
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t insert null pushId or timestamp into history"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_0
    iget-object v2, p0, Lcom/parse/PushHistory;->lastTime:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/parse/PushHistory;->lastTime:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    .line 154
    :cond_1
    iput-object p2, p0, Lcom/parse/PushHistory;->lastTime:Ljava/lang/String;

    .line 157
    :cond_2
    iget-object v2, p0, Lcom/parse/PushHistory;->cutoff:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/parse/PushHistory;->cutoff:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_3

    .line 158
    const-string v2, "com.parse.PushHistory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignored old push "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " before cutoff "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/parse/PushHistory;->cutoff:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :goto_0
    return v1

    .line 164
    :cond_3
    if-eqz p1, :cond_5

    .line 165
    iget-object v2, p0, Lcom/parse/PushHistory;->pushIds:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 166
    const-string v2, "com.parse.PushHistory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignored duplicate push "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_4
    iget-object v1, p0, Lcom/parse/PushHistory;->entries:Ljava/util/PriorityQueue;

    new-instance v2, Lcom/parse/PushHistory$Entry;

    invoke-direct {v2, p1, p2}, Lcom/parse/PushHistory$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v1, p0, Lcom/parse/PushHistory;->pushIds:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 173
    :goto_1
    iget-object v1, p0, Lcom/parse/PushHistory;->entries:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    iget v2, p0, Lcom/parse/PushHistory;->maxHistoryLength:I

    if-le v1, v2, :cond_5

    .line 174
    iget-object v1, p0, Lcom/parse/PushHistory;->entries:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/PushHistory$Entry;

    .line 176
    .local v0, "head":Lcom/parse/PushHistory$Entry;
    iget-object v1, p0, Lcom/parse/PushHistory;->pushIds:Ljava/util/HashSet;

    iget-object v2, v0, Lcom/parse/PushHistory$Entry;->pushId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 177
    iget-object v1, v0, Lcom/parse/PushHistory$Entry;->timestamp:Ljava/lang/String;

    iput-object v1, p0, Lcom/parse/PushHistory;->cutoff:Ljava/lang/String;

    goto :goto_1

    .line 181
    .end local v0    # "head":Lcom/parse/PushHistory$Entry;
    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method
