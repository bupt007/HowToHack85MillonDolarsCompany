.class final Lcom/parse/ParseGeoPoint$2;
.super Ljava/lang/Object;
.source "ParseGeoPoint.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseGeoPoint;->getCurrentLocationInBackground(JLandroid/location/Criteria;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Landroid/location/Location;",
        "Lcom/parse/ParseGeoPoint;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lcom/parse/ParseGeoPoint;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Landroid/location/Location;",
            ">;)",
            "Lcom/parse/ParseGeoPoint;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Landroid/location/Location;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 215
    .local v0, "location":Landroid/location/Location;
    new-instance v1, Lcom/parse/ParseGeoPoint;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/parse/ParseGeoPoint;-><init>(DD)V

    return-object v1
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lbolts/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lcom/parse/ParseGeoPoint$2;->then(Lbolts/Task;)Lcom/parse/ParseGeoPoint;

    move-result-object v0

    return-object v0
.end method
