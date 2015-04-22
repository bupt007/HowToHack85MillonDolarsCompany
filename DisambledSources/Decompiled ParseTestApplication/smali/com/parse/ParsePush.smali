.class public Lcom/parse/ParsePush;
.super Ljava/lang/Object;
.source "ParsePush.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.parse.ParsePush"

.field static final V2_PUSH_NOT_CONFIGURED:Ljava/lang/String; = "In order to use the ParsePush.subscribe or ParsePush.unsubscribe methods you must add the following to your AndroidManifest.xml: \n<receiver android:name=\"com.parse.ParsePushBroadcastReceiver\"\n  android:exported=\"false\">\n  <intent-filter>\n    <action android:name=\"com.parse.push.intent.RECEIVE\" />\n    <action android:name=\"com.parse.push.intent.OPEN\" />\n    <action android:name=\"com.parse.push.intent.DELETE\" />\n  </intent-filter>\n</receiver>\n(Replace \"com.parse.ParsePushBroadcastReceiver\" with your own implementation if you choose to extend ParsePushBroadcastReceiver)"


# instance fields
.field private channelSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private data:Lorg/json/JSONObject;

.field private expirationTime:Ljava/lang/Long;

.field private expirationTimeInterval:Ljava/lang/Long;

.field private pushToAndroid:Ljava/lang/Boolean;

.field private pushToIOS:Ljava/lang/Boolean;

.field private query:Lcom/parse/ParseQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/parse/ParsePush;->channelSet:Ljava/util/Set;

    .line 27
    iput-object v0, p0, Lcom/parse/ParsePush;->query:Lcom/parse/ParseQuery;

    .line 28
    iput-object v0, p0, Lcom/parse/ParsePush;->expirationTime:Ljava/lang/Long;

    .line 29
    iput-object v0, p0, Lcom/parse/ParsePush;->expirationTimeInterval:Ljava/lang/Long;

    .line 30
    iput-object v0, p0, Lcom/parse/ParsePush;->pushToIOS:Ljava/lang/Boolean;

    .line 31
    iput-object v0, p0, Lcom/parse/ParsePush;->pushToAndroid:Ljava/lang/Boolean;

    .line 42
    return-void
.end method

.method private static checkForManifestAndThrowExceptionIfNeeded()V
    .locals 2

    .prologue
    .line 150
    invoke-static {}, Lcom/parse/ManifestInfo;->getPushUsesBroadcastReceivers()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "In order to use the ParsePush.subscribe or ParsePush.unsubscribe methods you must add the following to your AndroidManifest.xml: \n<receiver android:name=\"com.parse.ParsePushBroadcastReceiver\"\n  android:exported=\"false\">\n  <intent-filter>\n    <action android:name=\"com.parse.push.intent.RECEIVE\" />\n    <action android:name=\"com.parse.push.intent.OPEN\" />\n    <action android:name=\"com.parse.push.intent.DELETE\" />\n  </intent-filter>\n</receiver>\n(Replace \"com.parse.ParsePushBroadcastReceiver\" with your own implementation if you choose to extend ParsePushBroadcastReceiver)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    return-void
.end method

