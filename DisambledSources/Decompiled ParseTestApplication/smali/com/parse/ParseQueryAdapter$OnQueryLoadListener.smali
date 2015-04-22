.class public interface abstract Lcom/parse/ParseQueryAdapter$OnQueryLoadListener;
.super Ljava/lang/Object;
.source "ParseQueryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseQueryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnQueryLoadListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parse/ParseObject;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onLoaded(Ljava/util/List;Ljava/lang/Exception;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onLoading()V
.end method
