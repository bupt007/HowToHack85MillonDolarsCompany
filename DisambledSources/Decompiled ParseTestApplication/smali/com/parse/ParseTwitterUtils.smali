.class public final Lcom/parse/ParseTwitterUtils;
.super Ljava/lang/Object;
.source "ParseTwitterUtils.java"


# static fields
.field private static isInitialized:Z

.field private static provider:Lcom/parse/TwitterAuthenticationProvider;

.field private static twitter:Lcom/parse/twitter/Twitter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    return-void
.end method

.method private static checkInitialization()V
    .locals 2

    .prologue
    .line 57
    sget-boolean v0, Lcom/parse/ParseTwitterUtils;->isInitialized:Z

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call ParseTwitterUtils.initialize() before using ParseTwitterUtils"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    return-void
.end method

.method private static getAuthenticationProvider()Lcom/parse/TwitterAuthenticationProvider;
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lcom/parse/ParseTwitterUtils;->provider:Lcom/parse/TwitterAuthenticationProvider;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/parse/TwitterAuthenticationProvider;

    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getTwitter()Lcom/parse/twitter/Twitter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parse/TwitterAuthenticationProvider;-><init>(Lcom/parse/twitter/Twitter;)V

    sput-object v0, Lcom/parse/ParseTwitterUtils;->provider:Lcom/parse/TwitterAuthenticationProvider;

    .line 22
    sget-object v0, Lcom/parse/ParseTwitterUtils;->provider:Lcom/parse/TwitterAuthenticationProvider;

    invoke-static {v0}, Lcom/parse/ParseUser;->registerAuthenticationProvider(Lcom/parse/ParseAuthenticationProvider;)V

    .line 24
    :cond_0
    sget-object v0, Lcom/parse/ParseTwitterUtils;->provider:Lcom/parse/TwitterAuthenticationProvider;

    return-object v0
.end method

.method public static getTwitter()Lcom/parse/twitter/Twitter;
    .locals 3

    .prologue
    .line 33
    sget-object v0, Lcom/parse/ParseTwitterUtils;->twitter:Lcom/parse/twitter/Twitter;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/parse/twitter/Twitter;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/parse/twitter/Twitter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/parse/ParseTwitterUtils;->twitter:Lcom/parse/twitter/Twitter;

    .line 36
    :cond_0
    sget-object v0, Lcom/parse/ParseTwitterUtils;->twitter:Lcom/parse/twitter/Twitter;

    return-object v0
.end method

