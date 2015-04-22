.class public Lcom/parse/twitter/Twitter;
.super Ljava/lang/Object;
.source "Twitter.java"


# static fields
.field private static final ACCESS_TOKEN_URL:Ljava/lang/String; = "https://api.twitter.com/oauth/access_token"

.field private static final AUTHORIZE_URL:Ljava/lang/String; = "https://api.twitter.com/oauth/authenticate"

.field private static final CALLBACK_URL:Ljava/lang/String; = "twitter-oauth://complete"

.field private static final REQUEST_TOKEN_URL:Ljava/lang/String; = "https://api.twitter.com/oauth/request_token"

.field private static final SCREEN_NAME_PARAM:Ljava/lang/String; = "screen_name"

.field private static final USER_AGENT:Ljava/lang/String; = "Parse Android SDK"

.field private static final USER_ID_PARAM:Ljava/lang/String; = "user_id"

.field private static final VERIFIER_PARAM:Ljava/lang/String; = "oauth_verifier"


# instance fields
.field private authToken:Ljava/lang/String;

.field private authTokenSecret:Ljava/lang/String;

.field private consumerKey:Ljava/lang/String;

.field private consumerSecret:Ljava/lang/String;

.field private screenName:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "consumerKey"    # Ljava/lang/String;
    .param p2, "consumerSecret"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/parse/twitter/Twitter;->consumerKey:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/parse/twitter/Twitter;->consumerSecret:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public authorize(Landroid/content/Context;Lcom/parse/internal/AsyncCallback;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/parse/internal/AsyncCallback;

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/parse/twitter/Twitter;->getConsumerKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/parse/twitter/Twitter;->getConsumerKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/parse/twitter/Twitter;->getConsumerSecret()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/parse/twitter/Twitter;->getConsumerSecret()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 113
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Twitter must be initialized with a consumer key and secret before authorization."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :cond_1
    new-instance v4, Lcom/parse/signpost/commonshttp/CommonsHttpOAuthProvider;

    const-string v1, "https://api.twitter.com/oauth/request_token"

    const-string v2, "https://api.twitter.com/oauth/access_token"

    const-string v3, "https://api.twitter.com/oauth/authenticate"

    const-string v7, "Parse Android SDK"

    invoke-static {v7, p1}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v7

    invoke-direct {v4, v1, v2, v3, v7}, Lcom/parse/signpost/commonshttp/CommonsHttpOAuthProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/client/HttpClient;)V

    .line 123
    .local v4, "provider":Lcom/parse/signpost/OAuthProvider;
    new-instance v5, Lcom/parse/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-virtual {p0}, Lcom/parse/twitter/Twitter;->getConsumerKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/parse/twitter/Twitter;->getConsumerSecret()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v1, v2}, Lcom/parse/signpost/commonshttp/CommonsHttpOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .local v5, "consumer":Lcom/parse/signpost/OAuthConsumer;
    new-instance v6, Landroid/app/ProgressDialog;

    invoke-direct {v6, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 127
    .local v6, "progress":Landroid/app/ProgressDialog;
    const-string v1, "Loading..."

    invoke-virtual {v6, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 128
    new-instance v0, Lcom/parse/twitter/Twitter$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/parse/twitter/Twitter$1;-><init>(Lcom/parse/twitter/Twitter;Lcom/parse/internal/AsyncCallback;Landroid/content/Context;Lcom/parse/signpost/OAuthProvider;Lcom/parse/signpost/OAuthConsumer;Landroid/app/ProgressDialog;)V

    .line 229
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/String;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 230
    return-void
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/parse/twitter/Twitter;->authToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthTokenSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/parse/twitter/Twitter;->authTokenSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumerKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/parse/twitter/Twitter;->consumerKey:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumerSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/parse/twitter/Twitter;->consumerSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/parse/twitter/Twitter;->screenName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/parse/twitter/Twitter;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "authToken"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/parse/twitter/Twitter;->authToken:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setAuthTokenSecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "authTokenSecret"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/parse/twitter/Twitter;->authTokenSecret:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setConsumerKey(Ljava/lang/String;)Lcom/parse/twitter/Twitter;
    .locals 0
    .param p1, "consumerKey"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/parse/twitter/Twitter;->consumerKey:Ljava/lang/String;

    .line 56
    return-object p0
.end method

.method public setConsumerSecret(Ljava/lang/String;)Lcom/parse/twitter/Twitter;
    .locals 0
    .param p1, "consumerSecret"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/parse/twitter/Twitter;->consumerSecret:Ljava/lang/String;

    .line 65
    return-object p0
.end method

.method public setScreenName(Ljava/lang/String;)V
    .locals 0
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/parse/twitter/Twitter;->screenName:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/parse/twitter/Twitter;->userId:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public signRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 4
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .prologue
    .line 101
    new-instance v0, Lcom/parse/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-virtual {p0}, Lcom/parse/twitter/Twitter;->getConsumerKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/parse/twitter/Twitter;->getConsumerSecret()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/parse/signpost/commonshttp/CommonsHttpOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .local v0, "consumer":Lcom/parse/signpost/OAuthConsumer;
    invoke-virtual {p0}, Lcom/parse/twitter/Twitter;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/parse/twitter/Twitter;->getAuthTokenSecret()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/parse/signpost/OAuthConsumer;->setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :try_start_0
    invoke-interface {v0, p1}, Lcom/parse/signpost/OAuthConsumer;->sign(Ljava/lang/Object;)Lcom/parse/signpost/http/HttpRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    return-void

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
