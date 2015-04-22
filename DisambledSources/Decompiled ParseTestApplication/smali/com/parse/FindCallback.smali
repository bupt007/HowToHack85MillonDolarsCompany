.class public interface abstract Lcom/parse/FindCallback;
.super Ljava/lang/Object;
.source "FindCallback.java"

# interfaces
.implements Lcom/parse/ParseCallback2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parse/ParseObject;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/parse/ParseCallback2",
        "<",
        "Ljava/util/List",
        "<TT;>;",
        "Lcom/parse/ParseException;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract done(Ljava/util/List;Lcom/parse/ParseException;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/ParseException;",
            ")V"
        }
    .end annotation
.end method
