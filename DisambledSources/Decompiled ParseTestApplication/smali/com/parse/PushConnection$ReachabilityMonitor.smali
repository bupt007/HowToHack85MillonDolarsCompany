.class Lcom/parse/PushConnection$ReachabilityMonitor;
.super Ljava/lang/Object;
.source "PushConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/PushConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReachabilityMonitor"
.end annotation


# instance fields
.field private listener:Lcom/parse/ConnectivityNotifier$ConnectivityListener;

.field final synthetic this$0:Lcom/parse/PushConnection;

.field private unregistered:Z


# direct methods
.method private constructor <init>(Lcom/parse/PushConnection;)V
    .locals 0

    .prologue
    .line 496
    iput-object p1, p0, Lcom/parse/PushConnection$ReachabilityMonitor;->this$0:Lcom/parse/PushConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parse/PushConnection;Lcom/parse/PushConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parse/PushConnection;
    .param p2, "x1"    # Lcom/parse/PushConnection$1;

    .prologue
    .line 496
    invoke-direct {p0, p1}, Lcom/parse/PushConnection$ReachabilityMonitor;-><init>(Lcom/parse/PushConnection;)V

    return-void
.end method

.method static synthetic access$900(Lcom/parse/PushConnection$ReachabilityMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parse/PushConnection$ReachabilityMonitor;

    .prologue
    .line 496
    iget-boolean v0, p0, Lcom/parse/PushConnection$ReachabilityMonitor;->unregistered:Z

    return v0
.end method


# virtual methods
.method public register()V
    .locals 2

    .prologue
    .line 504
    new-instance v0, Lcom/parse/PushConnection$ReachabilityMonitor$1;

    invoke-direct {v0, p0}, Lcom/parse/PushConnection$ReachabilityMonitor$1;-><init>(Lcom/parse/PushConnection$ReachabilityMonitor;)V

    iput-object v0, p0, Lcom/parse/PushConnection$ReachabilityMonitor;->listener:Lcom/parse/ConnectivityNotifier$ConnectivityListener;

    .line 515
    iget-object v0, p0, Lcom/parse/PushConnection$ReachabilityMonitor;->this$0:Lcom/parse/PushConnection;

    # getter for: Lcom/parse/PushConnection;->service:Landroid/app/Service;
    invoke-static {v0}, Lcom/parse/PushConnection;->access$1000(Lcom/parse/PushConnection;)Landroid/app/Service;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ConnectivityNotifier;->getNotifier(Landroid/content/Context;)Lcom/parse/ConnectivityNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/PushConnection$ReachabilityMonitor;->listener:Lcom/parse/ConnectivityNotifier$ConnectivityListener;

    invoke-virtual {v0, v1}, Lcom/parse/ConnectivityNotifier;->addListener(Lcom/parse/ConnectivityNotifier$ConnectivityListener;)V

    .line 516
    return-void
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/parse/PushConnection$ReachabilityMonitor;->this$0:Lcom/parse/PushConnection;

    # getter for: Lcom/parse/PushConnection;->service:Landroid/app/Service;
    invoke-static {v0}, Lcom/parse/PushConnection;->access$1000(Lcom/parse/PushConnection;)Landroid/app/Service;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ConnectivityNotifier;->getNotifier(Landroid/content/Context;)Lcom/parse/ConnectivityNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/PushConnection$ReachabilityMonitor;->listener:Lcom/parse/ConnectivityNotifier$ConnectivityListener;

    invoke-virtual {v0, v1}, Lcom/parse/ConnectivityNotifier;->removeListener(Lcom/parse/ConnectivityNotifier$ConnectivityListener;)V

    .line 523
    monitor-enter p0

    .line 524
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/parse/PushConnection$ReachabilityMonitor;->unregistered:Z

    .line 525
    monitor-exit p0

    .line 526
    return-void

    .line 525
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
