.class public interface abstract Lcom/parse/FunctionCallback;
.super Ljava/lang/Object;
.source "FunctionCallback.java"

# interfaces
.implements Lcom/parse/ParseCallback2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/parse/ParseCallback2",
        "<TT;",
        "Lcom/parse/ParseException;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract done(Ljava/lang/Object;Lcom/parse/ParseException;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/parse/ParseException;",
            ")V"
        }
    .end annotation
.end method