.method public static sendDataInBackground(Lorg/json/JSONObject;Lcom/parse/ParseQuery;)Lbolts/Task;
    .locals 2
    .param p0, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/parse/ParseInstallation;>;"
    new-instance v0, Lcom/parse/ParsePush;

    invoke-direct {v0}, Lcom/parse/ParsePush;-><init>()V

    .line 203
    .local v0, "push":Lcom/parse/ParsePush;
    invoke-virtual {v0, p1}, Lcom/parse/ParsePush;->setQuery(Lcom/parse/ParseQuery;)V

    .line 204
    invoke-virtual {v0, p0}, Lcom/parse/ParsePush;->setData(Lorg/json/JSONObject;)V

    .line 205
    invoke-virtual {v0}, Lcom/parse/ParsePush;->sendInBackground()Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public static sendDataInBackground(Lorg/json/JSONObject;Lcom/parse/ParseQuery;Lcom/parse/SendCallback;)V
    .locals 1
    .param p0, "data"    # Lorg/json/JSONObject;
    .param p2, "callback"    # Lcom/parse/SendCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;",
            "Lcom/parse/SendCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/parse/ParseInstallation;>;"
    invoke-static {p0, p1}, Lcom/parse/ParsePush;->sendDataInBackground(Lorg/json/JSONObject;Lcom/parse/ParseQuery;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 224
    return-void
.end method

.method public static sendMessageInBackground(Ljava/lang/String;Lcom/parse/ParseQuery;)Lbolts/Task;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/parse/ParseInstallation;>;"
    new-instance v0, Lcom/parse/ParsePush;

    invoke-direct {v0}, Lcom/parse/ParsePush;-><init>()V

    .line 168
    .local v0, "push":Lcom/parse/ParsePush;
    invoke-virtual {v0, p1}, Lcom/parse/ParsePush;->setQuery(Lcom/parse/ParseQuery;)V

    .line 169
    invoke-virtual {v0, p0}, Lcom/parse/ParsePush;->setMessage(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Lcom/parse/ParsePush;->sendInBackground()Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public static sendMessageInBackground(Ljava/lang/String;Lcom/parse/ParseQuery;Lcom/parse/SendCallback;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/parse/SendCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;",
            "Lcom/parse/SendCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/parse/ParseInstallation;>;"
    invoke-static {p0, p1}, Lcom/parse/ParsePush;->sendMessageInBackground(Ljava/lang/String;Lcom/parse/ParseQuery;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 188
    return-void
.end method

.method static setEnabled(Z)V
    .locals 2
    .param p0, "enabled"    # Z

    .prologue
    .line 51
    invoke-static {}, Lcom/parse/ParsePush;->checkForManifestAndThrowExceptionIfNeeded()V

    .line 52
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/PushRouter;->setForceEnabledAsync(Ljava/lang/Boolean;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePush$1;

    invoke-direct {v1, p0}, Lcom/parse/ParsePush$1;-><init>(Z)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    .line 63
    return-void
.end method

.method public static subscribeInBackground(Ljava/lang/String;)Lbolts/Task;
    .locals 4
    .param p0, "channel"    # Ljava/lang/String;
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
    .line 74
    if-nez p0, :cond_0

    .line 75
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t subscribe to null channel."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_0
    invoke-static {}, Lcom/parse/ParsePush;->checkForManifestAndThrowExceptionIfNeeded()V

    .line 78
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v1

    .line 79
    .local v1, "installation":Lcom/parse/ParseInstallation;
    const-string v2, "channels"

    invoke-virtual {v1, v2}, Lcom/parse/ParseInstallation;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 80
    .local v0, "channels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    const-string v2, "channels"

    invoke-virtual {v1, v2}, Lcom/parse/ParseInstallation;->isDirty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 81
    :cond_1
    const-string v2, "channels"

    invoke-virtual {v1, v2, p0}, Lcom/parse/ParseInstallation;->addUnique(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    invoke-virtual {v1}, Lcom/parse/ParseInstallation;->saveInBackground()Lbolts/Task;

    move-result-object v2

    .line 84
    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    invoke-static {v2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v2

    goto :goto_0
.end method

.method public static subscribeInBackground(Ljava/lang/String;Lcom/parse/SaveCallback;)V
    .locals 1
    .param p0, "channel"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    .line 98
    invoke-static {p0}, Lcom/parse/ParsePush;->subscribeInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 99
    return-void
.end method

.method public static unsubscribeInBackground(Ljava/lang/String;)Lbolts/Task;
    .locals 5
    .param p0, "channel"    # Ljava/lang/String;
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
    .line 110
    if-nez p0, :cond_0

    .line 111
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t unsubscribe from null channel."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    :cond_0
    invoke-static {}, Lcom/parse/ParsePush;->checkForManifestAndThrowExceptionIfNeeded()V

    .line 114
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v1

    .line 115
    .local v1, "installation":Lcom/parse/ParseInstallation;
    const-string v2, "channels"

    invoke-virtual {v1, v2}, Lcom/parse/ParseInstallation;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 116
    .local v0, "channels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    const-string v2, "channels"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/parse/ParseInstallation;->removeAll(Ljava/lang/String;Ljava/util/Collection;)V

    .line 118
    invoke-virtual {v1}, Lcom/parse/ParseInstallation;->saveInBackground()Lbolts/Task;

    move-result-object v2

    .line 120
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v2

    goto :goto_0
.end method

.method public static unsubscribeInBackground(Ljava/lang/String;Lcom/parse/SaveCallback;)V
    .locals 1
    .param p0, "channel"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    .line 133
    invoke-static {p0}, Lcom/parse/ParsePush;->unsubscribeInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 134
    return-void
.end method


# virtual methods
.method public clearExpiration()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 299
    iput-object v0, p0, Lcom/parse/ParsePush;->expirationTime:Ljava/lang/Long;

    .line 300
    iput-object v0, p0, Lcom/parse/ParsePush;->expirationTimeInterval:Ljava/lang/Long;

    .line 301
    return-void
.end method

.method currentSendCommand(Ljava/lang/String;)Lcom/parse/ParseRESTCommand;
    .locals 9
    .param p1, "sessionToken"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 400
    iget-object v3, p0, Lcom/parse/ParsePush;->data:Lorg/json/JSONObject;

    if-nez v3, :cond_0

    .line 401
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot send a push without calling either setMessage or setData"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_0
    const/4 v2, 0x0

    .line 406
    .local v2, "deviceType":Ljava/lang/String;
    iget-object v3, p0, Lcom/parse/ParsePush;->query:Lcom/parse/ParseQuery;

    if-nez v3, :cond_2

    .line 408
    iget-object v3, p0, Lcom/parse/ParsePush;->pushToAndroid:Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/parse/ParsePush;->pushToAndroid:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    move v7, v1

    .line 409
    .local v7, "willPushToAndroid":Z
    :goto_0
    iget-object v3, p0, Lcom/parse/ParsePush;->pushToIOS:Ljava/lang/Boolean;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/parse/ParsePush;->pushToIOS:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    move v8, v1

    .line 410
    .local v8, "willPushToIOS":Z
    :goto_1
    if-eqz v8, :cond_5

    if-eqz v7, :cond_5

    .line 421
    .end local v7    # "willPushToAndroid":Z
    .end local v8    # "willPushToIOS":Z
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/parse/ParsePush;->query:Lcom/parse/ParseQuery;

    iget-object v1, p0, Lcom/parse/ParsePush;->channelSet:Ljava/util/Set;

    iget-object v3, p0, Lcom/parse/ParsePush;->expirationTime:Ljava/lang/Long;

    iget-object v4, p0, Lcom/parse/ParsePush;->expirationTimeInterval:Ljava/lang/Long;

    iget-object v5, p0, Lcom/parse/ParsePush;->data:Lorg/json/JSONObject;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/parse/ParseRESTPushCommand;->sendPushCommand(Lcom/parse/ParseQuery;Ljava/util/Set;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/parse/ParseRESTPushCommand;

    move-result-object v0

    return-object v0

    :cond_3
    move v7, v0

    .line 408
    goto :goto_0

    .restart local v7    # "willPushToAndroid":Z
    :cond_4
    move v8, v0

    .line 409
    goto :goto_1

    .line 412
    .restart local v8    # "willPushToIOS":Z
    :cond_5
    if-eqz v8, :cond_6

    .line 413
    const-string v2, "ios"

    goto :goto_2

    .line 414
    :cond_6
    if-eqz v7, :cond_7

    .line 415
    const-string v2, "android"

    goto :goto_2

    .line 417
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot push if both pushToIOS and pushToAndroid are false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public send()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/parse/ParsePush;->sendInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;

    .line 383
    return-void
.end method

.method public sendInBackground()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionTokenAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePush$2;

    invoke-direct {v1, p0}, Lcom/parse/ParsePush$2;-><init>(Lcom/parse/ParsePush;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public sendInBackground(Lcom/parse/SendCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/SendCallback;

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/parse/ParsePush;->sendInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 394
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 2
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 232
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "channel cannot be null"

    invoke-static {v0, v1}, Lcom/parse/gdata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 233
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePush;->channelSet:Ljava/util/Set;

    .line 234
    iget-object v0, p0, Lcom/parse/ParsePush;->channelSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParsePush;->query:Lcom/parse/ParseQuery;

    .line 236
    return-void

    .line 232
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChannels(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "channels":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 244
    if-eqz p1, :cond_0

    move v2, v3

    :goto_0
    const-string v5, "channels collection cannot be null"

    invoke-static {v2, v5}, Lcom/parse/gdata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 245
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 246
    .local v0, "channel":Ljava/lang/String;
    if-eqz v0, :cond_1

    move v2, v3

    :goto_2
    const-string v5, "channel cannot be null"

    invoke-static {v2, v5}, Lcom/parse/gdata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    goto :goto_1

    .end local v0    # "channel":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    move v2, v4

    .line 244
    goto :goto_0

    .restart local v0    # "channel":Ljava/lang/String;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    move v2, v4

    .line 246
    goto :goto_2

    .line 248
    .end local v0    # "channel":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/parse/ParsePush;->channelSet:Ljava/util/Set;

    .line 249
    iget-object v2, p0, Lcom/parse/ParsePush;->channelSet:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 250
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/parse/ParsePush;->query:Lcom/parse/ParseQuery;

    .line 251
    return-void
.end method

.method public setData(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/parse/ParsePush;->data:Lorg/json/JSONObject;

    .line 341
    return-void
.end method

.method public setExpirationTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 279
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePush;->expirationTime:Ljava/lang/Long;

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParsePush;->expirationTimeInterval:Ljava/lang/Long;

    .line 281
    return-void
.end method

.method public setExpirationTimeInterval(J)V
    .locals 1
    .param p1, "timeInterval"    # J

    .prologue
    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParsePush;->expirationTime:Ljava/lang/Long;

    .line 292
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePush;->expirationTimeInterval:Ljava/lang/Long;

    .line 293
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 348
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 350
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "alert"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    invoke-virtual {p0, v0}, Lcom/parse/ParsePush;->setData(Lorg/json/JSONObject;)V

    .line 355
    return-void

    .line 351
    :catch_0
    move-exception v1

    .line 352
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "com.parse.ParsePush"

    const-string v3, "JSONException in setMessage"

    invoke-static {v2, v3, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setPushToAndroid(Z)V
    .locals 2
    .param p1, "pushToAndroid"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lcom/parse/ParsePush;->query:Lcom/parse/ParseQuery;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot set push targets (i.e. setPushToAndroid or setPushToIOS) when pushing to a query"

    invoke-static {v0, v1}, Lcom/parse/gdata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 332
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePush;->pushToAndroid:Ljava/lang/Boolean;

    .line 333
    return-void

    .line 330
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPushToIOS(Z)V
    .locals 2
    .param p1, "pushToIOS"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lcom/parse/ParsePush;->query:Lcom/parse/ParseQuery;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot set push targets (i.e. setPushToAndroid or setPushToIOS) when pushing to a query"

    invoke-static {v0, v1}, Lcom/parse/gdata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 316
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePush;->pushToIOS:Ljava/lang/Boolean;

    .line 317
    return-void

    .line 314
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setQuery(Lcom/parse/ParseQuery;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/parse/ParseInstallation;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 262
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Cannot target a null query"

    invoke-static {v0, v3}, Lcom/parse/gdata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 263
    iget-object v0, p0, Lcom/parse/ParsePush;->pushToIOS:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/parse/ParsePush;->pushToAndroid:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    :goto_1
    const-string v0, "Cannot set push targets (i.e. setPushToAndroid or setPushToIOS) when pushing to a query"

    invoke-static {v1, v0}, Lcom/parse/gdata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 265
    invoke-virtual {p1}, Lcom/parse/ParseQuery;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/parse/ParseInstallation;

    invoke-static {v1}, Lcom/parse/ParseObject;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Can only push to a query for Installations"

    invoke-static {v0, v1}, Lcom/parse/gdata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParsePush;->channelSet:Ljava/util/Set;

    .line 268
    iput-object p1, p0, Lcom/parse/ParsePush;->query:Lcom/parse/ParseQuery;

    .line 269
    return-void

    :cond_0
    move v0, v2

    .line 262
    goto :goto_0

    :cond_1
    move v1, v2

    .line 263
    goto :goto_1
.end method
