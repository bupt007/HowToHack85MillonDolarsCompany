.class public interface abstract Lcom/parse/GetCallback;
.super Ljava/lang/Object;
.source "GetCallback.java"

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
        "<TT;",
        "Lcom/parse/ParseException;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract done(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/parse/ParseException;",
            ")V"
        }
    .end annotation
.end method
