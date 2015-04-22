.class Lcom/parse/LockSet;
.super Ljava/lang/Object;
.source "LockSet.java"


# static fields
.field private static nextStableId:J

.field private static stableIds:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/util/concurrent/locks/Lock;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final locks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/concurrent/locks/Lock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/parse/LockSet;->stableIds:Ljava/util/WeakHashMap;

    .line 12
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/parse/LockSet;->nextStableId:J

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/concurrent/locks/Lock;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "locks":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/concurrent/locks/Lock;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lcom/parse/LockSet$1;

    invoke-direct {v1, p0}, Lcom/parse/LockSet$1;-><init>(Lcom/parse/LockSet;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/parse/LockSet;->locks:Ljava/util/Set;

    .line 25
    iget-object v0, p0, Lcom/parse/LockSet;->locks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 26
    return-void
.end method

.method static synthetic access$000(Ljava/util/concurrent/locks/Lock;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Ljava/util/concurrent/locks/Lock;

    .prologue
    .line 10
    invoke-static {p0}, Lcom/parse/LockSet;->getStableId(Ljava/util/concurrent/locks/Lock;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private static getStableId(Ljava/util/concurrent/locks/Lock;)Ljava/lang/Long;
    .locals 6
    .param p0, "lock"    # Ljava/util/concurrent/locks/Lock;

    .prologue
    .line 29
    sget-object v3, Lcom/parse/LockSet;->stableIds:Ljava/util/WeakHashMap;

    monitor-enter v3

    .line 30
    :try_start_0
    sget-object v2, Lcom/parse/LockSet;->stableIds:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    sget-object v2, Lcom/parse/LockSet;->stableIds:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    monitor-exit v3

    .line 35
    :goto_0
    return-object v2

    .line 33
    :cond_0
    sget-wide v0, Lcom/parse/LockSet;->nextStableId:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    sput-wide v4, Lcom/parse/LockSet;->nextStableId:J

    .line 34
    .local v0, "id":J
    sget-object v2, Lcom/parse/LockSet;->stableIds:Ljava/util/WeakHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, p0, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    monitor-exit v3

    goto :goto_0

    .line 36
    .end local v0    # "id":J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public lock()V
    .locals 3

    .prologue
    .line 40
    iget-object v2, p0, Lcom/parse/LockSet;->locks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/locks/Lock;

    .line 41
    .local v1, "l":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    goto :goto_0

    .line 43
    .end local v1    # "l":Ljava/util/concurrent/locks/Lock;
    :cond_0
    return-void
.end method

.method public unlock()V
    .locals 3

    .prologue
    .line 46
    iget-object v2, p0, Lcom/parse/LockSet;->locks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/locks/Lock;

    .line 47
    .local v1, "l":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 49
    .end local v1    # "l":Ljava/util/concurrent/locks/Lock;
    :cond_0
    return-void
.end method
