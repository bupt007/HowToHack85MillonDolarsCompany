.class Lcom/parse/LocationNotifier;
.super Ljava/lang/Object;
.source "LocationNotifier.java"


# static fields
.field private static fakeLocation:Landroid/location/Location;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/LocationNotifier;->fakeLocation:Landroid/location/Location;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCurrentLocationAsync(Landroid/content/Context;JLandroid/location/Criteria;)Lbolts/Task;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeout"    # J
    .param p3, "criteria"    # Landroid/location/Criteria;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Landroid/location/Criteria;",
            ")",
            "Lbolts/Task",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v6

    .line 55
    .local v6, "tcs":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<Landroid/location/Location;>.TaskCompletionSource;"
    new-instance v7, Lbolts/Capture;

    invoke-direct {v7}, Lbolts/Capture;-><init>()V

    .line 56
    .local v7, "timeoutFuture":Lbolts/Capture;, "Lbolts/Capture<Ljava/util/concurrent/ScheduledFuture<*>;>;"
    const-string v2, "location"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 58
    .local v0, "manager":Landroid/location/LocationManager;
    new-instance v5, Lcom/parse/LocationNotifier$1;

    invoke-direct {v5, v7, v6, v0}, Lcom/parse/LocationNotifier$1;-><init>(Lbolts/Capture;Lbolts/Task$TaskCompletionSource;Landroid/location/LocationManager;)V

    .line 84
    .local v5, "listener":Landroid/location/LocationListener;
    invoke-static {}, Lcom/parse/Parse;->getScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    new-instance v3, Lcom/parse/LocationNotifier$2;

    invoke-direct {v3, v6, v0, v5}, Lcom/parse/LocationNotifier$2;-><init>(Lbolts/Task$TaskCompletionSource;Landroid/location/LocationManager;Landroid/location/LocationListener;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, p1, p2, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    invoke-virtual {v7, v2}, Lbolts/Capture;->set(Ljava/lang/Object;)V

    .line 92
    const/4 v2, 0x1

    invoke-virtual {v0, p3, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "provider":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 94
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 97
    :cond_0
    sget-object v2, Lcom/parse/LocationNotifier;->fakeLocation:Landroid/location/Location;

    if-eqz v2, :cond_1

    .line 98
    sget-object v2, Lcom/parse/LocationNotifier;->fakeLocation:Landroid/location/Location;

    invoke-interface {v5, v2}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 101
    :cond_1
    invoke-virtual {v6}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v2

    return-object v2
.end method

.method static setFakeLocation(Landroid/location/Location;)V
    .locals 0
    .param p0, "location"    # Landroid/location/Location;

    .prologue
    .line 108
    sput-object p0, Lcom/parse/LocationNotifier;->fakeLocation:Landroid/location/Location;

    .line 109
    return-void
.end method
