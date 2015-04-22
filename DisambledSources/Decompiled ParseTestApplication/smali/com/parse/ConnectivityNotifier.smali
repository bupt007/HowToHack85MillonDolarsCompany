.class Lcom/parse/ConnectivityNotifier;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ConnectivityNotifier$ConnectivityListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.parse.ConnectivityNotifier"

.field private static final singleton:Lcom/parse/ConnectivityNotifier;


# instance fields
.field private hasRegisteredReceiver:Z

.field private listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/parse/ConnectivityNotifier$ConnectivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/parse/ConnectivityNotifier;

    invoke-direct {v0}, Lcom/parse/ConnectivityNotifier;-><init>()V

    sput-object v0, Lcom/parse/ConnectivityNotifier;->singleton:Lcom/parse/ConnectivityNotifier;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ConnectivityNotifier;->listeners:Ljava/util/Set;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/ConnectivityNotifier;->hasRegisteredReceiver:Z

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ConnectivityNotifier;->lock:Ljava/lang/Object;

    return-void
.end method

.method public static getNotifier(Landroid/content/Context;)Lcom/parse/ConnectivityNotifier;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    sget-object v0, Lcom/parse/ConnectivityNotifier;->singleton:Lcom/parse/ConnectivityNotifier;

    invoke-direct {v0, p0}, Lcom/parse/ConnectivityNotifier;->tryToRegisterForNetworkStatusNotifications(Landroid/content/Context;)Z

    .line 25
    sget-object v0, Lcom/parse/ConnectivityNotifier;->singleton:Lcom/parse/ConnectivityNotifier;

    return-object v0
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 29
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 31
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 36
    :cond_0
    :goto_0
    return v2

    .line 35
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 36
    .local v1, "network":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private tryToRegisterForNetworkStatusNotifications(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 56
    iget-object v3, p0, Lcom/parse/ConnectivityNotifier;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 57
    :try_start_0
    iget-boolean v4, p0, Lcom/parse/ConnectivityNotifier;->hasRegisteredReceiver:Z

    if-eqz v4, :cond_0

    .line 58
    monitor-exit v3

    .line 73
    :goto_0
    return v1

    .line 62
    :cond_0
    if-nez p1, :cond_1

    .line 63
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    goto :goto_0

    .line 65
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 66
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/parse/ConnectivityNotifier;->hasRegisteredReceiver:Z
    :try_end_1
    .catch Landroid/content/ReceiverCallNotAllowedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :try_start_2
    monitor-exit v3

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 69
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Landroid/content/ReceiverCallNotAllowedException;
    :try_start_3
    const-string v1, "com.parse.ConnectivityNotifier"

    const-string v4, "Cannot register a broadcast receiver because the executing thread is currently in a broadcast receiver. Will try again later."

    invoke-static {v1, v4}, Lcom/parse/Parse;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/parse/ConnectivityNotifier$ConnectivityListener;)V
    .locals 2
    .param p1, "delegate"    # Lcom/parse/ConnectivityNotifier$ConnectivityListener;

    .prologue
    .line 44
    iget-object v1, p0, Lcom/parse/ConnectivityNotifier;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/parse/ConnectivityNotifier;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    monitor-exit v1

    .line 47
    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 81
    iget-object v4, p0, Lcom/parse/ConnectivityNotifier;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 82
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/parse/ConnectivityNotifier;->listeners:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 83
    .local v2, "listenersCopy":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ConnectivityNotifier$ConnectivityListener;>;"
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ConnectivityNotifier$ConnectivityListener;

    .line 85
    .local v0, "delegate":Lcom/parse/ConnectivityNotifier$ConnectivityListener;
    invoke-interface {v0, p1, p2}, Lcom/parse/ConnectivityNotifier$ConnectivityListener;->networkConnectivityStatusChanged(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 83
    .end local v0    # "delegate":Lcom/parse/ConnectivityNotifier$ConnectivityListener;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listenersCopy":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ConnectivityNotifier$ConnectivityListener;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 87
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "listenersCopy":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ConnectivityNotifier$ConnectivityListener;>;"
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/parse/ConnectivityNotifier$ConnectivityListener;)V
    .locals 2
    .param p1, "delegate"    # Lcom/parse/ConnectivityNotifier$ConnectivityListener;

    .prologue
    .line 50
    iget-object v1, p0, Lcom/parse/ConnectivityNotifier;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/parse/ConnectivityNotifier;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 52
    monitor-exit v1

    .line 53
    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
