.class Lcom/parse/PushConnection$ReachabilityMonitor$1;
.super Ljava/lang/Object;
.source "PushConnection.java"

# interfaces
.implements Lcom/parse/ConnectivityNotifier$ConnectivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/PushConnection$ReachabilityMonitor;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/PushConnection$ReachabilityMonitor;


# direct methods
.method constructor <init>(Lcom/parse/PushConnection$ReachabilityMonitor;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/parse/PushConnection$ReachabilityMonitor$1;->this$1:Lcom/parse/PushConnection$ReachabilityMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public networkConnectivityStatusChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 507
    iget-object v1, p0, Lcom/parse/PushConnection$ReachabilityMonitor$1;->this$1:Lcom/parse/PushConnection$ReachabilityMonitor;

    monitor-enter v1

    .line 508
    :try_start_0
    iget-object v0, p0, Lcom/parse/PushConnection$ReachabilityMonitor$1;->this$1:Lcom/parse/PushConnection$ReachabilityMonitor;

    # getter for: Lcom/parse/PushConnection$ReachabilityMonitor;->unregistered:Z
    invoke-static {v0}, Lcom/parse/PushConnection$ReachabilityMonitor;->access$900(Lcom/parse/PushConnection$ReachabilityMonitor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/parse/PushConnection$ReachabilityMonitor$1;->this$1:Lcom/parse/PushConnection$ReachabilityMonitor;

    iget-object v0, v0, Lcom/parse/PushConnection$ReachabilityMonitor;->this$0:Lcom/parse/PushConnection;

    # getter for: Lcom/parse/PushConnection;->eventSet:Lcom/parse/PushConnection$EventSet;
    invoke-static {v0}, Lcom/parse/PushConnection;->access$300(Lcom/parse/PushConnection;)Lcom/parse/PushConnection$EventSet;

    move-result-object v0

    sget-object v2, Lcom/parse/PushConnection$Event;->CONNECTIVITY_CHANGED:Lcom/parse/PushConnection$Event;

    invoke-virtual {v0, v2}, Lcom/parse/PushConnection$EventSet;->signalEvent(Lcom/parse/PushConnection$Event;)V

    .line 511
    :cond_0
    monitor-exit v1

    .line 512
    return-void

    .line 511
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
