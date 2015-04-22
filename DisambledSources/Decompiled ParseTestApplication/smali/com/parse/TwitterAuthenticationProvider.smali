.class Lcom/parse/TwitterAuthenticationProvider;
.super Lcom/parse/ParseAuthenticationProvider;
.source "TwitterAuthenticationProvider.java"


# static fields
.field private static final AUTH_TOKEN_KEY:Ljava/lang/String; = "auth_token"

.field private static final AUTH_TOKEN_SECRET_KEY:Ljava/lang/String; = "auth_token_secret"

.field public static final AUTH_TYPE:Ljava/lang/String; = "twitter"

.field private static final CONSUMER_KEY_KEY:Ljava/lang/String; = "consumer_key"

.field private static final CONSUMER_SECRET_KEY:Ljava/lang/String; = "consumer_secret"

.field private static final ID_KEY:Ljava/lang/String; = "id"

.field private static final SCREEN_NAME_KEY:Ljava/lang/String; = "screen_name"


# instance fields
.field private baseContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

.field private final twitter:Lcom/parse/twitter/Twitter;


# direct methods
.method public constructor <init>(Lcom/parse/twitter/Twitter;)V
    .locals 0
    .param p1, "twitter"    # Lcom/parse/twitter/Twitter;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/parse/ParseAuthenticationProvider;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/parse/TwitterAuthenticationProvider;Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/parse/TwitterAuthenticationProvider;
    .param p1, "x1"    # Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/parse/TwitterAuthenticationProvider;->handleCancel(Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/parse/TwitterAuthenticationProvider;)Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;
    .locals 1
    .param p0, "x0"    # Lcom/parse/TwitterAuthenticationProvider;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/parse/TwitterAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    return-object v0
.end method

.method static synthetic access$102(Lcom/parse/TwitterAuthenticationProvider;Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;)Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;
    .locals 0
    .param p0, "x0"    # Lcom/parse/TwitterAuthenticationProvider;
    .param p1, "x1"    # Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/parse/TwitterAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    return-object p1
.end method

.method static synthetic access$200(Lcom/parse/TwitterAuthenticationProvider;)Lcom/parse/twitter/Twitter;
    .locals 1
    .param p0, "x0"    # Lcom/parse/TwitterAuthenticationProvider;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    return-object v0
.end method

