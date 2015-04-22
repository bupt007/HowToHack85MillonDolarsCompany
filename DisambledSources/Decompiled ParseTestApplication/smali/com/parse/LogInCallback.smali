.class public interface abstract Lcom/parse/LogInCallback;
.super Ljava/lang/Object;
.source "LogInCallback.java"

# interfaces
.implements Lcom/parse/ParseCallback2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/ParseCallback2",
        "<",
        "Lcom/parse/ParseUser;",
        "Lcom/parse/ParseException;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract done(Lcom/parse/ParseUser;Lcom/parse/ParseException;)V
.end method
