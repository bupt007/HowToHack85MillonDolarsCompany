.class Lcom/parse/WeakValueHashMap;
.super Ljava/lang/Object;
.source "WeakValueHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;",
            "Ljava/lang/ref/WeakReference",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    .local p0, "this":Lcom/parse/WeakValueHashMap;, "Lcom/parse/WeakValueHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/WeakValueHashMap;->map:Ljava/util/HashMap;

    .line 14
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 43
    .local p0, "this":Lcom/parse/WeakValueHashMap;, "Lcom/parse/WeakValueHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/parse/WeakValueHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 44
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/parse/WeakValueHashMap;, "Lcom/parse/WeakValueHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v2, p0, Lcom/parse/WeakValueHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 26
    .local v0, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TV;>;"
    if-nez v0, :cond_1

    .line 27
    const/4 v1, 0x0

    .line 35
    :cond_0
    :goto_0
    return-object v1

    .line 30
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 31
    .local v1, "value":Ljava/lang/Object;, "TV;"
    if-nez v1, :cond_0

    .line 32
    iget-object v2, p0, Lcom/parse/WeakValueHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Lcom/parse/WeakValueHashMap;, "Lcom/parse/WeakValueHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/parse/WeakValueHashMap;->map:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/parse/WeakValueHashMap;, "Lcom/parse/WeakValueHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/parse/WeakValueHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method
