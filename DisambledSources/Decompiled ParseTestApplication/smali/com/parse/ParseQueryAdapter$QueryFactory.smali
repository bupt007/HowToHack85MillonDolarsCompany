.class public interface abstract Lcom/parse/ParseQueryAdapter$QueryFactory;
.super Ljava/lang/Object;
.source "ParseQueryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseQueryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "QueryFactory"
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
.method public abstract create()Lcom/parse/ParseQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation
.end method
