.class public Lcom/parse/ParseAnalytics;
.super Ljava/lang/Object;
.source "ParseAnalytics.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.parse.ParseAnalytics"

.field private static final lruSeenPushes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 223
    new-instance v0, Lcom/parse/ParseAnalytics$3;

    invoke-direct {v0}, Lcom/parse/ParseAnalytics$3;-><init>()V

    sput-object v0, Lcom/parse/ParseAnalytics;->lruSeenPushes:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clear()V
    .locals 2

    .prologue
    .line 230
    sget-object v1, Lcom/parse/ParseAnalytics;->lruSeenPushes:Ljava/util/Map;

    monitor-enter v1

    .line 231
    :try_start_0
    sget-object v0, Lcom/parse/ParseAnalytics;->lruSeenPushes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 232
    monitor-exit v1

    .line 233
    return-void

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static trackAppOpened(Landroid/content/Intent;)V
    .locals 0
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 77
    invoke-static {p0}, Lcom/parse/ParseAnalytics;->trackAppOpenedInBackground(Landroid/content/Intent;)Lbolts/Task;

    .line 78
    return-void
.end method

.method public static trackAppOpenedInBackground(Landroid/content/Intent;)Lbolts/Task;
    .locals 8
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    const/4 v3, 0x0

    .line 35
    .local v3, "pushData":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 36
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "com.parse.Data"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39
    :cond_0
    new-instance v4, Lbolts/Capture;

    invoke-direct {v4}, Lbolts/Capture;-><init>()V

    .line 40
    .local v4, "pushHash":Lbolts/Capture;, "Lbolts/Capture<Ljava/lang/String;>;"
    if-eqz v3, :cond_2

    .line 42
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 43
    .local v2, "payload":Lorg/json/JSONObject;
    const-string v5, "push_hash"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "hash":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 45
    sget-object v6, Lcom/parse/ParseAnalytics;->lruSeenPushes:Ljava/util/Map;

    monitor-enter v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :try_start_1
    sget-object v5, Lcom/parse/ParseAnalytics;->lruSeenPushes:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 47
    const/4 v5, 0x0

    invoke-static {v5}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v5

    monitor-exit v6

    .line 59
    .end local v1    # "hash":Ljava/lang/String;
    .end local v2    # "payload":Lorg/json/JSONObject;
    :goto_0
    return-object v5

    .line 49
    .restart local v1    # "hash":Ljava/lang/String;
    .restart local v2    # "payload":Lorg/json/JSONObject;
    :cond_1
    sget-object v5, Lcom/parse/ParseAnalytics;->lruSeenPushes:Ljava/util/Map;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-virtual {v4, v1}, Lbolts/Capture;->set(Ljava/lang/Object;)V

    .line 52
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .end local v1    # "hash":Ljava/lang/String;
    .end local v2    # "payload":Lorg/json/JSONObject;
    :cond_2
    :goto_1
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionTokenAsync()Lbolts/Task;

    move-result-object v5

    new-instance v6, Lcom/parse/ParseAnalytics$1;

    invoke-direct {v6, v4}, Lcom/parse/ParseAnalytics$1;-><init>(Lbolts/Capture;)V

    invoke-virtual {v5, v6}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v5

    goto :goto_0

    .line 52
    .restart local v1    # "hash":Ljava/lang/String;
    .restart local v2    # "payload":Lorg/json/JSONObject;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 54
    .end local v1    # "hash":Ljava/lang/String;
    .end local v2    # "payload":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Lorg/json/JSONException;
    const-string v5, "com.parse.ParseAnalytics"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to parse push data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static trackAppOpenedInBackground(Landroid/content/Intent;Lcom/parse/SaveCallback;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    .line 91
    invoke-static {p0}, Lcom/parse/ParseAnalytics;->trackAppOpenedInBackground(Landroid/content/Intent;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 92
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 99
    invoke-static {p0}, Lcom/parse/ParseAnalytics;->trackEventInBackground(Ljava/lang/String;)Lbolts/Task;

    .line 100
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 120
    .local p1, "dimensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/parse/ParseAnalytics;->trackEventInBackground(Ljava/lang/String;Ljava/util/Map;)Lbolts/Task;

    .line 121
    return-void
.end method

.method public static trackEventInBackground(Ljava/lang/String;)Lbolts/Task;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Map;

    invoke-static {p0, v0}, Lcom/parse/ParseAnalytics;->trackEventInBackground(Ljava/lang/String;Ljava/util/Map;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static trackEventInBackground(Ljava/lang/String;Ljava/util/Map;)Lbolts/Task;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "dimensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 198
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "A name for the custom event must be provided."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    :cond_1
    if-eqz p1, :cond_2

    invoke-static {}, Lcom/parse/NoObjectsEncodingStrategy;->get()Lcom/parse/NoObjectsEncodingStrategy;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    move-object v0, v1

    .line 205
    .local v0, "jsonDimensions":Lorg/json/JSONObject;
    :goto_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionTokenAsync()Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseAnalytics$2;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseAnalytics$2;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1

    .line 201
    .end local v0    # "jsonDimensions":Lorg/json/JSONObject;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static trackEventInBackground(Ljava/lang/String;Lcom/parse/SaveCallback;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    .line 112
    invoke-static {p0}, Lcom/parse/ParseAnalytics;->trackEventInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 113
    return-void
.end method

.method public static trackEventInBackground(Ljava/lang/String;Ljava/util/Map;Lcom/parse/SaveCallback;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/parse/SaveCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/parse/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "dimensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/parse/ParseAnalytics;->trackEventInBackground(Ljava/lang/String;Ljava/util/Map;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 147
    return-void
.end method