.method private authenticate(Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    .prologue
    .line 34
    iget-object v1, p0, Lcom/parse/TwitterAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/parse/TwitterAuthenticationProvider;->cancel()V

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/parse/TwitterAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    .line 38
    iget-object v1, p0, Lcom/parse/TwitterAuthenticationProvider;->baseContext:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 39
    .local v0, "context":Landroid/content/Context;
    :goto_0
    if-nez v0, :cond_2

    .line 40
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Context must be non-null for Twitter authentication to proceed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    iget-object v1, p0, Lcom/parse/TwitterAuthenticationProvider;->baseContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    move-object v0, v1

    goto :goto_0

    .line 43
    .restart local v0    # "context":Landroid/content/Context;
    :cond_2
    iget-object v1, p0, Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    new-instance v2, Lcom/parse/TwitterAuthenticationProvider$1;

    invoke-direct {v2, p0, p1}, Lcom/parse/TwitterAuthenticationProvider$1;-><init>(Lcom/parse/TwitterAuthenticationProvider;Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;)V

    invoke-virtual {v1, v0, v2}, Lcom/parse/twitter/Twitter;->authorize(Landroid/content/Context;Lcom/parse/internal/AsyncCallback;)V

    .line 82
    return-void
.end method

.method private handleCancel(Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    .prologue
    const/4 v1, 0x0

    .line 146
    iget-object v0, p0, Lcom/parse/TwitterAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    if-ne v0, p1, :cond_0

    if-nez p1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;->onCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    iput-object v1, p0, Lcom/parse/TwitterAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/parse/TwitterAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    throw v0
.end method


# virtual methods
.method public authenticateAsync()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v0

    .line 88
    .local v0, "tcs":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<Lorg/json/JSONObject;>.TaskCompletionSource;"
    new-instance v1, Lcom/parse/TwitterAuthenticationProvider$2;

    invoke-direct {v1, p0, v0}, Lcom/parse/TwitterAuthenticationProvider$2;-><init>(Lcom/parse/TwitterAuthenticationProvider;Lbolts/Task$TaskCompletionSource;)V

    invoke-direct {p0, v1}, Lcom/parse/TwitterAuthenticationProvider;->authenticate(Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;)V

    .line 105
    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/parse/TwitterAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    invoke-direct {p0, v0}, Lcom/parse/TwitterAuthenticationProvider;->handleCancel(Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;)V

    .line 123
    return-void
.end method

.method public deauthenticate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 127
    iget-object v0, p0, Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    invoke-virtual {v0, v1}, Lcom/parse/twitter/Twitter;->setAuthToken(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    invoke-virtual {v0, v1}, Lcom/parse/twitter/Twitter;->setAuthTokenSecret(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    invoke-virtual {v0, v1}, Lcom/parse/twitter/Twitter;->setScreenName(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    invoke-virtual {v0, v1}, Lcom/parse/twitter/Twitter;->setUserId(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public getAuthData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "screenName"    # Ljava/lang/String;
    .param p3, "authToken"    # Ljava/lang/String;
    .param p4, "authTokenSecret"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 111
    .local v0, "authData":Lorg/json/JSONObject;
    const-string v1, "auth_token"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v1, "auth_token_secret"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v1, "screen_name"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string v1, "consumer_key"

    iget-object v2, p0, Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    invoke-virtual {v2}, Lcom/parse/twitter/Twitter;->getConsumerKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string v1, "consumer_secret"

    iget-object v2, p0, Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    invoke-virtual {v2}, Lcom/parse/twitter/Twitter;->getConsumerSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    return-object v0
.end method

.method public getAuthType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    const-string v0, "twitter"

    return-object v0
.end method

.method public getTwitter()Lcom/parse/twitter/Twitter;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    return-object v0
.end method

.method public restoreAuthentication(Lorg/json/JSONObject;)Z
    .locals 4
    .param p1, "authData"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 158
    if-nez p1, :cond_0

    .line 159
    iget-object v2, p0, Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    invoke-virtual {v2, v3}, Lcom/parse/twitter/Twitter;->setAuthToken(Ljava/lang/String;)V

    .line 160
    iget-object v2, p0, Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    invoke-virtual {v2, v3}, Lcom/parse/twitter/Twitter;->setAuthTokenSecret(Ljava/lang/String;)V

    .line 161
    iget-object v2, p0, Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    invoke-virtual {v2, v3}, Lcom/parse/twitter/Twitter;->setScreenName(Ljava/lang/String;)V

    .line 162
    iget-object v2, p0, Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    invoke-virtual {v2, v3}, Lcom/parse/twitter/Twitter;->setUserId(Ljava/lang/String;)V

    .line 174
    :goto_0
    return v1

    .line 167
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    const-string v3, "auth_token"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parse/twitter/Twitter;->setAuthToken(Ljava/lang/String;)V

    .line 168
    iget-object v2, p0, Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    const-string v3, "auth_token_secret"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parse/twitter/Twitter;->setAuthTokenSecret(Ljava/lang/String;)V

    .line 169
    iget-object v2, p0, Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parse/twitter/Twitter;->setUserId(Ljava/lang/String;)V

    .line 170
    iget-object v2, p0, Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    const-string v3, "screen_name"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parse/twitter/Twitter;->setScreenName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)Lcom/parse/TwitterAuthenticationProvider;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parse/TwitterAuthenticationProvider;->baseContext:Ljava/lang/ref/WeakReference;

    .line 181
    return-object p0
.end method
