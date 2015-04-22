.class public Lcom/parse/ParseUser;
.super Lcom/parse/ParseObject;
.source "ParseUser.java"


# annotations
.annotation runtime Lcom/parse/ParseClassName;
    value = "_User"
.end annotation


# static fields
.field static final FILENAME_CURRENT_USER:Ljava/lang/String; = "currentUser"

.field private static final KEY_AUTH_DATA:Ljava/lang/String; = "authData"

.field private static final KEY_EMAIL:Ljava/lang/String; = "email"

.field private static final KEY_IS_NEW:Ljava/lang/String; = "isNew"

.field private static final KEY_PASSWORD:Ljava/lang/String; = "password"

.field private static final KEY_SESSION_TOKEN:Ljava/lang/String; = "sessionToken"

.field private static final KEY_USERNAME:Ljava/lang/String; = "username"

.field private static final MUTEX_CURRENT_USER:Ljava/lang/Object;

.field static final PIN_CURRENT_USER:Ljava/lang/String; = "_currentUser"

.field private static final QUEUE_CURRENT_USER:Lcom/parse/TaskQueue;

.field private static final READ_ONLY_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static authenticationProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseAuthenticationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static autoUserEnabled:Z

.field static currentUser:Lcom/parse/ParseUser;

.field private static currentUserMatchesDisk:Z

.field private static final isAutoUserEnabledMutex:Ljava/lang/Object;

.field private static isRevocableSessionEnabled:Z

.field private static final isRevocableSessionEnabledMutex:Ljava/lang/Object;


# instance fields
.field private final authData:Lorg/json/JSONObject;

.field private dirty:Z

.field private isCurrentUser:Z

.field private isLazy:Z

.field private isNew:Z

.field private final linkedServiceNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private password:Ljava/lang/String;

.field private final readOnlyLinkedServiceNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sessionToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "sessionToken"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "isNew"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/parse/ParseUser;->READ_ONLY_KEYS:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/ParseUser;->MUTEX_CURRENT_USER:Ljava/lang/Object;

    .line 56
    new-instance v0, Lcom/parse/TaskQueue;

    invoke-direct {v0}, Lcom/parse/TaskQueue;-><init>()V

    sput-object v0, Lcom/parse/ParseUser;->QUEUE_CURRENT_USER:Lcom/parse/TaskQueue;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    .line 61
    sput-boolean v3, Lcom/parse/ParseUser;->currentUserMatchesDisk:Z

    .line 1786
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/ParseUser;->isAutoUserEnabledMutex:Ljava/lang/Object;

    .line 1820
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/ParseUser;->isRevocableSessionEnabledMutex:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-direct {p0}, Lcom/parse/ParseObject;-><init>()V

    .line 94
    iput-boolean v0, p0, Lcom/parse/ParseUser;->isLazy:Z

    .line 95
    iput-boolean v0, p0, Lcom/parse/ParseUser;->isCurrentUser:Z

    .line 96
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    .line 98
    iget-object v0, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseUser;->readOnlyLinkedServiceNames:Ljava/util/Set;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/parse/ParseUser;)V
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseUser;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/parse/ParseUser;->cleanUpAuthData()V

    return-void
.end method