.method public static initialize(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "consumerKey"    # Ljava/lang/String;
    .param p1, "consumerSecret"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getTwitter()Lcom/parse/twitter/Twitter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/twitter/Twitter;->setConsumerKey(Ljava/lang/String;)Lcom/parse/twitter/Twitter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parse/twitter/Twitter;->setConsumerSecret(Ljava/lang/String;)Lcom/parse/twitter/Twitter;

    .line 52
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/TwitterAuthenticationProvider;

    .line 53
    const/4 v0, 0x1

    sput-boolean v0, Lcom/parse/ParseTwitterUtils;->isInitialized:Z

    .line 54
    return-void
.end method

.method public static isLinked(Lcom/parse/ParseUser;)Z
    .locals 1
    .param p0, "user"    # Lcom/parse/ParseUser;

    .prologue
    .line 67
    const-string v0, "twitter"

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->isLinked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static link(Lcom/parse/ParseUser;Landroid/content/Context;)V
    .locals 1
    .param p0, "user"    # Lcom/parse/ParseUser;
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/ParseTwitterUtils;->link(Lcom/parse/ParseUser;Landroid/content/Context;Lcom/parse/SaveCallback;)V

    .line 96
    return-void
.end method

.method public static link(Lcom/parse/ParseUser;Landroid/content/Context;Lcom/parse/SaveCallback;)V
    .locals 2
    .param p0, "user"    # Lcom/parse/ParseUser;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    .line 114
    invoke-static {p1, p0}, Lcom/parse/ParseTwitterUtils;->linkInBackground(Landroid/content/Context;Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;Z)Lbolts/Task;

    .line 115
    return-void
.end method

.method public static link(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "user"    # Lcom/parse/ParseUser;
    .param p1, "twitterId"    # Ljava/lang/String;
    .param p2, "screenName"    # Ljava/lang/String;
    .param p3, "authToken"    # Ljava/lang/String;
    .param p4, "authTokenSecret"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 154
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/parse/ParseTwitterUtils;->link(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parse/SaveCallback;)V

    .line 155
    return-void
.end method

.method public static link(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parse/SaveCallback;)V
    .locals 1
    .param p0, "user"    # Lcom/parse/ParseUser;
    .param p1, "twitterId"    # Ljava/lang/String;
    .param p2, "screenName"    # Ljava/lang/String;
    .param p3, "authToken"    # Ljava/lang/String;
    .param p4, "authTokenSecret"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    .line 179
    invoke-static {p0, p1, p2, p3, p4}, Lcom/parse/ParseTwitterUtils;->linkInBackground(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p5}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 183
    return-void
.end method

.method public static linkInBackground(Landroid/content/Context;Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/parse/ParseUser;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->checkInitialization()V

    .line 85
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/TwitterAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/TwitterAuthenticationProvider;->setContext(Landroid/content/Context;)Lcom/parse/TwitterAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parse/TwitterAuthenticationProvider;->linkAsync(Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static linkInBackground(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbolts/Task;
    .locals 3
    .param p0, "user"    # Lcom/parse/ParseUser;
    .param p1, "twitterId"    # Ljava/lang/String;
    .param p2, "screenName"    # Ljava/lang/String;
    .param p3, "authToken"    # Ljava/lang/String;
    .param p4, "authTokenSecret"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->checkInitialization()V

    .line 138
    :try_start_0
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/TwitterAuthenticationProvider;

    move-result-object v1

    .line 139
    .local v1, "provider":Lcom/parse/TwitterAuthenticationProvider;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/parse/TwitterAuthenticationProvider;->getAuthData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/parse/TwitterAuthenticationProvider;->linkAsync(Lcom/parse/ParseUser;Lorg/json/JSONObject;)Lbolts/Task;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 143
    .end local v1    # "provider":Lcom/parse/TwitterAuthenticationProvider;
    :goto_0
    return-object v2

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/parse/ParseException;

    invoke-direct {v2, v0}, Lcom/parse/ParseException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v2}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v2

    goto :goto_0
.end method

.method public static logIn(Landroid/content/Context;Lcom/parse/LogInCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/parse/LogInCallback;

    .prologue
    .line 270
    invoke-static {p0}, Lcom/parse/ParseTwitterUtils;->logInInBackground(Landroid/content/Context;)Lbolts/Task;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;Z)Lbolts/Task;

    .line 271
    return-void
.end method

.method public static logIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parse/LogInCallback;)V
    .locals 1
    .param p0, "twitterId"    # Ljava/lang/String;
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "authToken"    # Ljava/lang/String;
    .param p3, "authTokenSecret"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/parse/LogInCallback;

    .prologue
    .line 234
    invoke-static {p0, p1, p2, p3}, Lcom/parse/ParseTwitterUtils;->logInInBackground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 238
    return-void
.end method

.method public static logInInBackground(Landroid/content/Context;)Lbolts/Task;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->checkInitialization()V

    .line 251
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/TwitterAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/TwitterAuthenticationProvider;->setContext(Landroid/content/Context;)Lcom/parse/TwitterAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/TwitterAuthenticationProvider;->logInAsync()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static logInInBackground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbolts/Task;
    .locals 3
    .param p0, "twitterId"    # Ljava/lang/String;
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "authToken"    # Ljava/lang/String;
    .param p3, "authTokenSecret"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->checkInitialization()V

    .line 205
    :try_start_0
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/TwitterAuthenticationProvider;

    move-result-object v1

    .line 206
    .local v1, "provider":Lcom/parse/TwitterAuthenticationProvider;
    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/parse/TwitterAuthenticationProvider;->getAuthData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parse/TwitterAuthenticationProvider;->logInAsync(Lorg/json/JSONObject;)Lbolts/Task;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 209
    .end local v1    # "provider":Lcom/parse/TwitterAuthenticationProvider;
    :goto_0
    return-object v2

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/parse/ParseException;

    invoke-direct {v2, v0}, Lcom/parse/ParseException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v2}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v2

    goto :goto_0
.end method

.method public static unlink(Lcom/parse/ParseUser;)V
    .locals 1
    .param p0, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-static {p0}, Lcom/parse/ParseTwitterUtils;->unlinkInBackground(Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;

    .line 281
    return-void
.end method

.method public static unlinkInBackground(Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 1
    .param p0, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->checkInitialization()V

    .line 293
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/TwitterAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/TwitterAuthenticationProvider;->unlinkAsync(Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static unlinkInBackground(Lcom/parse/ParseUser;Lcom/parse/SaveCallback;)V
    .locals 1
    .param p0, "user"    # Lcom/parse/ParseUser;
    .param p1, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    .line 308
    invoke-static {p0}, Lcom/parse/ParseTwitterUtils;->unlinkInBackground(Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 309
    return-void
.end method
