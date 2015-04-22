.class interface abstract Lcom/parse/ParseQuery$CallableWithCachePolicy;
.super Ljava/lang/Object;
.source "ParseQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "CallableWithCachePolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract call(Lcom/parse/ParseQuery$CachePolicy;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery$CachePolicy;",
            ")TTResult;"
        }
    .end annotation
.end method
