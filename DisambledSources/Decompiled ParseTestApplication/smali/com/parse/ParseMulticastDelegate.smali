.class Lcom/parse/ParseMulticastDelegate;
.super Ljava/lang/Object;
.source "ParseMulticastDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseCallback2",
            "<TT;",
            "Lcom/parse/ParseException;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    .local p0, "this":Lcom/parse/ParseMulticastDelegate;, "Lcom/parse/ParseMulticastDelegate<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseMulticastDelegate;->callbacks:Ljava/util/List;

    .line 12
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lcom/parse/ParseMulticastDelegate;, "Lcom/parse/ParseMulticastDelegate<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseMulticastDelegate;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 30
    return-void
.end method

.method public invoke(Ljava/lang/Object;Lcom/parse/ParseException;)V
    .locals 4
    .param p2, "exception"    # Lcom/parse/ParseException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/parse/ParseException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/parse/ParseMulticastDelegate;, "Lcom/parse/ParseMulticastDelegate<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/parse/ParseMulticastDelegate;->callbacks:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseCallback2;

    .line 24
    .local v0, "callback":Lcom/parse/ParseCallback2;, "Lcom/parse/ParseCallback2<TT;Lcom/parse/ParseException;>;"
    invoke-interface {v0, p1, p2}, Lcom/parse/ParseCallback2;->done(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 26
    .end local v0    # "callback":Lcom/parse/ParseCallback2;, "Lcom/parse/ParseCallback2<TT;Lcom/parse/ParseException;>;"
    :cond_0
    return-void
.end method

.method public subscribe(Lcom/parse/ParseCallback2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseCallback2",
            "<TT;",
            "Lcom/parse/ParseException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p0, "this":Lcom/parse/ParseMulticastDelegate;, "Lcom/parse/ParseMulticastDelegate<TT;>;"
    .local p1, "callback":Lcom/parse/ParseCallback2;, "Lcom/parse/ParseCallback2<TT;Lcom/parse/ParseException;>;"
    iget-object v0, p0, Lcom/parse/ParseMulticastDelegate;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    return-void
.end method

.method public unsubscribe(Lcom/parse/ParseCallback2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseCallback2",
            "<TT;",
            "Lcom/parse/ParseException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lcom/parse/ParseMulticastDelegate;, "Lcom/parse/ParseMulticastDelegate<TT;>;"
    .local p1, "callback":Lcom/parse/ParseCallback2;, "Lcom/parse/ParseCallback2<TT;Lcom/parse/ParseException;>;"
    iget-object v0, p0, Lcom/parse/ParseMulticastDelegate;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method
