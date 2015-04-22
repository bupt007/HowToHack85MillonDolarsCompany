.class final Lcom/parse/LocationNotifier$1;
.super Ljava/lang/Object;
.source "LocationNotifier.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/LocationNotifier;->getCurrentLocationAsync(Landroid/content/Context;JLandroid/location/Criteria;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$manager:Landroid/location/LocationManager;

.field final synthetic val$tcs:Lbolts/Task$TaskCompletionSource;

.field final synthetic val$timeoutFuture:Lbolts/Capture;


# direct methods
.method constructor <init>(Lbolts/Capture;Lbolts/Task$TaskCompletionSource;Landroid/location/LocationManager;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/parse/LocationNotifier$1;->val$timeoutFuture:Lbolts/Capture;

    iput-object p2, p0, Lcom/parse/LocationNotifier$1;->val$tcs:Lbolts/Task$TaskCompletionSource;

    iput-object p3, p0, Lcom/parse/LocationNotifier$1;->val$manager:Landroid/location/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/parse/LocationNotifier$1;->val$timeoutFuture:Lbolts/Capture;

    invoke-virtual {v0}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 67
    iget-object v0, p0, Lcom/parse/LocationNotifier$1;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v0, p1}, Lbolts/Task$TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/parse/LocationNotifier$1;->val$manager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 73
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 77
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 81
    return-void
.end method