.method static synthetic access$100(Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseUser;

    .prologue
    .line 27
    invoke-static {p0}, Lcom/parse/ParseUser;->saveCurrentUserAsync(Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/parse/ParseUser;->MUTEX_CURRENT_USER:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/parse/ParseUser;->currentUserMatchesDisk:Z

    return v0
.end method

.method static synthetic access$1102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 27
    sput-boolean p0, Lcom/parse/ParseUser;->currentUserMatchesDisk:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/parse/ParseUser;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseUser;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/parse/ParseUser;->isCurrentUser:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseUser;
    .param p1, "x1"    # Lbolts/Task;

    .prologue
    .line 27
    invoke-static {p0, p1}, Lcom/parse/ParseUser;->saveCurrentUserAsync(Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/parse/ParseUser;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseUser;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/parse/ParseUser;->logOutInternal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/parse/ParseUser;)V
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseUser;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/parse/ParseUser;->synchronizeAllAuthData()V

    return-void
.end method

.method static synthetic access$1600(Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lbolts/Task;

    .prologue
    .line 27
    invoke-static {p0}, Lcom/parse/ParseUser;->logOutInBackground(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseUser;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/parse/ParseUser;->logOutAsync()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/parse/ParseUser;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseUser;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/parse/ParseUser;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseUser;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseUser;
    .param p1, "x1"    # Lbolts/Task;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->signUpAsync(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/parse/ParseUser;)V
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseUser;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/parse/ParseUser;->stripAnonymity()V

    return-void
.end method

.method static synthetic access$2100(Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseUser;
    .param p1, "x1"    # Lbolts/Task;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->resolveLazinessAsync(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/parse/ParseUser;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseUser;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->synchronizeAuthData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/parse/ParseUser;Ljava/lang/String;Lorg/json/JSONObject;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseUser;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/json/JSONObject;
    .param p3, "x3"    # Lbolts/Task;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/ParseUser;->linkWithAsync(Ljava/lang/String;Lorg/json/JSONObject;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/parse/ParseUser;Lcom/parse/ParseOperationSet;)Lcom/parse/ParseRESTUserCommand;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseUser;
    .param p1, "x1"    # Lcom/parse/ParseOperationSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->currentServiceLogInCommand(Lcom/parse/ParseOperationSet;)Lcom/parse/ParseRESTUserCommand;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseUser;
    .param p1, "x1"    # Lbolts/Task;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->upgradeToRevocableSessionAsync(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/parse/ParseUser;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseUser;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/parse/ParseUser;->password:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/parse/ParseUser;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseUser;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->restoreAnonymity(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/parse/ParseUser;->isRevocableSessionEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$602(Lcom/parse/ParseUser;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseUser;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/parse/ParseUser;->isNew:Z

    return p1
.end method

.method static synthetic access$702(Lcom/parse/ParseUser;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseUser;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/parse/ParseUser;->dirty:Z

    return p1
.end method

.method static synthetic access$802(Lcom/parse/ParseUser;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseUser;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/parse/ParseUser;->isLazy:Z

    return p1
.end method

.method static synthetic access$900(ZLbolts/Task;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Z
    .param p1, "x1"    # Lbolts/Task;

    .prologue
    .line 27
    invoke-static {p0, p1}, Lcom/parse/ParseUser;->getCurrentUserAsync(ZLbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static become(Ljava/lang/String;)Lcom/parse/ParseUser;
    .locals 1
    .param p0, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 980
    invoke-static {p0}, Lcom/parse/ParseUser;->becomeInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    return-object v0
.end method

.method public static becomeInBackground(Ljava/lang/String;)Lbolts/Task;
    .locals 3
    .param p0, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 946
    if-nez p0, :cond_0

    .line 947
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must specify a sessionToken for the user to log in with"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 950
    :cond_0
    invoke-static {p0}, Lcom/parse/ParseRESTUserCommand;->getCurrentUserCommand(Ljava/lang/String;)Lcom/parse/ParseRESTUserCommand;

    move-result-object v0

    .line 951
    .local v0, "command":Lcom/parse/ParseRESTCommand;
    invoke-virtual {v0}, Lcom/parse/ParseRESTCommand;->executeAsync()Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseUser$8;

    invoke-direct {v2}, Lcom/parse/ParseUser$8;-><init>()V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public static becomeInBackground(Ljava/lang/String;Lcom/parse/LogInCallback;)V
    .locals 1
    .param p0, "sessionToken"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/parse/LogInCallback;

    .prologue
    .line 996
    invoke-static {p0}, Lcom/parse/ParseUser;->becomeInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 997
    return-void
.end method

.method private static checkApplicationContext()V
    .locals 2

    .prologue
    .line 1425
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1426
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must call Parse.initialize(context, oauthKey, oauthSecret) before using the Parse library."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1429
    :cond_0
    return-void
.end method

.method private cleanUpAuthData()V
    .locals 5

    .prologue
    .line 419
    iget-object v3, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 420
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 421
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 422
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 423
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 424
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 425
    iget-object v2, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 426
    sget-object v2, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 427
    sget-object v2, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseAuthenticationProvider;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/parse/ParseAuthenticationProvider;->restoreAuthentication(Lorg/json/JSONObject;)Z

    goto :goto_0

    .line 431
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 432
    return-void
.end method

.method static clearCurrentUserFromMemory()V
    .locals 2

    .prologue
    .line 1903
    sget-object v1, Lcom/parse/ParseUser;->MUTEX_CURRENT_USER:Ljava/lang/Object;

    monitor-enter v1

    .line 1904
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    .line 1905
    const/4 v0, 0x0

    sput-boolean v0, Lcom/parse/ParseUser;->currentUserMatchesDisk:Z

    .line 1906
    monitor-exit v1

    .line 1907
    return-void

    .line 1906
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private currentServiceLogInCommand(Lcom/parse/ParseOperationSet;)Lcom/parse/ParseRESTUserCommand;
    .locals 6
    .param p1, "operations"    # Lcom/parse/ParseOperationSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 655
    iget-object v5, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v5

    .line 657
    :try_start_0
    invoke-static {}, Lcom/parse/PointerEncodingStrategy;->get()Lcom/parse/PointerEncodingStrategy;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lcom/parse/ParseUser;->toJSONObjectForSaving(Lcom/parse/ParseOperationSet;Lcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;

    move-result-object v3

    .line 658
    .local v3, "params":Lorg/json/JSONObject;
    iget-object v0, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    .line 659
    .local v0, "authData":Lorg/json/JSONObject;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    :try_start_1
    const-string v4, "authData"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 664
    iget-object v4, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    invoke-static {}, Lcom/parse/ParseUser;->isRevocableSessionEnabled()Z

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/parse/ParseRESTUserCommand;->serviceLogInUserCommand(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/parse/ParseRESTUserCommand;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 670
    .local v1, "command":Lcom/parse/ParseRESTUserCommand;
    return-object v1

    .line 659
    .end local v0    # "authData":Lorg/json/JSONObject;
    .end local v1    # "command":Lcom/parse/ParseRESTUserCommand;
    .end local v3    # "params":Lorg/json/JSONObject;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 666
    .restart local v0    # "authData":Lorg/json/JSONObject;
    .restart local v3    # "params":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 667
    .local v2, "e":Lorg/json/JSONException;
    new-instance v4, Lcom/parse/ParseException;

    invoke-direct {v4, v2}, Lcom/parse/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method static disableAutomaticUser()V
    .locals 2

    .prologue
    .line 1805
    sget-object v1, Lcom/parse/ParseUser;->isAutoUserEnabledMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1806
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/parse/ParseUser;->autoUserEnabled:Z

    .line 1807
    monitor-exit v1

    .line 1808
    return-void

    .line 1807
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static disableRevocableSession()V
    .locals 2

    .prologue
    .line 1851
    sget-object v1, Lcom/parse/ParseUser;->isRevocableSessionEnabledMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1852
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/parse/ParseUser;->isRevocableSessionEnabled:Z

    .line 1853
    monitor-exit v1

    .line 1854
    return-void

    .line 1853
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static enableAutomaticUser()V
    .locals 2

    .prologue
    .line 1799
    sget-object v1, Lcom/parse/ParseUser;->isAutoUserEnabledMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1800
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/parse/ParseUser;->autoUserEnabled:Z

    .line 1801
    monitor-exit v1

    .line 1802
    return-void

    .line 1801
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static enableRevocableSessionInBackground()Lbolts/Task;
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
    .line 1834
    sget-object v1, Lcom/parse/ParseUser;->isRevocableSessionEnabledMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1835
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/parse/ParseUser;->isRevocableSessionEnabled:Z

    .line 1836
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1838
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/parse/ParseUser;->getCurrentUserAsync(Z)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseUser$27;

    invoke-direct {v1}, Lcom/parse/ParseUser$27;-><init>()V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0

    .line 1836
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static getCurrentSessionToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1136
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    .line 1137
    .local v0, "current":Lcom/parse/ParseUser;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/parse/ParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getCurrentSessionTokenAsync()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1142
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/parse/ParseUser;->getCurrentUserAsync(Z)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseUser$11;

    invoke-direct {v1}, Lcom/parse/ParseUser$11;-><init>()V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentUser()Lcom/parse/ParseUser;
    .locals 1

    .prologue
    .line 1011
    invoke-static {}, Lcom/parse/ParseUser;->isAutomaticUserEnabled()Z

    move-result v0

    invoke-static {v0}, Lcom/parse/ParseUser;->getCurrentUser(Z)Lcom/parse/ParseUser;

    move-result-object v0

    return-object v0
.end method

.method private static getCurrentUser(Z)Lcom/parse/ParseUser;
    .locals 2
    .param p0, "shouldAutoCreateUser"    # Z

    .prologue
    .line 1024
    :try_start_0
    invoke-static {p0}, Lcom/parse/ParseUser;->getCurrentUserAsync(Z)Lbolts/Task;

    move-result-object v1

    invoke-static {v1}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseUser;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1027
    :goto_0
    return-object v1

    .line 1025
    :catch_0
    move-exception v0

    .line 1027
    .local v0, "e":Lcom/parse/ParseException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getCurrentUserAsync()Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1001
    invoke-static {}, Lcom/parse/ParseUser;->isAutomaticUserEnabled()Z

    move-result v0

    invoke-static {v0}, Lcom/parse/ParseUser;->getCurrentUserAsync(Z)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private static getCurrentUserAsync(Z)Lbolts/Task;
    .locals 2
    .param p0, "shouldAutoCreateUser"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1032
    sget-object v1, Lcom/parse/ParseUser;->MUTEX_CURRENT_USER:Ljava/lang/Object;

    monitor-enter v1

    .line 1033
    :try_start_0
    sget-object v0, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    if-eqz v0, :cond_0

    .line 1034
    sget-object v0, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    .line 1038
    :goto_0
    return-object v0

    .line 1036
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1038
    sget-object v0, Lcom/parse/ParseUser;->QUEUE_CURRENT_USER:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseUser$9;

    invoke-direct {v1, p0}, Lcom/parse/ParseUser$9;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    goto :goto_0

    .line 1036
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getCurrentUserAsync(ZLbolts/Task;)Lbolts/Task;
    .locals 1
    .param p0, "shouldAutoCreateUser"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1048
    .local p1, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/parse/ParseUser;->checkApplicationContext()V

    .line 1050
    new-instance v0, Lcom/parse/ParseUser$10;

    invoke-direct {v0, p0}, Lcom/parse/ParseUser$10;-><init>(Z)V

    invoke-virtual {p1, v0}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private getLinkedServiceNames()Ljava/util/Set;
    .locals 2
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
    .line 1444
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1445
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseUser;->readOnlyLinkedServiceNames:Ljava/util/Set;

    monitor-exit v1

    return-object v0

    .line 1446
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getQuery()Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    const-class v0, Lcom/parse/ParseUser;

    invoke-static {v0}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/Class;)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method static isAutomaticUserEnabled()Z
    .locals 2

    .prologue
    .line 1811
    sget-object v1, Lcom/parse/ParseUser;->isAutoUserEnabledMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1812
    :try_start_0
    sget-boolean v0, Lcom/parse/ParseUser;->autoUserEnabled:Z

    monitor-exit v1

    return v0

    .line 1813
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static isRevocableSessionEnabled()Z
    .locals 2

    .prologue
    .line 1857
    sget-object v1, Lcom/parse/ParseUser;->isRevocableSessionEnabledMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1858
    :try_start_0
    sget-boolean v0, Lcom/parse/ParseUser;->isRevocableSessionEnabled:Z

    monitor-exit v1

    return v0

    .line 1859
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static isRevocableSessionToken(Ljava/lang/String;)Z
    .locals 1
    .param p0, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 1863
    const-string v0, "r:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private linkWithAsync(Ljava/lang/String;Lorg/json/JSONObject;Lbolts/Task;)Lbolts/Task;
    .locals 4
    .param p1, "authType"    # Ljava/lang/String;
    .param p2, "authData"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1625
    .local p3, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    const-string v1, "anonymous"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1627
    .local v0, "oldAnonymousData":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1628
    :try_start_0
    new-instance v1, Lcom/parse/ParseUser$22;

    invoke-direct {v1, p0, p1, p2}, Lcom/parse/ParseUser$22;-><init>(Lcom/parse/ParseUser;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v1}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object v1

    new-instance v3, Lcom/parse/ParseUser$21;

    invoke-direct {v3, p0, p3}, Lcom/parse/ParseUser$21;-><init>(Lcom/parse/ParseUser;Lbolts/Task;)V

    invoke-virtual {v1, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    new-instance v3, Lcom/parse/ParseUser$20;

    invoke-direct {v3, p0, v0, p1}, Lcom/parse/ParseUser$20;-><init>(Lcom/parse/ParseUser;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 1659
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static logIn(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseUser;
    .locals 1
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 911
    invoke-static {p0, p1}, Lcom/parse/ParseUser;->logInInBackground(Ljava/lang/String;Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    return-object v0
.end method

.method public static logInInBackground(Ljava/lang/String;Ljava/lang/String;)Lbolts/Task;
    .locals 3
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 872
    if-nez p0, :cond_0

    .line 873
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must specify a username for the user to log in with"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 875
    :cond_0
    if-nez p1, :cond_1

    .line 876
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must specify a password for the user to log in with"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 879
    :cond_1
    invoke-static {}, Lcom/parse/ParseUser;->isRevocableSessionEnabled()Z

    move-result v1

    invoke-static {p0, p1, v1}, Lcom/parse/ParseRESTUserCommand;->logInUserCommand(Ljava/lang/String;Ljava/lang/String;Z)Lcom/parse/ParseRESTUserCommand;

    move-result-object v0

    .line 881
    .local v0, "command":Lcom/parse/ParseRESTCommand;
    invoke-virtual {v0}, Lcom/parse/ParseRESTCommand;->executeAsync()Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseUser$7;

    invoke-direct {v2}, Lcom/parse/ParseUser$7;-><init>()V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public static logInInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/parse/LogInCallback;)V
    .locals 1
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/parse/LogInCallback;

    .prologue
    .line 930
    invoke-static {p0, p1}, Lcom/parse/ParseUser;->logInInBackground(Ljava/lang/String;Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 931
    return-void
.end method

.method static logInLazyUser(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/parse/ParseUser;
    .locals 4
    .param p0, "authType"    # Ljava/lang/String;
    .param p1, "authData"    # Lorg/json/JSONObject;

    .prologue
    .line 112
    const-class v2, Lcom/parse/ParseUser;

    invoke-static {v2}, Lcom/parse/ParseObject;->create(Ljava/lang/Class;)Lcom/parse/ParseObject;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseUser;

    .line 113
    .local v1, "user":Lcom/parse/ParseUser;
    iget-object v3, v1, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 114
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v1, Lcom/parse/ParseUser;->isCurrentUser:Z

    .line 115
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/parse/ParseUser;->isLazy:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :try_start_1
    iget-object v2, v1, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    iget-object v2, v1, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    sget-object v3, Lcom/parse/ParseUser;->MUTEX_CURRENT_USER:Ljava/lang/Object;

    monitor-enter v3

    .line 125
    const/4 v2, 0x0

    :try_start_3
    sput-boolean v2, Lcom/parse/ParseUser;->currentUserMatchesDisk:Z

    .line 126
    sput-object v1, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    .line 127
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 129
    return-object v1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Lorg/json/JSONException;
    :try_start_4
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 122
    .end local v0    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 127
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2
.end method

.method static logInWithAsync(Ljava/lang/String;Lorg/json/JSONObject;)Lbolts/Task;
    .locals 3
    .param p0, "authType"    # Ljava/lang/String;
    .param p1, "authData"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1523
    new-instance v0, Lcom/parse/ParseUser$18;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseUser$18;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1549
    .local v0, "logInWithTask":Lbolts/Continuation;, "Lbolts/Continuation<Ljava/lang/Void;Lbolts/Task<Lcom/parse/ParseUser;>;>;"
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUserAsync()Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseUser$19;

    invoke-direct {v2, p0, p1, v0}, Lcom/parse/ParseUser$19;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lbolts/Continuation;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public static logOut()V
    .locals 1

    .prologue
    .line 1329
    :try_start_0
    invoke-static {}, Lcom/parse/ParseUser;->logOutInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1334
    :goto_0
    return-void

    .line 1330
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private logOutAsync()Lbolts/Task;
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
    .line 1338
    invoke-direct {p0}, Lcom/parse/ParseUser;->logOutInternal()Ljava/lang/String;

    move-result-object v0

    .line 1339
    .local v0, "oldSessionToken":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/parse/ParseUser;->revokeSessionTokenAsync(Ljava/lang/String;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public static logOutInBackground()Lbolts/Task;
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
    .line 1238
    sget-object v0, Lcom/parse/ParseUser;->QUEUE_CURRENT_USER:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseUser$15;

    invoke-direct {v1}, Lcom/parse/ParseUser$15;-><init>()V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private static logOutInBackground(Lbolts/Task;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1247
    .local p0, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/parse/ParseUser;->checkApplicationContext()V

    .line 1251
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/parse/ParseUser;->getCurrentUserAsync(Z)Lbolts/Task;

    move-result-object v0

    .line 1253
    .local v0, "userTask":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseUser;>;"
    new-instance v1, Lcom/parse/ParseUser$16;

    invoke-direct {v1, v0}, Lcom/parse/ParseUser$16;-><init>(Lbolts/Task;)V

    invoke-virtual {p0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public static logOutInBackground(Lcom/parse/LogOutCallback;)V
    .locals 1
    .param p0, "callback"    # Lcom/parse/LogOutCallback;

    .prologue
    .line 1313
    invoke-static {}, Lcom/parse/ParseUser;->logOutInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 1314
    return-void
.end method

.method private logOutInternal()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1344
    iget-object v4, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v4

    .line 1345
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    .line 1347
    .local v2, "oldSessionToken":Ljava/lang/String;
    invoke-direct {p0}, Lcom/parse/ParseUser;->getLinkedServiceNames()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1348
    .local v0, "authType":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/parse/ParseUser;->logOutWith(Ljava/lang/String;)V

    goto :goto_0

    .line 1354
    .end local v0    # "authType":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "oldSessionToken":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1351
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "oldSessionToken":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    iput-boolean v3, p0, Lcom/parse/ParseUser;->isCurrentUser:Z

    .line 1352
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/parse/ParseUser;->isNew:Z

    .line 1353
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    .line 1354
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1355
    return-object v2
.end method

.method private logOutWith(Ljava/lang/String;)V
    .locals 3
    .param p1, "authType"    # Ljava/lang/String;

    .prologue
    .line 1672
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1673
    :try_start_0
    sget-object v1, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseAuthenticationProvider;

    .line 1674
    .local v0, "provider":Lcom/parse/ParseAuthenticationProvider;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1675
    invoke-virtual {v0}, Lcom/parse/ParseAuthenticationProvider;->deauthenticate()V

    .line 1677
    :cond_0
    monitor-exit v2

    .line 1678
    return-void

    .line 1677
    .end local v0    # "provider":Lcom/parse/ParseAuthenticationProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static pinCurrentUserIfNeededAsync(Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 2
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
    .line 1219
    sget-object v1, Lcom/parse/ParseUser;->MUTEX_CURRENT_USER:Ljava/lang/Object;

    monitor-enter v1

    .line 1220
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/parse/ParseUser;->currentUserMatchesDisk:Z

    if-eqz v0, :cond_1

    .line 1221
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    .line 1225
    :goto_0
    return-object v0

    .line 1223
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1225
    invoke-static {p0}, Lcom/parse/ParseUser;->saveCurrentUserAsync(Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    invoke-virtual {v0}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v0

    goto :goto_0

    .line 1223
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static registerAuthenticationProvider(Lcom/parse/ParseAuthenticationProvider;)V
    .locals 3
    .param p0, "provider"    # Lcom/parse/ParseAuthenticationProvider;

    .prologue
    .line 1507
    sget-object v1, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/parse/ParseAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1509
    instance-of v1, p0, Lcom/parse/AnonymousAuthenticationProvider;

    if-eqz v1, :cond_1

    .line 1520
    :cond_0
    :goto_0
    return-void

    .line 1516
    :cond_1
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    .line 1517
    .local v0, "user":Lcom/parse/ParseUser;
    if-eqz v0, :cond_0

    .line 1518
    invoke-virtual {v0, p0}, Lcom/parse/ParseUser;->synchronizeAuthData(Lcom/parse/ParseAuthenticationProvider;)V

    goto :goto_0
.end method

.method public static requestPasswordReset(Ljava/lang/String;)V
    .locals 1
    .param p0, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1399
    invoke-static {p0}, Lcom/parse/ParseUser;->requestPasswordResetInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;

    .line 1400
    return-void
.end method

.method public static requestPasswordResetInBackground(Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .param p0, "email"    # Ljava/lang/String;
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
    .line 1381
    invoke-static {p0}, Lcom/parse/ParseRESTUserCommand;->resetUserPasswordCommand(Ljava/lang/String;)Lcom/parse/ParseRESTUserCommand;

    move-result-object v0

    .line 1382
    .local v0, "command":Lcom/parse/ParseRESTCommand;
    invoke-virtual {v0}, Lcom/parse/ParseRESTCommand;->executeAsync()Lbolts/Task;

    move-result-object v1

    invoke-virtual {v1}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public static requestPasswordResetInBackground(Ljava/lang/String;Lcom/parse/RequestPasswordResetCallback;)V
    .locals 1
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/parse/RequestPasswordResetCallback;

    .prologue
    .line 1417
    invoke-static {p0}, Lcom/parse/ParseUser;->requestPasswordResetInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 1418
    return-void
.end method

.method private resolveLazinessAsync(Lbolts/Task;)Lbolts/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1694
    .local p1, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1695
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1696
    const/4 v1, 0x0

    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    monitor-exit v2

    .line 1714
    :goto_0
    return-object v1

    .line 1698
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1700
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->signUpAsync(Lbolts/Task;)Lbolts/Task;

    move-result-object v1

    new-instance v3, Lcom/parse/ParseUser$24;

    invoke-direct {v3, p0}, Lcom/parse/ParseUser$24;-><init>(Lcom/parse/ParseUser;)V

    invoke-virtual {v1, v3}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 1771
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1711
    :cond_1
    :try_start_1
    new-instance v0, Lbolts/Capture;

    invoke-direct {v0}, Lbolts/Capture;-><init>()V

    .line 1714
    .local v0, "operations":Lbolts/Capture;, "Lbolts/Capture<Lcom/parse/ParseOperationSet;>;"
    new-instance v1, Lcom/parse/ParseUser$26;

    invoke-direct {v1, p0}, Lcom/parse/ParseUser$26;-><init>(Lcom/parse/ParseUser;)V

    invoke-static {v1}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object v1

    invoke-static {p1}, Lcom/parse/TaskQueue;->waitFor(Lbolts/Task;)Lbolts/Continuation;

    move-result-object v3

    invoke-virtual {v1, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    new-instance v3, Lcom/parse/ParseUser$25;

    invoke-direct {v3, p0, v0}, Lcom/parse/ParseUser$25;-><init>(Lcom/parse/ParseUser;Lbolts/Capture;)V

    invoke-virtual {v1, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private restoreAnonymity(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "anonymousData"    # Lorg/json/JSONObject;

    .prologue
    .line 546
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 547
    if-eqz p1, :cond_0

    .line 548
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    const-string v3, "anonymous"

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    :try_start_1
    iget-object v1, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    const-string v3, "anonymous"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 555
    :cond_0
    :try_start_2
    monitor-exit v2

    .line 556
    return-void

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 555
    .end local v0    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private revokeSessionTokenAsync(Ljava/lang/String;)Lbolts/Task;
    .locals 1
    .param p1, "sessionToken"    # Ljava/lang/String;
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
    .line 1359
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/parse/ParseUser;->isRevocableSessionToken(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1360
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 1362
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Lcom/parse/ParseRESTUserCommand;->logOutUserCommand(Ljava/lang/String;)Lcom/parse/ParseRESTUserCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseRESTUserCommand;->executeAsync()Lbolts/Task;

    move-result-object v0

    invoke-virtual {v0}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method

.method private static saveCurrentUserAsync(Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 2
    .param p0, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1153
    sget-object v0, Lcom/parse/ParseUser;->QUEUE_CURRENT_USER:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseUser$12;

    invoke-direct {v1, p0}, Lcom/parse/ParseUser$12;-><init>(Lcom/parse/ParseUser;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private static saveCurrentUserAsync(Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;
    .locals 2
    .param p0, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1162
    .local p1, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/parse/ParseUser;->checkApplicationContext()V

    .line 1164
    new-instance v0, Lcom/parse/ParseUser$14;

    invoke-direct {v0, p0}, Lcom/parse/ParseUser$14;-><init>(Lcom/parse/ParseUser;)V

    invoke-virtual {p1, v0}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseUser$13;

    invoke-direct {v1, p0}, Lcom/parse/ParseUser$13;-><init>(Lcom/parse/ParseUser;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private signUpAsync(Lbolts/Task;)Lbolts/Task;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    const/4 v1, 0x1

    .line 695
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    .line 696
    .local v2, "user":Lcom/parse/ParseUser;
    iget-object v8, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v8

    .line 697
    if-eqz v2, :cond_1

    :try_start_0
    invoke-virtual {v2}, Lcom/parse/ParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v7

    .line 698
    .local v7, "sessionToken":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getUsername()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseUser;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 699
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Username cannot be missing or blank"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v0

    monitor-exit v8

    .line 781
    :goto_1
    return-object v0

    .line 697
    .end local v7    # "sessionToken":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 702
    .restart local v7    # "sessionToken":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/parse/ParseUser;->password:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 703
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Password cannot be missing or blank"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v0

    monitor-exit v8

    goto :goto_1

    .line 819
    .end local v7    # "sessionToken":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 706
    .restart local v7    # "sessionToken":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_5

    .line 712
    :try_start_2
    iget-object v0, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    const-string v1, "anonymous"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    const-string v1, "anonymous"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_4

    .line 714
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser;->saveAsync(Lbolts/Task;)Lbolts/Task;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :try_start_3
    monitor-exit v8

    goto :goto_1

    .line 716
    :catch_0
    move-exception v6

    .line 717
    .local v6, "e":Lorg/json/JSONException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v0

    monitor-exit v8

    goto :goto_1

    .line 721
    .end local v6    # "e":Lorg/json/JSONException;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot sign up a user that has already signed up."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v0

    monitor-exit v8

    goto :goto_1

    .line 727
    :cond_5
    iget-object v0, p0, Lcom/parse/ParseUser;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v1, :cond_6

    .line 728
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot sign up a user that is already signing up."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v0

    monitor-exit v8

    goto :goto_1

    .line 734
    :cond_6
    if-eqz v2, :cond_8

    invoke-static {v2}, Lcom/parse/ParseAnonymousUtils;->isLinked(Lcom/parse/ParseUser;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 738
    if-ne p0, v2, :cond_7

    .line 739
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempt to merge currentUser with itself."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v0

    monitor-exit v8

    goto :goto_1

    .line 743
    :cond_7
    invoke-virtual {p0}, Lcom/parse/ParseUser;->checkForChangesToMutableContainers()V

    .line 744
    invoke-virtual {v2}, Lcom/parse/ParseUser;->checkForChangesToMutableContainers()V

    .line 746
    invoke-virtual {v2}, Lcom/parse/ParseUser;->getUsername()Ljava/lang/String;

    move-result-object v3

    .line 747
    .local v3, "oldUsername":Ljava/lang/String;
    iget-object v4, v2, Lcom/parse/ParseUser;->password:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 750
    .local v4, "oldPassword":Ljava/lang/String;
    :try_start_4
    iget-object v0, v2, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    const-string v1, "anonymous"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v5

    .line 755
    .local v5, "anonymousData":Lorg/json/JSONObject;
    :try_start_5
    invoke-virtual {v2, p0}, Lcom/parse/ParseUser;->copyChangesFrom(Lcom/parse/ParseObject;)V

    .line 756
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/parse/ParseUser;->dirty:Z

    .line 757
    iget-object v0, p0, Lcom/parse/ParseUser;->password:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/parse/ParseUser;->setPassword(Ljava/lang/String;)V

    .line 758
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/parse/ParseUser;->setUsername(Ljava/lang/String;)V

    .line 759
    invoke-virtual {p0}, Lcom/parse/ParseUser;->revert()V

    .line 761
    invoke-virtual {v2, p1}, Lcom/parse/ParseUser;->saveAsync(Lbolts/Task;)Lbolts/Task;

    move-result-object v9

    new-instance v0, Lcom/parse/ParseUser$4;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/parse/ParseUser$4;-><init>(Lcom/parse/ParseUser;Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v9, v0}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    monitor-exit v8

    goto/16 :goto_1

    .line 751
    .end local v5    # "anonymousData":Lorg/json/JSONObject;
    :catch_1
    move-exception v6

    .line 752
    .restart local v6    # "e":Lorg/json/JSONException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v0

    monitor-exit v8

    goto/16 :goto_1

    .line 781
    .end local v3    # "oldUsername":Ljava/lang/String;
    .end local v4    # "oldPassword":Ljava/lang/String;
    .end local v6    # "e":Lorg/json/JSONException;
    :cond_8
    new-instance v0, Lcom/parse/ParseUser$6;

    invoke-direct {v0, p0}, Lcom/parse/ParseUser$6;-><init>(Lcom/parse/ParseUser;)V

    invoke-static {v0}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object v0

    invoke-static {p1}, Lcom/parse/TaskQueue;->waitFor(Lbolts/Task;)Lbolts/Continuation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseUser$5;

    invoke-direct {v1, p0, v7}, Lcom/parse/ParseUser$5;-><init>(Lcom/parse/ParseUser;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1
.end method

.method private stripAnonymity()V
    .locals 5

    .prologue
    .line 528
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 529
    :try_start_0
    invoke-static {p0}, Lcom/parse/ParseAnonymousUtils;->isLinked(Lcom/parse/ParseUser;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 530
    iget-object v1, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    const-string v3, "anonymous"

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    :try_start_1
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 533
    iget-object v1, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    const-string v3, "anonymous"

    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 540
    :goto_0
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/parse/ParseUser;->dirty:Z

    .line 542
    :cond_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 543
    return-void

    .line 535
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    const-string v3, "anonymous"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 537
    :catch_0
    move-exception v0

    .line 538
    .local v0, "e":Lorg/json/JSONException;
    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 542
    .end local v0    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private synchronizeAllAuthData()V
    .locals 3

    .prologue
    .line 1477
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1478
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 1479
    .local v0, "authTypes":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1480
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/parse/ParseUser;->synchronizeAuthData(Ljava/lang/String;)V

    goto :goto_0

    .line 1482
    .end local v0    # "authTypes":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "authTypes":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1483
    return-void
.end method

.method private synchronizeAuthData(Ljava/lang/String;)V
    .locals 3
    .param p1, "authType"    # Ljava/lang/String;

    .prologue
    .line 1450
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1451
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1452
    monitor-exit v2

    .line 1460
    :goto_0
    return-void

    .line 1454
    :cond_0
    sget-object v1, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseAuthenticationProvider;

    .line 1455
    .local v0, "provider":Lcom/parse/ParseAuthenticationProvider;
    if-nez v0, :cond_1

    .line 1456
    monitor-exit v2

    goto :goto_0

    .line 1459
    .end local v0    # "provider":Lcom/parse/ParseAuthenticationProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1458
    .restart local v0    # "provider":Lcom/parse/ParseAuthenticationProvider;
    :cond_1
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->synchronizeAuthData(Lcom/parse/ParseAuthenticationProvider;)V

    .line 1459
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private upgradeToRevocableSessionAsync(Lbolts/Task;)Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1876
    .local p1, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 1878
    .local v0, "sessionToken":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/parse/ParseUser;->isRevocableSessionToken(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1882
    .end local p1    # "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :cond_1
    new-instance v1, Lcom/parse/ParseUser$30;

    invoke-direct {v1, p0, v0}, Lcom/parse/ParseUser$30;-><init>(Lcom/parse/ParseUser;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseUser$29;

    invoke-direct {v2, p0}, Lcom/parse/ParseUser$29;-><init>(Lcom/parse/ParseUser;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic fetch()Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/parse/ParseUser;->fetch()Lcom/parse/ParseUser;

    move-result-object v0

    return-object v0
.end method

.method public fetch()Lcom/parse/ParseUser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 619
    invoke-super {p0}, Lcom/parse/ParseObject;->fetch()Lcom/parse/ParseObject;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    return-object v0
.end method

.method fetchAsync(Lbolts/Task;)Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 625
    .local p1, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 628
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    invoke-static {p0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    .line 632
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->fetchAsync(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    new-instance v2, Lcom/parse/ParseUser$2;

    invoke-direct {v2, p0}, Lcom/parse/ParseUser$2;-><init>(Lcom/parse/ParseUser;)V

    invoke-virtual {v0, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 647
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method fetchFromLocalDatastoreAsync()Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">()",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1778
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1779
    invoke-static {p0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 1781
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/parse/ParseObject;->fetchFromLocalDatastoreAsync()Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic fetchIfNeeded()Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/parse/ParseUser;->fetchIfNeeded()Lcom/parse/ParseUser;

    move-result-object v0

    return-object v0
.end method

.method public fetchIfNeeded()Lcom/parse/ParseUser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1434
    invoke-super {p0}, Lcom/parse/ParseObject;->fetchIfNeeded()Lcom/parse/ParseObject;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 497
    const-string v0, "email"

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 440
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 442
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 467
    const-string v0, "username"

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAuthenticated()Z
    .locals 4

    .prologue
    .line 154
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 155
    :try_start_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    .line 156
    .local v0, "current":Lcom/parse/ParseUser;
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    monitor-exit v2

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 158
    .end local v0    # "current":Lcom/parse/ParseUser;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isCurrentUser()Z
    .locals 2

    .prologue
    .line 413
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 414
    :try_start_0
    iget-boolean v0, p0, Lcom/parse/ParseUser;->isCurrentUser:Z

    monitor-exit v1

    return v0

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isDirty(Z)Z
    .locals 1
    .param p1, "considerChildren"    # Z

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/parse/ParseUser;->dirty:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/parse/ParseObject;->isDirty(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isKeyMutable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 108
    sget-object v0, Lcom/parse/ParseUser;->READ_ONLY_KEYS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isLazy()Z
    .locals 2

    .prologue
    .line 138
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    :try_start_0
    iget-boolean v0, p0, Lcom/parse/ParseUser;->isLazy:Z

    monitor-exit v1

    return v0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isLinked(Ljava/lang/String;)Z
    .locals 1
    .param p1, "authType"    # Ljava/lang/String;

    .prologue
    .line 1440
    invoke-direct {p0}, Lcom/parse/ParseUser;->getLinkedServiceNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNew()Z
    .locals 2

    .prologue
    .line 505
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 506
    :try_start_0
    iget-boolean v0, p0, Lcom/parse/ParseUser;->isNew:Z

    monitor-exit v1

    return v0

    .line 507
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method linkWithAsync(Ljava/lang/String;Lorg/json/JSONObject;)Lbolts/Task;
    .locals 2
    .param p1, "authType"    # Ljava/lang/String;
    .param p2, "authData"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1663
    iget-object v0, p0, Lcom/parse/ParseUser;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseUser$23;

    invoke-direct {v1, p0, p1, p2}, Lcom/parse/ParseUser$23;-><init>(Lcom/parse/ParseUser;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method mergeFromDiskJSON(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 230
    iget-object v6, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v6

    .line 231
    :try_start_0
    const-string v5, "session_token"

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, "newSessionToken":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 233
    iput-object v4, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    .line 234
    const-string v5, "session_token"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 237
    :cond_0
    const-string v5, "auth_data"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 238
    .local v3, "newAuthData":Lorg/json/JSONObject;
    if-eqz v3, :cond_3

    .line 242
    :try_start_1
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 243
    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 244
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 245
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 246
    iget-object v5, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    iget-object v5, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_1
    invoke-direct {p0, v2}, Lcom/parse/ParseUser;->synchronizeAuthData(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 251
    .end local v1    # "i":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 258
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v3    # "newAuthData":Lorg/json/JSONObject;
    .end local v4    # "newSessionToken":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 254
    .restart local v1    # "i":Ljava/util/Iterator;
    .restart local v3    # "newAuthData":Lorg/json/JSONObject;
    .restart local v4    # "newSessionToken":Ljava/lang/String;
    :cond_2
    :try_start_3
    const-string v5, "auth_data"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 257
    .end local v1    # "i":Ljava/util/Iterator;
    :cond_3
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->mergeFromDiskJSON(Lorg/json/JSONObject;)V

    .line 258
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 259
    return-void
.end method

.method mergeFromObject(Lcom/parse/ParseObject;)V
    .locals 8
    .param p1, "other"    # Lcom/parse/ParseObject;

    .prologue
    .line 264
    iget-object v6, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v6

    .line 265
    :try_start_0
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->mergeFromObject(Lcom/parse/ParseObject;)V

    .line 268
    if-ne p0, p1, :cond_0

    .line 269
    monitor-exit v6

    .line 298
    .end local p1    # "other":Lcom/parse/ParseObject;
    :goto_0
    return-void

    .line 273
    .restart local p1    # "other":Lcom/parse/ParseObject;
    :cond_0
    instance-of v5, p1, Lcom/parse/ParseUser;

    if-eqz v5, :cond_3

    .line 274
    move-object v0, p1

    check-cast v0, Lcom/parse/ParseUser;

    move-object v5, v0

    iget-object v5, v5, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    iput-object v5, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    .line 275
    move-object v0, p1

    check-cast v0, Lcom/parse/ParseUser;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/parse/ParseUser;->isNew()Z

    move-result v5

    iput-boolean v5, p0, Lcom/parse/ParseUser;->isNew:Z

    .line 277
    iget-object v5, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 278
    .local v3, "key":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 279
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 280
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 297
    .end local v3    # "key":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local p1    # "other":Lcom/parse/ParseObject;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 282
    .restart local v3    # "key":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local p1    # "other":Lcom/parse/ParseObject;
    :cond_1
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/parse/ParseUser;

    move-object v5, v0

    iget-object v5, v5, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 283
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 284
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    .local v2, "k":Ljava/lang/String;
    :try_start_2
    move-object v0, p1

    check-cast v0, Lcom/parse/ParseUser;

    move-object v5, v0

    iget-object v5, v5, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 288
    .local v4, "v":Ljava/lang/Object;
    iget-object v5, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v5, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 289
    .end local v4    # "v":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 290
    .local v1, "e":Lorg/json/JSONException;
    :try_start_3
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v7, "A JSONException occurred where one was not possible."

    invoke-direct {v5, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 294
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "k":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 295
    iget-object v5, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    check-cast p1, Lcom/parse/ParseUser;

    .end local p1    # "other":Lcom/parse/ParseObject;
    iget-object v7, p1, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-interface {v5, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 297
    .end local v3    # "key":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method mergeFromServer(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;Z)V
    .locals 8
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "decoder"    # Lcom/parse/ParseDecoder;
    .param p3, "completeData"    # Z

    .prologue
    .line 304
    iget-object v6, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v6

    .line 307
    :try_start_0
    const-string v5, "sessionToken"

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 308
    .local v4, "newSessionToken":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 309
    iput-object v4, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    .line 312
    :cond_0
    const-string v5, "authData"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 314
    .local v3, "newAuthData":Lorg/json/JSONObject;
    if-eqz v3, :cond_2

    .line 317
    :try_start_1
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 318
    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 319
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 320
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 321
    iget-object v5, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 322
    iget-object v5, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 324
    :cond_1
    invoke-direct {p0, v2}, Lcom/parse/ParseUser;->synchronizeAuthData(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 331
    .end local v1    # "i":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 341
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v3    # "newAuthData":Lorg/json/JSONObject;
    .end local v4    # "newSessionToken":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 328
    .restart local v3    # "newAuthData":Lorg/json/JSONObject;
    .restart local v4    # "newSessionToken":Ljava/lang/String;
    :cond_2
    :try_start_3
    const-string v5, "is_new"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 329
    const-string v5, "is_new"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/parse/ParseUser;->isNew:Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 337
    :cond_3
    :try_start_4
    const-string v5, "session_token"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 338
    const-string v5, "sessionToken"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 340
    invoke-super {p0, p1, p2, p3}, Lcom/parse/ParseObject;->mergeFromServer(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;Z)V

    .line 341
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 342
    return-void
.end method

.method mergeREST(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)V
    .locals 7
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "decoder"    # Lcom/parse/ParseDecoder;

    .prologue
    .line 371
    iget-object v5, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v5

    .line 372
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/parse/ParseObject;->mergeREST(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)V

    .line 375
    const-string v4, "sessionToken"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 377
    :try_start_1
    const-string v4, "sessionToken"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    :cond_0
    :try_start_2
    const-string v4, "authData"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 386
    :try_start_3
    const-string v4, "authData"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 388
    .local v3, "newData":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 389
    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 390
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 391
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 392
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 393
    iget-object v4, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 395
    :cond_1
    invoke-direct {p0, v2}, Lcom/parse/ParseUser;->synchronizeAuthData(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 397
    .end local v1    # "i":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "newData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Lorg/json/JSONException;
    :try_start_4
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 409
    .end local v0    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 378
    :catch_1
    move-exception v0

    .line 379
    .restart local v0    # "e":Lorg/json/JSONException;
    :try_start_5
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 402
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    const-string v4, "isNew"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v4

    if-eqz v4, :cond_3

    .line 404
    :try_start_6
    const-string v4, "isNew"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/parse/ParseUser;->isNew:Z
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 409
    :cond_3
    :try_start_7
    monitor-exit v5

    .line 410
    return-void

    .line 405
    :catch_2
    move-exception v0

    .line 406
    .restart local v0    # "e":Lorg/json/JSONException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method needsDefaultACL()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 514
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 515
    :try_start_0
    const-string v0, "username"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    invoke-direct {p0}, Lcom/parse/ParseUser;->stripAnonymity()V

    .line 519
    :cond_0
    const-string v0, "password"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/parse/ParseUser;->setPassword(Ljava/lang/String;)V

    .line 521
    monitor-exit v1

    .line 525
    :goto_0
    return-void

    .line 523
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 524
    monitor-exit v1

    goto :goto_0

    .end local p2    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 163
    const-string v0, "username"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t remove the username key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->remove(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method saveAsync(Lbolts/Task;)Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 584
    .local p1, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 586
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 587
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->resolveLazinessAsync(Lbolts/Task;)Lbolts/Task;

    move-result-object v1

    invoke-virtual {v1}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v0

    .line 592
    .local v0, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :goto_0
    new-instance v1, Lcom/parse/ParseUser$1;

    invoke-direct {v1, p0}, Lcom/parse/ParseUser$1;-><init>(Lcom/parse/ParseUser;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 589
    .end local v0    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :cond_0
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->saveAsync(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    .restart local v0    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    goto :goto_0

    .line 603
    .end local v0    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 1
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 490
    const-string v0, "email"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 491
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 477
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 478
    :try_start_0
    iput-object p1, p0, Lcom/parse/ParseUser;->password:Ljava/lang/String;

    .line 479
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/ParseUser;->dirty:Z

    .line 480
    monitor-exit v1

    .line 481
    return-void

    .line 480
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setSessionTokenInBackground(Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .param p1, "newSessionToken"    # Ljava/lang/String;
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
    .line 447
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 448
    :try_start_0
    iput-object p1, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    .line 449
    invoke-static {p0}, Lcom/parse/ParseUser;->saveCurrentUserAsync(Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    invoke-virtual {v0}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 460
    const-string v0, "username"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 461
    return-void
.end method

.method public signUp()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 837
    invoke-virtual {p0}, Lcom/parse/ParseUser;->signUpInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;

    .line 838
    return-void
.end method

.method public signUpInBackground()Lbolts/Task;
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
    .line 686
    iget-object v0, p0, Lcom/parse/ParseUser;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseUser$3;

    invoke-direct {v1, p0}, Lcom/parse/ParseUser$3;-><init>(Lcom/parse/ParseUser;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public signUpInBackground(Lcom/parse/SignUpCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/SignUpCallback;

    .prologue
    .line 854
    invoke-virtual {p0}, Lcom/parse/ParseUser;->signUpInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 855
    return-void
.end method

.method synchronizeAuthData(Lcom/parse/ParseAuthenticationProvider;)V
    .locals 4
    .param p1, "provider"    # Lcom/parse/ParseAuthenticationProvider;

    .prologue
    .line 1463
    iget-object v3, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 1464
    :try_start_0
    invoke-virtual {p1}, Lcom/parse/ParseAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v0

    .line 1465
    .local v0, "authType":Ljava/lang/String;
    iget-object v2, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/parse/ParseAuthenticationProvider;->restoreAuthentication(Lorg/json/JSONObject;)Z

    move-result v1

    .line 1466
    .local v1, "success":Z
    if-nez v1, :cond_0

    .line 1467
    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->unlinkFromAsync(Ljava/lang/String;)Lbolts/Task;

    .line 1469
    :cond_0
    monitor-exit v3

    .line 1470
    return-void

    .line 1469
    .end local v0    # "authType":Ljava/lang/String;
    .end local v1    # "success":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method toJSONObjectForDataFile(ZLcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "includeOperations"    # Z
    .param p2, "objectEncoder"    # Lcom/parse/ParseObjectEncodingStrategy;

    .prologue
    .line 205
    iget-object v3, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 206
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/parse/ParseObject;->toJSONObjectForDataFile(ZLcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;

    move-result-object v1

    .line 208
    .local v1, "objectJSON":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 210
    :try_start_1
    const-string v2, "session_token"

    iget-object v4, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-lez v2, :cond_1

    .line 218
    :try_start_3
    const-string v2, "auth_data"

    iget-object v4, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 224
    :cond_1
    :try_start_4
    monitor-exit v3

    return-object v1

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "could not encode value for key: session_token"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 225
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "objectJSON":Lorg/json/JSONObject;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 219
    .restart local v1    # "objectJSON":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 220
    .restart local v0    # "e":Lorg/json/JSONException;
    :try_start_5
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "could not attach key: auth_data"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method toJSONObjectForSaving(Lcom/parse/ParseOperationSet;Lcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "operations"    # Lcom/parse/ParseOperationSet;
    .param p2, "objectEncoder"    # Lcom/parse/ParseObjectEncodingStrategy;

    .prologue
    .line 176
    iget-object v3, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 177
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/parse/ParseObject;->toJSONObjectForSaving(Lcom/parse/ParseOperationSet;Lcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;

    move-result-object v1

    .line 179
    .local v1, "objectJSON":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-lez v2, :cond_0

    .line 181
    :try_start_1
    const-string v2, "authData"

    iget-object v4, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/parse/ParseUser;->password:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 188
    :try_start_3
    const-string v2, "password"

    iget-object v4, p0, Lcom/parse/ParseUser;->password:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 194
    :cond_1
    :try_start_4
    monitor-exit v3

    return-object v1

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "could not attach key: authData"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 195
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "objectJSON":Lorg/json/JSONObject;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 189
    .restart local v1    # "objectJSON":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 190
    .restart local v0    # "e":Lorg/json/JSONException;
    :try_start_5
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "could not attach key: password"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method toRest(Lcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "objectEncoder"    # Lcom/parse/ParseObjectEncodingStrategy;

    .prologue
    .line 346
    iget-object v3, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 347
    :try_start_0
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->toRest(Lcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;

    move-result-object v1

    .line 349
    .local v1, "objectJSON":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 351
    :try_start_1
    const-string v2, "sessionToken"

    iget-object v4, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-lez v2, :cond_1

    .line 359
    :try_start_3
    const-string v2, "authData"

    iget-object v4, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 365
    :cond_1
    :try_start_4
    monitor-exit v3

    return-object v1

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "could not encode value for key: sessionToken"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 366
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "objectJSON":Lorg/json/JSONObject;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 360
    .restart local v1    # "objectJSON":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 361
    .restart local v0    # "e":Lorg/json/JSONException;
    :try_start_5
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "could not attach key: authData"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method unlinkFromAsync(Ljava/lang/String;)Lbolts/Task;
    .locals 3
    .param p1, "authType"    # Ljava/lang/String;
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
    .line 1486
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1487
    if-nez p1, :cond_0

    .line 1488
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    .line 1490
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    new-instance v2, Lcom/parse/ParseUser$17;

    invoke-direct {v2, p0, p1}, Lcom/parse/ParseUser$17;-><init>(Lcom/parse/ParseUser;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 1503
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method upgradeToRevocableSessionAsync()Lbolts/Task;
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
    .line 1867
    iget-object v0, p0, Lcom/parse/ParseUser;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseUser$28;

    invoke-direct {v1, p0}, Lcom/parse/ParseUser$28;-><init>(Lcom/parse/ParseUser;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method validateDelete()V
    .locals 3

    .prologue
    .line 608
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 609
    :try_start_0
    invoke-super {p0}, Lcom/parse/ParseObject;->validateDelete()V

    .line 610
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseUser;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot delete a ParseUser that is not authenticated."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 613
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 614
    return-void
.end method

.method validateSave()V
    .locals 4

    .prologue
    .line 560
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 561
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 562
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot save a ParseUser until it has been signed up. Call signUp first."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 569
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 566
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isAuthenticated()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/parse/ParseUser;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 567
    :cond_1
    monitor-exit v2

    .line 575
    :cond_2
    return-void

    .line 569
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 571
    invoke-static {}, Lcom/parse/OfflineStore;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 573
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    .line 574
    .local v0, "current":Lcom/parse/ParseUser;
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 579
    .end local v0    # "current":Lcom/parse/ParseUser;
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot save a ParseUser that is not authenticated."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
