.class Lcom/parse/PushRoutes;
.super Ljava/lang/Object;
.source "PushRoutes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/PushRoutes$Route;
    }
.end annotation


# static fields
.field private static final CHANNEL_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "com.parse.PushRoutes"


# instance fields
.field private final channels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/PushRoutes$Route;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "^$|^[a-zA-Z][A-Za-z0-9_-]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/parse/PushRoutes;->CHANNEL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/parse/PushRoutes;->channels:Ljava/util/HashMap;

    .line 66
    if-eqz p1, :cond_2

    .line 67
    const-string v5, "routes"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 69
    .local v3, "jsonRoutes":Lorg/json/JSONObject;
    if-eqz v3, :cond_1

    .line 70
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 72
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 73
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 74
    .local v0, "channel":Ljava/lang/String;
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/parse/PushRoutes$Route;->newFromJSON(Lorg/json/JSONObject;)Lcom/parse/PushRoutes$Route;

    move-result-object v4

    .line 76
    .local v4, "route":Lcom/parse/PushRoutes$Route;
    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    .line 77
    invoke-virtual {p0, v0, v4}, Lcom/parse/PushRoutes;->put(Ljava/lang/String;Lcom/parse/PushRoutes$Route;)Lcom/parse/PushRoutes$Route;

    goto :goto_0

    .line 82
    .end local v0    # "channel":Ljava/lang/String;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "route":Lcom/parse/PushRoutes$Route;
    :cond_1
    const-string v5, "defaultRoute"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 83
    .local v1, "defaultRoute":Lorg/json/JSONObject;
    if-eqz v1, :cond_2

    .line 84
    invoke-static {v1}, Lcom/parse/PushRoutes$Route;->newFromJSON(Lorg/json/JSONObject;)Lcom/parse/PushRoutes$Route;

    move-result-object v4

    .line 86
    .restart local v4    # "route":Lcom/parse/PushRoutes$Route;
    if-eqz v4, :cond_2

    .line 87
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v4}, Lcom/parse/PushRoutes;->put(Ljava/lang/String;Lcom/parse/PushRoutes$Route;)Lcom/parse/PushRoutes$Route;

    .line 91
    .end local v1    # "defaultRoute":Lorg/json/JSONObject;
    .end local v3    # "jsonRoutes":Lorg/json/JSONObject;
    .end local v4    # "route":Lcom/parse/PushRoutes$Route;
    :cond_2
    return-void
.end method

.method public static declared-synchronized isValidChannelName(Ljava/lang/String;)Z
    .locals 2
    .param p0, "channel"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v1, Lcom/parse/PushRoutes;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/parse/PushRoutes;->CHANNEL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/parse/PushRoutes$Route;
    .locals 1
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/parse/PushRoutes;->channels:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/PushRoutes$Route;

    return-object v0
.end method

.method public getChannels()Ljava/util/Set;
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
    .line 120
    iget-object v0, p0, Lcom/parse/PushRoutes;->channels:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Lcom/parse/PushRoutes$Route;)Lcom/parse/PushRoutes$Route;
    .locals 3
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "route"    # Lcom/parse/PushRoutes$Route;

    .prologue
    .line 135
    if-nez p2, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t insert null route"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/parse/PushRoutes;->isValidChannelName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid channel name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/parse/PushRoutes;->channels:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/PushRoutes$Route;

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Lcom/parse/PushRoutes$Route;
    .locals 1
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/parse/PushRoutes;->channels:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/PushRoutes$Route;

    return-object v0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 98
    .local v3, "json":Lorg/json/JSONObject;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 100
    .local v4, "namedRoutes":Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/parse/PushRoutes;->channels:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 101
    .local v1, "channelRoute":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/parse/PushRoutes$Route;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    .local v0, "channel":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parse/PushRoutes$Route;

    .line 104
    .local v5, "route":Lcom/parse/PushRoutes$Route;
    if-nez v0, :cond_0

    .line 105
    const-string v6, "defaultRoute"

    invoke-virtual {v5}, Lcom/parse/PushRoutes$Route;->toJSON()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {v5}, Lcom/parse/PushRoutes$Route;->toJSON()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 111
    .end local v0    # "channel":Ljava/lang/String;
    .end local v1    # "channelRoute":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/parse/PushRoutes$Route;>;"
    .end local v5    # "route":Lcom/parse/PushRoutes$Route;
    :cond_1
    const-string v6, "routes"

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    return-object v3
.end method
