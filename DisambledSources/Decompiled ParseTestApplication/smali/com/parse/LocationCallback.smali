.class public interface abstract Lcom/parse/LocationCallback;
.super Ljava/lang/Object;
.source "LocationCallback.java"

# interfaces
.implements Lcom/parse/ParseCallback2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/ParseCallback2",
        "<",
        "Lcom/parse/ParseGeoPoint;",
        "Lcom/parse/ParseException;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract done(Lcom/parse/ParseGeoPoint;Lcom/parse/ParseException;)V
.end method
