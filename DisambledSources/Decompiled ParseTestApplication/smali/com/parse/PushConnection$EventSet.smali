.class Lcom/parse/PushConnection$EventSet;
.super Ljava/lang/Object;
.source "PushConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/PushConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventSet"
.end annotation


# instance fields
.field private final condition:Ljava/util/concurrent/locks/Condition;

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private final signaledEvents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/parse/PushConnection$Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 810
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/parse/PushConnection$EventSet;->lock:Ljava/util/concurrent/locks/Lock;

    .line 811
    iget-object v0, p0, Lcom/parse/PushConnection$EventSet;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/PushConnection$EventSet;->condition:Ljava/util/concurrent/locks/Condition;

    .line 812
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/PushConnection$EventSet;->signaledEvents:Ljava/util/HashSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/parse/PushConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parse/PushConnection$1;

    .prologue
    .line 809
    invoke-direct {p0}, Lcom/parse/PushConnection$EventSet;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs await([Lcom/parse/PushConnection$Event;)Ljava/util/Set;
    .locals 2
    .param p1, "eventsToAwait"    # [Lcom/parse/PushConnection$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/parse/PushConnection$Event;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/parse/PushConnection$Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 850
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p1}, Lcom/parse/PushConnection$EventSet;->timedAwait(J[Lcom/parse/PushConnection$Event;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public varargs removeEvents([Lcom/parse/PushConnection$Event;)V
    .locals 6
    .param p1, "eventsToRemove"    # [Lcom/parse/PushConnection$Event;

    .prologue
    .line 834
    iget-object v4, p0, Lcom/parse/PushConnection$EventSet;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 837
    move-object v0, p1

    .local v0, "arr$":[Lcom/parse/PushConnection$Event;
    :try_start_0
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 838
    .local v1, "e":Lcom/parse/PushConnection$Event;
    iget-object v4, p0, Lcom/parse/PushConnection$EventSet;->signaledEvents:Ljava/util/HashSet;

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 837
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 841
    .end local v1    # "e":Lcom/parse/PushConnection$Event;
    :cond_0
    iget-object v4, p0, Lcom/parse/PushConnection$EventSet;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 843
    return-void

    .line 841
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/parse/PushConnection$EventSet;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4
.end method

.method public signalEvent(Lcom/parse/PushConnection$Event;)V
    .locals 2
    .param p1, "event"    # Lcom/parse/PushConnection$Event;

    .prologue
    .line 819
    iget-object v0, p0, Lcom/parse/PushConnection$EventSet;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 822
    :try_start_0
    iget-object v0, p0, Lcom/parse/PushConnection$EventSet;->signaledEvents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 823
    iget-object v0, p0, Lcom/parse/PushConnection$EventSet;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    iget-object v0, p0, Lcom/parse/PushConnection$EventSet;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 827
    return-void

    .line 825
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/parse/PushConnection$EventSet;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public varargs timedAwait(J[Lcom/parse/PushConnection$Event;)Ljava/util/Set;
    .locals 13
    .param p1, "timeoutMs"    # J
    .param p3, "eventsToAwait"    # [Lcom/parse/PushConnection$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[",
            "Lcom/parse/PushConnection$Event;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/parse/PushConnection$Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 859
    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 860
    .local v1, "e":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/PushConnection$Event;>;"
    new-instance v8, Ljava/util/HashSet;

    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 861
    .local v8, "toAwait":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/PushConnection$Event;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 862
    .local v6, "startMs":J
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v9, p1, v10

    if-nez v9, :cond_1

    const/4 v0, 0x1

    .line 864
    .local v0, "awaitForever":Z
    :goto_0
    iget-object v9, p0, Lcom/parse/PushConnection$EventSet;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-object v4, v1

    .line 867
    .end local v1    # "e":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/PushConnection$Event;>;"
    .local v4, "e":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/PushConnection$Event;>;"
    :goto_1
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v2, v10, v6

    .line 868
    .local v2, "delta":J
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 869
    .end local v4    # "e":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/PushConnection$Event;>;"
    .restart local v1    # "e":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/PushConnection$Event;>;"
    :try_start_1
    iget-object v9, p0, Lcom/parse/PushConnection$EventSet;->signaledEvents:Ljava/util/HashSet;

    invoke-interface {v1, v9}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 870
    iget-object v9, p0, Lcom/parse/PushConnection$EventSet;->signaledEvents:Ljava/util/HashSet;

    invoke-virtual {v9, v8}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 872
    invoke-interface {v1}, Ljava/util/Set;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v9

    if-nez v9, :cond_0

    if-nez v0, :cond_2

    cmp-long v9, v2, p1

    if-ltz v9, :cond_2

    .line 889
    :cond_0
    :goto_2
    iget-object v9, p0, Lcom/parse/PushConnection$EventSet;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 892
    return-object v1

    .line 862
    .end local v0    # "awaitForever":Z
    .end local v2    # "delta":J
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 876
    .restart local v0    # "awaitForever":Z
    .restart local v2    # "delta":J
    :cond_2
    if-eqz v0, :cond_3

    .line 877
    :try_start_2
    iget-object v9, p0, Lcom/parse/PushConnection$EventSet;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    move-object v4, v1

    .line 887
    .end local v1    # "e":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/PushConnection$Event;>;"
    .restart local v4    # "e":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/PushConnection$Event;>;"
    goto :goto_1

    .line 880
    .end local v4    # "e":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/PushConnection$Event;>;"
    .restart local v1    # "e":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/PushConnection$Event;>;"
    :cond_3
    :try_start_3
    iget-object v9, p0, Lcom/parse/PushConnection$EventSet;->condition:Ljava/util/concurrent/locks/Condition;

    sub-long v10, p1, v2

    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v9, v10, v11, v12}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 881
    :catch_0
    move-exception v5

    .line 884
    .local v5, "exception":Ljava/lang/InterruptedException;
    goto :goto_2

    .line 889
    .end local v1    # "e":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/PushConnection$Event;>;"
    .end local v2    # "delta":J
    .end local v5    # "exception":Ljava/lang/InterruptedException;
    .restart local v4    # "e":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/PushConnection$Event;>;"
    :catchall_0
    move-exception v9

    move-object v1, v4

    .end local v4    # "e":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/PushConnection$Event;>;"
    .restart local v1    # "e":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/PushConnection$Event;>;"
    :goto_4
    iget-object v10, p0, Lcom/parse/PushConnection$EventSet;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v9

    .restart local v2    # "delta":J
    :catchall_1
    move-exception v9

    goto :goto_4
.end method
