.class interface abstract Lcom/parse/ParseQuery$CommandDelegate;
.super Ljava/lang/Object;
.source "ParseQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "CommandDelegate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract runFromCacheAsync()Lbolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract runOnNetworkAsync(Z)Lbolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation
.end method
